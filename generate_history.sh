#!/bin/bash

function usage {
    echo "Usage: $0 [OPTION]..."
    echo "Migrate from the api-ref site into a from fairy-slipper"
    echo ""
    echo "  -V, --virtual-env        Always use virtualenv.  Install automatically if not present"
    echo "  -N, --no-virtual-env     Don't use virtualenv.  Run tests in local environment"
    echo "  -n, --no-site-packages   Isolate the virtualenv from the global Python environment"
    echo "  -f, --force              Force a clean re-build of the virtual environment. Useful when dependencies have been added."
    echo "  -u, --update             Update the virtual environment with any newer package versions"
    echo "  -h, --help               Print this usage message"
    echo "  -d, --debug              Run tests with testtools instead of testr. This allows you to use PDB"
}

venv=.venv
with_venv=tools/with_venv.sh
always_venv=0
never_venv=0
no_site_packages=0
debug=0
force=0
wrapper=""
update=0

if ! options=$(getopt -o VNnfuhd -l virtual-env,no-virtual-env,no-site-packages,force,update,help,debug -- "$@")
then
  # parse error
  usage
  exit 1
fi

eval set -- "$options"
while [ $# -gt 0 ]; do
    case "$1" in
        -h|--help) usage; exit;;
        -V|--virtual-env) always_venv=1; never_venv=0;;
        -N|--no-virtual-env) always_venv=0; never_venv=1;;
        -n|--no-site-packages) no_site_packages=1;;
        -f|--force) force=1;;
        -u|--update) update=1;;
        -d|--debug) debug=1;;
    esac
    shift
done

cd `dirname "$0"`

if [ $no_site_packages -eq 1 ]; then
  installvenvopts="--no-site-packages"
fi

if [ $never_venv -eq 0 ]
then
  # Remove the virtual environment if --force used
  if [ $force -eq 1 ]; then
    echo "Cleaning virtualenv..."
    rm -rf ${venv}
  fi
  if [ $update -eq 1 ]; then
    echo "Updating virtualenv..."
    python tools/install_venv.py $installvenvopts
  fi
  if [ -e ${venv} ]; then
    wrapper="${with_venv}"
  else
      if [ $always_venv -eq 1 ]; then
        # Automatically install the virtualenv
        python tools/install_venv.py $installvenvopts
        wrapper="${with_venv}"
      else
          echo -e "No virtual environment found...create one? (Y/n) \c"
          read use_ve
          if [ "x$use_ve" = "xY" -o "x$use_ve" = "x" -o "x$use_ve" = "xy" ]; then
            # Install the virtualenv and run the test suite in it
            python tools/install_venv.py $installvenvopts
            wrapper=${with_venv}
          fi
      fi
  fi
fi

for commit in $(git --git-dir=fairy-slipper/.git log origin/master | grep commit | tac | cut -f 2 -d ' '); do
  pushd fairy-slipper &>/dev/null
  git checkout "$commit"
  popd &>/dev/null
  ${wrapper} pip install -e fairy-slipper
  mkdir conversion_files
  mkdir api_doc
  if [ -f ./fairy-slipper/tools/docbkx_to_json.py ]; then
    ${wrapper} find api-site/api-ref/src/docbkx/ -name api-ref-\* -type f -exec ./fairy-slipper/tools/docbkx_to_json.py -o conversion_files -v {} \;
    ${wrapper} find conversion_files -name api-ref\*json -type f -exec ./fairy-slipper/tools/wadl_to_swagger.py -o conversion_files -v {} \;
    ${wrapper} find conversion_files -name \*-swagger.json -type f -exec ./fairy-slipper/tools/swagger_to_rst.py -o api_doc -v {} \;
  else
      ${wrapper} find api-site/api-ref/src/docbkx/ -name api-ref-\* -type f -exec fairy-slipper-docbkx-to-json -o conversion_files -v {} \;
      ${wrapper} find conversion_files -name api-ref\*json -type f -exec fairy-slipper-wadl-to-swagger -o conversion_files -v {} \;
      ${wrapper} find conversion_files -name \*-swagger.json -type f -exec fairy-slipper-swagger-to-rst -o api_doc -v {} \;
  fi
  git add -A .
  git status
  git --git-dir=fairy-slipper/.git show -s > COMMIT_MSG
  git commit -F COMMIT_MSG
  rm COMMIT_MSG
  rm -r conversion_files
  rm -r api_doc
done

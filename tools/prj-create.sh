#!/bin/sh

# --------------------------------------------
# functions
# --------------------------------------------
echo_title() {
  echo ""
  echo "# ------------------------------------------------------"
  echo "# prj-create script"
  echo "# ------------------------------------------------------"
  echo ""
}

echo_error_pjr_name_not_pass() {
  echo "[error] pass the name of project"
  echo "[error] eg.: ./prj-create.sh blinky" $'\n\n'
}

echo_error_prj_exist() {
  echo "[error] the project $1 already exists" $'\n\n'
}

echo_create_prj() {
  echo "[info] the project $1 will be created" $'\n'
}

# --------------------------------------------
# main
# --------------------------------------------
PATH_WORKSPACE="../workspace"
PATH_PRJ_TEMPL="../templates/prj-template"

echo_title

# check if the string is empty the
if [ -z "$1" ]; then
  echo_error_pjr_name_not_pass $1
  exit -1
fi

# check if the name of project exists
if [ -d "$PATH_WORKSPACE/$1" ]; then
  echo_error_prj_exist $1
  exit -1
fi

# create project
echo_create_prj $1
cp -rf $PATH_PRJ_TEMPL $PATH_WORKSPACE/$1
tree $PATH_WORKSPACE/$1
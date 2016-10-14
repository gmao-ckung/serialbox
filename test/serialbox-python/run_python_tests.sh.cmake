#!/bin/bash
##===-------------------------------------------------------------------------------*- bash -*-===##
##
##                                   S E R I A L B O X
##
## This file is distributed under terms of BSD license. 
## See LICENSE.txt for more information.
##
##===------------------------------------------------------------------------------------------===##
##
## Run Python Unittest.
##
## DO NOT MODIFY THIS FILE IT IS AUTO GENERATED!
##
##===------------------------------------------------------------------------------------------===##

export PYTHONPATH=$PYTHONPATH:${SERIALOBX_PYTHON_MODULE}

#
# Check if nose exists
#
${PYTHON_EXECUTABLE} -c "import nose"
if [ "$?" == "1" ]; then
  echo ">> Python tests require module 'nose'"
  exit 1
fi

#
# Run python tests with nose
#
cd ${PYTHON_TEST_DIR}/serialbox
${PYTHON_EXECUTABLE} -m "nose"


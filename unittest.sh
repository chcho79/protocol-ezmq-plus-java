###############################################################################
# Copyright 2018 Samsung Electronics All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
###############################################################################

#!/bin/bash

PROJECT_ROOT=$(pwd)
LD_LIBRARY_PATH=$PROJECT_ROOT/dependencies/datamodel-aml-java

function run_test(){
    export LD_LIBRARY_PATH
    cd $PROJECT_ROOT/ezmqx
    mvn test
    if [ $? -ne 0 ]; then
        echo -e "\033[31m"Unittests failed"\033[0m"
        exit 1
    fi
}

echo -e "Running ezmqx Unittests"
run_test
echo -e "Done Unittests"

exit 0


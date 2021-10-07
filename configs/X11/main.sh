#!/bin/bash
parent_path=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P )

source "$parent_path/screen_setup.sh"
source "$parent_path/modes_setup.sh"
source "$parent_path/reset.sh"
source "$parent_path/configs/$SETUP.sh"

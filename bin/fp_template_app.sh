#!/bin/bash -e

#-----------------------------------------------------------------------------------------
# Script information
script_name='FP TEMPLATE - GENERIC APP'
script_version="1.0.0"
script_date='2020/02/04'

fp_package_folder='/fp-template/'

# Python virtual environment information
fp_libs_folder=$HOME/fp_libs_python
fp_libs_env='fp_env_python'
#-----------------------------------------------------------------------------------------

#-----------------------------------------------------------------------------------------
# Get file information
script_file='fp_template_app.py'
setting_file='fp_template_configuration.json'

# Get information (-u to get gmt time)
time_now=$(date +"%Y%m%d%H00")
#-----------------------------------------------------------------------------------------

#-----------------------------------------------------------------------------------------
# Add to path python virtual environment
export PATH="$fp_libs_folder/bin:$PATH"
source activate $fp_libs_env

# Add path to pythonpath
export PYTHONPATH="${PYTHONPATH}:$fp_package_folder"
#-----------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------
# Info script start
echo " ==================================================================================="
echo " ==> "$script_name" (Version: "$script_version" Release_Date: "$script_date")"
echo " ==> START ..."
echo " ==> COMMAND LINE: " python3 $script_file -settingfile $setting_file -time $time_now

# Run python script (using setting and time)
python3 $script_file -settings_file $setting_file -time $time_now

# Info script end
echo " ==> "$script_name" (Version: "$script_version" Release_Date: "$script_date")"
echo " ==> ... END"
echo " ==> Bye, Bye"
echo " ==================================================================================="
# ----------------------------------------------------------------------------------------


#!/bin/bash
echo "installing behave"
python_install()
{
    sudo apt install python3 -y
    if [ $? -ne 0 ]
    then
         echo "python installation failed"
    else
         echo "python installed and updated successfully"
    fi
}
behave_install()
{
    sudo apt install python3-behave -y
    if [ $? -ne 0 ]
    then
         echo "behave installation failed"
    else
         echo "behave installed successfully"
    fi
}
cleanup_workspace()
{
  echo "removing old behave files"
  sudo rm -r /var/lib/jenkins/workspace/testbehave/features
  if [ $? -ne 0 ]
  then
        echo "error while removing behave files"
  else
        echo "behave files removed successfully"
  fi
  }
 behave_steps()
 {
   echo "steps to run BDD"
   sudo mkdir -p /var/lib/jenkins/workspace/testbehave/features/steps
   sudo cp -r ./test.feature /var/lib/jenkins/workspace/testbehave/features
   sudo cp -r ./test.py /var/lib/jenkins/workspace/testbehave/features/steps
   cd /var/lib/jenkins/workspace/testbehave
   behave
   }
   python_install
   behave_install
   cleanup_workspace
   behave_steps

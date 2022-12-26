pipeline
{
  agent any
  stages{
    stage(BDD)
    {
      steps{
        echo "BDD testing"
        sh " sudo chmod +x ./behave.sh"
        sh "./behave.sh"
      }
    }
  }
}

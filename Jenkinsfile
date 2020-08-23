node{
  
    stage ("Checkout")
	{
		echo 'Code checkout process starts'
		git branch: 'devops-demo',
		url: 'https://github.com/jenkinsci/jenkins.git'
		checkout scm
		echo 'Code checkout is completed'
	}
	stage ("Build")
	{
	  //  build 'nehr-pipeline'
		echo 'Code build is started'
		bat 'gradlew.bat clean build'
		echo 'Code build is completed'
	}
	stage ("Unit Test")
	{
	  //  build 'nehr-pipeline'
		echo 'Unit Test in preogress'
		bat 'gradlew.bat test'
		echo 'Unit test completed'
	}
}
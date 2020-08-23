node{
  
    stage ("Checkout sample code")
	{
		echo 'Checking out demo codebase'
		url: 'https://github.com/edureka-devops/projCert.git'
		checkout scm
		echo 'Code checkout is completed'
		
	}
	stage ("Checkout and build Image based on latest Dockerfile")
	{
		echo 'Code checkout process starts'
		url: 'https://github.com/nishsapkal/docker.git'
		checkout scm
		echo 'Dockerfile checkout is competed'
		
		echo 'Set up jenkins permissions to run docker'
		sh "sudo chown root:jenkins /run/docker.sock"
		echo 'Permission set up properly'
		
		def customImage = docker.build("custom-image:${env.BUILD_ID}")
		echo 'Image is built successfully. Lets run the contianer'
		
		customImage.inside {
		  stage("inside image") {
		  }
		
		}
	}
	stage ("Unit Test")
	{
	  //  build 'nehr-pipeline'
		//echo 'Unit Test in preogress'
		//bat 'gradlew.bat test'
		echo 'Unit test completed'
	}
}
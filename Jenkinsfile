node{
  
    stage ("Checkout sample code")
	{
		echo 'Checking out demo codebase'
		//checkout([$class: 'GitSCM', branches: [[name: '*/master']], doGenerateSubmoduleConfigurations: false, extensions: [[$class: //'RelativeTargetDirectory', relativeTargetDir: '.']], submoduleCfg: [], userRemoteConfigs: [[url: 'https://github.com/edureka-devops/projCert.git']]])
		checkout scm 
		
		echo 'Code checkout is completed'
		
	
	
	stage ("Build Image")
	{
		echo 'Code checkout process starts'
		//url: 'https://github.com/nishsapkal/docker.git'
		//checkout scm
		//echo 'Dockerfile checkout is competed'
		
		echo 'Set up jenkins permissions to run docker'
		sh "sudo chown root:jenkins /run/docker.sock"
		echo 'Permission set up properly'
		
		def customImage = docker.build("custom-image:${env.BUILD_ID}")
		echo 'Image is built successfully.'
			
	}
	stage ("Run Container")
	{
		echo 'Start running container'
	 	customImage = docker.image("custom-image:${env.BUILD_ID}").
		def custContainer=customImage.run('-d=true -p 9090:80') 
		echo 'Container is runnning successfully'
	}

	stage ("Unit Test")
	{
		echo 'Unit test started'
		sh "java -jar AboutUs.jar"
		echo 'unit test ends'
	}

		stage ("Stop Container")
		{
			custContainer.stop()
		}
	}
}
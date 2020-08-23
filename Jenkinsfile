node{
  
    stage ("Checkout Image")
	{
		echo 'Code checkout process starts'
		//git branch: 'devops-demo',
		url: 'https://github.com/nishsapkal/docker.git'
		
		//checkout scm
		checkout scm
	
		//customImage.push()
		echo 'Code checkout is completed'
	}
	stage ("Build Image")
	{
		echo 'Set up jenkins permissions to run docker'
		sh "sudo chown root:jenkins /run/docker.sock"
		echo 'Permission set up properly'
		def customImage = docker.build("my-image:${env.BUILD_ID}")
		echo 'Image is built successfully'
	}
	stage ("Unit Test")
	{
	  //  build 'nehr-pipeline'
		//echo 'Unit Test in preogress'
		//bat 'gradlew.bat test'
		echo 'Unit test completed'
	}
}
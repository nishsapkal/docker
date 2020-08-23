node{
  
    stage ("Checkout sample code")
	{
		echo 'Checking out demo codebase'
		url: 'https://github.com/edureka-devops/projCert.git'
		checkout scm
		echo 'Code checkout is completed'
		
	}
	stages{
	def customImage
		stage ("Checkout and build Image based on latest Dockerfile")
		{
			echo 'Code checkout process starts'
			url: 'https://github.com/nishsapkal/docker.git'
			checkout scm
			echo 'Dockerfile checkout is competed'
			
			echo 'Set up jenkins permissions to run docker'
			sh "sudo chown root:jenkins /run/docker.sock"
			echo 'Permission set up properly'
			
			customImage = docker.build("custom-image:${env.BUILD_ID}")
			echo 'Image is built successfully. Lets run the Container'
			
			docker.image("custom-image:${env.BUILD_ID}").withRun('-d=true -p 9090:80') {c ->
				docker.image("custom-image:${env.BUILD_ID}").withRun{
					timeout(time: 5, unit: 'MINUTES') {
                                    retry(5) {
                                       echo {"NO hello contianer"}
                                    }
				   /*  Do something here inside container  */
				  
				   echo {"Hello contianer"}
				   
				}
			}
		}
		stage ("Unit Test")
		{
						 
			echo 'Unit test completed'
		}
	}
}
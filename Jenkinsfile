pipeline {
	agent { docker { image 'seancollins/project3:latest' } }
	stages {

		stage('build') {
			steps {
				sh '''
					pwd
					ls
					mkdir build
					cd build
					cmake ..
					make
				'''
			}
		}

		stage('test') {
			steps {
				sh '''
					cd build
					ctest
				'''
			}
		}
	}

	post {
		always {
			sh '''
				cd ..
				rm -rf build
			'''
		}
	}

}

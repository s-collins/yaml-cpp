pipeline {
	agent { docker { image 'seancollins/project3:latest' } }
	stages {

		stage('build') {
			steps {
				sh '''
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
					ctest -D Experimental
				'''
			}
		}
	}

	post {
		always {
			sh 'rm -rf build'
		}
	}

}

pipeline {
	agent { docker { image 'seancollins/project3:latest' } }
	stages {
		stage('build') {
			steps {
				sh 'mkdir build',
				sh 'cd build'
				sh 'cmake ..'
				sh 'make'
			}
		}
		stage('test') {
			steps {
				sh 'cd build'
				sh 'ctest'
			}
		}
	}
}

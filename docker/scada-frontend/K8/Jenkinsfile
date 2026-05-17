pipeline {
    agent any

    triggers {
        githubPush()
    }

    stages {
        stage('Check PHP') {
            steps {
                sh 'php -v'
            }
        }

        stage('Check PHPUnit') {
            steps {
                sh 'phpunit --version'
            }
        }

        stage('Run Unit Tests') {
            steps {
                sh 'phpunit tests'
            }
        }
    }

    post {
        success {
            echo 'Congratulations! All tests passed successfully.'
        }

        failure {
            echo 'The code failed the tests! Please check the Console Output.'
        }

        always {
            echo 'Pipeline job finished.'
        }
    }
}
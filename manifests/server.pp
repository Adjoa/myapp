class myapp::server {
  class { 'java' :
    package => 'openjdk-6-jdk',
  }

  tomcat::install { '/opt/tomcat7':
    source_url => 'http://apache.claz.org/tomcat/tomcat-7/v7.0.75/bin/apache-tomcat-7.0.75.tar.gz',
  }

  tomcat::instance { 'tomcat7-myapp':
    catalina_home => '/opt/tomcat7',
    catalina_base => '/opt/tomcat7/myapp',
  }

  tomcat::config::server { 'tomcat7-myapp':
   catalina_base => '/opt/tomcat7/myapp',
  }  
}

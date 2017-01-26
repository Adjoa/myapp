class myapp::config {
  tomcat::config::server::connector { 'tomcat7-myapp-http':
    catalina_base         => '/opt/tomcat7/myapp',
    port                  => '9090',
    protocol              => 'HTTP/1.1',
  }

  tomcat::war { 'myapp.war':
    catalina_base => '/opt/tomcat7/myapp',
    war_source    => "puppet:///modules/myapp/teppup_myapp.war",
  }
}

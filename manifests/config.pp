class myapp::config(
  $myapp_port    = '9090',
  $myapp_version = 'myapp',
){
  tomcat::config::server::connector { 'tomcat7-myapp-http':
    catalina_base => '/opt/tomcat7/myapp',
    port          => $myapp_port,
    protocol      => 'HTTP/1.1',
  }

  tomcat::war { 'myapp.war':
    catalina_base => '/opt/tomcat7/myapp',
    war_source    => "puppet:///modules/myapp/teppup_${myapp_version}.war",
  }
}

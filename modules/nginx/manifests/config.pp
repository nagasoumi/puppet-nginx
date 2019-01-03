class nginx::config( 
	String $ensure     =   $::nginx::ensure,
        String $config_dir =   $::nginx::config_dir,
        String $mode       =   $::nginx::mode,
        String $owner      =   $::nginx::owner,
        String $group      =   $::nginx::group,
        String $confd      =   $::nginx::confd,
        String $log_dir    =   $::nginx::log_dir,
        String $pid_file   =   $::nginx::pid_file,
Optional[String] $vdir_enable = $::nginx::vdir_enable,
        String $process_user = $::nginx::process_user,
	String	$docroot  = $::nginx::docroot,
){
  file { 'nginx.conf' :
     ensure => $ensure,
     path => "${config_dir}/nginx.conf",
     mode => $mode,
     owner => $owner,
     group => $group,
     content => template("${module_name}/conf.d/nginx.conf.erb"),

	}
 file { $log_dir:
   ensure => directory,
   recures => true,

}
 file { $docroot:
   ensure => directory,
   recures => true,
    mode => $mode,
     owner => $owner,
     group => $group,

}
}

class nginx::install(
	String $ensure       = $::nginx::ensure,
	String $package_name = $::nginx::package_name,
) {
  package {'install_nginx':  
    ensure => $ensure,
    package_name => $package_name,
    

}

}

define mock::template(
  $ensure=present,
  $distro,
  $architecture,
  $version,
  $template
) {

  class { 'mock': } ->

  file { "/etc/mock/${distro}-${version}-${architecture}.cfg":
    ensure  => $ensure,
    content => template($template),
  }
}

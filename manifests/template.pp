define mock::template(
  $ensure=present,
  $distro,
  $architecture,
  $version,
  $template
) {

  include '::mock'

  file { "/etc/mock/${distro}-${version}-${architecture}.cfg":
    ensure  => $ensure,
    content => template($template),
    require => Package['mock'],
  }
}

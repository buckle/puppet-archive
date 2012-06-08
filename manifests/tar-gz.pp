define archive::tar-gz($source, $target) {
  Exec {
    path => ["/bin", "/usr/bin"],	
  }
  exec {"$name unpack":
    command => "curl ${source} | tar -xzf - -C ${target} && touch ${name}",
    creates => $name,
    require => Package[curl],
  }
}

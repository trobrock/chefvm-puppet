class chefvm {
  exec { "install chefvm":
    command => "git clone git://github.com/trobrock/chefvm.git ~/.chefvm",
    creates => "/Users/$id/.chefvm"
  }

  exec { "add chefvm to path":
    command => "echo '[[ -s \"\$HOME/.chefvm/scripts/chefvm\" ]] && . \"\$HOME/.chefvm/scripts/chefvm\"' >> /Users/$id/.zshenv",
    unless  => "grep chefvm /Users/$id/.zshenv"
  }
}

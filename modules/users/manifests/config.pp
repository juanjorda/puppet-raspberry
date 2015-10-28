# TODO:(1) This should be parameterized as an array of users. Maybe in a JSON file? @refactor 

class users::config {
  ssh_authorized_key { 'juanter':
  	user => 'juanter',
  	type => 'ssh-rsa',
  	key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC1V13aAC5wXMLV5Q+NBaICA28BZFCHHxcko//skorinJrEnHWyCYSsX7XmD8fqWphFPHhitH5Tt3ORSrYuiOfS9ANuYx335uB2cBT2+yx4cvK04EEpK1MFZKJzhB+kr4S48PAHvnzxkFG93uq99LdUupPdxib9FSVQR9BogjfLZHloJwZvcEufAKhSecs4Kd0Ymqiag7LI+tzBmRvz0c/5AA+d/ECdz/fJijfFu70cZEU+b3ugu8DdjBxIlShgz7eV0KAc9uJpQOi4vn+tSeNAbFUJBxW8ymLV9T/p2mhnY04dH9FYA4PVDIcin4SWEz/IKTVC7SXn1uj2My+jfWLr',
  }

  file { "/etc/sudoers.d/juanter":
    ensure  => "present",
    content => "juanter  ALL=(ALL) NOPASSWD:ALL\n",
    mode    => 644,
  }

  file_line { "Delete pi from sudoers":
    ensure  => "absent",
    path    => "/etc/sudoers",
    line => "pi ALL=(ALL) NOPASSWD: ALL",
  }

# TEST:(5) Test that the alias is in bashrc and works
  file_line { "Add aliases to bashrc":
    ensure  => "present",
    path    => "/home/juanter/.bashrc",
    line => "set -o vi",
  }
}

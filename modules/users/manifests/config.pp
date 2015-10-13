class users::config {
  ssh_authorized_key { 'juanter':
	user => 'root@raspjuanter',
	type => 'ssh-rsa',
	key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC1V13aAC5wXMLV5Q+NBaICA28BZFCHHxcko//skorinJrEnHWyCYSsX7XmD8fqWphFPHhitH5Tt3ORSrYuiOfS9ANuYx335uB2cBT2+yx4cvK04EEpK1MFZKJzhB+kr4S48PAHvnzxkFG93uq99LdUupPdxib9FSVQR9BogjfLZHloJwZvcEufAKhSecs4Kd0Ymqiag7LI+tzBmRvz0c/5AA+d/ECdz/fJijfFu70cZEU+b3ugu8DdjBxIlShgz7eV0KAc9uJpQOi4vn+tSeNAbFUJBxW8ymLV9T/p2mhnY04dH9FYA4PVDIcin4SWEz/IKTVC7SXn1uj2My+jfWLr',
  }
}

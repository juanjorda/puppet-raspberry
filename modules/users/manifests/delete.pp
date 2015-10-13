class users::delete {
  user { 'pi':
  	ensure  => 'absent',
  }
}



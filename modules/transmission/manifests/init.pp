class users {
  require users::create
  include users::config, users::delete
}
package 'git-core'

node[:groups].each do |g|
  group g[:name] do
    gid g[:gid]
  end
end

%w(
   ruby-shadow
   users
   ruby_build
   rbenv::system
   nginx::passenger
   nginx::source
   postgresql::server
   postgresql::client
   logrotate
   sudo
   ).
   each {|recipe| include_recipe recipe}

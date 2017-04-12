# This is a Chef recipe file. It can be used to specify resources which will
# apply configuration to a server.

log "Welcome to Chef, #{node["starter_name"]}!" do
  level :info
end


include_recipe "groups"

group_manage "users" do
  user_name "111"
end




group 'docker' do
  action :create
  members 'maintenance'
  append true
end

user 'user1' do
  comment 'First user'
  uid '1234'
  gid '1234'
  home '/home/'
end

user 'user2' do
  comment 'Second random user'
  uid '1234'
  gid '1234'
  home '/home/random'
end

# For more information, see the documentation: https://docs.chef.io/essentials_cookbook_recipes.html

directory "/var/www/hello/current" do
  action :create
  recursive true
end

git "/var/www/hello/current" do
  repository "http://github.com/mathfur/test.git"
  reference "master"
  action :sync
end

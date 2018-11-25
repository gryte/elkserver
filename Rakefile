desc 'Define default task'
task default: [:cookstyle, :foodcritic, :berksinstall, :berksupdate, :kitchentest, :berksupload]

desc 'Run cookstyle'
task :cookstyle do
  sh 'cookstyle'
end

desc 'Run foodcritic in current directory'
task :foodcritic do
  # ignore databag helper rule: http://www.foodcritic.io/#FC086
  # it is not clear how to perform this work outside of the .erb file
  sh 'foodcritic . --tags ~FC086 --tags ~FC078'
end

desc 'Run berks install in current directory'
task :berksinstall do
  sh 'berks install'
end

desc 'Run berks update in current directory'
task :berksupdate do
  sh 'berks update'
end

desc 'Run kitchen test in current directory'
task :kitchentest do
  sh 'kitchen test'
end

desc 'Berks upload deluge cookbook'
task :berksupload do
  sh 'berks upload'
end

desc 'Delete testserver node'
task :deletenode_test do
  sh 'knife node delete testserver -y'
end

desc 'Delete testserver client'
task :deleteclient_test do
  sh 'knife client delete testserver -y'
end

desc 'Remove testserver from chef server'
task remove_test: [:deletenode_test, :deleteclient_test]

desc 'Bootstrap test server'
task bootstrap_test: [:berksupload, :remove_test] do
  ip_addr = '192.168.1.234'
  environment = 'test'
  node_name = 'testserver'
  run_list = 'role[base_role]'
  ssh_user = 'test'
  ssh_pw = 'test'
  bootstrap_version = '14.4.56'

  sh "knife bootstrap #{ip_addr} -E #{environment} -N #{node_name} -r #{run_list} --sudo --ssh-user #{ssh_user} --ssh-password #{ssh_pw} --use-sudo-password --bootstrap_version #{bootstrap_version}"
end

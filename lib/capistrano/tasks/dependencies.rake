namespace :dependencies do
  desc 'Install python dependencies'
  task :python do
    on roles(:all) do
      execute "sudo apt-get update"
      execute "sudo apt-get -y install software-properties-common"
      execute "sudo add-apt-repository ppa:deadsnakes/ppa"
      execute "sudo apt-get update"
      execute "sudo apt-get -y install python3.7 python3-pip"
      execute :pip3, "install ndexutil -r #{current_path}/misc_scripts/ndex_requirements.txt --no-cache-dir --no-deps"
      execute :pip3, "install civicpy==1.0.0rc2"
    end
  end
end

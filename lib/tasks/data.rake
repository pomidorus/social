namespace :data do
  task :delete_46 => :environment do
    d = Profile.find(46)
    d.delete!
  end
end
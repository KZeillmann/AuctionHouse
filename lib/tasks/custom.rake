namespace :db do
  desc "Completely rebuild the database by dropping, migrating, and seeding it"
  task rebuild: [:drop, :migrate, :seed]

  namespace :rebuild do
    desc "Rebuild the test database"
    task :test do
      cmd = "RAILS_ENV=test bin/rake db:drop db:setup"
      puts "Forking to: #{cmd}"
      system(cmd)
    end
  end
end

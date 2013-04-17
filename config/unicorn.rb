env = ENV["RAILS_ENV"] || "development"

worker_processes = 2

listen "/tmp/Gfs.socket", backlog: 64

preload_app true

timeout 30

pid "/tmp/spree.Gfs.pid"

if env = "production"
  
  working_directory "/home/spree/Gfs/current"

  user 'spree'

  shared_path = "/home/spree/Gfs/shared"

  stderr_path "#{shared_path}/log/unicorn.stderr.log"
  stdout_path "#{shared_path}/log/unicorn.stdout.log"
end

before_fork do |server, worker|
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.connection.disconnect!
  end

  old_pid = "/tmp/unicorn.Gfs.pid.oldbin"
  if File.exists?(old_pid) && server.pid != old_pid
    begin
      Process.kill("QUIT", File.read(old_pid).to_i)
    rescue Errno::ENOENT, Errno::ESRCH
    end
  end
end

after_fork do |server, worker|
  if defined?(ActiveRecord::Base)
    ActiveRecord::Base.establish_connection
  end
end


worker_processes 10
preload_app true
listen "/var/socks/unicorn.sock"

# stdout_path File::NULL unless ENV['ISUDEBUG']
# stderr_path File::NULL unless ENV['ISUDEBUG']

# using Block

using Oxygen
using Aeron
using TOML

# Start with at least two threads.
# Dedicate one thread to the processing loop
# The other one will respond to requests

# TODO: Read this from a config file
conf = AeronConfig1(
    "aeron:udp?endpoint=localhost:20121",
    stream=1001,
)


loop = Threads.@spawn begin
    errormonitor(current_task())
    println("start")
    sleep(1)
    error()
    println("done")
    
    # Aeron.subscribe(conf) do buffer
    
    #     total = sum(buffer)
        
    # end
end


# At startup put 

# Endpoints:

# run? no, it should always just start by running right?
# GC
# stats (fps, etc)
#

# Need to read host and port from config file
serve(; host="0.0.0.0", port=8080)
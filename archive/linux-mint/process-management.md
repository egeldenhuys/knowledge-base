Process Management
==================

### Show all running processes

`ps -A`

OR

`ps aux`

### Find pid of process

`pidof <name>`

OR

`ps -A | grep <name>`


### Kill process

`kill [signal] PID`

Example: `kill -SIGTERM conky`

**Signals:**

- SIGHUP (1) - Hangup detected on controlling terminal or death of controlling process. 
Use SIGHUP to reload configuration files and open/close log files.
- SIGKILL (9) - Kill signal. Use SIGKILL as a last resort to kill process. This will not 
save data or cleaning kill the process.
- SIGTERM (15) - Termination signal. This is the default and safest way to kill process.


- See [Post by nixCraft. "Show All Running Processes in Linux" - cyberciti.biz](http://www.cyberciti.biz/faq/show-all-running-processes-in-linux/)
- See [Post by nixCraft. "Kill Process in Linux or Terminate a Process in UNIX / Linux Systems" - cyberciti.biz](http://www.cyberciti.biz/faq/kill-process-in-linux-or-terminate-a-process-in-unix-or-linux-systems/)

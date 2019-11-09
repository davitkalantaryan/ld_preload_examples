# ld_preload_examples
Example projects, to show, how one can use LD_PRELOAD environmental variable in the linux  

## Use cases  
  
### Crash investigation  
The memory handling functions (malloc, calloc, realloc, free, operator new, operator free) are defined as weak symbols, so in the case 
if we have some memory issues in the  application, we can preload some library, that will modifiy sightly memory handling functions in 
order to have some usefull logging alongside with memory allocation or deallocation (see 
[crash investigation](https://github.com/davitkalantaryan/crash-investigations))  
  
### To much logging  
From time to time there are applications (mainly servers) producing to much log. For example recently we observed that ZMQ based 
eventNumber-time receivers in the PITZ DAQ hosts producing to much logs (90GB in the pitzdaq5) in the case of some conditions.  In order to 
solve such verbos server issues w can redirect error or output pipe to /dev/nul, but this is not always acceptable, because from time 
to time we have some important information, that we need access. If we do not have chance to open and modify source and compilethe server agai
then one of the solution, where we will have logging, but suppressed is using LD_PRELOAD, to include there some logic of filtering unnnecessary 
logs.  


## What is implemented in this repo  

### Example (test) applications of log filtering 
  
### Example of memory investigation  
For the moment this is not implemented, how to change behaviors of memory allocation functions, one can check from [memory handling](https://github.com/davitkalantaryan/crash-investigations)

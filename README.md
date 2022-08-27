## preuse measurement
preuse measurement are implemented in replacement/lru.llc_repl  
preuse is computed as the number of set accesses between the last access and the current access of the cache line. To compute line preuse, we add counters for every cache line. On a set access, the counters of all cache lines in that set are incremented. If the access is a hit, the counter value corresponds to its preuse distance, then we reset the counter. On a miss, a new cache line is installed. We then reset the counter and start counting the preuse distance of the newly inserted cache line. 

#### Download the traces (memory-intensive SPEC CPU2006 and 2017 traces):
> cd scripts/  
> ./download_traces.sh      

You can define the traces you prefer to download in scripts/mix.txt.  

#### How to compile and run the simulation:  
LRU replacement, and without any prefetcher:   
> ./build_champsim.sh no        

will create the binary perceptron-no-no-no-lru-4core (4-core configuration).  
Then you can define your simuations in ./4-core.sh, and measure the presure of memory-intensive SPEC CPU2006 and 2017 traces using:    
> ./4-core.sh. 


## RL-Based Bypassing 
  
The RL algorithm (with Eplison update) is defined in replacement/rl.llc_repl.  
The fuction llc_update_bypass_state_decision is used to assign the reward for the EQ entry and predeiction:  
For each access, if it accesses sampled sets, then its corresponding address are used to assign reward for the EQ entry.  
If there is a miss access for cache, the RL-agent will provide an action, then the new (state, action) pair are inserted into the EQ.  
The Q-Table are updated when the entry are evicted from the EQ.

#### Default Configuration:  
Features used are: PC, Page  
Two actions are 0: inserting, 1: bypassing.   
Rewards: 10 for good decision, -10 for bad decision.     
n sampled sets are used to observe the access patterns; n EQs are used (one EQ for one sampled set), each has 16 entries.   
The Q-Table size can be changed by changing the NUM_TILE in line 28. When the NUM_TILE is 16, the total Q-Table (for 2 features) size is 1.5KB.     
Please set the NUM_TILE to 64, 128, 256, 512, 1024, 2048, 4096, 8192, 16384, 32768 to explore the performacne with Q-Table size 1.5KB, 3KB, 6KB, 12KB, 24KB, 48KB, 96KB, 192KB, 384KB, 768KB.   


#### Download the traces (memory-intensive SPEC CPU2006 and 2017 traces):
> cd scripts/  
> ./download_traces.sh      

You can define the traces you prefer to download in scripts/mix.txt.  

#### How to compile the simulation:  
Using RL-bypassing, LRU replacement, and without any prefetcher:   
> ./build_champsim.sh no        

will create the binary perceptron-no-no-no-rl-4core (4-core configuration).  
Simuations are defined in ./4-core.sh. (only SPEC CPU 2017 traces are defined in /4-core.sh by default)


#### Explore the impact of sampling on performance:
The number of sampled sets can be changed by changing the NUM_LEADER_SETS in line 50. To explore the impact of sampling on performance, the NUM_LEADER_SETS are set to 16, 32, 64, 128, 256, 512, 1024, 2048, 4096, 8192.
Please check the script ./optimization_eq.sh, which can help execute the ./4-core.sh with different numbers of sampled sets.  


## RL-Based Bypassing 
  
The RL algorithm is defined in replacement/rl.llc_repl.   
The fuction llc_update_bypass_state_decision is used to assign the reward for the EQ entry and predeiction:  
For each access, if it accesses sampled sets, then its corresponding address are used to assign reward for the EQ entry.  
If there is a miss access for cache, the RL-agent will provide an action, then the new (state, action) pair are inserted into the EQ.  
The Q-Table are updated when the entry are evicted from the EQ.

#### Default Configuration:  
Features used are: PC, Page, last 5 PCs.   
Two actions are 0: inserting, 1: bypassing.   
Rewards: 10 for good decision, -10 for bad decision.     
ALL sets are used to observe the access patterns; LLC_SET EQs are used (one EQ for one set), each has 16 entries.

#### Download the traces (memory-intensive SPEC CPU2006 and 2017 traces):
> cd scripts/  
> ./download_traces.sh      

You can define the traces you prefer to download in scripts/mix.txt.  

#### How to compile and run the simulation:  
Using RL-bypassing, LRU replacement, and without any prefetcher:   
> ./build_champsim.sh no        

will create the binary perceptron-no-no-no-rl-4core (4-core configuration).  
Then you can define your simuations in ./4-core.sh, and run them using:  
> ./4-core.sh. 



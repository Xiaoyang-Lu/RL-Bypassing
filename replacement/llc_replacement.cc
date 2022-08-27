#include "cache.h"

uint32_t preuse_1 = 0;
uint32_t preuse_2 = 0;
uint32_t preuse_3 = 0;
uint32_t preuse_4 = 0;
uint32_t preuse_5 = 0;
uint32_t preuse_6 = 0;
uint32_t preuse_7 = 0;
uint32_t preuse_8 = 0;
uint32_t preuse_9 = 0;
uint32_t preuse_10 = 0;
uint32_t preuse_11 = 0;
uint32_t preuse_12 = 0;
uint32_t preuse_13 = 0;
uint32_t preuse_14 = 0;
uint32_t preuse_15 = 0;
uint32_t preuse_16 = 0;

uint32_t preuse_dis[65]; //how many cache hit with reuse distance x?
uint32_t preuse_dis_lager_than_64 = 0;
uint32_t demand_hit_count = 0;
uint32_t preuse[LLC_SET][LLC_WAY]; //collect reuse distance (set) for each cache block

// initialize replacement state
void CACHE::llc_initialize_replacement()
{
    cout << "Initialize PREUSE state" << endl;

    for(int i = 0; i < 65; i++)
    {
	preuse_dis[i] = 0;
    }

    for (int i=0; i<LLC_SET; i++) {
        for (int j=0; j<LLC_WAY; j++) {
            preuse[i][j] = 0;
        }
    }
}

// find replacement victim
uint32_t CACHE::llc_find_victim(uint32_t cpu, uint64_t instr_id, uint32_t set, const BLOCK *current_set, uint64_t ip, uint64_t full_addr, uint32_t type, uint64_t time)
{
    // baseline LRU
    return lru_victim(cpu, instr_id, set, current_set, ip, full_addr, type); 
}

// called on every cache hit and cache fill
void CACHE::llc_update_replacement_state(uint32_t cpu, uint32_t set, uint32_t way, uint64_t full_addr, uint64_t ip, uint64_t victim_addr, uint32_t type, uint8_t hit, uint64_t pure_miss)
{
    string TYPE_NAME;
    if (type == LOAD)
        TYPE_NAME = "LOAD";
    else if (type == RFO)
        TYPE_NAME = "RFO";
    else if (type == PREFETCH)
        TYPE_NAME = "PF";
    else if (type == WRITEBACK)
        TYPE_NAME = "WB";
    else
        assert(0);

    if (hit)
        TYPE_NAME += "_HIT";
    else
        TYPE_NAME += "_MISS";

    if ((type == WRITEBACK) && ip)
        assert(0);

    // uncomment this line to see the LLC accesses
    // cout << "CPU: " << cpu << "  LLC " << setw(9) << TYPE_NAME << " set: " << setw(5) << set << " way: " << setw(2) << way;
    // cout << hex << " paddr: " << setw(12) << paddr << " ip: " << setw(8) << ip << " victim_addr: " << victim_addr << dec << endl;
   
   if(type != WRITEBACK && warmup_complete[cpu])
   {
	for (int i=0; i<LLC_WAY; i++)
	{
		preuse[set][i]++;
	}
	
	if(hit)
	{
		demand_hit_count++;
		if(preuse[set][way] <= 64)
		{
			preuse_dis[preuse[set][way]]++;
		}
		else
		{
			preuse_dis_lager_than_64++;
		}
	}
	preuse[set][way] = 0;	
   }
   
    // baseline LRU
    if (hit && (type == WRITEBACK)) // writeback hit does not update LRU state
        return;

    return lru_update(set, way);
}

void CACHE::llc_replacement_final_stats()
{
	cout << "demand_hit_count: " << demand_hit_count << endl;
	for(int i = 0; i < 65; i++)
	{
		cout << "presuse_distance_" << i << "_count: " << preuse_dis[i] << endl;  
	}

	cout << "presuse_distance_larger_than_64_count: " << preuse_dis_lager_than_64 << endl;
}

void CACHE::llc_replacement_broadcast_bw(uint8_t bw_level)
{
	//cout << (int)bw_level << endl;
}



void CACHE::llc_replacement_broadcast_cal_level(uint32_t cal)
{
	//cout << cal << endl;
	cal_level = cal;
}


uint32_t CACHE::llc_update_bypass_state_decision(uint32_t cpu, uint32_t set, uint32_t way, uint64_t full_addr, uint64_t ip, uint64_t victim_addr, uint32_t type, uint8_t hit, uint64_t pure_miss, uint64_t time)
{
	return 0;
}

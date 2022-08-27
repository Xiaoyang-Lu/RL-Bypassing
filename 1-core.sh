declare -A myMap

myMap["401.bzip2-277B"]="/home/cc/champsim/traces/401.bzip2-277B.champsimtrace.xz"
myMap["434.zeusmp-10B"]="/home/cc/champsim/traces/434.zeusmp-10B.champsimtrace.xz"
myMap["435.gromacs-226B"]="/home/cc/champsim/traces/435.gromacs-226B.champsimtrace.xz"
myMap["456.hmmer-88B"]="/home/cc/champsim/traces/456.hmmer-88B.champsimtrace.xz"
myMap["481.wrf-455B"]="/home/cc/champsim/traces/481.wrf-455B.champsimtrace.xz"
myMap["602.gcc_s-1850B"]="/home/cc/champsim/traces/602.gcc_s-1850B.champsimtrace.xz"
myMap["607.cactuBSSN_s-2421B"]="/home/cc/champsim/traces/607.cactuBSSN_s-2421B.champsimtrace.xz"
myMap["620.omnetpp_s-874B"]="/home/cc/champsim/traces/620.omnetpp_s-874B.champsimtrace.xz"
myMap["625.x264_s-20B"]="/home/cc/champsim/traces/625.x264_s-20B.champsimtrace.xz"
myMap["628.pop2_s-17B"]="/home/cc/champsim/traces/628.pop2_s-17B.champsimtrace.xz"
myMap["657.xz_s-2302B"]="/home/cc/champsim/traces/657.xz_s-2302B.champsimtrace.xz"
myMap["403.gcc-17B"]="/home/cc/champsim/traces/403.gcc-17B.champsimtrace.xz"
myMap["410.bwaves-2097B"]="/home/cc/champsim/traces/410.bwaves-2097B.champsimtrace.xz"
myMap["429.mcf-22B"]="/home/cc/champsim/traces/429.mcf-22B.champsimtrace.xz"
myMap["433.milc-127B"]="/home/cc/champsim/traces/433.milc-127B.champsimtrace.xz"
myMap["436.cactusADM-1804B"]="/home/cc/champsim/traces/436.cactusADM-1804B.champsimtrace.xz"
myMap["437.leslie3d-232B"]="/home/cc/champsim/traces/437.leslie3d-232B.champsimtrace.xz"
myMap["450.soplex-247B"]="/home/cc/champsim/traces/450.soplex-247B.champsimtrace.xz"
myMap["459.GemsFDTD-1491B"]="/home/cc/champsim/traces/459.GemsFDTD-1491B.champsimtrace.xz"
myMap["462.libquantum-1343B"]="/home/cc/champsim/traces/462.libquantum-1343B.champsimtrace.xz"
myMap["470.lbm-1274B"]="/home/cc/champsim/traces/470.lbm-1274B.champsimtrace.xz"
myMap["471.omnetpp-188B"]="/home/cc/champsim/traces/471.omnetpp-188B.champsimtrace.xz"
myMap["473.astar-359B"]="/home/cc/champsim/traces/473.astar-359B.champsimtrace.xz"
myMap["482.sphinx3-417B"]="/home/cc/champsim/traces/482.sphinx3-417B.champsimtrace.xz"
myMap["483.xalancbmk-127B"]="/home/cc/champsim/traces/483.xalancbmk-127B.champsimtrace.xz"
myMap["603.bwaves_s-2609B"]="/home/cc/champsim/traces/603.bwaves_s-2609B.champsimtrace.xz"
myMap["605.mcf_s-472B"]="/home/cc/champsim/traces/605.mcf_s-472B.champsimtrace.xz"
myMap["619.lbm_s-2676B"]="/home/cc/champsim/traces/619.lbm_s-2676B.champsimtrace.xz"
myMap["621.wrf_s-6673B"]="/home/cc/champsim/traces/621.wrf_s-6673B.champsimtrace.xz"
myMap["623.xalancbmk_s-10B"]="/home/cc/champsim/traces/623.xalancbmk_s-10B.champsimtrace.xz"
myMap["627.cam4_s-490B"]="/home/cc/champsim/traces/627.cam4_s-490B.champsimtrace.xz"
myMap["649.fotonik3d_s-10881B"]="/home/cc/champsim/traces/649.fotonik3d_s-10881B.champsimtrace.xz"
myMap["654.roms_s-523B"]="/home/cc/champsim/traces/654.roms_s-523B.champsimtrace.xz"




BINARY=perceptron-no-no-no-lru-1core
N_WARM=10
N_SIM=50




(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['401.bzip2-277B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['403.gcc-17B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['410.bwaves-2097B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['429.mcf-22B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['433.milc-127B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['436.cactusADM-1804B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['437.leslie3d-232B']})

(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['450.soplex-247B']})

(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['456.hmmer-88B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['459.GemsFDTD-1491B']})



(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['462.libquantum-1343B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['470.lbm-1274B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['473.astar-359B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['481.wrf-455B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['482.sphinx3-417B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['483.xalancbmk-127B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['602.gcc_s-1850B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['603.bwaves_s-2609B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['605.mcf_s-472B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['607.cactuBSSN_s-2421B']})



(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['619.lbm_s-2676B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['620.omnetpp_s-874B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['621.wrf_s-6673B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['623.xalancbmk_s-10B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['625.x264_s-20B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['627.cam4_s-490B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['628.pop2_s-17B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['649.fotonik3d_s-10881B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['654.roms_s-523B']})
(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['657.xz_s-2302B']})


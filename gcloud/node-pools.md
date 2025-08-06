
# Command to create the first node pool (c4a):
```bash
gcloud container node-pools create c4a-node-pool \
  --project=evlv-self-contained-clusters \
  --cluster=phpbench-self-contained \
  --region=us-central1 \
  --machine-type=c4a-standard-4 \
  --num-nodes=1 \
  --node-labels=node-pool=c4a,instance-type=c4a-standard-4 \
  --enable-autoupgrade \
  --enable-autorepair
```

# Command to create the second node pool (c4d):
```bash
gcloud container node-pools create c4d-node-pool \
  --project=evlv-self-contained-clusters \
  --cluster=phpbench-self-contained \
  --region=us-central1 \
  --machine-type=c4d-standard-4 \
  --num-nodes=1 \
  --node-labels=node-pool=c4d,instance-type=c4d-standard-4 \
  --enable-autoupgrade \
  --enable-autorepair
```

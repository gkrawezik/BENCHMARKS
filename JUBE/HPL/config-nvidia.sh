## Settings based on hwloc-ls
CPU_CORES_PER_RANK=4
GPU_AFFINITY="0:1:2:3"
GPU_CLOCK="1380,1410"

# SINGLE NODE
CPU_AFFINITY="0-15:16-31:32-47:48-63"
MEM_AFFINITY="0:0:1:1"
NET_AFFINITY="mlx5_0:mlx5_0:mlx5_0:mlx5_0"

# MULTI NODE
# Infiniband cards are connected to numa node 0
#CPU_AFFINITY="0-7:8-15:16-23:24-31"
#MEM_AFFINITY="0:0:0:0"
# One infiniband as ib0
#NET_AFFINITY="mlx5_0:mlx5_0:mlx5_0:mlx5_0"
# If using regular TCP
#NET_AFFINITY="mlx5_1:mlx5_1:mlx5_1:mlx5_1"



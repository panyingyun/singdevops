singularity run cpi_v0.2.sif cpi

# singularity run cpi_v0.2.sif mpirun -np 4 cpi

# singularity run cpi_v0.2.sif mpirun --host master:2 cpi

# singularity run cpi_v0.2.sif mpirun --host cn01:2 cpi

# mpirun  --mca btl_tcp_if_include 192.168.0.0/24 --host master:16,cn01:16 singularity run cpi_v0.2.sif cpi

# mpirun  --mca btl_tcp_if_include 192.168.0.0/24 --host master:48,cn01:16 singularity run cpi_v0.2.sif cpi

# singularity run cpi_v0.2.sif mpirun --mca btl_tcp_if_include 192.168.0.0/24 --host master:16,cn01:16 cpi

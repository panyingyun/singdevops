## 演示 singurity 打包 MPI 并行

#### 打包镜像

```bash
sudo singularity build cpi_v0.1.sif cpi.def
```

#### 使用镜像

```bash
singularity run cpi_v0.1.sif /opt/app/cpi
```

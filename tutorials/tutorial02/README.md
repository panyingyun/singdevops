## 演示 singurity 打包 VTK 可视化应用

使用方式

#### 打包镜像

sudo singularity build vtk_v0.1.sif vtk.def

#### 使用镜像

singularity run vtk_v0.1.sif

#### generate requirements.txt
pip install pipreqs
pipreqs .
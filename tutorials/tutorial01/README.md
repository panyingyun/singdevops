## 演示 singurity 打包 python 命令行

使用方式

#### 打包镜像

sudo singularity build hello_v0.1.sif hello.def

#### 使用镜像

singularity run hello_v0.1.sif 10 20

#### generate requirements.txt
pip install pipreqs
pipreqs .
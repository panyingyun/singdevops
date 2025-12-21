singularity run --app sum -B $PWD/appdata:/opt/appdata apps_v1.0.sif

singularity run --app square -B $PWD/appdata:/opt/appdata apps_v1.0.sif
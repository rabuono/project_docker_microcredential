#!/bin/bash
#SBATCH --job-name=apptainer_build
#SBATCH --partition=debug_28C_56T_750GB
#SBATCH --mem=8G
#SBATCH --time=01:00:00

# Define variables
TRAIN_IMG="docker://rabuono/skelearn_train:v2"
SERVE_IMG="docker://rabuono/skelearn_serve:v2"
#Ask for path in command
SCRIPT_DIR=$1
# Define output folder for logs
LOG_DIR="$SCRIPT_DIR/logs"

# Create log directory if it doesn't exist
mkdir -p $LOG_DIR

# Pull Docker images using Apptainer and save logs
echo "Building training image..."
apptainer build --fakeroot model-train.sif $TRAIN_IMG > $LOG_DIR/train_image_build.log 2>&1

echo "Building serving image..."
apptainer build --fakeroot model-serve.sif $SERVE_IMG > $LOG_DIR/serve_image_build.log 2>&1

echo 'Job finished'
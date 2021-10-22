#!/bin/sh
# */AIPND-revision/intropyproject-classify-pet-images/run_models_batch_uploaded.sh
#
# PROGRAMMER: Essam Goda
# DATE CREATED: 22/10/2021
# REVISED DATE: 
# PURPOSE: Runs all three models to test which provides 'best' solution on the Uploaded Images.
#          Please note output from each run has been piped into a text file.
#
# Usage: sh run_models_batch_uploaded.sh    -- will run program from commandline within Project Workspace
#
python3 check_images.py --dir uploaded_images/ --arch resnet  --dogfile dognames.txt > resnet_uploaded-images.txt
python3 check_images.py --dir uploaded_images/ --arch alexnet --dogfile dognames.txt > alexnet_uploaded-images.txt
python3 check_images.py --dir uploaded_images/ --arch vgg  --dogfile dognames.txt > vgg_uploaded-images.txt

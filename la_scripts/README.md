# LOM instructions on running these extra scripts

**Important:** 

Note that this code is forked from [https://github.com/zjunlp/EasyEdit](https://github.com/zjunlp/EasyEdit) which is a which is a well maintained, currently active model editing library, whose authors are kindly responsive to issues and requests. 
The code was continuously synced with the original repo (up until 2024/12/03).
However, in case there are problems in the future with merging this with the original repo, a fresh clone/fork and adding these scripts with amendments as required is probably the simplest solution (as their code is maintained while this fork isn't).

The set up for this fork is the same as for the original repo - see the main README.md. 
New scripts are added here, however many other changes have been made to the fork to implement the desired methods and model editing.  


## Experiments with modified datasets (omitting a category to test generalisation). 
Go to edit_json.sh, activate your environments as you created them, and uncomment which sub dataset you wish to create. 

Run ``sbatch -p qcpu la_scripts/edit_json.sh``

## Editing models
Again, activate your environments as you created them and uncomment a method you wish to run. 

Go to la_scripts/run.sh and set the bash script to run DINM with the data-subset you wish (e.g., it is currently set to the whole SafeEdit test dataset). 

You will need to run on an 80GB A100 GPU with the command ``sbatch -p qgpu-debug la_scripts/run.sh`` (already stated in bash script).

Models will be saved in /safety_results/models/llama-7b-DIMN-all (or wherever upi specify if you edit this in the bash script). 

## Evaluate models
Evaluate models with the [lm-evaluation-harness](https://github.com/EleutherAI/lm-evaluation-harness) package. 
Clone and install the repo as per the library instructions. 
This willevaluate your desired model on some well known benchmarks. 



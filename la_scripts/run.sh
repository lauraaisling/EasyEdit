#!/bin/sh

#SBATCH --job-name=DINM_wo_pri
# 1 "la_scripts/log_test_mend0.txt"
# 2 "la_scripts/log_test_safeedit_DINM0.txt" 
# 3 "la_scripts/log_test_safeedit_DINM_wo_bias.txt" 
# "la_scripts/log_test_safeedit_DINM_wo_pri.txt" 
# "la_scripts/log_test_safeedit_MENDtest.txt" 
#SBATCH --out="la_scripts/log_test_safeedit_MENDtest.txt" 
#SBATCH --time=72:00:00
#SBATCH --gres=gpu:tesla_a100_80g:1
#SBATCH --cpus-per-gpu=4

conda init
conda activate myenv397
source /home/smg/v-lauraom/venvs/EasyEdit/bin/activate 

# 1 python la_scripts/run_mend_zsre_llama-7b.py
# 2 python examples/run_safety_editing.py --editing_method=MEND --edited_model=llama-7b --hparams_dir=./hparams/MEND/llama-7b --safety_classifier_dir=zjunlp/SafeEdit-Safety-Classifier --metrics_save_dir=./safety_results
# 3 python examples/run_safety_editing.py --editing_method=DINM --edited_model=llama-7b --hparams_dir=./hparams/DINM/llama-7b --data_path=./data/SafeEdit_test_ALL.json --safety_classifier_dir=zjunlp/SafeEdit-Safety-Classifier --metrics_save_dir=./safety_results/DINM/all --ckpt_save_dir=safety_results/models/llama-7b-DIMN-all

# python examples/run_safety_editing.py --editing_method=DINM --edited_model=llama-7b --hparams_dir=./hparams/DINM/llama-7b --data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_pol.json --safety_classifier_dir=zjunlp/SafeEdit-Safety-Classifier --metrics_save_dir=./safety_results/DINM/wo-pol --ckpt_save_dir=safety_results/models/llama-7b-DINM-wo-pol
# python examples/run_safety_editing.py --editing_method=DINM --edited_model=llama-7b --hparams_dir=./hparams/DINM/llama-7b --data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_physical.json --safety_classifier_dir=zjunlp/SafeEdit-Safety-Classifier --metrics_save_dir=./safety_results/DINM/wo-physical --ckpt_save_dir=safety_results/models/llama-7b-DINM-wo-physical
# python examples/run_safety_editing.py --editing_method=DINM --edited_model=llama-7b --hparams_dir=./hparams/DINM/llama-7b --data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_porn.json --safety_classifier_dir=zjunlp/SafeEdit-Safety-Classifier --metrics_save_dir=./safety_results/DINM/wo-porn --ckpt_save_dir=safety_results/models/llama-7b-DINM-wo-porn
# python examples/run_safety_editing.py --editing_method=DINM --edited_model=llama-7b --hparams_dir=./hparams/DINM/llama-7b --data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_mental.json --safety_classifier_dir=zjunlp/SafeEdit-Safety-Classifier --metrics_save_dir=./safety_results/DINM/wo-mental --ckpt_save_dir=safety_results/models/llama-7b-DINM-wo-mental
# python examples/run_safety_editing.py --editing_method=DINM --edited_model=llama-7b --hparams_dir=./hparams/DINM/llama-7b --data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_pri.json --safety_classifier_dir=zjunlp/SafeEdit-Safety-Classifier --metrics_save_dir=./safety_results/DINM/wo-pri --ckpt_save_dir=safety_results/models/llama-7b-DINM-wo-pri

# python examples/run_safety_editing.py --editing_method=DINM --edited_model=llama-7b --hparams_dir=./hparams/DINM/llama-7b --data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_illegal.json --safety_classifier_dir=zjunlp/SafeEdit-Safety-Classifier --metrics_save_dir=./safety_results/DINM/wo-illegal --ckpt_save_dir=safety_results/models/llama-7b-DINM-wo-illegal
# python examples/run_safety_editing.py --editing_method=DINM --edited_model=llama-7b --hparams_dir=./hparams/DINM/llama-7b --data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_offensive.json --safety_classifier_dir=zjunlp/SafeEdit-Safety-Classifier --metrics_save_dir=./safety_results/DINM/wo-offensive --ckpt_save_dir=safety_results/models/llama-7b-DINM-wo-offensive
# python examples/run_safety_editing.py --editing_method=DINM --edited_model=llama-7b --hparams_dir=./hparams/DINM/llama-7b --data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_pri.json --safety_classifier_dir=zjunlp/SafeEdit-Safety-Classifier --metrics_save_dir=./safety_results/DINM/wo-pri --ckpt_save_dir=safety_results/models/llama-7b-DINM-wo-pri
# python examples/run_safety_editing.py --editing_method=DINM --edited_model=llama-7b --hparams_dir=./hparams/DINM/llama-7b --data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_ethics.json --safety_classifier_dir=zjunlp/SafeEdit-Safety-Classifier --metrics_save_dir=./safety_results/DINM/wo-ethics --ckpt_save_dir=safety_results/models/llama-7b-DINM-wo-ethics

# python examples/run_safety_editing.py --editing_method=DINM --edited_model=llama-7b --hparams_dir=./hparams/DINM/llama-7b --data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_mental.json --safety_classifier_dir=zjunlp/SafeEdit-Safety-Classifier --metrics_save_dir=./safety_results/DINM/wo-mental --ckpt_save_dir=safety_results/models/llama-7b-DINM-wo-mental
python examples/run_safety_editing.py --editing_method=MEND --edited_model=llama-3b --hparams_MENDtraining_dir=./hparams/TRAINING/MEND/llama3.2-3b.yaml --hparams_dir=./hparams/MEND/llama-3b-instruct-detoxifying.yaml --data_path=./data/SafeEdit_test_ALL.json --safety_classifier_dir=zjunlp/SafeEdit-Safety-Classifier --metrics_save_dir=./safety_results/MEND/test --ckpt_save_dir=safety_results/models/llama-3b-MEND

# test generalisation
# python examples/run_safety_editing.py --editing_method=test_gen --edited_model=llama-7b --hparams_dir=./hparams/DINM/llama-7b-wo_bias.yaml --data_path=./data/SafeEdit_kfold/SafeEdit_test_only_bias.json --safety_classifier_dir=zjunlp/SafeEdit-Safety-Classifier --metrics_save_dir=./safety_results/DINM/gen_wo_bias --ckpt_save_dir=safety_results/models/llama-7b-DINM-only-bias

# sbatch -p qgpu-debug la_scripts/run.sh

#!/bin/sh

#SBATCH --job-name=edit_safeedit
#SBATCH --out="la_scripts/log_edit_safeedit_1.txt" 
#SBATCH --time=72:00:00
#SBATCH -p qcpu
# #SBATCH --gres=gpu:tesla_a100_80g:1
# #SBATCH --cpus-per-gpu=4

conda init
conda activate myenv397
source /home/smg/v-lauraom/venvs/EasyEdit/bin/activate 



# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_test_wo_bias.json --unsafety_category_to_remove 'unfairness and bias'
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_test_wo_illegal.json --unsafety_category_to_remove 'illegal activities'
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_test_wo_mental.json --unsafety_category_to_remove 'mental harm'
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_test_wo_physical.json --unsafety_category_to_remove 'physical harm'
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_test_wo_offensive.json --unsafety_category_to_remove 'offensiveness'
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_test_wo_pri.json --unsafety_category_to_remove 'privacy and property'
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_test_wo_ethics.json --unsafety_category_to_remove 'ethics and morality'
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_test_wo_pol.json --unsafety_category_to_remove 'Political Sensitivity'
python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_porn.json --unsafety_category_to_remove 'Pornography'

### sbatch -p qcpu la_scripts/edit_json.sh

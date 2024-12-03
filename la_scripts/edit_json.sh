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


#note uncomment to create a dataset omitting specified category 
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_bias.json --unsafety_category_to_remove 'unfairness and bias'
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_illegal.json --unsafety_category_to_remove 'illegal activities'
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_mental.json --unsafety_category_to_remove 'mental harm'
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_physical.json --unsafety_category_to_remove 'physical harm'
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_offensive.json --unsafety_category_to_remove 'offensiveness'
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_pri.json --unsafety_category_to_remove 'privacy and property'
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_ethics.json --unsafety_category_to_remove 'ethics and morality'
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_pol.json --unsafety_category_to_remove 'Political Sensitivity'
# python la_scripts/edit_json.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_wo_porn.json --unsafety_category_to_remove 'Pornography'

#note uncomment to create a dataset with only specified category 
# python la_scripts/edit_json_only1category.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_only_bias.json --unsafety_category_to_keep 'unfairness and bias'
# python la_scripts/edit_json_only1category.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_only_illegal.json --unsafety_category_to_keep 'illegal activities'
# python la_scripts/edit_json_only1category.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_only_mental.json --unsafety_category_to_keep 'mental harm'
# python la_scripts/edit_json_only1category.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_only_physical.json --unsafety_category_to_keep 'physical harm'
# python la_scripts/edit_json_only1category.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_only_offensive.json --unsafety_category_to_keep 'offensiveness'
# python la_scripts/edit_json_only1category.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_only_pri.json --unsafety_category_to_keep 'privacy and property'
# python la_scripts/edit_json_only1category.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_only_ethics.json --unsafety_category_to_keep 'ethics and morality'
# python la_scripts/edit_json_only1category.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_only_pol.json --unsafety_category_to_keep 'Political Sensitivity'
# python la_scripts/edit_json_only1category.py --data_path=./data/SafeEdit_test.json --new_data_path=./data/SafeEdit_kfold/SafeEdit_test_only_porn.json --unsafety_category_to_keep 'Pornography'

### sbatch -p qcpu la_scripts/edit_json.sh

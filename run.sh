conda env create -f env.yml -n myenv 
source activate myenv 
jupyter —execute nbconvert —to html task_0.ipynb
source deactivate

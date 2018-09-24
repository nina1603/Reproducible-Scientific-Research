conda env create -f env.yml -n myenv 
source activate myenv 
jupyter —execute nbconvert —to html task_0.ipynb
google-chrome task_0.html 
source deactivate

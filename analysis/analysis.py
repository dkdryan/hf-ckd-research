## LIBRARIES
import pandas as pd 

df = pd.read_csv('/Users/davidryan/Documents/github/hf-ckd-research/output/input.csv')

#create a graph of ages 
ax = sns.distplot(df['age'])
fig = ax.get_figure()

#save to output folder 
fig.savefig('/Users/davidryan/Documents/github/hf-ckd-research/output/age.png')


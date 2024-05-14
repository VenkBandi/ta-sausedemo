import pandas as pd

def CombineCsvFiles(file1, file2, combined_file):
    df1 = pd.read_csv(file1,header=None)
    df2 = pd.read_csv(file2,header=None)
    combined_df = pd.concat([df1, df2], axis=1, ignore_index=True)
    combined_df.columns = ['name', 'price']
    combined_df.to_csv(combined_file, index=False)

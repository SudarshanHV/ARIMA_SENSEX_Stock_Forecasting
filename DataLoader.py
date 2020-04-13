import pandas as pd
import csv
df=pd.read_csv("data1.csv")
opening=df.Open
closing=df.Close
print(opening[1])
with open('OpeningData.csv', 'w') as out_file:
    out_file.write("Opening")
    for i in range(0,len(opening)-1):
        out_file.write('\n')
        out_file.write(str(opening[i]))

import csv
import pandas as pd 
with open('acim.us.txt', 'r') as in_file:
    stripped = (line.strip() for line in in_file)
    print(stripped)
    lines = (line.split(",") for line in stripped if line)
    print(lines)
    with open('data1.csv', 'w',newline='') as out_file:
        writer = csv.writer(out_file)
        writer.writerows(lines)



# iscx_label_mysql_setup
bash scripts to assist in inserting the labeled network flows from the iscx dataset into mysql. This is another utility function used
in the markov chain anamoly detection project. Basically the script assumes there is a directory with CSV files inside it. It assumes
the path for these files is:

```
../raw/labelsCSV/${i}CSV  
```

The CSV files contain network flow data. The script imports the files each into a seperate DB. Finds the unique Ip addresses creates a 
new table and links the tables together. 

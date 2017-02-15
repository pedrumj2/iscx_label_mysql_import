#!/bin/bash

#processes the csv imported table into the appropriate recrods
#./setup_labels.sh <Password> \n"

if [ "$#" -ne 1 ]; then
  echo "Usage: ./setup_labels.sh <Password>"
  exit
fi

ARRAY=("D12" "D13" "D14" "D15A" "D15B" "D15C" "D16A" "D16B" "D16C" "D17A" "D17B" "D17C")

for i in "${ARRAY[@]}"
do

#    eval "mysql -u root -p'$1' -e \"CREATE SCHEMA $i;\""
#    eval "../mysql_csv_import/./script.sh \$1 $i ../raw/labelsCSV/${i}CSV"
#    eval "mysql -u root -p'$1' -e \"delete from $i.${i}CSV
#                                        where isnull(source) = true or isnull(destination) = true\"" 
#                                        
                                        
                                        
                                        
#  eval "mysql -u root -p'$1' $i -e \"CREATE TABLE $i.ipaddr(
#                                      idipaddr  INT unsigned NOT NULL AUTO_INCREMENT,
#                                      ipValue CHAR(30) NOT NULL,
#                                      PRIMARY KEY (idipaddr), 
#                                      INDEX F (ipValue ASC));\""
#  
#  eval "mysql -u root -p'$1' $i -e \"insert into $i.ipaddr (idipaddr, ipValue)
#                                      value (1, '0.0.0.0');\""
#   
#  eval "mysql -u root -p'$1' $i -e \"insert into $i.ipaddr (ipValue)
#                                      select t.ip from 
#                                      (
#                                            SELECT distinct source as ip FROM $i.${i}CSV
#                                            union
#                                            SELECT distinct destination as ip FROM  $i.${i}CSV 
#                                      ) as t\""               
#                  
#  
#  #there may have been another 0.0.0.0, so we will remove it here
#  eval "mysql -u root -p'$1' $i -e \"delete from $i.ipaddr
#                                      where ipValue = '0.0.0.0' and idipaddr >1\""
#  
#  
#  eval "mysql -u root -p'$1' $i -e \"CREATE TABLE $i.labels (
#                                      idlabels INT NOT NULL AUTO_INCREMENT,
#                                      source INT NOT NULL,
#                                      dest INT NOT NULL,
#                                      startTime DATETIME NOT NULL,
#                                      endTime DATETIME NOT NULL,
#                                      tag CHAR(30) NOT NULL, 
#                                      PRIMARY KEY (idlabels), 
#                                      INDEX F (dest ASC, startTime ASC));\""
#                                      
#  eval "mysql -u root -p'$1' $i -e \"insert into labels(source, dest, startTime, endTime, tag)
#                                      select S.idipaddr as sIP, D.idipaddr as DIP, startDateTime, stopDateTime, tag from D12.D12CSV
#                                      inner join D12.ipaddr as S
#                                      on D12CSV.source = S.ipValue
#                                      inner join D12.ipaddr as D
#                                      on D12CSV.destination = D.ipValue\""
                                      

  eval "mysql -u root -p'$1' $i -e \"drop table $i.${i}CSV\""
      
done
    



   
   
   #Import labeled flows
#"
#eval "mysql -u root -p'$1' $2 -e \"CREATE SCHEMA D13;\""
#eval "mysql -u root -p'$1' $2 -e \"CREATE SCHEMA D14;\""
#eval "mysql -u root -p'$1' $2 -e \"CREATE SCHEMA D15A;\""
#eval "mysql -u root -p'$1' $2 -e \"CREATE SCHEMA D15B;\""
#eval "mysql -u root -p'$1' $2 -e \"CREATE SCHEMA D15C;\""
#eval "mysql -u root -p'$1' $2 -e \"CREATE SCHEMA D16A;\""
#eval "mysql -u root -p'$1' $2 -e \"CREATE SCHEMA D16B;\""
#eval "mysql -u root -p'$1' $2 -e \"CREATE SCHEMA D16C;\""
#eval "mysql -u root -p'$1' $2 -e \"CREATE SCHEMA D17A;\""
#eval "mysql -u root -p'$1' $2 -e \"CREATE SCHEMA D17B;\""
#eval "mysql -u root -p'$1' $2 -e \"CREATE SCHEMA D17C;\""

#"
#eval "../mysql_csv_import/./script.sh \$1 D13 ../raw/labelsCSV/D13"
#eval "../mysql_csv_import/./script.sh \$1 D14 ../raw/labelsCSV/D14"
#eval "../mysql_csv_import/./script.sh \$1 D15A ../raw/labelsCSV/D15A"
#eval "../mysql_csv_import/./script.sh \$1 D15B ../raw/labelsCSV/D15B"
#eval "../mysql_csv_import/./script.sh \$1 D15C ../raw/labelsCSV/D15C"
#eval "../mysql_csv_import/./script.sh \$1 D16A ../raw/labelsCSV/D16A"
#eval "../mysql_csv_import/./script.sh \$1 D16B ../raw/labelsCSV/D16B"
#eval "../mysql_csv_import/./script.sh \$1 D16C ../raw/labelsCSV/D16C"
#eval "../mysql_csv_import/./script.sh \$1 D17A ../raw/labelsCSV/D17A"
#eval "../mysql_csv_import/./script.sh \$1 D17B ../raw/labelsCSV/D17B"
#eval "../mysql_csv_import/./script.sh \$1 D17C ../raw/labelsCSV/D17C"




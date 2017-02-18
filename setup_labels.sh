#!/bin/bash

#processes the csv imported table into the appropriate recrods
#./setup_labels.sh <Password> \n"

if [ "$#" -ne 1 ]; then
  echo "Usage: ./setup_labels.sh <Password>"
  exit
fi

#ARRAY=("D12" "D13" "D14" "D15A" "D15B" "D15C" "D16A" "D16B" "D16C" "D17A" "D17B" "D17C")
#
#for i in "${ARRAY[@]}"
#do
#    eval "mysql -u root -p'$1' -e \"drop schema $i;\""
#    eval "mysql -u root -p'$1' -e \"CREATE SCHEMA $i;\""
#    eval "../mysql_csv_import/./script.sh \$1 $i ../raw/labelsCSV/${i}CSV"
#    eval "mysql -u root -p'$1' -e \"delete from $i.${i}CSV
#                                        where isnull(source) = true or isnull(destination) = true\"" 
#                                        
#                                        
#                                        
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
#  #there may have been another 0.0.0.0, so we will remove it here
#  eval "mysql -u root -p'$1' $i -e \"delete from $i.ipaddr
#                                      where ipValue = '0.0.0.0' and idipaddr >1\""
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
#                                      select S.idipaddr as sIP, D.idipaddr as DIP, startDateTime, stopDateTime, tag from $i.${i}CSV
#                                      inner join $i.ipaddr as S
#                                      on ${i}CSV.source = S.ipValue
#                                      inner join $i.ipaddr as D
#                                      on ${i}CSV.destination = D.ipValue\""
#                                      
#  #eval "mysql -u root -p'$1' $i -e \"drop table $i.${i}CSV\""
#  ARRAY2=("1" "2" "4" "8" "12" "18" "22" "30" "45" "60" "90" "120")
#  (cd ../net_con_count
#    for j in "${ARRAY2[@]}"
#    do
#     java Main $i $j
#     eval "mysql -u root -p'$1' $i -e \"delete FROM $i.con_count_$j
#                                        where count < 0;\""
#     
#    done
#  )
#      
#done
#    


                                     
ARRAY2=("1" "2" "4" "8" "12" "18" "22" "30" "45" "60" "90" "120")
(cd ../net_con_count
  for j in "${ARRAY2[@]}"
  do
   java Main D11 $j 0
   eval "mysql -u root -p'$1' D11 -e \"delete FROM D11.con_count_$j
                                      where count < 0;\""
   
  done
)

    

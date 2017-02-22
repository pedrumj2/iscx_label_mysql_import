#!/bin/bash

#processes the csv imported table into the appropriate recrods
#./setup_labels.sh <Password> \n"

if [ "$#" -ne 1 ]; then
  echo "Usage: ./setup_labels.sh <Password>"
  exit
fi
#
#
#
#eval "mysql -u root -p'$1' -e \"drop schema Clean;\""
#eval "mysql -u root -p'$1' -e \"CREATE SCHEMA Clean;\""
#
#eval "mysql -u root -p'$1' -e \"CREATE TABLE Clean.ipaddr (
#      idipaddr INT NOT NULL AUTO_INCREMENT,
#      ipValue CHAR(20) NOT NULL,
#      PRIMARY KEY (idipaddr),
#      INDEX F (ipValue ASC));\""
#
#
#eval "mysql -u root -p'$1' -e \"CREATE TABLE Clean.app (
#      idapp INT NOT NULL AUTO_INCREMENT,
#      appName CHAR(20) NULL,
#      PRIMARY KEY (idapp),
#      INDEX F (appName ASC));\""
#
#
#eval "mysql -u root -p'$1' -e \"CREATE TABLE Clean.protocol (
#      idprotocol INT NOT NULL AUTO_INCREMENT,
#      protValue CHAR(20) NOT NULL,
#      PRIMARY KEY (idprotocol),
#      INDEX F (protValue ASC));\""
#
#
#eval "mysql -u root -p'$1' -e \"CREATE TABLE Clean.direction (
#      iddirection INT NOT NULL AUTO_INCREMENT,
#      dirValue CHAR(20) NOT NULL,
#      PRIMARY KEY (iddirection),
#      INDEX F (dirValue ASC));\""
#
#
# eval "mysql -u root -p'$1' Clean -e \"insert into Clean.ipaddr 
#                                      value (1, '0.0.0.0');\""
#
# eval "mysql -u root -p'$1' Clean -e \"insert into Clean.protocol
#                                      value (1, 'NA');\""
#                                      
# eval "mysql -u root -p'$1' Clean -e \"insert into Clean.app 
#                                      value (1, 'NA');\""
#
#
# eval "mysql -u root -p'$1' Clean -e \"insert into Clean.direction 
#                                      value (1, 'NA');\""
#                                      
#                                      
#                                      
#                                      
# eval "mysql -u root -p'$1' -e \"CREATE TABLE Clean.ipaddr2 (
#      idipaddr INT NOT NULL AUTO_INCREMENT,
#      ipValue CHAR(20) NOT NULL,
#      PRIMARY KEY (idipaddr),
#      INDEX F (ipValue ASC));\""
#
#
#eval "mysql -u root -p'$1' -e \"CREATE TABLE Clean.app2 (
#      idapp INT NOT NULL AUTO_INCREMENT,
#      appName CHAR(20) NULL,
#      PRIMARY KEY (idapp),
#      INDEX F (appName ASC));\""
#
#
#eval "mysql -u root -p'$1' -e \"CREATE TABLE Clean.protocol2 (
#      idprotocol INT NOT NULL AUTO_INCREMENT,
#      protValue CHAR(20) NOT NULL,
#      PRIMARY KEY (idprotocol),
#      INDEX F (protValue ASC));\""
#
#
#eval "mysql -u root -p'$1' -e \"CREATE TABLE Clean.direction2 (
#      iddirection INT NOT NULL AUTO_INCREMENT,
#      dirValue CHAR(20) NOT NULL,
#      PRIMARY KEY (iddirection),
#      INDEX F (dirValue ASC));\""


#
#
#ARRAY=("D12" "D13" "D14" "D15A" "D15B" "D15C" "D16A" "D16B" "D16C" "D17A" "D17B" "D17C")
#for i in "${ARRAY[@]}"
#do
#  eval "mysql -u root -p'$1' -e \"drop schema $i;\""
#  eval "mysql -u root -p'$1' -e \"CREATE SCHEMA $i;\""
#  eval "../mysql_csv_import/./script.sh \$1 $i ../raw/labelsCSV/${i}CSV"
#  eval "mysql -u root -p'$1' -e \"delete from $i.${i}CSV
#                                      where isnull(source) = true or isnull(destination) = true\"" 
#
#  eval "mysql -u root -p'$1' Clean -e \"insert into Clean.ipaddr2(ipValue)
#                                        select ip from
#                                        (
#                                          SELECT distinct source as ip FROM $i.${i}CSV
#                                          union
#                                          SELECT distinct destination as ip FROM  $i.${i}CSV
#                                        ) as t
#                                        where t.ip not in
#                                        (
#                                          select ipValue from Clean.ipaddr2
#                                        );\""
#                                        							
#  eval "mysql -u root -p'$1' Clean -e \"insert into Clean.app2(appName)
#                                        select name from
#                                        (
#                                          SELECT distinct appName as name FROM $i.${i}CSV
#                                        
#                                        ) as t
#                                        where t.name not in
#                                        (
#                                          select appName from Clean.app2
#                                        );\""
#                                        
#  eval "mysql -u root -p'$1' Clean -e \"insert into Clean.protocol2(protValue)
#                                        select value from
#                                        (
#                                          SELECT distinct protocolName as value FROM  $i.${i}CSV
#                                        ) as t
#                                        where t.value not in
#                                        (
#                                          select protValue from Clean.protocol2
#                                        );\""
#  
#  eval "mysql -u root -p'$1' Clean -e \"insert into Clean.direction2(dirValue)
#                                        select value from
#                                        (
#                                          SELECT distinct direction as value FROM  $i.${i}CSV
#                                        ) as t
#                                        where t.value not in
#                                        (
#                                          select dirValue from Clean.direction2
#                                        );\""
#done
#
#eval "mysql -u root -p'$1' Clean -e \"delete from  Clean.ipaddr2 
#                                      where ipValue = '0.0.0.0' and idipaddr > 1\""
#
#eval "mysql -u root -p'$1' Clean -e \"insert into Clean.ipaddr(ipValue)
#                                      select ipValue from Clean.ipaddr2\""
#                                      
#                                      
#eval "mysql -u root -p'$1' Clean -e \"delete from  Clean.app2 
#                                      where appName = 'NA' and idapp > 1\""
#
#eval "mysql -u root -p'$1' Clean -e \"insert into Clean.app(appName)
#                                      select appName from Clean.app2\""
#
#eval "mysql -u root -p'$1' Clean -e \"delete from  Clean.protocol2 
#                                      where protValue = 'NA' and idprotocol > 1\""
#
#eval "mysql -u root -p'$1' Clean -e \"insert into Clean.protocol(protValue)
#                                      select protValue from Clean.protocol2\""
#                                      
#eval "mysql -u root -p'$1' Clean -e \"delete from  Clean.direction2 
#                                        where dirValue = 'NA' and iddirection > 1\""
#
#eval "mysql -u root -p'$1' Clean -e \"insert into Clean.direction(dirValue)
#                                      select dirValue from Clean.direction2\""                                							
#
#eval "mysql -u root -p'$1' Clean -e \"drop table Clean.direction2\""
#eval "mysql -u root -p'$1' Clean -e \"drop table Clean.ipaddr2\""
#eval "mysql -u root -p'$1' Clean -e \"drop table Clean.app2\""
#eval "mysql -u root -p'$1' Clean -e \"drop table Clean.protocol2\""
#                                      


ARRAY=("D12" "D13" "D14" "D15A" "D15B" "D15C" "D16A" "D16B" "D16C" "D17A" "D17B" "D17C")
for i in "${ARRAY[@]}"
do


eval "mysql -u root -p'$1' $i -e \"CREATE TABLE $i.labels (
                                    idlabels INT NOT NULL AUTO_INCREMENT,
                                    source INT NOT NULL,
                                    totalSourceBytes INT NOT NULL,
                                    totalDestBytes INT NOT NULL,
                                    totalSourcePackets INT NOT NULL,
                                    totalDestPackets INT NOT NULL, 
                                    direction int NOT NULL, 
                                    protocol INT NOT NULL, 
                                    appName INT NOT NULL, 
                                    dest INT NOT NULL,
                                    startTime DATETIME NOT NULL,
                                    endTime DATETIME NOT NULL,
                                    tag CHAR(30) NOT NULL, 
                                    PRIMARY KEY (idlabels), 
                                    INDEX F (dest ASC, startTime ASC));\""
                                    
                                    
                                    
                                    
eval "mysql -u root -p'$1' $i -e \"insert into labels(source, dest, startTime, endTime, tag, totalSourceBytes, totalDestBytes,
                                                       totalSourcePackets, totalDestPackets, direction, appName, protocol)
                                    select D1.idipaddr as sIP, D2.idipaddr as DIP, startDateTime, stopDateTime, tag,totalSourceBytes, totalDestinationBytes, 
                                                       totalSourcePackets, totalDestinationPackets, D5.iddirection, D3.idapp, D4.idprotocol from $i.${i}CSV
                                    inner join Clean.ipaddr as D1
                                    on ${i}CSV.source = D1.ipValue
                                    inner join Clean.ipaddr as D2
                                    on ${i}CSV.destination = D2.ipValue
                                    inner join Clean.app as D3
                                    on ${i}CSV.appName = D3.appName
                                    inner join Clean.protocol as D4
                                    on ${i}CSV.protocolName = D4.protValue
                                    inner join Clean.direction as D5
                                    on ${i}CSV.direction = D5.dirValue\""

eval "mysql -u root -p'$1' $i -e \"drop table $i.${i}CSV\""


done







    
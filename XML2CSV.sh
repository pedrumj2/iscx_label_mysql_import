#!/bin/bash


#The scripts unzips the labeled flows of the iscx dataset. 
#The unzipped files are XML so they are converted to CSV files using the XML2CSV scripts that
#should be available in the parent directory.
(cd ../raw/iscxIDS2012
  #eval "mkdir labels"
  #eval "unzip labeled_flows_xml.zip -d labels/"
  (cd labels
     #eval "rm *.xsd" 
  )
)

(cd ../XML2CSV
  eval "./import.sh ../raw/iscxIDS2012/labels/TestbedSatJun12Flows.xml"
  eval "mv CSV ../raw/labelsCSV/D12CSV"
  eval "./import.sh ../raw/iscxIDS2012/labels/TestbedSunJun13Flows.xml"
  eval "mv CSV ../raw/labelsCSV/D13CSV"
  eval "./import.sh ../raw/iscxIDS2012/labels/TestbedMonJun14Flows.xml"
  eval "mv CSV ../raw/labelsCSV/D14CSV"
  eval "./import.sh ../raw/iscxIDS2012/labels/TestbedTueJun15-1Flows.xml"
  eval "mv CSV ../raw/labelsCSV/D15ACSV"
  eval "./import.sh ../raw/iscxIDS2012/labels/TestbedTueJun15-2Flows.xml"
  eval "mv CSV ../raw/labelsCSV/D15BCSV"
  eval "./import.sh ../raw/iscxIDS2012/labels/TestbedTueJun15-3Flows.xml"
  eval "mv CSV ../raw/labelsCSV/D15CCSV"
  eval "./import.sh ../raw/iscxIDS2012/labels/TestbedWedJun16-1Flows.xml"
  eval "mv CSV ../raw/labelsCSV/D16ACSV"
  eval "./import.sh ../raw/iscxIDS2012/labels/TestbedWedJun16-2Flows.xml"
  eval "mv CSV ../raw/labelsCSV/D16BCSV"
  eval "./import.sh ../raw/iscxIDS2012/labels/TestbedWedJun16-3Flows.xml"
  eval "mv CSV ../raw/labelsCSV/D16CCSV"
  eval "./import.sh ../raw/iscxIDS2012/labels/TestbedThuJun17-2Flows.xml"
  eval "mv CSV ../raw/labelsCSV/D17BCSV"
  eval "./import.sh ../raw/iscxIDS2012/labels/TestbedThuJun17-3Flows.xml"
  eval "mv CSV ../raw/labelsCSV/D17CCSV"
  
  #this one requires some cleaning up
  eval "cp ../raw/iscxIDS2012/labels/TestbedThuJun17-1Flows.xml d.xml"
  eval "sed -i '/^<destinationPayloadAsUTF>.*/d' d.xml"
  eval "sed -i '/^<destinationPayloadAsBase64>.*/d' d.xml"
  eval "./import.sh d.xml"
  eval "mv CSV ../raw/labelsCSV/D17ACSV"
  eval "rm d.xml"  
)




# dbGaP2PIC-SURE
Extraction and curation pipeline from dbGap phenotype files to the PIC-SURE plaform

## Pre-requisites
  * Docker 18.09+
  * Docker-compose 1.23+
  
## Installation

### Clone the repository
```bash 
git clone  git clone https://github.com/vianneyJouhet/dbGaP2PIC-SURE.git
```
### Configure your secret file
  * Copy the secrets.template.txt to secrets.txt
  * Edite the file with your credentials


### Build and start the docker-compose application
From dbGaP2PIC-SURE directory ```cd dbGaP2PIC-SURE```
```bash 
sudo docker-compose build
```
```bash 
sudo docker-compose up -d
```

## Retrieving dbGaP files
This script data extraction from dbGaP to your file system. **dbGaP files are sensitive data they should not be stored 
only in a secured environment.**


### Run the Extraction script from the etl-client container.
Copy cart file (.krt) and the key (.ngc) to the targeted directory. This directory must be a sub directoriry of ```dbGaP2PIC-SURE/et-client/data```. dbGaP dictionnaries will be downloaded to a dict sub-dicrectory and dbGaP data files will downloaded to a data sub-directory.

Enter into the etl-client container :
```bash 
sudo docker-compose exec etl-client bash
```
Execute the extraction script. This shell script has 3 parameters :
 * root path of the dicrectory containing the krt file and the ngc file.
 * krt file name (including extension)
 * ngc file name (including extension)

```bash
sh scripts/download-dbgap-files.sh /elt-workdir/data/<tatgetDir> <krt_filename> <key_filename>
```

## dbGap files curation

### Edit an ETL config  file 

An example of the ETL config file is available ==>  ```dbGaP2PIC-SURE/et-client/config/etlConfig.conf```

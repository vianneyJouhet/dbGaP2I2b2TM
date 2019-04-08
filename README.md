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


### Build the application
From dbGaP2PIC-SURE directory ```cd dbGaP2PIC-SURE```
```bash 
sudo docker-compose build
```

## Retrieving dbGaP files

### Edit an ETL config  file 
This files provide parameters for data extraction from dbGaP to your file system. **dbGaP files are sensitive data they should not be stored only in a secured environment.**

An example of the ETL config file is available ==>  ```dbGaP2PIC-SURE/etm-client/config/etlConfig.conf```

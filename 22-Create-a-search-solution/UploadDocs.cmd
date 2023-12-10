@echo off
SETLOCAL ENABLEDELAYEDEXPANSION

rem Set values for your storage account
set subscription_id=be68b2a0-64bc-4d2c-bc9b-8962245083fa
set azure_storage_account=storageacc10121
set azure_storage_key=Gn2L+jrh4+/bk6YNWe1UGWncxVQmpkJ6V4V2GOo2Aw6T+/lkqFaYB4FaPljtInaNaP5FEnnerm0H+AStJnN1Ww==


echo Creating container...
call az storage container create --account-name !azure_storage_account! --subscription !subscription_id! --name margies --auth-mode key --account-key !azure_storage_key! --output none

echo Uploading files...
call az storage blob upload-batch -d margies -s data --account-name !azure_storage_account! --auth-mode key --account-key !azure_storage_key!  --output none

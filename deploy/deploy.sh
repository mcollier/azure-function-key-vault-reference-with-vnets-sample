#!/bin/bash

location=[AZURE-REGION]
resourceGroupName=[RESOURCE-GROUP-NAME]

vnetName=[VNET-NAME]
functionSubnet=functionsSubnet
privateEndpointSubnet=privateEndpointSubnet

currentDateTime=$(date +%Y%m%d-%H%M%S)

az account set -s [AZURE-SUBSCRIPTION]

az group create --name $resourceGroupName --location $location

az deployment group create \
    -n "azuredeploy-$currentDateTime" \
    -g $resourceGroupName \
    --template-file azuredeploy.json \
    --parameters azuredeploy.parameters.json \
        vnetName=$vnetName \
        functionsSubnetName=$functionSubnet \
        privateEndpointSubnetName=$privateEndpointSubnet


# cd ../src
# func azure functionapp publish $functionAppName
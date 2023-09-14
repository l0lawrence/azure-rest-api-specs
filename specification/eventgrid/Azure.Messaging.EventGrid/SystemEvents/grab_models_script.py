# Go into each tsp file and grab the model names

import json
import pathlib
import os

PATH = os.environ["PATH_TO_AZURE_SPEC_REPO"]

file_names = [
    "ApiManagement",
    "AppConfiguration",
    "AzureCommunicationServices",
    "ContainerRegistry",
    "ContainerService",
    "DataBox",
    "EventGrid",
    "EventHub",
    "HealthcareApis",
    "IotHub",
    "KeyVault",
    "MachineLearningServices",
    "Maps",
    "MediaServices",
    "PolicyInsights",
    "RedisCache",
    "Resources",
    "ServiceBus",
    "SignalRService",
    "Storage",
    "Web"
]

special_case =  {"ApiManagement": "ApiManagement",
    "AppConfiguration": "AppConfiguration",
    "Cache": "RedisCache",
    "Communication": "AzureCommunicationServices",
    "ContainerRegistry": "ContainerRegistry",
    "ContainerService": "ContainerService",
    "DataBox": "DataBox",
    "Devices": "IotHub",
    "EventGrid": "SystemEvents",
    "EventHub": "EventHub",
    "HealthcareApis": "HealthcareApis",
    "KeyVault": "KeyVault",
    "MachineLearningServices": "MachineLearningServices",
    "Maps": "Maps",
    "Media": "MediaServices",
    "PolicyInsights": "PolicyInsights",
    "Resources": "Resources",
    "ServiceBus": "ServiceBus",
    "SignalRService": "SignalRService",
    "Storage": "Storage",
    "Web": "Web"}

model_names = []
for file_name in file_names:
    name =f"{PATH}/azure-rest-api-specs/specification/eventgrid/Azure.Messaging.EventGrid/SystemEvents/"+file_name+".tsp"
    with open(name, "r") as user_file:
        file_lines = user_file.readlines()
        for line in file_lines:
            if "model " in line and not "@doc" in line:
                name = line.split("model ")[1].split()[0]
                model_names.append("EventGrid." + name)


model_names_in_swagger = []
for file_name, json_name in special_case.items():
    name =f"{PATH}/azure-rest-api-specs/specification/eventgrid/data-plane/Microsoft.{file_name}/stable/2018-01-01/{json_name}.json"
    with open(name) as f_in:
        output= json.load(f_in)
        for line in output["definitions"].keys():
            model_names_in_swagger.append("EventGrid." + line)


# Compare that we have all the same models
a = set(model_names)
b = set(model_names_in_swagger)
if a == b:
    pass
else:
    print("Not the same models")
    print("Models in tsp but not in swagger")
    print(a.difference(b))
    print("Models in swagger but not in tsp")
    print(b.difference(a))

# For each model_name add @@include to it
include_statement = "@@usage("
model_names_with_usage = [include_statement + model_name + ", Usage.output);" for model_name in model_names] 
model_names_with_access = ["@@access(" + model_name + ", Access.public);" for model_name in model_names]

for i in range(len(model_names_with_usage)):
    print(model_names_with_usage[i])
    print(model_names_with_access[i])
import "@azure-tools/typespec-client-generator-core";
import "./main.tsp";


using Azure.ClientGenerator.Core;


@@internal(EventGrid.publishCloudEvent)
@@internal(EventGrid.publishCloudEvents)
@@internal(EventGrid.receiveCloudEvents)
import "@typespec/versioning";

import "./main.tsp";


import "./Microsoft.ApiCenter/client.tsp";
import "./Microsoft.ApiManagement/client.tsp";
import "./Microsoft.AppConfiguration/client.tsp";
import "./Microsoft.AVS/client.tsp";
import "./Microsoft.Cache/client.tsp";
import "./Microsoft.Communication/client.tsp";
import "./Microsoft.ContainerRegistry/client.tsp";
import "./Microsoft.ContainerService/client.tsp";
import "./Microsoft.DataBox/client.tsp";
import "./Microsoft.Devices/client.tsp";
import "./Microsoft.EventGrid/client.tsp";
import "./Microsoft.EventHub/client.tsp";
import "./Microsoft.HealthcareApis/client.tsp";
import "./Microsoft.KeyVault/client.tsp";
import "./Microsoft.MachineLearningServices/client.tsp";
import "./Microsoft.Maps/client.tsp";
import "./Microsoft.PolicyInsights/client.tsp";
import "./Microsoft.ResourceNotifications/client.tsp";
import "./Microsoft.Resources/client.tsp";
import "./Microsoft.ServiceBus/client.tsp";
import "./Microsoft.SignalRService/client.tsp";
import "./Microsoft.Storage/client.tsp";
import "./Microsoft.Web/client.tsp";

using TypeSpec.Versioning;

namespace Microsoft.EventGrid.SystemEvents{
    enum ServiceApiVersionsOverload {
        v2018_01_01: "2018-01-01",
        v2024_01_01: "2024-01-01",
        v2030_01_01: "2030-01-01"
    }
}

@@versioned(Microsoft.EventGrid.SystemEvents, ServiceApiVersionsOverload);

using Microsoft.EventGrid.SystemEvents;

@@madeRequired(MachineLearningServicesDatasetDriftDetectedEventData.startTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(MachineLearningServicesDatasetDriftDetectedEventData.endTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(DeviceTwinProperties.version, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(DeviceTwinInfo.cloudToDeviceMessageCount, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(DeviceTwinInfo.version, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(StorageBlobInventoryPolicyCompletedEventData.scheduleDateTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(StorageTaskCompletedEventData.status, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(StorageTaskCompletedEventData.completedDateTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(StorageTaskQueuedEventData.queuedDateTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(StorageTaskAssignmentQueuedEventData.queuedDateTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(StorageTaskAssignmentCompletedEventData.status, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(StorageTaskAssignmentCompletedEventData.completedDateTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AppEventTypeDetail.action, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AppServicePlanEventTypeDetail.stampKind, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AppServicePlanEventTypeDetail.action, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AppServicePlanEventTypeDetail.status, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(HealthcareFhirResourceCreatedEventData.resourceType, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(HealthcareFhirResourceCreatedEventData.resourceVersionId, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(HealthcareDicomImageCreatedEventData.sequenceNumber, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(HealthcareDicomImageDeletedEventData.sequenceNumber, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(HealthcareDicomImageUpdatedEventData.sequenceNumber, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(ResourceNotificationsOperationalDetails.resourceEventTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(EventGridMQTTClientCreatedOrUpdatedEventData.state, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(EventGridMQTTClientCreatedOrUpdatedEventData.createdOn, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(EventGridMQTTClientCreatedOrUpdatedEventData.updatedOn, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(EventGridMQTTClientSessionConnectedEventData.sequenceNumber, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(EventGridMQTTClientSessionDisconnectedEventData.sequenceNumber, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(EventGridMQTTClientSessionDisconnectedEventData.disconnectionReason, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsChatMessageEditedEventData.editTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsChatMessageDeletedEventData.deleteTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsChatThreadPropertiesUpdatedPerUserEventData.editTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsChatParticipantRemovedFromThreadWithUserEventData.time, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsSmsDeliveryReportReceivedEventData.receivedTimestamp, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsSmsReceivedEventData.receivedTimestamp, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsRecordingFileStatusUpdatedEventData.recordingStartTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsRecordingFileStatusUpdatedEventData.recordingContentType, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsRecordingFileStatusUpdatedEventData.recordingChannelType, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsRecordingFileStatusUpdatedEventData.recordingFormatType, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsEmailDeliveryReportReceivedEventData.status, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsEmailDeliveryReportReceivedEventData.deliveryAttemptTimestamp, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsEmailEngagementTrackingReportReceivedEventData.userActionTimestamp, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsEmailEngagementTrackingReportReceivedEventData.engagementType, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsRouterJobReceivedEventData.jobStatus, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsRouterJobReceivedEventData.scheduledOn, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsRouterJobSchedulingFailedEventData.scheduledOn, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsRouterJobWaitingForActivationEventData.scheduledOn, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsRouterWorkerOfferIssuedEventData.offeredOn, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsRouterWorkerOfferIssuedEventData.expiresOn, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsRouterWorkerSelector.labelOperator, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsRouterWorkerSelector.state, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsRouterWorkerSelector.expirationTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsChatThreadEventBaseProperties.createTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsChatMessageEventBaseProperties.composeTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsSmsDeliveryAttemptProperties.timestamp, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(CommunicationIdentifierModel.kind, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(MicrosoftTeamsAppIdentifierModel.cloud, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(MicrosoftTeamsUserIdentifierModel.cloud, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsMessageDeliveryStatusUpdatedEventData.status, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsMessageDeliveryStatusUpdatedEventData.channelType, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsMessageInteractiveContent.type, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsMessageEventData.receivedTimeStamp, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(EventHubCaptureFileCreatedEventData.firstEnqueueTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(EventHubCaptureFileCreatedEventData.lastEnqueueTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsChatThreadDeletedBaseEventData.deleteTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsChatThreadPropertiesBaseEventData.editTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(AcsChatParticipantBaseEventData.time, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(ContainerRegistryBaseEventData.timestamp, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(DataBoxBase.stageTime, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(DataBoxBase.stageName, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(KeyVaultCertificateBase.EXP, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(KeyVaultCertificateBase.NBF, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(PolicyInsightsBaseEventData.timestamp, ServiceApiVersionsOverload.v2030_01_01);
@@madeRequired(SignalRServiceBaseEventdata.timestamp, ServiceApiVersionsOverload.v2030_01_01);

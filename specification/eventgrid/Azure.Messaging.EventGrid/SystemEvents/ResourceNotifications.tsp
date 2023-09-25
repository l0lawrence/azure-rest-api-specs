namespace EventGrid;


@doc("""
Schema of the Data property of an EventGridEvent for a
Microsoft.ResourceNotifications.Resources.CreatedOrUpdated event.
""")
model ResourceManagementCreatedOrUpdatedEventData {
  ...ResourceManagementEventData;
}

@doc("""
Resource information related to resource being deleted. Resource properties bag
not present
""")
model ResourceManagementEventData {
  @doc("Data specific to the resource")
  resourceInfo?: ResourceManagementResourceInfo;
}

@doc("""
Resource information related to resource being deleted. Resource properties bag
not present
""")
model ResourceManagementResourceInfo {
  @doc("id of the base resource which is being deleted")
  id?: string;

  @doc("name of the resource being deleted")
  name?: string;

  @doc("the type of the resource being deleted")
  type?: string;

  @doc("the location of the resource being deleted")
  location?: string;

  @doc("tags on the resource being deleted")
  tags?: string;

  @doc("properties in the resource payload")
  properties?: Record<unknown>;
}

@doc("""
Schema of the Data property of an EventGridEvent for a
Microsoft.ResourceNotifications.Resources.Deleted event.
""")
model ResourceManagementDeletedEventData {
  ...ResourceManagementEventData;
}


@doc("""
Schema of the Data property of an EventGridEvent for a
Microsoft.ResourceNotifications.MaintenanceResources.ScheduledEventEmitted
event.
""")
model MaintenanceResourcesScheduledEventEmittedEventData {
  ...MaintenanceResourcesEventData;
}

@doc("Resource information related to scheduled event")
model MaintenanceResourcesEventData {
  @doc("Data specific to the resource")
  resourceInfo?: MaintenanceResourcesResourceInfo;
}

@doc("Resource information related to scheduled event")
model MaintenanceResourcesResourceInfo {
  @doc("id of the base resource which is being created or updated")
  id?: string;

  @doc("name of the resource being created or updated")
  name?: string;

  @doc("the type of the resource being created or updated")
  type?: string;

  @doc("the location of the resource being created or updated")
  location?: string;

  @doc("tags on the resource being created or updated")
  tags?: string;

  @doc("properties in the resource payload")
  properties?: Record<unknown>;
}


@doc("""
Schema of the Data property of an EventGridEvent for a
Microsoft.ResourceNotifications.HealthResources.AvailabilityStatusChanged
event.
""")
model HealthResourcesAvailabilityStatusChangedEventData {
  ...HealthResourcesResourceEventData;
}

@doc("details of resourceInfo")
model HealthResourcesResourceEventData {
  @doc("Data specific to the resource")
  resourceInfo?: HealthResourcesResourceInfo;
}

@doc("details of resourceInfo")
model HealthResourcesResourceInfo {
  @doc("id of the base resource whose availability status has been impacted")
  id?: string;

  @doc("name of the resource whose availability status has been influenced")
  name?: string;

  @doc("the type of the resource whose availability status has been impacted")
  type?: string;

  @doc("""
properties in the resource payload of the resource whose availability status
has been impacted
""")
  properties?: Record<unknown>;
}

@doc("""
Schema of the Data property of an EventGridEvent for a
Microsoft.ResourceNotifications.HealthResources.ResourceAnnotated event.
""")
model HealthResourcesResourceAnnotatedEventData {
  ...HealthResourcesResourceEventData;
}

// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Event is a report of an event somewhere in the cluster.  Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
class Event {
  /// Default constructor.
  const Event({
    this.action,
    this.apiVersion,
    this.count,
    this.eventTime,
    this.firstTimestamp,
    required this.involvedObject,
    this.kind,
    this.lastTimestamp,
    this.message,
    required this.metadata,
    this.reason,
    this.related,
    this.reportingComponent,
    this.reportingInstance,
    this.series,
    this.source,
    this.type,
  });

  /// Creates a [Event] from JSON data.
  factory Event.fromJson(Map<String, dynamic> json) {
    final tempActionJson = json['action'];
    final tempApiVersionJson = json['apiVersion'];
    final tempCountJson = json['count'];
    final tempEventTimeJson = json['eventTime'];
    final tempFirstTimestampJson = json['firstTimestamp'];
    final tempInvolvedObjectJson = json['involvedObject'];
    final tempKindJson = json['kind'];
    final tempLastTimestampJson = json['lastTimestamp'];
    final tempMessageJson = json['message'];
    final tempMetadataJson = json['metadata'];
    final tempReasonJson = json['reason'];
    final tempRelatedJson = json['related'];
    final tempReportingComponentJson = json['reportingComponent'];
    final tempReportingInstanceJson = json['reportingInstance'];
    final tempSeriesJson = json['series'];
    final tempSourceJson = json['source'];
    final tempTypeJson = json['type'];

    final String? tempAction = tempActionJson;
    final String? tempApiVersion = tempApiVersionJson;
    final int? tempCount = tempCountJson;
    final String? tempEventTime = tempEventTimeJson;
    final DateTime? tempFirstTimestamp = tempFirstTimestampJson != null
        ? DateTime.tryParse(tempFirstTimestampJson)
        : null;
    final ObjectReference tempInvolvedObject =
        ObjectReference.fromJson(tempInvolvedObjectJson);
    final String? tempKind = tempKindJson;
    final DateTime? tempLastTimestamp = tempLastTimestampJson != null
        ? DateTime.tryParse(tempLastTimestampJson)
        : null;
    final String? tempMessage = tempMessageJson;
    final ObjectMeta tempMetadata = ObjectMeta.fromJson(tempMetadataJson);
    final String? tempReason = tempReasonJson;
    final ObjectReference? tempRelated = tempRelatedJson != null
        ? ObjectReference.fromJson(tempRelatedJson)
        : null;
    final String? tempReportingComponent = tempReportingComponentJson;
    final String? tempReportingInstance = tempReportingInstanceJson;
    final EventSeries? tempSeries =
        tempSeriesJson != null ? EventSeries.fromJson(tempSeriesJson) : null;
    final EventSource? tempSource =
        tempSourceJson != null ? EventSource.fromJson(tempSourceJson) : null;
    final String? tempType = tempTypeJson;

    return Event(
      action: tempAction,
      apiVersion: tempApiVersion,
      count: tempCount,
      eventTime: tempEventTime,
      firstTimestamp: tempFirstTimestamp,
      involvedObject: tempInvolvedObject,
      kind: tempKind,
      lastTimestamp: tempLastTimestamp,
      message: tempMessage,
      metadata: tempMetadata,
      reason: tempReason,
      related: tempRelated,
      reportingComponent: tempReportingComponent,
      reportingInstance: tempReportingInstance,
      series: tempSeries,
      source: tempSource,
      type: tempType,
    );
  }

  /// What action was taken/failed regarding to the Regarding object.
  final String? action;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// The number of times this event has occurred.
  final int? count;

  /// Time when this Event was first observed.
  final String? eventTime;

  /// The time at which the event was first recorded. (Time of server receipt is in TypeMeta.).
  final DateTime? firstTimestamp;

  /// The object that this event is about.
  final ObjectReference involvedObject;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// The time at which the most recent occurrence of this event was recorded.
  final DateTime? lastTimestamp;

  /// A human-readable description of the status of this operation.
  final String? message;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta metadata;

  /// This should be a short, machine understandable string that gives the reason for the transition into the object's current status.
  final String? reason;

  /// Optional secondary object for more complex actions.
  final ObjectReference? related;

  /// Name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`.
  final String? reportingComponent;

  /// ID of the controller instance, e.g. `kubelet-xyzf`.
  final String? reportingInstance;

  /// Data about the Event series this event represents or nil if it's a singleton Event.
  final EventSeries? series;

  /// The component reporting this event. Should be a short machine understandable string.
  final EventSource? source;

  /// Type of this event (Normal, Warning), new types could be added in the future.
  final String? type;

  /// Converts a [Event] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAction = action;
    final tempApiVersion = apiVersion;
    final tempCount = count;
    final tempEventTime = eventTime;
    final tempFirstTimestamp = firstTimestamp;
    final tempInvolvedObject = involvedObject;
    final tempKind = kind;
    final tempLastTimestamp = lastTimestamp;
    final tempMessage = message;
    final tempMetadata = metadata;
    final tempReason = reason;
    final tempRelated = related;
    final tempReportingComponent = reportingComponent;
    final tempReportingInstance = reportingInstance;
    final tempSeries = series;
    final tempSource = source;
    final tempType = type;

    if (tempAction != null) {
      jsonData['action'] = tempAction;
    }

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempCount != null) {
      jsonData['count'] = tempCount;
    }

    if (tempEventTime != null) {
      jsonData['eventTime'] = tempEventTime;
    }

    if (tempFirstTimestamp != null) {
      jsonData['firstTimestamp'] = tempFirstTimestamp;
    }

    jsonData['involvedObject'] = tempInvolvedObject.toJson();

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempLastTimestamp != null) {
      jsonData['lastTimestamp'] = tempLastTimestamp;
    }

    if (tempMessage != null) {
      jsonData['message'] = tempMessage;
    }

    jsonData['metadata'] = tempMetadata.toJson();

    if (tempReason != null) {
      jsonData['reason'] = tempReason;
    }

    if (tempRelated != null) {
      jsonData['related'] = tempRelated.toJson();
    }

    if (tempReportingComponent != null) {
      jsonData['reportingComponent'] = tempReportingComponent;
    }

    if (tempReportingInstance != null) {
      jsonData['reportingInstance'] = tempReportingInstance;
    }

    if (tempSeries != null) {
      jsonData['series'] = tempSeries.toJson();
    }

    if (tempSource != null) {
      jsonData['source'] = tempSource.toJson();
    }

    if (tempType != null) {
      jsonData['type'] = tempType;
    }

    return jsonData;
  }
}

// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.events.v1;

/// Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system. Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
class Event {
  /// Default constructor.
  const Event({
    this.action,
    this.apiVersion,
    this.deprecatedCount,
    this.deprecatedFirstTimestamp,
    this.deprecatedLastTimestamp,
    this.deprecatedSource,
    required this.eventTime,
    this.kind,
    this.metadata,
    this.note,
    this.reason,
    this.regarding,
    this.related,
    this.reportingController,
    this.reportingInstance,
    this.series,
    this.type,
  });

  /// Creates a [Event] from JSON data.
  factory Event.fromJson(Map<String, dynamic> json) {
    final tempActionJson = json['action'];
    final tempApiVersionJson = json['apiVersion'];
    final tempDeprecatedCountJson = json['deprecatedCount'];
    final tempDeprecatedFirstTimestampJson = json['deprecatedFirstTimestamp'];
    final tempDeprecatedLastTimestampJson = json['deprecatedLastTimestamp'];
    final tempDeprecatedSourceJson = json['deprecatedSource'];
    final tempEventTimeJson = json['eventTime'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempNoteJson = json['note'];
    final tempReasonJson = json['reason'];
    final tempRegardingJson = json['regarding'];
    final tempRelatedJson = json['related'];
    final tempReportingControllerJson = json['reportingController'];
    final tempReportingInstanceJson = json['reportingInstance'];
    final tempSeriesJson = json['series'];
    final tempTypeJson = json['type'];

    final tempAction = tempActionJson;
    final tempApiVersion = tempApiVersionJson;
    final tempDeprecatedCount = tempDeprecatedCountJson;
    final tempDeprecatedFirstTimestamp =
        tempDeprecatedFirstTimestampJson != null
            ? DateTime.tryParse(tempDeprecatedFirstTimestampJson)
            : null;
    final tempDeprecatedLastTimestamp = tempDeprecatedLastTimestampJson != null
        ? DateTime.tryParse(tempDeprecatedLastTimestampJson)
        : null;
    final tempDeprecatedSource = tempDeprecatedSourceJson != null
        ? EventSource.fromJson(tempDeprecatedSourceJson)
        : null;
    final tempEventTime = tempEventTimeJson;
    final tempKind = tempKindJson;
    final tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final tempNote = tempNoteJson;
    final tempReason = tempReasonJson;
    final tempRegarding = tempRegardingJson != null
        ? ObjectReference.fromJson(tempRegardingJson)
        : null;
    final tempRelated = tempRelatedJson != null
        ? ObjectReference.fromJson(tempRelatedJson)
        : null;
    final tempReportingController = tempReportingControllerJson;
    final tempReportingInstance = tempReportingInstanceJson;
    final tempSeries =
        tempSeriesJson != null ? EventSeries.fromJson(tempSeriesJson) : null;
    final tempType = tempTypeJson;

    return Event(
      action: tempAction,
      apiVersion: tempApiVersion,
      deprecatedCount: tempDeprecatedCount,
      deprecatedFirstTimestamp: tempDeprecatedFirstTimestamp,
      deprecatedLastTimestamp: tempDeprecatedLastTimestamp,
      deprecatedSource: tempDeprecatedSource,
      eventTime: tempEventTime,
      kind: tempKind,
      metadata: tempMetadata,
      note: tempNote,
      reason: tempReason,
      regarding: tempRegarding,
      related: tempRelated,
      reportingController: tempReportingController,
      reportingInstance: tempReportingInstance,
      series: tempSeries,
      type: tempType,
    );
  }

  /// action is what action was taken/failed regarding to the regarding object. It is machine-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  final String? action;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// deprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.
  final int? deprecatedCount;

  /// deprecatedFirstTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  final DateTime? deprecatedFirstTimestamp;

  /// deprecatedLastTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  final DateTime? deprecatedLastTimestamp;

  /// deprecatedSource is the deprecated field assuring backward compatibility with core.v1 Event type.
  final EventSource? deprecatedSource;

  /// eventTime is the time when this Event was first observed. It is required.
  final String eventTime;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
  final String? note;

  /// reason is why the action was taken. It is human-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  final String? reason;

  /// regarding contains the object this Event is about. In most cases it's an Object reporting controller implements, e.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
  final ObjectReference? regarding;

  /// related is the optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
  final ObjectReference? related;

  /// reportingController is the name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`. This field cannot be empty for new Events.
  final String? reportingController;

  /// reportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.
  final String? reportingInstance;

  /// series is data about the Event series this event represents or nil if it's a singleton Event.
  final EventSeries? series;

  /// type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable. This field cannot be empty for new Events.
  final String? type;

  /// Converts a [Event] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAction = action;
    final tempApiVersion = apiVersion;
    final tempDeprecatedCount = deprecatedCount;
    final tempDeprecatedFirstTimestamp = deprecatedFirstTimestamp;
    final tempDeprecatedLastTimestamp = deprecatedLastTimestamp;
    final tempDeprecatedSource = deprecatedSource;
    final tempEventTime = eventTime;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempNote = note;
    final tempReason = reason;
    final tempRegarding = regarding;
    final tempRelated = related;
    final tempReportingController = reportingController;
    final tempReportingInstance = reportingInstance;
    final tempSeries = series;
    final tempType = type;

    if (tempAction != null) {
      jsonData['action'] = tempAction;
    }

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempDeprecatedCount != null) {
      jsonData['deprecatedCount'] = tempDeprecatedCount;
    }

    if (tempDeprecatedFirstTimestamp != null) {
      jsonData['deprecatedFirstTimestamp'] = tempDeprecatedFirstTimestamp;
    }

    if (tempDeprecatedLastTimestamp != null) {
      jsonData['deprecatedLastTimestamp'] = tempDeprecatedLastTimestamp;
    }

    if (tempDeprecatedSource != null) {
      jsonData['deprecatedSource'] = tempDeprecatedSource.toJson();
    }

    jsonData['eventTime'] = tempEventTime;

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    if (tempNote != null) {
      jsonData['note'] = tempNote;
    }

    if (tempReason != null) {
      jsonData['reason'] = tempReason;
    }

    if (tempRegarding != null) {
      jsonData['regarding'] = tempRegarding.toJson();
    }

    if (tempRelated != null) {
      jsonData['related'] = tempRelated.toJson();
    }

    if (tempReportingController != null) {
      jsonData['reportingController'] = tempReportingController;
    }

    if (tempReportingInstance != null) {
      jsonData['reportingInstance'] = tempReportingInstance;
    }

    if (tempSeries != null) {
      jsonData['series'] = tempSeries.toJson();
    }

    if (tempType != null) {
      jsonData['type'] = tempType;
    }

    return jsonData;
  }
}

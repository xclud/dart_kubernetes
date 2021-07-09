import 'package:kubernetes/src/generated/api/core/v1/event_source.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/micro_time.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/core/v1/object_reference.dart';
import 'package:kubernetes/src/generated/api/events/v1/event_series.dart';

/// Event is a report of an event somewhere in the cluster. It generally denotes some state change in the system. Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
class Event {
  /// The main constructor.
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

  /// Creates a Event from JSON data.
  Event.fromJson(Map<String, dynamic> json)
      : this(
          action: json['action'],
          apiVersion: json['apiVersion'],
          deprecatedCount: json['deprecatedCount'],
          deprecatedFirstTimestamp: json['deprecatedFirstTimestamp'] != null
              ? DateTime.tryParse(json['deprecatedFirstTimestamp'])
              : null,
          deprecatedLastTimestamp: json['deprecatedLastTimestamp'] != null
              ? DateTime.tryParse(json['deprecatedLastTimestamp'])
              : null,
          deprecatedSource: json['deprecatedSource'] != null
              ? EventSource.fromJson(json['deprecatedSource'])
              : null,
          eventTime: MicroTime.fromJson(json['eventTime']),
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          note: json['note'],
          reason: json['reason'],
          regarding: json['regarding'] != null
              ? ObjectReference.fromJson(json['regarding'])
              : null,
          related: json['related'] != null
              ? ObjectReference.fromJson(json['related'])
              : null,
          reportingController: json['reportingController'],
          reportingInstance: json['reportingInstance'],
          series: json['series'] != null
              ? EventSeries.fromJson(json['series'])
              : null,
          type: json['type'],
        );

  /// Creates a list of Event from JSON data.
  static List<Event> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Event.fromJson(e)).toList();
  }

  /// Action is what action was taken/failed regarding to the regarding object. It is machine-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  final String? action;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// DeprecatedCount is the deprecated field assuring backward compatibility with core.v1 Event type.
  final int? deprecatedCount;

  /// DeprecatedFirstTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  final DateTime? deprecatedFirstTimestamp;

  /// DeprecatedLastTimestamp is the deprecated field assuring backward compatibility with core.v1 Event type.
  final DateTime? deprecatedLastTimestamp;

  /// DeprecatedSource is the deprecated field assuring backward compatibility with core.v1 Event type.
  final EventSource? deprecatedSource;

  /// EventTime is the time when this Event was first observed. It is required.
  final MicroTime eventTime;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Note is a human-readable description of the status of this operation. Maximal length of the note is 1kB, but libraries should be prepared to handle values up to 64kB.
  final String? note;

  /// Reason is why the action was taken. It is human-readable. This field cannot be empty for new Events and it can have at most 128 characters.
  final String? reason;

  /// Regarding contains the object this Event is about. In most cases it's an Object reporting controller implements, e.g. ReplicaSetController implements ReplicaSets and this event is emitted because it acts on some changes in a ReplicaSet object.
  final ObjectReference? regarding;

  /// Related is the optional secondary object for more complex actions. E.g. when regarding object triggers a creation or deletion of related object.
  final ObjectReference? related;

  /// ReportingController is the name of the controller that emitted this Event, e.g. `kubernetes.io/kubelet`. This field cannot be empty for new Events.
  final String? reportingController;

  /// ReportingInstance is the ID of the controller instance, e.g. `kubelet-xyzf`. This field cannot be empty for new Events and it can have at most 128 characters.
  final String? reportingInstance;

  /// Series is data about the Event series this event represents or nil if it's a singleton Event.
  final EventSeries? series;

  /// Type is the type of this event (Normal, Warning), new types could be added in the future. It is machine-readable. This field cannot be empty for new Events.
  final String? type;
}

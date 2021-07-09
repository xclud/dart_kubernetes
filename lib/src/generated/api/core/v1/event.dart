import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/micro_time.dart';
import 'package:kubernetes/src/generated/api/core/v1/object_reference.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/core/v1/event_series.dart';
import 'package:kubernetes/src/generated/api/core/v1/event_source.dart';

/// Event is a report of an event somewhere in the cluster.  Events have a limited retention time and triggers and messages may evolve with time.  Event consumers should not rely on the timing of an event with a given Reason reflecting a consistent underlying trigger, or the continued existence of events with that Reason.  Events should be treated as informative, best-effort, supplemental data.
class Event {
  /// The main constructor.
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

  /// Creates a Event from JSON data.
  Event.fromJson(Map<String, dynamic> json)
      : this(
          action: json['action'],
          apiVersion: json['apiVersion'],
          count: json['count'],
          eventTime: json['eventTime'] != null
              ? MicroTime.fromJson(json['eventTime'])
              : null,
          firstTimestamp: json['firstTimestamp'] != null
              ? DateTime.tryParse(json['firstTimestamp'])
              : null,
          involvedObject: ObjectReference.fromJson(json['involvedObject']),
          kind: json['kind'],
          lastTimestamp: json['lastTimestamp'] != null
              ? DateTime.tryParse(json['lastTimestamp'])
              : null,
          message: json['message'],
          metadata: ObjectMeta.fromJson(json['metadata']),
          reason: json['reason'],
          related: json['related'] != null
              ? ObjectReference.fromJson(json['related'])
              : null,
          reportingComponent: json['reportingComponent'],
          reportingInstance: json['reportingInstance'],
          series: json['series'] != null
              ? EventSeries.fromJson(json['series'])
              : null,
          source: json['source'] != null
              ? EventSource.fromJson(json['source'])
              : null,
          type: json['type'],
        );

  /// Creates a list of Event from JSON data.
  static List<Event> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Event.fromJson(e)).toList();
  }

  /// What action was taken/failed regarding to the Regarding object.
  final String? action;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// The number of times this event has occurred.
  final int? count;

  /// Time when this Event was first observed.
  final MicroTime? eventTime;

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
}

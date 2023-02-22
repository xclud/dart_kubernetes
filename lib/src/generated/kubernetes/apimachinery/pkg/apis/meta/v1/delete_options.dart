import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/preconditions.dart';

/// DeleteOptions may be provided when deleting an API object.
class DeleteOptions {
  /// The main constructor.
  const DeleteOptions({
    this.apiVersion,
    this.dryRun,
    this.gracePeriodSeconds,
    this.kind,
    this.orphanDependents,
    this.preconditions,
    this.propagationPolicy,
  });

  /// Creates a DeleteOptions from JSON data.
  DeleteOptions.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          dryRun:
              json['dryRun'] != null ? List<String>.from(json['dryRun']) : null,
          gracePeriodSeconds: json['gracePeriodSeconds'],
          kind: json['kind'],
          orphanDependents: json['orphanDependents'],
          preconditions: json['preconditions'] != null
              ? Preconditions.fromJson(json['preconditions'])
              : null,
          propagationPolicy: json['propagationPolicy'],
        );

  /// Creates a list of DeleteOptions from JSON data.
  static List<DeleteOptions> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DeleteOptions.fromJson(e)).toList();
  }

  /// Converts a DeleteOptions instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    if (dryRun != null) {
      jsonData['dryRun'] = dryRun!;
    }
    if (gracePeriodSeconds != null) {
      jsonData['gracePeriodSeconds'] = gracePeriodSeconds!;
    }
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (orphanDependents != null) {
      jsonData['orphanDependents'] = orphanDependents!;
    }
    if (preconditions != null) {
      jsonData['preconditions'] = preconditions!.toJson();
    }
    if (propagationPolicy != null) {
      jsonData['propagationPolicy'] = propagationPolicy!;
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed.
  final List<String>? dryRun;

  /// The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  final int? gracePeriodSeconds;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// This field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  final bool? orphanDependents;

  /// Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned.
  final Preconditions? preconditions;

  /// Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  final String? propagationPolicy;
}

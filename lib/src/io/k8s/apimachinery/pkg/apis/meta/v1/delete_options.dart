// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../../../io_k8s_apimachinery_pkg_apis_meta_v1.dart';

/// DeleteOptions may be provided when deleting an API object.
class DeleteOptions {
  /// Default constructor.
  const DeleteOptions({
    this.apiVersion,
    this.dryRun,
    this.gracePeriodSeconds,
    this.kind,
    this.orphanDependents,
    this.preconditions,
    this.propagationPolicy,
  });

  /// Creates a [DeleteOptions] from JSON data.
  factory DeleteOptions.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempDryRunJson = json['dryRun'];
    final tempGracePeriodSecondsJson = json['gracePeriodSeconds'];
    final tempKindJson = json['kind'];
    final tempOrphanDependentsJson = json['orphanDependents'];
    final tempPreconditionsJson = json['preconditions'];
    final tempPropagationPolicyJson = json['propagationPolicy'];

    final String? tempApiVersion = tempApiVersionJson;
    final List<String>? tempDryRun =
        tempDryRunJson != null ? List<String>.from(tempDryRunJson) : null;
    final int? tempGracePeriodSeconds = tempGracePeriodSecondsJson;
    final String? tempKind = tempKindJson;
    final bool? tempOrphanDependents = tempOrphanDependentsJson;
    final Preconditions? tempPreconditions = tempPreconditionsJson != null
        ? Preconditions.fromJson(tempPreconditionsJson)
        : null;
    final String? tempPropagationPolicy = tempPropagationPolicyJson;

    return DeleteOptions(
      apiVersion: tempApiVersion,
      dryRun: tempDryRun,
      gracePeriodSeconds: tempGracePeriodSeconds,
      kind: tempKind,
      orphanDependents: tempOrphanDependents,
      preconditions: tempPreconditions,
      propagationPolicy: tempPropagationPolicy,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// When present, indicates that modifications should not be persisted. An invalid or unrecognized dryRun directive will result in an error response and no further processing of the request. Valid values are: - All: all dry run stages will be processed.
  final List<String>? dryRun;

  /// The duration in seconds before the object should be deleted. Value must be non-negative integer. The value zero indicates delete immediately. If this value is nil, the default grace period for the specified type will be used. Defaults to a per object value if not specified. zero means delete immediately.
  final int? gracePeriodSeconds;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Deprecated: please use the PropagationPolicy, this field will be deprecated in 1.7. Should the dependent objects be orphaned. If true/false, the "orphan" finalizer will be added to/removed from the object's finalizers list. Either this field or PropagationPolicy may be set, but not both.
  final bool? orphanDependents;

  /// Must be fulfilled before a deletion is carried out. If not possible, a 409 Conflict status will be returned.
  final Preconditions? preconditions;

  /// Whether and how garbage collection will be performed. Either this field or OrphanDependents may be set, but not both. The default policy is decided by the existing finalizer set in the metadata.finalizers and the resource-specific default policy. Acceptable values are: 'Orphan' - orphan the dependents; 'Background' - allow the garbage collector to delete the dependents in the background; 'Foreground' - a cascading policy that deletes all dependents in the foreground.
  final String? propagationPolicy;

  /// Converts a [DeleteOptions] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempDryRun = dryRun;
    final tempGracePeriodSeconds = gracePeriodSeconds;
    final tempKind = kind;
    final tempOrphanDependents = orphanDependents;
    final tempPreconditions = preconditions;
    final tempPropagationPolicy = propagationPolicy;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempDryRun != null) {
      jsonData['dryRun'] = tempDryRun;
    }

    if (tempGracePeriodSeconds != null) {
      jsonData['gracePeriodSeconds'] = tempGracePeriodSeconds;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempOrphanDependents != null) {
      jsonData['orphanDependents'] = tempOrphanDependents;
    }

    if (tempPreconditions != null) {
      jsonData['preconditions'] = tempPreconditions.toJson();
    }

    if (tempPropagationPolicy != null) {
      jsonData['propagationPolicy'] = tempPropagationPolicy;
    }

    return jsonData;
  }
}

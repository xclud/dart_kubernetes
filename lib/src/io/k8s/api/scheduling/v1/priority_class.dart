// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.scheduling.v1;

/// PriorityClass defines mapping from a priority class name to the priority integer value. The value can be any valid integer.
class PriorityClass {
  /// Default constructor.
  const PriorityClass({
    this.apiVersion,
    this.description,
    this.globalDefault,
    this.kind,
    this.metadata,
    this.preemptionPolicy,
    required this.value,
  });

  /// Creates a [PriorityClass] from JSON data.
  factory PriorityClass.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempDescriptionJson = json['description'];
    final tempGlobalDefaultJson = json['globalDefault'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempPreemptionPolicyJson = json['preemptionPolicy'];
    final tempValueJson = json['value'];

    final tempApiVersion = tempApiVersionJson;
    final tempDescription = tempDescriptionJson;
    final tempGlobalDefault = tempGlobalDefaultJson;
    final tempKind = tempKindJson;
    final tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final tempPreemptionPolicy = tempPreemptionPolicyJson;
    final tempValue = tempValueJson;

    return PriorityClass(
      apiVersion: tempApiVersion,
      description: tempDescription,
      globalDefault: tempGlobalDefault,
      kind: tempKind,
      metadata: tempMetadata,
      preemptionPolicy: tempPreemptionPolicy,
      value: tempValue,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// description is an arbitrary string that usually provides guidelines on when this priority class should be used.
  final String? description;

  /// globalDefault specifies whether this PriorityClass should be considered as the default priority for pods that do not have any priority class. Only one PriorityClass can be marked as `globalDefault`. However, if more than one PriorityClasses exists with their `globalDefault` field set to true, the smallest value of such global default PriorityClasses will be used as the default priority.
  final bool? globalDefault;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// preemptionPolicy is the Policy for preempting pods with lower priority. One of Never, PreemptLowerPriority. Defaults to PreemptLowerPriority if unset.
  final String? preemptionPolicy;

  /// value represents the integer value of this priority class. This is the actual priority that pods receive when they have the name of this class in their pod spec.
  final int value;

  /// Converts a [PriorityClass] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempDescription = description;
    final tempGlobalDefault = globalDefault;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempPreemptionPolicy = preemptionPolicy;
    final tempValue = value;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempDescription != null) {
      jsonData['description'] = tempDescription;
    }

    if (tempGlobalDefault != null) {
      jsonData['globalDefault'] = tempGlobalDefault;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    if (tempPreemptionPolicy != null) {
      jsonData['preemptionPolicy'] = tempPreemptionPolicy;
    }

    jsonData['value'] = tempValue;

    return jsonData;
  }
}

// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../autoscaling_v2.dart';

/// HorizontalPodAutoscaler is the configuration for a horizontal pod autoscaler, which automatically manages the replica count of any resource implementing the scale subresource based on the metrics specified.
class HorizontalPodAutoscaler {
  /// Default constructor.
  const HorizontalPodAutoscaler({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.spec,
    this.status,
  });

  /// Creates a [HorizontalPodAutoscaler] from JSON data.
  factory HorizontalPodAutoscaler.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempSpecJson = json['spec'];
    final tempStatusJson = json['status'];

    final String? tempApiVersion = tempApiVersionJson;
    final String? tempKind = tempKindJson;
    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final HorizontalPodAutoscalerSpec? tempSpec = tempSpecJson != null
        ? HorizontalPodAutoscalerSpec.fromJson(tempSpecJson)
        : null;
    final HorizontalPodAutoscalerStatus? tempStatus = tempStatusJson != null
        ? HorizontalPodAutoscalerStatus.fromJson(tempStatusJson)
        : null;

    return HorizontalPodAutoscaler(
      apiVersion: tempApiVersion,
      kind: tempKind,
      metadata: tempMetadata,
      spec: tempSpec,
      status: tempStatus,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// metadata is the standard object metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// spec is the specification for the behaviour of the autoscaler. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#spec-and-status.
  final HorizontalPodAutoscalerSpec? spec;

  /// status is the current information about the autoscaler.
  final HorizontalPodAutoscalerStatus? status;

  /// Converts a [HorizontalPodAutoscaler] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempSpec = spec;
    final tempStatus = status;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    if (tempSpec != null) {
      jsonData['spec'] = tempSpec.toJson();
    }

    if (tempStatus != null) {
      jsonData['status'] = tempStatus.toJson();
    }

    return jsonData;
  }
}

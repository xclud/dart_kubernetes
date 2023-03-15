// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.apps.v1;

/// ControllerRevision implements an immutable snapshot of state data. Clients are responsible for serializing and deserializing the objects that contain their internal state. Once a ControllerRevision has been successfully created, it can not be updated. The API Server will fail validation of all requests that attempt to mutate the Data field. ControllerRevisions may, however, be deleted. Note that, due to its use by both the DaemonSet and StatefulSet controllers for update and rollback, this object is beta. However, it may be subject to name and representation changes in future releases, and clients should not depend on its stability. It is primarily for internal use by controllers.
class ControllerRevision {
  /// Default constructor.
  const ControllerRevision({
    this.apiVersion,
    this.data,
    this.kind,
    this.metadata,
    required this.revision,
  });

  /// Creates a [ControllerRevision] from JSON data.
  factory ControllerRevision.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempDataJson = json['data'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempRevisionJson = json['revision'];

    final tempApiVersion = tempApiVersionJson;
    final tempData =
        tempDataJson != null ? RawExtension.fromJson(tempDataJson) : null;
    final tempKind = tempKindJson;
    final tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;
    final tempRevision = tempRevisionJson;

    return ControllerRevision(
      apiVersion: tempApiVersion,
      data: tempData,
      kind: tempKind,
      metadata: tempMetadata,
      revision: tempRevision,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Data is the serialized representation of the state.
  final RawExtension? data;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// Revision indicates the revision of the state represented by Data.
  final int revision;

  /// Converts a [ControllerRevision] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempData = data;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempRevision = revision;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempData != null) {
      jsonData['data'] = tempData.toJson();
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    jsonData['revision'] = tempRevision;

    return jsonData;
  }
}

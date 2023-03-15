// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
class FlockerVolumeSource {
  /// Default constructor.
  const FlockerVolumeSource({
    this.datasetName,
    this.datasetUUID,
  });

  /// Creates a [FlockerVolumeSource] from JSON data.
  factory FlockerVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempDatasetNameJson = json['datasetName'];
    final tempDatasetUUIDJson = json['datasetUUID'];

    final tempDatasetName = tempDatasetNameJson;
    final tempDatasetUUID = tempDatasetUUIDJson;

    return FlockerVolumeSource(
      datasetName: tempDatasetName,
      datasetUUID: tempDatasetUUID,
    );
  }

  /// datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated.
  final String? datasetName;

  /// datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset.
  final String? datasetUUID;

  /// Converts a [FlockerVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempDatasetName = datasetName;
    final tempDatasetUUID = datasetUUID;

    if (tempDatasetName != null) {
      jsonData['datasetName'] = tempDatasetName;
    }

    if (tempDatasetUUID != null) {
      jsonData['datasetUUID'] = tempDatasetUUID;
    }

    return jsonData;
  }
}

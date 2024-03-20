// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Describe a container image.
class ContainerImage {
  /// Default constructor.
  const ContainerImage({
    this.names,
    this.sizeBytes,
  });

  /// Creates a [ContainerImage] from JSON data.
  factory ContainerImage.fromJson(Map<String, dynamic> json) {
    final tempNamesJson = json['names'];
    final tempSizeBytesJson = json['sizeBytes'];

    final List<String>? tempNames =
        tempNamesJson != null ? List<String>.from(tempNamesJson) : null;
    final int? tempSizeBytes = tempSizeBytesJson;

    return ContainerImage(
      names: tempNames,
      sizeBytes: tempSizeBytes,
    );
  }

  /// Names by which this image is known. e.g. \["kubernetes.example/hyperkube:v1.0.7", "cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7"\].
  final List<String>? names;

  /// The size of the image in bytes.
  final int? sizeBytes;

  /// Converts a [ContainerImage] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempNames = names;
    final tempSizeBytes = sizeBytes;

    if (tempNames != null) {
      jsonData['names'] = tempNames;
    }

    if (tempSizeBytes != null) {
      jsonData['sizeBytes'] = tempSizeBytes;
    }

    return jsonData;
  }
}

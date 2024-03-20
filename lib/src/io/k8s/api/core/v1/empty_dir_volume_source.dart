// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// Represents an empty directory for a pod. Empty directory volumes support ownership management and SELinux relabeling.
class EmptyDirVolumeSource {
  /// Default constructor.
  const EmptyDirVolumeSource({
    this.medium,
    this.sizeLimit,
  });

  /// Creates a [EmptyDirVolumeSource] from JSON data.
  factory EmptyDirVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempMediumJson = json['medium'];
    final tempSizeLimitJson = json['sizeLimit'];

    final String? tempMedium = tempMediumJson;
    final String? tempSizeLimit = tempSizeLimitJson;

    return EmptyDirVolumeSource(
      medium: tempMedium,
      sizeLimit: tempSizeLimit,
    );
  }

  /// medium represents what type of storage medium should back this directory. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir.
  final String? medium;

  /// sizeLimit is the total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir.
  final String? sizeLimit;

  /// Converts a [EmptyDirVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempMedium = medium;
    final tempSizeLimit = sizeLimit;

    if (tempMedium != null) {
      jsonData['medium'] = tempMedium;
    }

    if (tempSizeLimit != null) {
      jsonData['sizeLimit'] = tempSizeLimit;
    }

    return jsonData;
  }
}

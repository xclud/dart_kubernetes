import 'package:kubernetes/src/generated/apimachinery/pkg/api/resource/quantity.dart';

/// Represents an empty directory for a pod. Empty directory volumes support ownership management and SELinux relabeling.
class EmptyDirVolumeSource {
  /// The main constructor.
  const EmptyDirVolumeSource({
    this.medium,
    this.sizeLimit,
  });

  /// Creates a EmptyDirVolumeSource from JSON data.
  EmptyDirVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          medium: json['medium'],
          sizeLimit: json['sizeLimit'] != null
              ? Quantity.fromJson(json['sizeLimit'])
              : null,
        );

  /// Creates a list of EmptyDirVolumeSource from JSON data.
  static List<EmptyDirVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EmptyDirVolumeSource.fromJson(e)).toList();
  }

  /// What type of storage medium should back this directory. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
  final String? medium;

  /// Total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: http://kubernetes.io/docs/user-guide/volumes#emptydir
  final Quantity? sizeLimit;
}

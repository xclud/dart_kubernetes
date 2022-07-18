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
          sizeLimit: json['sizeLimit'],
        );

  /// Creates a list of EmptyDirVolumeSource from JSON data.
  static List<EmptyDirVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EmptyDirVolumeSource.fromJson(e)).toList();
  }

  /// Converts a EmptyDirVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (medium != null) {
      jsonData['medium'] = medium!;
    }
    if (sizeLimit != null) {
      jsonData['sizeLimit'] = sizeLimit!;
    }

    return jsonData;
  }

  /// Medium represents what type of storage medium should back this directory. The default is "" which means to use the node's default medium. Must be an empty string (default) or Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir.
  final String? medium;

  /// SizeLimit is the total amount of local storage required for this EmptyDir volume. The size limit is also applicable for memory medium. The maximum usage on memory medium EmptyDir would be the minimum value between the SizeLimit specified here and the sum of memory limits of all containers in a pod. The default is nil which means that the limit is undefined. More info: http://kubernetes.io/docs/user-guide/volumes#emptydir.
  final String? sizeLimit;
}

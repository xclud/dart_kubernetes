/// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
class AzureFileVolumeSource {
  /// The main constructor.
  const AzureFileVolumeSource({
    this.readOnly,
    required this.secretName,
    required this.shareName,
  });

  /// Creates a AzureFileVolumeSource from JSON data.
  AzureFileVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          readOnly: json['readOnly'],
          secretName: json['secretName'],
          shareName: json['shareName'],
        );

  /// Creates a list of AzureFileVolumeSource from JSON data.
  static List<AzureFileVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => AzureFileVolumeSource.fromJson(e)).toList();
  }

  /// Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// the name of secret that contains Azure Storage Account Name and Key
  final String secretName;

  /// Share Name
  final String shareName;
}

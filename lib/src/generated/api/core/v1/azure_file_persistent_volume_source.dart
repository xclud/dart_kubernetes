/// AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
class AzureFilePersistentVolumeSource {
  /// The main constructor.
  const AzureFilePersistentVolumeSource({
    this.readOnly,
    required this.secretName,
    this.secretNamespace,
    required this.shareName,
  });

  /// Creates a AzureFilePersistentVolumeSource from JSON data.
  AzureFilePersistentVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          readOnly: json['readOnly'],
          secretName: json['secretName'],
          secretNamespace: json['secretNamespace'],
          shareName: json['shareName'],
        );

  /// Creates a list of AzureFilePersistentVolumeSource from JSON data.
  static List<AzureFilePersistentVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => AzureFilePersistentVolumeSource.fromJson(e))
        .toList();
  }

  /// Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// the name of secret that contains Azure Storage Account Name and Key
  final String secretName;

  /// the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod
  final String? secretNamespace;

  /// Share Name
  final String shareName;
}

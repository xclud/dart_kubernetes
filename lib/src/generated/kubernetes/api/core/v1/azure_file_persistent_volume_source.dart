
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
  static List<AzureFilePersistentVolumeSource> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => AzureFilePersistentVolumeSource.fromJson(e)).toList();
  }

  /// Converts a AzureFilePersistentVolumeSource instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(readOnly != null) { jsonData['readOnly'] = readOnly!; }
    jsonData['secretName'] = secretName;
    if(secretNamespace != null) { jsonData['secretNamespace'] = secretNamespace!; }
    jsonData['shareName'] = shareName;
    

    return jsonData;
  }


  /// ReadOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;

  /// SecretName is the name of secret that contains Azure Storage Account Name and Key.
  final String secretName;

  /// SecretNamespace is the namespace of the secret that contains Azure Storage Account Name and Key default is the same as the Pod.
  final String? secretNamespace;

  /// ShareName is the azure Share Name.
  final String shareName;
}

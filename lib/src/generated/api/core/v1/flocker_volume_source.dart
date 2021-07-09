/// Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName and datasetUUID should be set. Flocker volumes do not support ownership management or SELinux relabeling.
class FlockerVolumeSource {
  /// The main constructor.
  const FlockerVolumeSource({
    this.datasetName,
    this.datasetUUID,
  });

  /// Creates a FlockerVolumeSource from JSON data.
  FlockerVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          datasetName: json['datasetName'],
          datasetUUID: json['datasetUUID'],
        );

  /// Creates a list of FlockerVolumeSource from JSON data.
  static List<FlockerVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => FlockerVolumeSource.fromJson(e)).toList();
  }

  /// Converts a FlockerVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (datasetName != null) {
      jsonData['datasetName'] = datasetName!;
    }
    if (datasetUUID != null) {
      jsonData['datasetUUID'] = datasetUUID!;
    }

    return jsonData;
  }

  /// Name of the dataset stored as metadata -> name on the dataset for Flocker should be considered as deprecated.
  final String? datasetName;

  /// UUID of the dataset. This is unique identifier of a Flocker dataset.
  final String? datasetUUID;
}

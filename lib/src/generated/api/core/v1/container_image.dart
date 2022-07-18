/// Describe a container image.
class ContainerImage {
  /// The main constructor.
  const ContainerImage({
    this.names,
    this.sizeBytes,
  });

  /// Creates a ContainerImage from JSON data.
  ContainerImage.fromJson(Map<String, dynamic> json)
      : this(
          names:
              json['names'] != null ? List<String>.from(json['names']) : null,
          sizeBytes: json['sizeBytes'],
        );

  /// Creates a list of ContainerImage from JSON data.
  static List<ContainerImage> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ContainerImage.fromJson(e)).toList();
  }

  /// Converts a ContainerImage instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (names != null) {
      jsonData['names'] = names!;
    }
    if (sizeBytes != null) {
      jsonData['sizeBytes'] = sizeBytes!;
    }

    return jsonData;
  }

  /// Names by which this image is known. e.g. ["kubernetes.example/hyperkube:v1.0.7", "cloud-vendor.registry.example/cloud-vendor/hyperkube:v1.0.7"].
  final List<String>? names;

  /// The size of the image in bytes.
  final int? sizeBytes;
}

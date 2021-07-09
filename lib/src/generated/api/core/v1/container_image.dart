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

  /// Names by which this image is known. e.g. ["k8s.gcr.io/hyperkube:v1.0.7", "dockerhub.io/google_containers/hyperkube:v1.0.7"].
  final List<String>? names;

  /// The size of the image in bytes.
  final int? sizeBytes;
}

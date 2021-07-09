/// ScaleSpec describes the attributes of a scale subresource.
class ScaleSpec {
  /// The main constructor.
  const ScaleSpec({
    this.replicas,
  });

  /// Creates a ScaleSpec from JSON data.
  ScaleSpec.fromJson(Map<String, dynamic> json)
      : this(
          replicas: json['replicas'],
        );

  /// Creates a list of ScaleSpec from JSON data.
  static List<ScaleSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ScaleSpec.fromJson(e)).toList();
  }

  /// Desired number of instances for the scaled object.
  final int? replicas;
}

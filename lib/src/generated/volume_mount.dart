class VolumeMount {
  const VolumeMount({
    required this.mountPath,
    required this.name,
    this.mountPropagation,
    this.readOnly,
    this.subPath,
    this.subPathExpr,
  });

  VolumeMount.fromJson(Map<String, dynamic> json)
      : this(
          mountPath: json['mountPath'],
          name: json['name'],
          mountPropagation: json['mountPropagation'],
          readOnly: json['readOnly'],
          subPath: json['subPath'],
          subPathExpr: json['subPathExpr'],
        );

  static List<VolumeMount> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => VolumeMount.fromJson(e)).toList();
  }

  final String mountPath;
  final String name;
  final String? mountPropagation;
  final bool? readOnly;
  final String? subPath;
  final String? subPathExpr;
}

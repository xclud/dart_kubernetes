/// VolumeMount describes a mounting of a Volume within a container.
class VolumeMount {
  /// The main constructor.
  const VolumeMount({
    required this.mountPath,
    this.mountPropagation,
    required this.name,
    this.readOnly,
    this.subPath,
    this.subPathExpr,
  });

  /// Creates a VolumeMount from JSON data.
  VolumeMount.fromJson(Map<String, dynamic> json)
      : this(
          mountPath: json['mountPath'],
          mountPropagation: json['mountPropagation'],
          name: json['name'],
          readOnly: json['readOnly'],
          subPath: json['subPath'],
          subPathExpr: json['subPathExpr'],
        );

  /// Creates a list of VolumeMount from JSON data.
  static List<VolumeMount> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => VolumeMount.fromJson(e)).toList();
  }

  /// Path within the container at which the volume should be mounted.  Must not contain ':'.
  final String mountPath;

  /// mountPropagation determines how mounts are propagated from the host to container and the other way around. When not set, MountPropagationNone is used. This field is beta in 1.10.
  final String? mountPropagation;

  /// This must match the Name of a Volume.
  final String name;

  /// Mounted read-only if true, read-write otherwise (false or unspecified). Defaults to false.
  final bool? readOnly;

  /// Path within the volume from which the container's volume should be mounted. Defaults to "" (volume's root).
  final String? subPath;

  /// Expanded path within the volume from which the container's volume should be mounted. Behaves similarly to SubPath but environment variable references $(VAR_NAME) are expanded using the container's environment. Defaults to "" (volume's root). SubPathExpr and SubPath are mutually exclusive.
  final String? subPathExpr;
}

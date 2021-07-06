/// AllowedHostPath defines the host volume conditions that will be enabled by a policy for pods to use. It requires the path prefix to be defined.
class AllowedHostPath {
  /// The main constructor.
  const AllowedHostPath({
    this.pathPrefix,
    this.readOnly,
  });

  /// Creates a AllowedHostPath from JSON data.
  AllowedHostPath.fromJson(Map<String, dynamic> json)
      : this(
          pathPrefix: json['pathPrefix'],
          readOnly: json['readOnly'],
        );

  /// Creates a list of AllowedHostPath from JSON data.
  static List<AllowedHostPath> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => AllowedHostPath.fromJson(e)).toList();
  }

  /// pathPrefix is the path prefix that the host volume must match. It does not support `*`. Trailing slashes are trimmed when validating the path prefix with a host path.
  ///
  /// Examples: `/foo` would allow `/foo`, `/foo/` and `/foo/bar` `/foo` would not allow `/food` or `/etc/foo`
  final String? pathPrefix;

  /// when set to true, will allow host volumes matching the pathPrefix only if all volume mounts are readOnly.
  final bool? readOnly;
}
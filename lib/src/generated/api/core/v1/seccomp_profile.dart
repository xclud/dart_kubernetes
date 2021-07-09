/// SeccompProfile defines a pod/container's seccomp profile settings. Only one profile source may be set.
class SeccompProfile {
  /// The main constructor.
  const SeccompProfile({
    this.localhostProfile,
    required this.type,
  });

  /// Creates a SeccompProfile from JSON data.
  SeccompProfile.fromJson(Map<String, dynamic> json)
      : this(
          localhostProfile: json['localhostProfile'],
          type: json['type'],
        );

  /// Creates a list of SeccompProfile from JSON data.
  static List<SeccompProfile> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SeccompProfile.fromJson(e)).toList();
  }

  /// LocalhostProfile indicates a profile defined in a file on the node should be used. The profile must be preconfigured on the node to work. Must be a descending path, relative to the kubelet's configured seccomp profile location. Must only be set if type is "Localhost".
  final String? localhostProfile;

  /// Type indicates which kind of seccomp profile will be applied. Valid options are:
  ///
  /// Localhost - a profile defined in a file on the node should be used. RuntimeDefault - the container runtime default profile should be used. Unconfined - no profile should be applied.
  final String type;
}

/// GroupVersion contains the "group/version" and "version" string of a version. It is made a struct to keep extensibility.
class GroupVersionForDiscovery {
  /// The main constructor.
  const GroupVersionForDiscovery({
    required this.groupVersion,
    required this.version,
  });

  /// Creates a GroupVersionForDiscovery from JSON data.
  GroupVersionForDiscovery.fromJson(Map<String, dynamic> json)
      : this(
          groupVersion: json['groupVersion'],
          version: json['version'],
        );

  /// Creates a list of GroupVersionForDiscovery from JSON data.
  static List<GroupVersionForDiscovery> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => GroupVersionForDiscovery.fromJson(e)).toList();
  }

  /// GroupVersion specifies the API group and version in the form "group/version".
  final String groupVersion;

  /// Version specifies the version in the form of "version". This is to save the clients the trouble of splitting the GroupVersion.
  final String version;
}

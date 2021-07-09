/// Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not support ownership management or SELinux relabeling.
class QuobyteVolumeSource {
  /// The main constructor.
  const QuobyteVolumeSource({
    this.group,
    this.readOnly,
    required this.registry,
    this.tenant,
    this.user,
    required this.volume,
  });

  /// Creates a QuobyteVolumeSource from JSON data.
  QuobyteVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          group: json['group'],
          readOnly: json['readOnly'],
          registry: json['registry'],
          tenant: json['tenant'],
          user: json['user'],
          volume: json['volume'],
        );

  /// Creates a list of QuobyteVolumeSource from JSON data.
  static List<QuobyteVolumeSource> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => QuobyteVolumeSource.fromJson(e)).toList();
  }

  /// Converts a QuobyteVolumeSource instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (group != null) {
      jsonData['group'] = group!;
    }
    if (readOnly != null) {
      jsonData['readOnly'] = readOnly!;
    }
    jsonData['registry'] = registry;
    if (tenant != null) {
      jsonData['tenant'] = tenant!;
    }
    if (user != null) {
      jsonData['user'] = user!;
    }
    jsonData['volume'] = volume;

    return jsonData;
  }

  /// Group to map volume access to Default is no group.
  final String? group;

  /// ReadOnly here will force the Quobyte volume to be mounted with read-only permissions. Defaults to false.
  final bool? readOnly;

  /// Registry represents a single or multiple Quobyte Registry services specified as a string as host:port pair (multiple entries are separated with commas) which acts as the central registry for volumes.
  final String registry;

  /// Tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned Quobyte volumes, value is set by the plugin.
  final String? tenant;

  /// User to map volume access to Defaults to serivceaccount user.
  final String? user;

  /// Volume is a string that references an already created Quobyte volume by name.
  final String volume;
}

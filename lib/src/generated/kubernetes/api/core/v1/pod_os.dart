
/// PodOS defines the OS parameters of a pod.
class PodOS {
  /// The main constructor.
  const PodOS({
    required this.name,
  });

  /// Creates a PodOS from JSON data.
  PodOS.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
        );

  /// Creates a list of PodOS from JSON data.
  static List<PodOS> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodOS.fromJson(e)).toList();
  }

  /// Converts a PodOS instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['name'] = name;
    

    return jsonData;
  }


  /// Name is the name of the operating system. The currently supported values are linux and windows. Additional value may be defined in future and can be one of: https://github.com/opencontainers/runtime-spec/blob/master/config.md#platform-specific-configuration Clients should expect to handle additional values and treat unrecognized values in this field as os: null.
  final String name;
}


/// PodDNSConfigOption defines DNS resolver options of a pod.
class PodDNSConfigOption {
  /// The main constructor.
  const PodDNSConfigOption({
    this.name,
    this.value,
  });

  /// Creates a PodDNSConfigOption from JSON data.
  PodDNSConfigOption.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          value: json['value'],
        );

  /// Creates a list of PodDNSConfigOption from JSON data.
  static List<PodDNSConfigOption> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodDNSConfigOption.fromJson(e)).toList();
  }

  /// Converts a PodDNSConfigOption instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(name != null) { jsonData['name'] = name!; }
    if(value != null) { jsonData['value'] = value!; }
    

    return jsonData;
  }


  /// Required.
  final String? name;

  /// 
  final String? value;
}

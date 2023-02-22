
/// HostAlias holds the mapping between IP and hostnames that will be injected as an entry in the pod's hosts file.
class HostAlias {
  /// The main constructor.
  const HostAlias({
    this.hostnames,
    this.ip,
  });

  /// Creates a HostAlias from JSON data.
  HostAlias.fromJson(Map<String, dynamic> json)
      : this(
          hostnames: json['hostnames'] != null ? List<String>.from(json['hostnames']) : null,
          ip: json['ip'],
        );

  /// Creates a list of HostAlias from JSON data.
  static List<HostAlias> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => HostAlias.fromJson(e)).toList();
  }

  /// Converts a HostAlias instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(hostnames != null) { jsonData['hostnames'] = hostnames!; }
    if(ip != null) { jsonData['ip'] = ip!; }
    

    return jsonData;
  }


  /// Hostnames for the above IP address.
  final List<String>? hostnames;

  /// IP address of the host file entry.
  final String? ip;
}

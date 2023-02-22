/// IP address information for entries in the (plural) PodIPs field. Each entry includes:
///
/// 	IP: An IP address allocated to the pod. Routable at least within the cluster.
class PodIP {
  /// The main constructor.
  const PodIP({
    this.ip,
  });

  /// Creates a PodIP from JSON data.
  PodIP.fromJson(Map<String, dynamic> json)
      : this(
          ip: json['ip'],
        );

  /// Creates a list of PodIP from JSON data.
  static List<PodIP> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodIP.fromJson(e)).toList();
  }

  /// Converts a PodIP instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (ip != null) {
      jsonData['ip'] = ip!;
    }

    return jsonData;
  }

  /// Ip is an IP address (IPv4 or IPv6) assigned to the pod.
  final String? ip;
}

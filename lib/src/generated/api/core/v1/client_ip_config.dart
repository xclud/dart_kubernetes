/// ClientIPConfig represents the configurations of Client IP based session affinity.
class ClientIPConfig {
  /// The main constructor.
  const ClientIPConfig({
    this.timeoutSeconds,
  });

  /// Creates a ClientIPConfig from JSON data.
  ClientIPConfig.fromJson(Map<String, dynamic> json)
      : this(
          timeoutSeconds: json['timeoutSeconds'],
        );

  /// Creates a list of ClientIPConfig from JSON data.
  static List<ClientIPConfig> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ClientIPConfig.fromJson(e)).toList();
  }

  /// TimeoutSeconds specifies the seconds of ClientIP type session sticky time. The value must be >0 && <=86400(for 1 day) if ServiceAffinity == "ClientIP". Default value is 10800(for 3 hours).
  final int? timeoutSeconds;
}

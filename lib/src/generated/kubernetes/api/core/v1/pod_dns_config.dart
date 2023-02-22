import 'package:kubernetes/src/generated/kubernetes/api/core/v1/pod_dns_config_option.dart';

/// PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
class PodDNSConfig {
  /// The main constructor.
  const PodDNSConfig({
    this.nameservers,
    this.options,
    this.searches,
  });

  /// Creates a PodDNSConfig from JSON data.
  PodDNSConfig.fromJson(Map<String, dynamic> json)
      : this(
          nameservers: json['nameservers'] != null ? List<String>.from(json['nameservers']) : null,
          options: json['options'] != null ? PodDNSConfigOption.listFromJson((json['options'] as Iterable).cast<Map<String, dynamic>>()): null,
          searches: json['searches'] != null ? List<String>.from(json['searches']) : null,
        );

  /// Creates a list of PodDNSConfig from JSON data.
  static List<PodDNSConfig> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PodDNSConfig.fromJson(e)).toList();
  }

  /// Converts a PodDNSConfig instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(nameservers != null) { jsonData['nameservers'] = nameservers!; }
    if(options != null) { jsonData['options'] = options!.map((item) => item.toJson()).toList(); }
    if(searches != null) { jsonData['searches'] = searches!; }
    

    return jsonData;
  }


  /// A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
  final List<String>? nameservers;

  /// A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
  final List<PodDNSConfigOption>? options;

  /// A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
  final List<String>? searches;
}

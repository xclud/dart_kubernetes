// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// PodDNSConfig defines the DNS parameters of a pod in addition to those generated from DNSPolicy.
class PodDNSConfig {
  /// Default constructor.
  const PodDNSConfig({
    this.nameservers,
    this.options,
    this.searches,
  });

  /// Creates a [PodDNSConfig] from JSON data.
  factory PodDNSConfig.fromJson(Map<String, dynamic> json) {
    final tempNameserversJson = json['nameservers'];
    final tempOptionsJson = json['options'];
    final tempSearchesJson = json['searches'];

    final List<String>? tempNameservers = tempNameserversJson != null
        ? List<String>.from(tempNameserversJson)
        : null;

    final List<PodDNSConfigOption>? tempOptions = tempOptionsJson != null
        ? List<dynamic>.from(tempOptionsJson)
            .map(
              (e) => PodDNSConfigOption.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    final List<String>? tempSearches =
        tempSearchesJson != null ? List<String>.from(tempSearchesJson) : null;

    return PodDNSConfig(
      nameservers: tempNameservers,
      options: tempOptions,
      searches: tempSearches,
    );
  }

  /// A list of DNS name server IP addresses. This will be appended to the base nameservers generated from DNSPolicy. Duplicated nameservers will be removed.
  final List<String>? nameservers;

  /// A list of DNS resolver options. This will be merged with the base options generated from DNSPolicy. Duplicated entries will be removed. Resolution options given in Options will override those that appear in the base DNSPolicy.
  final List<PodDNSConfigOption>? options;

  /// A list of DNS search domains for host-name lookup. This will be appended to the base search paths generated from DNSPolicy. Duplicated search paths will be removed.
  final List<String>? searches;

  /// Converts a [PodDNSConfig] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempNameservers = nameservers;
    final tempOptions = options;
    final tempSearches = searches;

    if (tempNameservers != null) {
      jsonData['nameservers'] = tempNameservers;
    }

    if (tempOptions != null) {
      jsonData['options'] = tempOptions;
    }

    if (tempSearches != null) {
      jsonData['searches'] = tempSearches;
    }

    return jsonData;
  }
}

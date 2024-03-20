// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../../../io_k8s_apimachinery_pkg_apis_meta_v1.dart';

/// APIVersions lists the versions that are available, to allow clients to discover the API at /api, which is the root path of the legacy v1 API.
class APIVersions {
  /// Default constructor.
  const APIVersions({
    this.apiVersion,
    this.kind,
    required this.serverAddressByClientCIDRs,
    required this.versions,
  });

  /// Creates a [APIVersions] from JSON data.
  factory APIVersions.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempKindJson = json['kind'];
    final tempServerAddressByClientCIDRsJson =
        json['serverAddressByClientCIDRs'];
    final tempVersionsJson = json['versions'];

    final String? tempApiVersion = tempApiVersionJson;
    final String? tempKind = tempKindJson;

    final List<ServerAddressByClientCIDR> tempServerAddressByClientCIDRs =
        List<dynamic>.from(tempServerAddressByClientCIDRsJson)
            .map(
              (e) => ServerAddressByClientCIDR.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList();

    final List<String> tempVersions = List<String>.from(tempVersionsJson);

    return APIVersions(
      apiVersion: tempApiVersion,
      kind: tempKind,
      serverAddressByClientCIDRs: tempServerAddressByClientCIDRs,
      versions: tempVersions,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
  final List<ServerAddressByClientCIDR> serverAddressByClientCIDRs;

  /// versions are the api versions that are available.
  final List<String> versions;

  /// Converts a [APIVersions] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempKind = kind;
    final tempServerAddressByClientCIDRs = serverAddressByClientCIDRs;
    final tempVersions = versions;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    jsonData['serverAddressByClientCIDRs'] = tempServerAddressByClientCIDRs
        .map((e) => e.toJson())
        .toList(growable: false);

    jsonData['versions'] = tempVersions;

    return jsonData;
  }
}

// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apimachinery.pkg.apis.meta.v1;

/// APIGroup contains the name, the supported versions, and the preferred version of a group.
class APIGroup {
  /// Default constructor.
  const APIGroup({
    this.apiVersion,
    this.kind,
    required this.name,
    this.preferredVersion,
    this.serverAddressByClientCIDRs,
    required this.versions,
  });

  /// Creates a [APIGroup] from JSON data.
  factory APIGroup.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempKindJson = json['kind'];
    final tempNameJson = json['name'];
    final tempPreferredVersionJson = json['preferredVersion'];
    final tempServerAddressByClientCIDRsJson =
        json['serverAddressByClientCIDRs'];
    final tempVersionsJson = json['versions'];

    final tempApiVersion = tempApiVersionJson;
    final tempKind = tempKindJson;
    final tempName = tempNameJson;
    final tempPreferredVersion = tempPreferredVersionJson != null
        ? GroupVersionForDiscovery.fromJson(tempPreferredVersionJson)
        : null;
    final tempServerAddressByClientCIDRs = tempServerAddressByClientCIDRsJson;
    final tempVersions = tempVersionsJson;

    return APIGroup(
      apiVersion: tempApiVersion,
      kind: tempKind,
      name: tempName,
      preferredVersion: tempPreferredVersion,
      serverAddressByClientCIDRs: tempServerAddressByClientCIDRs,
      versions: tempVersions,
    );
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// name is the name of the group.
  final String name;

  /// preferredVersion is the version preferred by the API server, which probably is the storage version.
  final GroupVersionForDiscovery? preferredVersion;

  /// a map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
  final List<ServerAddressByClientCIDR>? serverAddressByClientCIDRs;

  /// versions are the versions supported in this group.
  final List<GroupVersionForDiscovery> versions;

  /// Converts a [APIGroup] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempKind = kind;
    final tempName = name;
    final tempPreferredVersion = preferredVersion;
    final tempServerAddressByClientCIDRs = serverAddressByClientCIDRs;
    final tempVersions = versions;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    jsonData['name'] = tempName;

    if (tempPreferredVersion != null) {
      jsonData['preferredVersion'] = tempPreferredVersion.toJson();
    }

    if (tempServerAddressByClientCIDRs != null) {
      jsonData['serverAddressByClientCIDRs'] = tempServerAddressByClientCIDRs;
    }

    jsonData['versions'] = tempVersions;

    return jsonData;
  }
}

import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/server_address_by_client_cidr.dart';

/// APIVersions lists the versions that are available, to allow clients to discover the API at /api, which is the root path of the legacy v1 API.
class APIVersions {
  /// The main constructor.
  const APIVersions({
    this.apiVersion,
    this.kind,
    required this.serverAddressByClientCIDRs,
    required this.versions,
  });

  /// Creates a APIVersions from JSON data.
  APIVersions.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          serverAddressByClientCIDRs: json['serverAddressByClientCIDRs'] != null
              ? ServerAddressByClientCIDR.listFromJson(
                  (json['serverAddressByClientCIDRs'] as Iterable)
                      .cast<Map<String, dynamic>>())
              : [],
          versions: json['versions'] != null
              ? List<String>.from(json['versions'])
              : [],
        );

  /// Creates a list of APIVersions from JSON data.
  static List<APIVersions> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => APIVersions.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// A map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
  final List<ServerAddressByClientCIDR> serverAddressByClientCIDRs;

  /// Versions are the api versions that are available.
  final List<String> versions;
}

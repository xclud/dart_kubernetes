import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/group_version_for_discovery.dart';
import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/server_address_by_client_cidr.dart';

/// APIGroup contains the name, the supported versions, and the preferred version of a group.
class APIGroup {
  /// The main constructor.
  const APIGroup({
    this.apiVersion,
    this.kind,
    required this.name,
    this.preferredVersion,
    this.serverAddressByClientCIDRs,
    required this.versions,
  });

  /// Creates a APIGroup from JSON data.
  APIGroup.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          name: json['name'],
          preferredVersion: json['preferredVersion'] != null ? GroupVersionForDiscovery.fromJson(json['preferredVersion']): null,
          serverAddressByClientCIDRs: json['serverAddressByClientCIDRs'] != null ? ServerAddressByClientCIDR.listFromJson((json['serverAddressByClientCIDRs'] as Iterable).cast<Map<String, dynamic>>()): null,
          versions: json['versions'] != null ? GroupVersionForDiscovery.listFromJson((json['versions'] as Iterable).cast<Map<String, dynamic>>()): [],
        );

  /// Creates a list of APIGroup from JSON data.
  static List<APIGroup> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => APIGroup.fromJson(e)).toList();
  }

  /// Converts a APIGroup instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiVersion != null) { jsonData['apiVersion'] = apiVersion!; }
    if(kind != null) { jsonData['kind'] = kind!; }
    jsonData['name'] = name;
    if(preferredVersion != null) { jsonData['preferredVersion'] = preferredVersion!.toJson(); }
    if(serverAddressByClientCIDRs != null) { jsonData['serverAddressByClientCIDRs'] = serverAddressByClientCIDRs!.map((item) => item.toJson()).toList(); }
    jsonData['versions'] = versions.map((item) => item.toJson()).toList();
    

    return jsonData;
  }


  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Name is the name of the group.
  final String name;

  /// PreferredVersion is the version preferred by the API server, which probably is the storage version.
  final GroupVersionForDiscovery? preferredVersion;

  /// A map of client CIDR to server address that is serving this group. This is to help clients reach servers in the most network-efficient way possible. Clients can use the appropriate server address as per the CIDR that they match. In case of multiple matches, clients should use the longest matching CIDR. The server returns only those CIDRs that it thinks that the client can match. For example: the master will return an internal IP CIDR only, if the client reaches the server using an internal IP. Server looks at X-Forwarded-For header or X-Real-Ip header or request.RemoteAddr (in that order) to get the client IP.
  final List<ServerAddressByClientCIDR>? serverAddressByClientCIDRs;

  /// Versions are the versions supported in this group.
  final List<GroupVersionForDiscovery> versions;
}

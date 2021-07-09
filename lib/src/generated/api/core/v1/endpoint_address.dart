import 'package:kubernetes/src/generated/api/core/v1/object_reference.dart';

/// EndpointAddress is a tuple that describes single IP address.
class EndpointAddress {
  /// The main constructor.
  const EndpointAddress({
    this.hostname,
    required this.ip,
    this.nodeName,
    this.targetRef,
  });

  /// Creates a EndpointAddress from JSON data.
  EndpointAddress.fromJson(Map<String, dynamic> json)
      : this(
          hostname: json['hostname'],
          ip: json['ip'],
          nodeName: json['nodeName'],
          targetRef: json['targetRef'] != null
              ? ObjectReference.fromJson(json['targetRef'])
              : null,
        );

  /// Creates a list of EndpointAddress from JSON data.
  static List<EndpointAddress> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EndpointAddress.fromJson(e)).toList();
  }

  /// The Hostname of this endpoint.
  final String? hostname;

  /// The IP of this endpoint. May not be loopback (127.0.0.0/8), link-local (169.254.0.0/16), or link-local multicast ((224.0.0.0/24). IPv6 is also accepted but not fully supported on all platforms. Also, certain kubernetes components, like kube-proxy, are not IPv6 ready.
  final String ip;

  /// Optional: Node hosting this endpoint. This can be used to determine endpoints local to a node.
  final String? nodeName;

  /// Reference to object providing the endpoint.
  final ObjectReference? targetRef;
}

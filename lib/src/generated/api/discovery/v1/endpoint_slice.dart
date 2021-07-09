import 'package:kubernetes/src/generated/api/discovery/v1/endpoint.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/api/discovery/v1/endpoint_port.dart';

/// EndpointSlice represents a subset of the endpoints that implement a service. For a given service there may be multiple EndpointSlice objects, selected by labels, which must be joined to produce the full set of endpoints.
class EndpointSlice {
  /// The main constructor.
  const EndpointSlice({
    required this.addressType,
    this.apiVersion,
    required this.endpoints,
    this.kind,
    this.metadata,
    this.ports,
  });

  /// Creates a EndpointSlice from JSON data.
  EndpointSlice.fromJson(Map<String, dynamic> json)
      : this(
          addressType: json['addressType'],
          apiVersion: json['apiVersion'],
          endpoints: json['endpoints'] != null
              ? Endpoint.listFromJson(
                  (json['endpoints'] as Iterable).cast<Map<String, dynamic>>())
              : [],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ObjectMeta.fromJson(json['metadata'])
              : null,
          ports: json['ports'] != null
              ? EndpointPort.listFromJson(
                  (json['ports'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of EndpointSlice from JSON data.
  static List<EndpointSlice> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EndpointSlice.fromJson(e)).toList();
  }

  /// Converts a EndpointSlice instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['addressType'] = addressType;
    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    jsonData['endpoints'] = endpoints.map((item) => item.toJson()).toList();
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (metadata != null) {
      jsonData['metadata'] = metadata!.toJson();
    }
    if (ports != null) {
      jsonData['ports'] = ports!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// AddressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. The following address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6: Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.
  final String addressType;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
  final List<Endpoint> endpoints;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata.
  final ObjectMeta? metadata;

  /// Ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates "all ports". Each slice may include a maximum of 100 ports.
  final List<EndpointPort>? ports;
}

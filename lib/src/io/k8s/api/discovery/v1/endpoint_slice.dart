// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../discovery_v1.dart';

/// EndpointSlice represents a subset of the endpoints that implement a service. For a given service there may be multiple EndpointSlice objects, selected by labels, which must be joined to produce the full set of endpoints.
class EndpointSlice {
  /// Default constructor.
  const EndpointSlice({
    required this.addressType,
    this.apiVersion,
    required this.endpoints,
    this.kind,
    this.metadata,
    this.ports,
  });

  /// Creates a [EndpointSlice] from JSON data.
  factory EndpointSlice.fromJson(Map<String, dynamic> json) {
    final tempAddressTypeJson = json['addressType'];
    final tempApiVersionJson = json['apiVersion'];
    final tempEndpointsJson = json['endpoints'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempPortsJson = json['ports'];

    final String tempAddressType = tempAddressTypeJson;
    final String? tempApiVersion = tempApiVersionJson;

    final List<Endpoint> tempEndpoints = List<dynamic>.from(tempEndpointsJson)
        .map(
          (e) => Endpoint.fromJson(
            Map<String, dynamic>.from(e),
          ),
        )
        .toList();

    final String? tempKind = tempKindJson;
    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;

    final List<EndpointPort>? tempPorts = tempPortsJson != null
        ? List<dynamic>.from(tempPortsJson)
            .map(
              (e) => EndpointPort.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return EndpointSlice(
      addressType: tempAddressType,
      apiVersion: tempApiVersion,
      endpoints: tempEndpoints,
      kind: tempKind,
      metadata: tempMetadata,
      ports: tempPorts,
    );
  }

  /// addressType specifies the type of address carried by this EndpointSlice. All addresses in this slice must be the same type. This field is immutable after creation. The following address types are currently supported: * IPv4: Represents an IPv4 Address. * IPv6: Represents an IPv6 Address. * FQDN: Represents a Fully Qualified Domain Name.
  final String addressType;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// endpoints is a list of unique endpoints in this slice. Each slice may include a maximum of 1000 endpoints.
  final List<Endpoint> endpoints;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata.
  final ObjectMeta? metadata;

  /// ports specifies the list of network ports exposed by each endpoint in this slice. Each port must have a unique name. When ports is empty, it indicates that there are no defined ports. When a port is defined with a nil port value, it indicates "all ports". Each slice may include a maximum of 100 ports.
  final List<EndpointPort>? ports;

  /// Converts a [EndpointSlice] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAddressType = addressType;
    final tempApiVersion = apiVersion;
    final tempEndpoints = endpoints;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempPorts = ports;

    jsonData['addressType'] = tempAddressType;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    jsonData['endpoints'] =
        tempEndpoints.map((e) => e.toJson()).toList(growable: false);

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    if (tempPorts != null) {
      jsonData['ports'] =
          tempPorts.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}

// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../discovery_v1.dart';

/// Endpoint represents a single logical "backend" implementing a service.
class Endpoint {
  /// Default constructor.
  const Endpoint({
    required this.addresses,
    this.conditions,
    this.deprecatedTopology,
    this.hints,
    this.hostname,
    this.nodeName,
    this.targetRef,
    this.zone,
  });

  /// Creates a [Endpoint] from JSON data.
  factory Endpoint.fromJson(Map<String, dynamic> json) {
    final tempAddressesJson = json['addresses'];
    final tempConditionsJson = json['conditions'];
    final tempDeprecatedTopologyJson = json['deprecatedTopology'];
    final tempHintsJson = json['hints'];
    final tempHostnameJson = json['hostname'];
    final tempNodeNameJson = json['nodeName'];
    final tempTargetRefJson = json['targetRef'];
    final tempZoneJson = json['zone'];

    final List<String> tempAddresses = List<String>.from(tempAddressesJson);
    final EndpointConditions? tempConditions = tempConditionsJson != null
        ? EndpointConditions.fromJson(tempConditionsJson)
        : null;

    final Map<String, String>? tempDeprecatedTopology =
        tempDeprecatedTopologyJson != null
            ? Map<String, String>.from(tempDeprecatedTopologyJson)
            : null;

    final EndpointHints? tempHints =
        tempHintsJson != null ? EndpointHints.fromJson(tempHintsJson) : null;
    final String? tempHostname = tempHostnameJson;
    final String? tempNodeName = tempNodeNameJson;
    final ObjectReference? tempTargetRef = tempTargetRefJson != null
        ? ObjectReference.fromJson(tempTargetRefJson)
        : null;
    final String? tempZone = tempZoneJson;

    return Endpoint(
      addresses: tempAddresses,
      conditions: tempConditions,
      deprecatedTopology: tempDeprecatedTopology,
      hints: tempHints,
      hostname: tempHostname,
      nodeName: tempNodeName,
      targetRef: tempTargetRef,
      zone: tempZone,
    );
  }

  /// addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100. These are all assumed to be fungible and clients may choose to only use the first element. Refer to: https://issue.k8s.io/106267.
  final List<String> addresses;

  /// conditions contains information about the current status of the endpoint.
  final EndpointConditions? conditions;

  /// deprecatedTopology contains topology information part of the v1beta1 API. This field is deprecated, and will be removed when the v1beta1 API is removed (no sooner than kubernetes v1.24).  While this field can hold values, it is not writable through the v1 API, and any attempts to write to it will be silently ignored. Topology information can be found in the zone and nodeName fields instead.
  final Map<String, String>? deprecatedTopology;

  /// hints contains information associated with how an endpoint should be consumed.
  final EndpointHints? hints;

  /// hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation.
  final String? hostname;

  /// nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node.
  final String? nodeName;

  /// targetRef is a reference to a Kubernetes object that represents this endpoint.
  final ObjectReference? targetRef;

  /// zone is the name of the Zone this endpoint exists in.
  final String? zone;

  /// Converts a [Endpoint] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAddresses = addresses;
    final tempConditions = conditions;
    final tempDeprecatedTopology = deprecatedTopology;
    final tempHints = hints;
    final tempHostname = hostname;
    final tempNodeName = nodeName;
    final tempTargetRef = targetRef;
    final tempZone = zone;

    jsonData['addresses'] = tempAddresses;

    if (tempConditions != null) {
      jsonData['conditions'] = tempConditions.toJson();
    }

    if (tempDeprecatedTopology != null) {
      jsonData['deprecatedTopology'] = tempDeprecatedTopology;
    }

    if (tempHints != null) {
      jsonData['hints'] = tempHints.toJson();
    }

    if (tempHostname != null) {
      jsonData['hostname'] = tempHostname;
    }

    if (tempNodeName != null) {
      jsonData['nodeName'] = tempNodeName;
    }

    if (tempTargetRef != null) {
      jsonData['targetRef'] = tempTargetRef.toJson();
    }

    if (tempZone != null) {
      jsonData['zone'] = tempZone;
    }

    return jsonData;
  }
}

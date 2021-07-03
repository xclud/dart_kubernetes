import 'package:kubernetes/src/generated/api/discovery/v1/endpoint_conditions.dart';
import 'package:kubernetes/src/generated/api/discovery/v1/endpoint_hints.dart';
import 'package:kubernetes/src/generated/api/core/v1/object_reference.dart';

/// Endpoint represents a single logical "backend" implementing a service.
class Endpoint {
  /// The main constructor.
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

  /// Creates a Endpoint from JSON data.
  Endpoint.fromJson(Map<String, dynamic> json)
      : this(
          addresses: json['addresses'] != null
              ? List<String>.from(json['addresses'])
              : [],
          conditions: json['conditions'] != null
              ? EndpointConditions.fromJson(json['conditions'])
              : null,
          deprecatedTopology: json['deprecatedTopology'],
          hints: json['hints'] != null
              ? EndpointHints.fromJson(json['hints'])
              : null,
          hostname: json['hostname'],
          nodeName: json['nodeName'],
          targetRef: json['targetRef'] != null
              ? ObjectReference.fromJson(json['targetRef'])
              : null,
          zone: json['zone'],
        );

  /// Creates a list of Endpoint from JSON data.
  static List<Endpoint> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Endpoint.fromJson(e)).toList();
  }

  /// addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100.
  final List<String> addresses;

  /// conditions contains information about the current status of the endpoint.
  final EndpointConditions? conditions;

  /// deprecatedTopology contains topology information part of the v1beta1 API. This field is deprecated, and will be removed when the v1beta1 API is removed (no sooner than kubernetes v1.24).  While this field can hold values, it is not writable through the v1 API, and any attempts to write to it will be silently ignored. Topology information can be found in the zone and nodeName fields instead.
  final Object? deprecatedTopology;

  /// hints contains information associated with how an endpoint should be consumed.
  final EndpointHints? hints;

  /// hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation.
  final String? hostname;

  /// nodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. This field can be enabled with the EndpointSliceNodeName feature gate.
  final String? nodeName;

  /// targetRef is a reference to a Kubernetes object that represents this endpoint.
  final ObjectReference? targetRef;

  /// zone is the name of the Zone this endpoint exists in.
  final String? zone;
}

import 'package:kubernetes/src/generated/api/discovery/v1beta1/endpoint_conditions.dart';
import 'package:kubernetes/src/generated/api/discovery/v1beta1/endpoint_hints.dart';
import 'package:kubernetes/src/generated/api/core/v1/object_reference.dart';

/// Endpoint represents a single logical "backend" implementing a service.
class Endpoint {
  /// The main constructor.
  const Endpoint({
    required this.addresses,
    this.conditions,
    this.hints,
    this.hostname,
    this.nodeName,
    this.targetRef,
    this.topology,
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
          hints: json['hints'] != null
              ? EndpointHints.fromJson(json['hints'])
              : null,
          hostname: json['hostname'],
          nodeName: json['nodeName'],
          targetRef: json['targetRef'] != null
              ? ObjectReference.fromJson(json['targetRef'])
              : null,
          topology: json['topology'] != null
              ? Map<String, String>.from(json['topology'])
              : null,
        );

  /// Creates a list of Endpoint from JSON data.
  static List<Endpoint> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Endpoint.fromJson(e)).toList();
  }

  /// Converts a Endpoint instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['addresses'] = addresses;
    if (conditions != null) {
      jsonData['conditions'] = conditions!.toJson();
    }
    if (hints != null) {
      jsonData['hints'] = hints!.toJson();
    }
    if (hostname != null) {
      jsonData['hostname'] = hostname!;
    }
    if (nodeName != null) {
      jsonData['nodeName'] = nodeName!;
    }
    if (targetRef != null) {
      jsonData['targetRef'] = targetRef!.toJson();
    }
    if (topology != null) {
      jsonData['topology'] = topology!;
    }

    return jsonData;
  }

  /// Addresses of this endpoint. The contents of this field are interpreted according to the corresponding EndpointSlice addressType field. Consumers must handle different types of addresses in the context of their own capabilities. This must contain at least one address but no more than 100.
  final List<String> addresses;

  /// Conditions contains information about the current status of the endpoint.
  final EndpointConditions? conditions;

  /// Hints contains information associated with how an endpoint should be consumed.
  final EndpointHints? hints;

  /// Hostname of this endpoint. This field may be used by consumers of endpoints to distinguish endpoints from each other (e.g. in DNS names). Multiple endpoints which use the same hostname should be considered fungible (e.g. multiple A values in DNS). Must be lowercase and pass DNS Label (RFC 1123) validation.
  final String? hostname;

  /// NodeName represents the name of the Node hosting this endpoint. This can be used to determine endpoints local to a Node. This field can be enabled with the EndpointSliceNodeName feature gate.
  final String? nodeName;

  /// TargetRef is a reference to a Kubernetes object that represents this endpoint.
  final ObjectReference? targetRef;

  /// Topology contains arbitrary topology information associated with the endpoint. These key/value pairs must conform with the label format. https://kubernetes.io/docs/concepts/overview/working-with-objects/labels Topology may include a maximum of 16 key/value pairs. This includes, but is not limited to the following well known keys: * kubernetes.io/hostname: the value indicates the hostname of the node
  ///   where the endpoint is located. This should match the corresponding
  ///   node label.
  /// * topology.kubernetes.io/zone: the value indicates the zone where the
  ///   endpoint is located. This should match the corresponding node label.
  /// * topology.kubernetes.io/region: the value indicates the region where the
  ///   endpoint is located. This should match the corresponding node label.
  /// This field is deprecated and will be removed in future api versions.
  final Map<String, String>? topology;
}

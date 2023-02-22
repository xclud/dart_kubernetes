import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/resource/v1alpha1/resource_class_parameters_reference.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/node_selector.dart';

/// ResourceClass is used by administrators to influence how resources are allocated.
/// 
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClass {
  /// The main constructor.
  const ResourceClass({
    this.apiVersion,
    required this.driverName,
    this.kind,
    this.metadata,
    this.parametersRef,
    this.suitableNodes,
  });

  /// Creates a ResourceClass from JSON data.
  ResourceClass.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          driverName: json['driverName'],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata']): null,
          parametersRef: json['parametersRef'] != null ? ResourceClassParametersReference.fromJson(json['parametersRef']): null,
          suitableNodes: json['suitableNodes'] != null ? NodeSelector.fromJson(json['suitableNodes']): null,
        );

  /// Creates a list of ResourceClass from JSON data.
  static List<ResourceClass> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceClass.fromJson(e)).toList();
  }

  /// Converts a ResourceClass instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiVersion != null) { jsonData['apiVersion'] = apiVersion!; }
    jsonData['driverName'] = driverName;
    if(kind != null) { jsonData['kind'] = kind!; }
    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    if(parametersRef != null) { jsonData['parametersRef'] = parametersRef!.toJson(); }
    if(suitableNodes != null) { jsonData['suitableNodes'] = suitableNodes!.toJson(); }
    

    return jsonData;
  }


  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// DriverName defines the name of the dynamic resource driver that is used for allocation of a ResourceClaim that uses this class.
/// 
/// Resource drivers have a unique name in forward domain order (acme.example.com).
  final String driverName;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object metadata.
  final ObjectMeta? metadata;

  /// ParametersRef references an arbitrary separate object that may hold parameters that will be used by the driver when allocating a resource that uses this class. A dynamic resource driver can distinguish between parameters stored here and and those stored in ResourceClaimSpec.
  final ResourceClassParametersReference? parametersRef;

  /// Only nodes matching the selector will be considered by the scheduler when trying to find a Node that fits a Pod when that Pod uses a ResourceClaim that has not been allocated yet.
/// 
/// Setting this field is optional. If null, all nodes are candidates.
  final NodeSelector? suitableNodes;
}

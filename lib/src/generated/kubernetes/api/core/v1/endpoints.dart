import 'package:kubernetes/src/generated/kubernetes/apimachinery/pkg/apis/meta/v1/object_meta.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/endpoint_subset.dart';

/// Endpoints is a collection of endpoints that implement the actual service. Example:
/// 
/// 	 Name: "mysvc",
/// 	 Subsets: [
/// 	   {
/// 	     Addresses: [{"ip": "10.10.1.1"}, {"ip": "10.10.2.2"}],
/// 	     Ports: [{"name": "a", "port": 8675}, {"name": "b", "port": 309}]
/// 	   },
/// 	   {
/// 	     Addresses: [{"ip": "10.10.3.3"}],
/// 	     Ports: [{"name": "a", "port": 93}, {"name": "b", "port": 76}]
/// 	   },
/// 	].
class Endpoints {
  /// The main constructor.
  const Endpoints({
    this.apiVersion,
    this.kind,
    this.metadata,
    this.subsets,
  });

  /// Creates a Endpoints from JSON data.
  Endpoints.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          kind: json['kind'],
          metadata: json['metadata'] != null ? ObjectMeta.fromJson(json['metadata']): null,
          subsets: json['subsets'] != null ? EndpointSubset.listFromJson((json['subsets'] as Iterable).cast<Map<String, dynamic>>()): null,
        );

  /// Creates a list of Endpoints from JSON data.
  static List<Endpoints> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => Endpoints.fromJson(e)).toList();
  }

  /// Converts a Endpoints instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiVersion != null) { jsonData['apiVersion'] = apiVersion!; }
    if(kind != null) { jsonData['kind'] = kind!; }
    if(metadata != null) { jsonData['metadata'] = metadata!.toJson(); }
    if(subsets != null) { jsonData['subsets'] = subsets!.map((item) => item.toJson()).toList(); }
    

    return jsonData;
  }


  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ObjectMeta? metadata;

  /// The set of all endpoints is the union of all subsets. Addresses are placed into subsets according to the IPs they share. A single address with multiple ports, some of which are ready and some of which are not (because they come from different containers) will result in the address being displayed in different subsets for the different ports. No address will appear in both Addresses and NotReadyAddresses in the same subset. Sets of addresses and ports that comprise a service.
  final List<EndpointSubset>? subsets;
}

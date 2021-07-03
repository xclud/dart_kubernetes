import 'package:kubernetes/src/generated/api/discovery/v1/endpoint_slice.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/list_meta.dart';

/// EndpointSliceList represents a list of endpoint slices
class EndpointSliceList {
  /// The main constructor.
  const EndpointSliceList({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  /// Creates a EndpointSliceList from JSON data.
  EndpointSliceList.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          items: json['items'] != null
              ? EndpointSlice.listFromJson(
                  (json['items'] as Iterable).cast<Map<String, dynamic>>())
              : [],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ListMeta.fromJson(json['metadata'])
              : null,
        );

  /// Creates a list of EndpointSliceList from JSON data.
  static List<EndpointSliceList> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EndpointSliceList.fromJson(e)).toList();
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;

  /// List of endpoint slices
  final List<EndpointSlice> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;

  /// Standard list metadata.
  final ListMeta? metadata;
}

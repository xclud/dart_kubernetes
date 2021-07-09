import 'package:kubernetes/src/generated/api/coordination/v1/lease.dart';
import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/list_meta.dart';

/// LeaseList is a list of Lease objects.
class LeaseList {
  /// The main constructor.
  const LeaseList({
    this.apiVersion,
    required this.items,
    this.kind,
    this.metadata,
  });

  /// Creates a LeaseList from JSON data.
  LeaseList.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          items: json['items'] != null
              ? Lease.listFromJson(
                  (json['items'] as Iterable).cast<Map<String, dynamic>>())
              : [],
          kind: json['kind'],
          metadata: json['metadata'] != null
              ? ListMeta.fromJson(json['metadata'])
              : null,
        );

  /// Creates a list of LeaseList from JSON data.
  static List<LeaseList> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => LeaseList.fromJson(e)).toList();
  }

  /// Converts a LeaseList instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    jsonData['items'] = items.map((item) => item.toJson()).toList();
    if (kind != null) {
      jsonData['kind'] = kind!;
    }
    if (metadata != null) {
      jsonData['metadata'] = metadata!.toJson();
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Items is a list of schema objects.
  final List<Lease> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard list metadata. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata.
  final ListMeta? metadata;
}

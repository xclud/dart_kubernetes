import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/api_group.dart';

/// APIGroupList is a list of APIGroup, to allow clients to discover the API at /apis.
class APIGroupList {
  /// The main constructor.
  const APIGroupList({
    this.apiVersion,
    required this.groups,
    this.kind,
  });

  /// Creates a APIGroupList from JSON data.
  APIGroupList.fromJson(Map<String, dynamic> json)
      : this(
          apiVersion: json['apiVersion'],
          groups: json['groups'] != null
              ? APIGroup.listFromJson(
                  (json['groups'] as Iterable).cast<Map<String, dynamic>>())
              : [],
          kind: json['kind'],
        );

  /// Creates a list of APIGroupList from JSON data.
  static List<APIGroupList> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => APIGroupList.fromJson(e)).toList();
  }

  /// Converts a APIGroupList instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (apiVersion != null) {
      jsonData['apiVersion'] = apiVersion!;
    }
    jsonData['groups'] = groups.map((item) => item.toJson()).toList();
    if (kind != null) {
      jsonData['kind'] = kind!;
    }

    return jsonData;
  }

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Groups is a list of APIGroup.
  final List<APIGroup> groups;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;
}

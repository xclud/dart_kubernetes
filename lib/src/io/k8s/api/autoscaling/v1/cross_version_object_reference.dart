// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.autoscaling.v1;

/// CrossVersionObjectReference contains enough information to let you identify the referred resource.
class CrossVersionObjectReference {
  /// Default constructor.
  const CrossVersionObjectReference({
    this.apiVersion,
    required this.kind,
    required this.name,
  });

  /// Creates a [CrossVersionObjectReference] from JSON data.
  factory CrossVersionObjectReference.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempKindJson = json['kind'];
    final tempNameJson = json['name'];

    final tempApiVersion = tempApiVersionJson;
    final tempKind = tempKindJson;
    final tempName = tempNameJson;

    return CrossVersionObjectReference(
      apiVersion: tempApiVersion,
      kind: tempKind,
      name: tempName,
    );
  }

  /// API version of the referent.
  final String? apiVersion;

  /// Kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String kind;

  /// Name of the referent; More info: http://kubernetes.io/docs/user-guide/identifiers#names.
  final String name;

  /// Converts a [CrossVersionObjectReference] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempKind = kind;
    final tempName = name;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    jsonData['kind'] = tempKind;

    jsonData['name'] = tempName;

    return jsonData;
  }
}

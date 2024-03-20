// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../autoscaling_v2.dart';

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

    final String? tempApiVersion = tempApiVersionJson;
    final String tempKind = tempKindJson;
    final String tempName = tempNameJson;

    return CrossVersionObjectReference(
      apiVersion: tempApiVersion,
      kind: tempKind,
      name: tempName,
    );
  }

  /// apiVersion is the API version of the referent.
  final String? apiVersion;

  /// kind is the kind of the referent; More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String kind;

  /// name is the name of the referent; More info: https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names.
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

// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.admissionregistration.v1alpha1;

/// ParamKind is a tuple of Group Kind and Version.
class ParamKind {
  /// Default constructor.
  const ParamKind({
    this.apiVersion,
    this.kind,
  });

  /// Creates a [ParamKind] from JSON data.
  factory ParamKind.fromJson(Map<String, dynamic> json) {
    final tempApiVersionJson = json['apiVersion'];
    final tempKindJson = json['kind'];

    final tempApiVersion = tempApiVersionJson;
    final tempKind = tempKindJson;

    return ParamKind(
      apiVersion: tempApiVersion,
      kind: tempKind,
    );
  }

  /// APIVersion is the API group version the resources belong to. In format of "group/version". Required.
  final String? apiVersion;

  /// Kind is the API kind the resources belong to. Required.
  final String? kind;

  /// Converts a [ParamKind] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiVersion = apiVersion;
    final tempKind = kind;

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    return jsonData;
  }
}

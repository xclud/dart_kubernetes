// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.flowcontrol.v1beta2;

/// FlowDistinguisherMethod specifies the method of a flow distinguisher.
class FlowDistinguisherMethod {
  /// Default constructor.
  const FlowDistinguisherMethod({
    required this.type,
  });

  /// Creates a [FlowDistinguisherMethod] from JSON data.
  factory FlowDistinguisherMethod.fromJson(Map<String, dynamic> json) {
    final tempTypeJson = json['type'];

    final tempType = tempTypeJson;

    return FlowDistinguisherMethod(
      type: tempType,
    );
  }

  /// `type` is the type of flow distinguisher method The supported types are "ByUser" and "ByNamespace". Required.
  final String type;

  /// Converts a [FlowDistinguisherMethod] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempType = type;

    jsonData['type'] = tempType;

    return jsonData;
  }
}

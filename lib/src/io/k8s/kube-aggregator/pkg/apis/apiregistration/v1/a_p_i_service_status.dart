// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.kube__aggregator.pkg.apis.apiregistration.v1;

/// APIServiceStatus contains derived information about an API server.
class APIServiceStatus {
  /// Default constructor.
  const APIServiceStatus({
    this.conditions,
  });

  /// Creates a [APIServiceStatus] from JSON data.
  factory APIServiceStatus.fromJson(Map<String, dynamic> json) {
    final tempConditionsJson = json['conditions'];

    final tempConditions = tempConditionsJson;

    return APIServiceStatus(
      conditions: tempConditions,
    );
  }

  /// Current service state of apiService.
  final List<APIServiceCondition>? conditions;

  /// Converts a [APIServiceStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempConditions = conditions;

    if (tempConditions != null) {
      jsonData['conditions'] = tempConditions;
    }

    return jsonData;
  }
}

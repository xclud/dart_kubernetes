// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../../../io_k8s_kube__aggregator_pkg_apis_apiregistration_v1.dart';

/// APIServiceStatus contains derived information about an API server.
class APIServiceStatus {
  /// Default constructor.
  const APIServiceStatus({
    this.conditions,
  });

  /// Creates a [APIServiceStatus] from JSON data.
  factory APIServiceStatus.fromJson(Map<String, dynamic> json) {
    final tempConditionsJson = json['conditions'];

    final List<APIServiceCondition>? tempConditions = tempConditionsJson != null
        ? List<dynamic>.from(tempConditionsJson)
            .map(
              (e) => APIServiceCondition.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

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
      jsonData['conditions'] =
          tempConditions.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}

import 'package:kubernetes/src/generated/kube-aggregator/pkg/apis/apiregistration/v1/api_service_condition.dart';

/// APIServiceStatus contains derived information about an API server.
class APIServiceStatus {
  /// The main constructor.
  const APIServiceStatus({
    this.conditions,
  });

  /// Creates a APIServiceStatus from JSON data.
  APIServiceStatus.fromJson(Map<String, dynamic> json)
      : this(
          conditions: json['conditions'] != null
              ? APIServiceCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of APIServiceStatus from JSON data.
  static List<APIServiceStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => APIServiceStatus.fromJson(e)).toList();
  }

  /// Current service state of apiService.
  final List<APIServiceCondition>? conditions;
}

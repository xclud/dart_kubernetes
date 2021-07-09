import 'package:kubernetes/src/generated/api/flowcontrol/v1beta1/flow_schema_condition.dart';

/// FlowSchemaStatus represents the current state of a FlowSchema.
class FlowSchemaStatus {
  /// The main constructor.
  const FlowSchemaStatus({
    this.conditions,
  });

  /// Creates a FlowSchemaStatus from JSON data.
  FlowSchemaStatus.fromJson(Map<String, dynamic> json)
      : this(
          conditions: json['conditions'] != null
              ? FlowSchemaCondition.listFromJson(
                  (json['conditions'] as Iterable).cast<Map<String, dynamic>>())
              : null,
        );

  /// Creates a list of FlowSchemaStatus from JSON data.
  static List<FlowSchemaStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => FlowSchemaStatus.fromJson(e)).toList();
  }

  /// Converts a FlowSchemaStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (conditions != null) {
      jsonData['conditions'] =
          conditions!.map((item) => item.toJson()).toList();
    }

    return jsonData;
  }

  /// `conditions` is a list of the current states of FlowSchema.
  final List<FlowSchemaCondition>? conditions;
}

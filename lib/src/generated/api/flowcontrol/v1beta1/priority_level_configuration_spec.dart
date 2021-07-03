import 'package:kubernetes/src/generated/api/flowcontrol/v1beta1/limited_priority_level_configuration.dart';

/// PriorityLevelConfigurationSpec specifies the configuration of a priority level.
class PriorityLevelConfigurationSpec {
  /// The main constructor.
  const PriorityLevelConfigurationSpec({
    this.limited,
    required this.type,
  });

  /// Creates a PriorityLevelConfigurationSpec from JSON data.
  PriorityLevelConfigurationSpec.fromJson(Map<String, dynamic> json)
      : this(
          limited: json['limited'] != null
              ? LimitedPriorityLevelConfiguration.fromJson(json['limited'])
              : null,
          type: json['type'],
        );

  /// Creates a list of PriorityLevelConfigurationSpec from JSON data.
  static List<PriorityLevelConfigurationSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PriorityLevelConfigurationSpec.fromJson(e)).toList();
  }

  /// `limited` specifies how requests are handled for a Limited priority level. This field must be non-empty if and only if `type` is `"Limited"`.
  final LimitedPriorityLevelConfiguration? limited;

  /// `type` indicates whether this priority level is subject to limitation on request execution.  A value of `"Exempt"` means that requests of this priority level are not subject to a limit (and thus are never queued) and do not detract from the capacity made available to other priority levels.  A value of `"Limited"` means that (a) requests of this priority level _are_ subject to limits and (b) some of the server's limited capacity is made available exclusively to this priority level. Required.
  final String type;
}

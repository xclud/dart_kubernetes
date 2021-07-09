import 'package:kubernetes/src/generated/api/policy/v1beta1/id_range.dart';

/// RunAsUserStrategyOptions defines the strategy type and any options used to create the strategy.
class RunAsUserStrategyOptions {
  /// The main constructor.
  const RunAsUserStrategyOptions({
    this.ranges,
    required this.rule,
  });

  /// Creates a RunAsUserStrategyOptions from JSON data.
  RunAsUserStrategyOptions.fromJson(Map<String, dynamic> json)
      : this(
          ranges: json['ranges'] != null
              ? IDRange.listFromJson(
                  (json['ranges'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          rule: json['rule'],
        );

  /// Creates a list of RunAsUserStrategyOptions from JSON data.
  static List<RunAsUserStrategyOptions> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => RunAsUserStrategyOptions.fromJson(e)).toList();
  }

  /// Converts a RunAsUserStrategyOptions instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (ranges != null) {
      jsonData['ranges'] = ranges!.map((item) => item.toJson()).toList();
    }
    jsonData['rule'] = rule;

    return jsonData;
  }

  /// Ranges are the allowed ranges of uids that may be used. If you would like to force a single uid then supply a single range with the same start and end. Required for MustRunAs.
  final List<IDRange>? ranges;

  /// Rule is the strategy that will dictate the allowable RunAsUser values that may be set.
  final String rule;
}

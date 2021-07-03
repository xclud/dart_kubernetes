import 'package:kubernetes/src/generated/api/policy/v1beta1/id_range.dart';

/// RunAsGroupStrategyOptions defines the strategy type and any options used to create the strategy.
class RunAsGroupStrategyOptions {
  /// The main constructor.
  const RunAsGroupStrategyOptions({
    this.ranges,
    required this.rule,
  });

  /// Creates a RunAsGroupStrategyOptions from JSON data.
  RunAsGroupStrategyOptions.fromJson(Map<String, dynamic> json)
      : this(
          ranges: json['ranges'] != null
              ? IDRange.listFromJson(
                  (json['ranges'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          rule: json['rule'],
        );

  /// Creates a list of RunAsGroupStrategyOptions from JSON data.
  static List<RunAsGroupStrategyOptions> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => RunAsGroupStrategyOptions.fromJson(e)).toList();
  }

  /// ranges are the allowed ranges of gids that may be used. If you would like to force a single gid then supply a single range with the same start and end. Required for MustRunAs.
  final List<IDRange>? ranges;

  /// rule is the strategy that will dictate the allowable RunAsGroup values that may be set.
  final String rule;
}

import 'package:kubernetes/src/generated/api/policy/v1beta1/id_range.dart';

/// FSGroupStrategyOptions defines the strategy type and options used to create the strategy.
class FSGroupStrategyOptions {
  /// The main constructor.
  const FSGroupStrategyOptions({
    this.ranges,
    this.rule,
  });

  /// Creates a FSGroupStrategyOptions from JSON data.
  FSGroupStrategyOptions.fromJson(Map<String, dynamic> json)
      : this(
          ranges: json['ranges'] != null
              ? IDRange.listFromJson(
                  (json['ranges'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          rule: json['rule'],
        );

  /// Creates a list of FSGroupStrategyOptions from JSON data.
  static List<FSGroupStrategyOptions> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => FSGroupStrategyOptions.fromJson(e)).toList();
  }

  /// Ranges are the allowed ranges of fs groups.  If you would like to force a single fs group then supply a single range with the same start and end. Required for MustRunAs.
  final List<IDRange>? ranges;

  /// Rule is the strategy that will dictate what FSGroup is used in the SecurityContext.
  final String? rule;
}

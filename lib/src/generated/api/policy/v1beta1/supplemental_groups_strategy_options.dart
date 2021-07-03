import 'package:kubernetes/src/generated/api/policy/v1beta1/id_range.dart';

/// SupplementalGroupsStrategyOptions defines the strategy type and options used to create the strategy.
class SupplementalGroupsStrategyOptions {
  /// The main constructor.
  const SupplementalGroupsStrategyOptions({
    this.ranges,
    this.rule,
  });

  /// Creates a SupplementalGroupsStrategyOptions from JSON data.
  SupplementalGroupsStrategyOptions.fromJson(Map<String, dynamic> json)
      : this(
          ranges: json['ranges'] != null
              ? IDRange.listFromJson(
                  (json['ranges'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          rule: json['rule'],
        );

  /// Creates a list of SupplementalGroupsStrategyOptions from JSON data.
  static List<SupplementalGroupsStrategyOptions> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => SupplementalGroupsStrategyOptions.fromJson(e))
        .toList();
  }

  /// ranges are the allowed ranges of supplemental groups.  If you would like to force a single supplemental group then supply a single range with the same start and end. Required for MustRunAs.
  final List<IDRange>? ranges;

  /// rule is the strategy that will dictate what supplemental groups is used in the SecurityContext.
  final String? rule;
}

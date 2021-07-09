import 'package:kubernetes/src/generated/api/core/v1/se_linux_options.dart';

/// SELinuxStrategyOptions defines the strategy type and any options used to create the strategy.
class SELinuxStrategyOptions {
  /// The main constructor.
  const SELinuxStrategyOptions({
    required this.rule,
    this.seLinuxOptions,
  });

  /// Creates a SELinuxStrategyOptions from JSON data.
  SELinuxStrategyOptions.fromJson(Map<String, dynamic> json)
      : this(
          rule: json['rule'],
          seLinuxOptions: json['seLinuxOptions'] != null
              ? SELinuxOptions.fromJson(json['seLinuxOptions'])
              : null,
        );

  /// Creates a list of SELinuxStrategyOptions from JSON data.
  static List<SELinuxStrategyOptions> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => SELinuxStrategyOptions.fromJson(e)).toList();
  }

  /// Rule is the strategy that will dictate the allowable labels that may be set.
  final String rule;

  /// SeLinuxOptions required to run as; required for MustRunAs More info: https://kubernetes.io/docs/tasks/configure-pod-container/security-context/.
  final SELinuxOptions? seLinuxOptions;
}

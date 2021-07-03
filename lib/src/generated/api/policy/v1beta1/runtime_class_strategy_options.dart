/// RuntimeClassStrategyOptions define the strategy that will dictate the allowable RuntimeClasses for a pod.
class RuntimeClassStrategyOptions {
  /// The main constructor.
  const RuntimeClassStrategyOptions({
    required this.allowedRuntimeClassNames,
    this.defaultRuntimeClassName,
  });

  /// Creates a RuntimeClassStrategyOptions from JSON data.
  RuntimeClassStrategyOptions.fromJson(Map<String, dynamic> json)
      : this(
          allowedRuntimeClassNames: json['allowedRuntimeClassNames'] != null
              ? List<String>.from(json['allowedRuntimeClassNames'])
              : [],
          defaultRuntimeClassName: json['defaultRuntimeClassName'],
        );

  /// Creates a list of RuntimeClassStrategyOptions from JSON data.
  static List<RuntimeClassStrategyOptions> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => RuntimeClassStrategyOptions.fromJson(e)).toList();
  }

  /// allowedRuntimeClassNames is an allowlist of RuntimeClass names that may be specified on a pod. A value of "*" means that any RuntimeClass name is allowed, and must be the only item in the list. An empty list requires the RuntimeClassName field to be unset.
  final List<String> allowedRuntimeClassNames;

  /// defaultRuntimeClassName is the default RuntimeClassName to set on the pod. The default MUST be allowed by the allowedRuntimeClassNames list. A value of nil does not mutate the Pod.
  final String? defaultRuntimeClassName;
}

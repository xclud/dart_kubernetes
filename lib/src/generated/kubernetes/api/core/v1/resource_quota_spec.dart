import 'package:kubernetes/src/generated/kubernetes/api/core/v1/scope_selector.dart';

/// ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
class ResourceQuotaSpec {
  /// The main constructor.
  const ResourceQuotaSpec({
    this.hard,
    this.scopeSelector,
    this.scopes,
  });

  /// Creates a ResourceQuotaSpec from JSON data.
  ResourceQuotaSpec.fromJson(Map<String, dynamic> json)
      : this(
          hard: json['hard'] != null
              ? Map<String, String>.from(json['hard'])
              : null,
          scopeSelector: json['scopeSelector'] != null
              ? ScopeSelector.fromJson(json['scopeSelector'])
              : null,
          scopes:
              json['scopes'] != null ? List<String>.from(json['scopes']) : null,
        );

  /// Creates a list of ResourceQuotaSpec from JSON data.
  static List<ResourceQuotaSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceQuotaSpec.fromJson(e)).toList();
  }

  /// Converts a ResourceQuotaSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (hard != null) {
      jsonData['hard'] = hard!;
    }
    if (scopeSelector != null) {
      jsonData['scopeSelector'] = scopeSelector!.toJson();
    }
    if (scopes != null) {
      jsonData['scopes'] = scopes!;
    }

    return jsonData;
  }

  /// Hard is the set of desired hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/.
  final Map<String, String>? hard;

  /// ScopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched.
  final ScopeSelector? scopeSelector;

  /// A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
  final List<String>? scopes;
}

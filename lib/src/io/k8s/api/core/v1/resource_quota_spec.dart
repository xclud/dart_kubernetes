// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// ResourceQuotaSpec defines the desired hard limits to enforce for Quota.
class ResourceQuotaSpec {
  /// Default constructor.
  const ResourceQuotaSpec({
    this.hard = const {},
    this.scopeSelector,
    this.scopes,
  });

  /// Creates a [ResourceQuotaSpec] from JSON data.
  factory ResourceQuotaSpec.fromJson(Map<String, dynamic> json) {
    final tempHardJson = json['hard'];
    final tempScopeSelectorJson = json['scopeSelector'];
    final tempScopesJson = json['scopes'];

    final tempHard = tempHardJson;
    final tempScopeSelector = tempScopeSelectorJson != null
        ? ScopeSelector.fromJson(tempScopeSelectorJson)
        : null;
    final tempScopes = tempScopesJson;

    return ResourceQuotaSpec(
      hard: tempHard,
      scopeSelector: tempScopeSelector,
      scopes: tempScopes,
    );
  }

  /// hard is the set of desired hard limits for each named resource. More info: https://kubernetes.io/docs/concepts/policy/resource-quotas/.
  final Map<String, Object> hard;

  /// scopeSelector is also a collection of filters like scopes that must match each object tracked by a quota but expressed using ScopeSelectorOperator in combination with possible values. For a resource to match, both scopes AND scopeSelector (if specified in spec), must be matched.
  final ScopeSelector? scopeSelector;

  /// A collection of filters that must match each object tracked by a quota. If not specified, the quota matches all objects.
  final List<String>? scopes;

  /// Converts a [ResourceQuotaSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempHard = hard;
    final tempScopeSelector = scopeSelector;
    final tempScopes = scopes;

    jsonData['hard'] = tempHard;

    if (tempScopeSelector != null) {
      jsonData['scopeSelector'] = tempScopeSelector.toJson();
    }

    if (tempScopes != null) {
      jsonData['scopes'] = tempScopes;
    }

    return jsonData;
  }
}

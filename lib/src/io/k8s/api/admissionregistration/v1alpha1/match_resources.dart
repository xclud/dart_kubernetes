// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.admissionregistration.v1alpha1;

/// MatchResources decides whether to run the admission control policy on an object based on whether it meets the match criteria. The exclude rules take precedence over include rules (if a resource matches both, it is excluded).
class MatchResources {
  /// Default constructor.
  const MatchResources({
    this.excludeResourceRules,
    this.matchPolicy,
    this.namespaceSelector,
    this.objectSelector,
    this.resourceRules,
  });

  /// Creates a [MatchResources] from JSON data.
  factory MatchResources.fromJson(Map<String, dynamic> json) {
    final tempExcludeResourceRulesJson = json['excludeResourceRules'];
    final tempMatchPolicyJson = json['matchPolicy'];
    final tempNamespaceSelectorJson = json['namespaceSelector'];
    final tempObjectSelectorJson = json['objectSelector'];
    final tempResourceRulesJson = json['resourceRules'];

    final List<NamedRuleWithOperations>? tempExcludeResourceRules =
        tempExcludeResourceRulesJson != null
            ? List<dynamic>.from(tempExcludeResourceRulesJson)
                .map(
                  (e) => NamedRuleWithOperations.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    final String? tempMatchPolicy = tempMatchPolicyJson;
    final LabelSelector? tempNamespaceSelector =
        tempNamespaceSelectorJson != null
            ? LabelSelector.fromJson(tempNamespaceSelectorJson)
            : null;
    final LabelSelector? tempObjectSelector = tempObjectSelectorJson != null
        ? LabelSelector.fromJson(tempObjectSelectorJson)
        : null;

    final List<NamedRuleWithOperations>? tempResourceRules =
        tempResourceRulesJson != null
            ? List<dynamic>.from(tempResourceRulesJson)
                .map(
                  (e) => NamedRuleWithOperations.fromJson(
                    Map<String, dynamic>.from(e),
                  ),
                )
                .toList()
            : null;

    return MatchResources(
      excludeResourceRules: tempExcludeResourceRules,
      matchPolicy: tempMatchPolicy,
      namespaceSelector: tempNamespaceSelector,
      objectSelector: tempObjectSelector,
      resourceRules: tempResourceRules,
    );
  }

  /// ExcludeResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy should not care about. The exclude rules take precedence over include rules (if a resource matches both, it is excluded).
  final List<NamedRuleWithOperations>? excludeResourceRules;

  /// matchPolicy defines how the "MatchResources" list is used to match incoming requests. Allowed values are "Exact" or "Equivalent".
  ///
  /// - Exact: match a request only if it exactly matches a specified rule. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, but "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would not be sent to the ValidatingAdmissionPolicy.
  ///
  /// - Equivalent: match a request if modifies a resource listed in rules, even via another API group or version. For example, if deployments can be modified via apps/v1, apps/v1beta1, and extensions/v1beta1, and "rules" only included `apiGroups:["apps"], apiVersions:["v1"], resources: ["deployments"]`, a request to apps/v1beta1 or extensions/v1beta1 would be converted to apps/v1 and sent to the ValidatingAdmissionPolicy.
  ///
  /// Defaults to "Equivalent".
  final String? matchPolicy;

  /// NamespaceSelector decides whether to run the admission control policy on an object based on whether the namespace for that object matches the selector. If the object itself is a namespace, the matching is performed on object.metadata.labels. If the object is another cluster scoped resource, it never skips the policy.
  ///
  /// For example, to run the webhook on any objects whose namespace is not associated with "runlevel" of "0" or "1";  you will set the selector as follows: "namespaceSelector": {
  ///   "matchExpressions": [
  ///     {
  ///       "key": "runlevel",
  ///       "operator": "NotIn",
  ///       "values": [
  ///         "0",
  ///         "1"
  ///       ]
  ///     }
  ///   ]
  /// }
  ///
  /// If instead you want to only run the policy on any objects whose namespace is associated with the "environment" of "prod" or "staging"; you will set the selector as follows: "namespaceSelector": {
  ///   "matchExpressions": [
  ///     {
  ///       "key": "environment",
  ///       "operator": "In",
  ///       "values": [
  ///         "prod",
  ///         "staging"
  ///       ]
  ///     }
  ///   ]
  /// }
  ///
  /// See https://kubernetes.io/docs/concepts/overview/working-with-objects/labels/ for more examples of label selectors.
  ///
  /// Default to the empty LabelSelector, which matches everything.
  final LabelSelector? namespaceSelector;

  /// ObjectSelector decides whether to run the validation based on if the object has matching labels. objectSelector is evaluated against both the oldObject and newObject that would be sent to the cel validation, and is considered to match if either object matches the selector. A null object (oldObject in the case of create, or newObject in the case of delete) or an object that cannot have labels (like a DeploymentRollback or a PodProxyOptions object) is not considered to match. Use the object selector only if the webhook is opt-in, because end users may skip the admission webhook by setting the labels. Default to the empty LabelSelector, which matches everything.
  final LabelSelector? objectSelector;

  /// ResourceRules describes what operations on what resources/subresources the ValidatingAdmissionPolicy matches. The policy cares about an operation if it matches _any_ Rule.
  final List<NamedRuleWithOperations>? resourceRules;

  /// Converts a [MatchResources] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempExcludeResourceRules = excludeResourceRules;
    final tempMatchPolicy = matchPolicy;
    final tempNamespaceSelector = namespaceSelector;
    final tempObjectSelector = objectSelector;
    final tempResourceRules = resourceRules;

    if (tempExcludeResourceRules != null) {
      jsonData['excludeResourceRules'] = tempExcludeResourceRules
          .map((e) => e.toJson())
          .toList(growable: false);
    }

    if (tempMatchPolicy != null) {
      jsonData['matchPolicy'] = tempMatchPolicy;
    }

    if (tempNamespaceSelector != null) {
      jsonData['namespaceSelector'] = tempNamespaceSelector.toJson();
    }

    if (tempObjectSelector != null) {
      jsonData['objectSelector'] = tempObjectSelector.toJson();
    }

    if (tempResourceRules != null) {
      jsonData['resourceRules'] =
          tempResourceRules.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}

// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.rbac.v1;

/// ClusterRole is a cluster level, logical grouping of PolicyRules that can be referenced as a unit by a RoleBinding or ClusterRoleBinding.
class ClusterRole {
  /// Default constructor.
  const ClusterRole({
    this.aggregationRule,
    this.apiVersion,
    this.kind,
    this.metadata,
    this.rules,
  });

  /// Creates a [ClusterRole] from JSON data.
  factory ClusterRole.fromJson(Map<String, dynamic> json) {
    final tempAggregationRuleJson = json['aggregationRule'];
    final tempApiVersionJson = json['apiVersion'];
    final tempKindJson = json['kind'];
    final tempMetadataJson = json['metadata'];
    final tempRulesJson = json['rules'];

    final AggregationRule? tempAggregationRule = tempAggregationRuleJson != null
        ? AggregationRule.fromJson(tempAggregationRuleJson)
        : null;
    final String? tempApiVersion = tempApiVersionJson;
    final String? tempKind = tempKindJson;
    final ObjectMeta? tempMetadata =
        tempMetadataJson != null ? ObjectMeta.fromJson(tempMetadataJson) : null;

    final List<PolicyRule>? tempRules = tempRulesJson != null
        ? List<dynamic>.from(tempRulesJson)
            .map(
              (e) => PolicyRule.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return ClusterRole(
      aggregationRule: tempAggregationRule,
      apiVersion: tempApiVersion,
      kind: tempKind,
      metadata: tempMetadata,
      rules: tempRules,
    );
  }

  /// AggregationRule is an optional field that describes how to build the Rules for this ClusterRole. If AggregationRule is set, then the Rules are controller managed and direct changes to Rules will be stomped by the controller.
  final AggregationRule? aggregationRule;

  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources.
  final String? apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds.
  final String? kind;

  /// Standard object's metadata.
  final ObjectMeta? metadata;

  /// Rules holds all the PolicyRules for this ClusterRole.
  final List<PolicyRule>? rules;

  /// Converts a [ClusterRole] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAggregationRule = aggregationRule;
    final tempApiVersion = apiVersion;
    final tempKind = kind;
    final tempMetadata = metadata;
    final tempRules = rules;

    if (tempAggregationRule != null) {
      jsonData['aggregationRule'] = tempAggregationRule.toJson();
    }

    if (tempApiVersion != null) {
      jsonData['apiVersion'] = tempApiVersion;
    }

    if (tempKind != null) {
      jsonData['kind'] = tempKind;
    }

    if (tempMetadata != null) {
      jsonData['metadata'] = tempMetadata.toJson();
    }

    if (tempRules != null) {
      jsonData['rules'] = tempRules;
    }

    return jsonData;
  }
}

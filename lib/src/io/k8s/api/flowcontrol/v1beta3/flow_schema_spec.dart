// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2024 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../flowcontrol_v1beta3.dart';

/// FlowSchemaSpec describes how the FlowSchema's specification looks like.
class FlowSchemaSpec {
  /// Default constructor.
  const FlowSchemaSpec({
    this.distinguisherMethod,
    this.matchingPrecedence,
    required this.priorityLevelConfiguration,
    this.rules,
  });

  /// Creates a [FlowSchemaSpec] from JSON data.
  factory FlowSchemaSpec.fromJson(Map<String, dynamic> json) {
    final tempDistinguisherMethodJson = json['distinguisherMethod'];
    final tempMatchingPrecedenceJson = json['matchingPrecedence'];
    final tempPriorityLevelConfigurationJson =
        json['priorityLevelConfiguration'];
    final tempRulesJson = json['rules'];

    final FlowDistinguisherMethod? tempDistinguisherMethod =
        tempDistinguisherMethodJson != null
            ? FlowDistinguisherMethod.fromJson(tempDistinguisherMethodJson)
            : null;
    final int? tempMatchingPrecedence = tempMatchingPrecedenceJson;
    final PriorityLevelConfigurationReference tempPriorityLevelConfiguration =
        PriorityLevelConfigurationReference.fromJson(
            tempPriorityLevelConfigurationJson);

    final List<PolicyRulesWithSubjects>? tempRules = tempRulesJson != null
        ? List<dynamic>.from(tempRulesJson)
            .map(
              (e) => PolicyRulesWithSubjects.fromJson(
                Map<String, dynamic>.from(e),
              ),
            )
            .toList()
        : null;

    return FlowSchemaSpec(
      distinguisherMethod: tempDistinguisherMethod,
      matchingPrecedence: tempMatchingPrecedence,
      priorityLevelConfiguration: tempPriorityLevelConfiguration,
      rules: tempRules,
    );
  }

  /// `distinguisherMethod` defines how to compute the flow distinguisher for requests that match this schema. `nil` specifies that the distinguisher is disabled and thus will always be the empty string.
  final FlowDistinguisherMethod? distinguisherMethod;

  /// Used to choose among the FlowSchemas that match a given request. The chosen FlowSchema is among those with the numerically lowest (which we take to be logically highest) MatchingPrecedence.  Each MatchingPrecedence value must be ranged in \[1, 10000\]. Note that if the precedence is not specified, it will be set to 1000 as default.
  final int? matchingPrecedence;

  /// `priorityLevelConfiguration` should reference a PriorityLevelConfiguration in the cluster. If the reference cannot be resolved, the FlowSchema will be ignored and marked as invalid in its status. Required.
  final PriorityLevelConfigurationReference priorityLevelConfiguration;

  /// `rules` describes which requests will match this flow schema. This FlowSchema matches a request if and only if at least one member of rules matches the request. if it is an empty slice, there will be no requests matching the FlowSchema.
  final List<PolicyRulesWithSubjects>? rules;

  /// Converts a [FlowSchemaSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempDistinguisherMethod = distinguisherMethod;
    final tempMatchingPrecedence = matchingPrecedence;
    final tempPriorityLevelConfiguration = priorityLevelConfiguration;
    final tempRules = rules;

    if (tempDistinguisherMethod != null) {
      jsonData['distinguisherMethod'] = tempDistinguisherMethod.toJson();
    }

    if (tempMatchingPrecedence != null) {
      jsonData['matchingPrecedence'] = tempMatchingPrecedence;
    }

    jsonData['priorityLevelConfiguration'] =
        tempPriorityLevelConfiguration.toJson();

    if (tempRules != null) {
      jsonData['rules'] =
          tempRules.map((e) => e.toJson()).toList(growable: false);
    }

    return jsonData;
  }
}

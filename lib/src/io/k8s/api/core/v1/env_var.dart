// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// EnvVar represents an environment variable present in a Container.
class EnvVar {
  /// Default constructor.
  const EnvVar({
    required this.name,
    this.value,
    this.valueFrom,
  });

  /// Creates a [EnvVar] from JSON data.
  factory EnvVar.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempValueJson = json['value'];
    final tempValueFromJson = json['valueFrom'];

    final String tempName = tempNameJson;
    final String? tempValue = tempValueJson;
    final EnvVarSource? tempValueFrom = tempValueFromJson != null
        ? EnvVarSource.fromJson(tempValueFromJson)
        : null;

    return EnvVar(
      name: tempName,
      value: tempValue,
      valueFrom: tempValueFrom,
    );
  }

  /// Name of the environment variable. Must be a C_IDENTIFIER.
  final String name;

  /// Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "".
  final String? value;

  /// Source for the environment variable's value. Cannot be used if value is not empty.
  final EnvVarSource? valueFrom;

  /// Converts a [EnvVar] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;
    final tempValue = value;
    final tempValueFrom = valueFrom;

    jsonData['name'] = tempName;

    if (tempValue != null) {
      jsonData['value'] = tempValue;
    }

    if (tempValueFrom != null) {
      jsonData['valueFrom'] = tempValueFrom.toJson();
    }

    return jsonData;
  }
}

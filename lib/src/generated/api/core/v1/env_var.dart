import 'package:kubernetes/src/generated/api/core/v1/env_var_source.dart';

/// EnvVar represents an environment variable present in a Container.
class EnvVar {
  /// The main constructor.
  const EnvVar({
    required this.name,
    this.value,
    this.valueFrom,
  });

  /// Creates a EnvVar from JSON data.
  EnvVar.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          value: json['value'],
          valueFrom: json['valueFrom'] != null
              ? EnvVarSource.fromJson(json['valueFrom'])
              : null,
        );

  /// Creates a list of EnvVar from JSON data.
  static List<EnvVar> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EnvVar.fromJson(e)).toList();
  }

  /// Converts a EnvVar instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['name'] = name;
    if (value != null) {
      jsonData['value'] = value!;
    }
    if (valueFrom != null) {
      jsonData['valueFrom'] = valueFrom!.toJson();
    }

    return jsonData;
  }

  /// Name of the environment variable. Must be a C_IDENTIFIER.
  final String name;

  /// Variable references $(VAR_NAME) are expanded using the previously defined environment variables in the container and any service environment variables. If a variable cannot be resolved, the reference in the input string will be unchanged. Double $$ are reduced to a single $, which allows for escaping the $(VAR_NAME) syntax: i.e. "$$(VAR_NAME)" will produce the string literal "$(VAR_NAME)". Escaped references will never be expanded, regardless of whether the variable exists or not. Defaults to "".
  final String? value;

  /// Source for the environment variable's value. Cannot be used if value is not empty.
  final EnvVarSource? valueFrom;
}

import 'env_var_source.dart';

class EnvVar {
  const EnvVar({
    required this.name,
    this.value,
    this.valueFrom,
  });

  EnvVar.fromJson(Map<String, dynamic> json)
      : this(
          name: json['name'],
          value: json['value'],
          valueFrom: json['valueFrom'] != null
              ? EnvVarSource.jsonJson(json['valueFrom'])
              : null,
        );

  static List<EnvVar> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => EnvVar.fromJson(e)).toList();
  }

  final String name;
  final String? value;
  final EnvVarSource? valueFrom;
}
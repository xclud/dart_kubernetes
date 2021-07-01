import 'key_to_path.dart';

class SecretVolumeSource {
  const SecretVolumeSource({
    required this.secretName,
    this.defaultMode,
    this.items,
    this.optional,
  });

  SecretVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          defaultMode: json['defaultMode'],
          items: json['items'] != null
              ? KeyToPath.listFromJson(
                  (json['items'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          optional: json['optional'],
          secretName: json['secretName'],
        );

  final int? defaultMode;
  final List<KeyToPath>? items;
  final bool? optional;
  final String secretName;
}

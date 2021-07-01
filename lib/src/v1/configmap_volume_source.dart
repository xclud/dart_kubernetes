import 'key_to_path.dart';

class ConfigMapVolumeSource {
  const ConfigMapVolumeSource({
    this.defaultMode,
    this.items,
    this.name,
    this.optional,
  });

  ConfigMapVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          defaultMode: json['defaultMode'],
          items: json['items'] != null
              ? KeyToPath.listFromJson(
                  (json['items'] as Iterable).cast<Map<String, dynamic>>())
              : null,
          name: json['name'],
          optional: json['optional'],
        );

  final int? defaultMode;
  final List<KeyToPath>? items;
  final String? name;
  final bool? optional;
}

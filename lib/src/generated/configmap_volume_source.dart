import 'key_to_path.dart';

class ConfigMapVolumeSource {
  const ConfigMapVolumeSource({
    this.defaultMode,
    this.items,
    this.name,
    this.optional,
  });

  final int? defaultMode;
  final List<KeyToPath>? items;
  final String? name;
  final bool? optional;
}

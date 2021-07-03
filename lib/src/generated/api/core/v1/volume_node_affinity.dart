import 'package:kubernetes/src/generated/api/core/v1/node_selector.dart';

/// VolumeNodeAffinity defines constraints that limit what nodes this volume can be accessed from.
class VolumeNodeAffinity {
  /// The main constructor.
  const VolumeNodeAffinity({
    this.$required,
  });

  /// Creates a VolumeNodeAffinity from JSON data.
  VolumeNodeAffinity.fromJson(Map<String, dynamic> json)
      : this(
          $required: json['required'] != null
              ? NodeSelector.fromJson(json['required'])
              : null,
        );

  /// Creates a list of VolumeNodeAffinity from JSON data.
  static List<VolumeNodeAffinity> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => VolumeNodeAffinity.fromJson(e)).toList();
  }

  /// Required specifies hard node constraints that must be met.
  final NodeSelector? $required;
}

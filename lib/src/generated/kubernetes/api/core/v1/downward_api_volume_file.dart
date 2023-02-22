import 'package:kubernetes/src/generated/kubernetes/api/core/v1/object_field_selector.dart';
import 'package:kubernetes/src/generated/kubernetes/api/core/v1/resource_field_selector.dart';

/// DownwardAPIVolumeFile represents information to create the file containing the pod field.
class DownwardAPIVolumeFile {
  /// The main constructor.
  const DownwardAPIVolumeFile({
    this.fieldRef,
    this.mode,
    required this.path,
    this.resourceFieldRef,
  });

  /// Creates a DownwardAPIVolumeFile from JSON data.
  DownwardAPIVolumeFile.fromJson(Map<String, dynamic> json)
      : this(
          fieldRef: json['fieldRef'] != null ? ObjectFieldSelector.fromJson(json['fieldRef']): null,
          mode: json['mode'],
          path: json['path'],
          resourceFieldRef: json['resourceFieldRef'] != null ? ResourceFieldSelector.fromJson(json['resourceFieldRef']): null,
        );

  /// Creates a list of DownwardAPIVolumeFile from JSON data.
  static List<DownwardAPIVolumeFile> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => DownwardAPIVolumeFile.fromJson(e)).toList();
  }

  /// Converts a DownwardAPIVolumeFile instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(fieldRef != null) { jsonData['fieldRef'] = fieldRef!.toJson(); }
    if(mode != null) { jsonData['mode'] = mode!; }
    jsonData['path'] = path;
    if(resourceFieldRef != null) { jsonData['resourceFieldRef'] = resourceFieldRef!.toJson(); }
    

    return jsonData;
  }


  /// Required: Selects a field of the pod: only annotations, labels, name and namespace are supported.
  final ObjectFieldSelector? fieldRef;

  /// Optional: mode bits used to set permissions on this file, must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal values, JSON requires decimal values for mode bits. If not specified, the volume defaultMode will be used. This might be in conflict with other options that affect the file mode, like fsGroup, and the result can be other mode bits set.
  final int? mode;

  /// Required: Path is  the relative path name of the file to be created. Must not be absolute or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must not start with '..'.
  final String path;

  /// Selects a resource of the container: only resources limits and requests (limits.cpu, limits.memory, requests.cpu and requests.memory) are currently supported.
  final ResourceFieldSelector? resourceFieldRef;
}

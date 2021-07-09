import 'package:kubernetes/src/generated/api/storage/v1/volume_attachment_source.dart';

/// VolumeAttachmentSpec is the specification of a VolumeAttachment request.
class VolumeAttachmentSpec {
  /// The main constructor.
  const VolumeAttachmentSpec({
    required this.attacher,
    required this.nodeName,
    required this.source,
  });

  /// Creates a VolumeAttachmentSpec from JSON data.
  VolumeAttachmentSpec.fromJson(Map<String, dynamic> json)
      : this(
          attacher: json['attacher'],
          nodeName: json['nodeName'],
          source: VolumeAttachmentSource.fromJson(json['source']),
        );

  /// Creates a list of VolumeAttachmentSpec from JSON data.
  static List<VolumeAttachmentSpec> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => VolumeAttachmentSpec.fromJson(e)).toList();
  }

  /// Converts a VolumeAttachmentSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    jsonData['attacher'] = attacher;
    jsonData['nodeName'] = nodeName;
    jsonData['source'] = source.toJson();

    return jsonData;
  }

  /// Attacher indicates the name of the volume driver that MUST handle this request. This is the name returned by GetPluginName().
  final String attacher;

  /// The node that the volume should be attached to.
  final String nodeName;

  /// Source represents the volume that should be attached.
  final VolumeAttachmentSource source;
}

import 'package:kubernetes/src/generated/api/storage/v1alpha1/volume_error.dart';

/// VolumeAttachmentStatus is the status of a VolumeAttachment request.
class VolumeAttachmentStatus {
  /// The main constructor.
  const VolumeAttachmentStatus({
    this.attachError,
    required this.attached,
    this.attachmentMetadata,
    this.detachError,
  });

  /// Creates a VolumeAttachmentStatus from JSON data.
  VolumeAttachmentStatus.fromJson(Map<String, dynamic> json)
      : this(
          attachError: json['attachError'] != null
              ? VolumeError.fromJson(json['attachError'])
              : null,
          attached: json['attached'],
          attachmentMetadata: json['attachmentMetadata'],
          detachError: json['detachError'] != null
              ? VolumeError.fromJson(json['detachError'])
              : null,
        );

  /// Creates a list of VolumeAttachmentStatus from JSON data.
  static List<VolumeAttachmentStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => VolumeAttachmentStatus.fromJson(e)).toList();
  }

  /// The last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final VolumeError? attachError;

  /// Indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final bool attached;

  /// Upon successful attach, this field is populated with any information returned by the attach operation that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final Object? attachmentMetadata;

  /// The last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
  final VolumeError? detachError;
}

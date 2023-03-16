// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.storage.v1;

/// VolumeAttachmentStatus is the status of a VolumeAttachment request.
class VolumeAttachmentStatus {
  /// Default constructor.
  const VolumeAttachmentStatus({
    this.attachError,
    required this.attached,
    this.attachmentMetadata = const {},
    this.detachError,
  });

  /// Creates a [VolumeAttachmentStatus] from JSON data.
  factory VolumeAttachmentStatus.fromJson(Map<String, dynamic> json) {
    final tempAttachErrorJson = json['attachError'];
    final tempAttachedJson = json['attached'];
    final tempAttachmentMetadataJson = json['attachmentMetadata'];
    final tempDetachErrorJson = json['detachError'];

    final VolumeError? tempAttachError = tempAttachErrorJson != null
        ? VolumeError.fromJson(tempAttachErrorJson)
        : null;
    final bool tempAttached = tempAttachedJson;
    final Map<String, String> tempAttachmentMetadata =
        tempAttachmentMetadataJson;
    final VolumeError? tempDetachError = tempDetachErrorJson != null
        ? VolumeError.fromJson(tempDetachErrorJson)
        : null;

    return VolumeAttachmentStatus(
      attachError: tempAttachError,
      attached: tempAttached,
      attachmentMetadata: tempAttachmentMetadata,
      detachError: tempDetachError,
    );
  }

  /// attachError represents the last error encountered during attach operation, if any. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final VolumeError? attachError;

  /// attached indicates the volume is successfully attached. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final bool attached;

  /// attachmentMetadata is populated with any information returned by the attach operation, upon successful attach, that must be passed into subsequent WaitForAttach or Mount calls. This field must only be set by the entity completing the attach operation, i.e. the external-attacher.
  final Map<String, String> attachmentMetadata;

  /// detachError represents the last error encountered during detach operation, if any. This field must only be set by the entity completing the detach operation, i.e. the external-attacher.
  final VolumeError? detachError;

  /// Converts a [VolumeAttachmentStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAttachError = attachError;
    final tempAttached = attached;
    final tempAttachmentMetadata = attachmentMetadata;
    final tempDetachError = detachError;

    if (tempAttachError != null) {
      jsonData['attachError'] = tempAttachError.toJson();
    }

    jsonData['attached'] = tempAttached;

    jsonData['attachmentMetadata'] = tempAttachmentMetadata;

    if (tempDetachError != null) {
      jsonData['detachError'] = tempDetachError.toJson();
    }

    return jsonData;
  }
}

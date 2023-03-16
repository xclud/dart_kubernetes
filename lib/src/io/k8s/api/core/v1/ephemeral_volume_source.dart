// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.core.v1;

/// Represents an ephemeral volume that is handled by a normal storage driver.
class EphemeralVolumeSource {
  /// Default constructor.
  const EphemeralVolumeSource({
    this.volumeClaimTemplate,
  });

  /// Creates a [EphemeralVolumeSource] from JSON data.
  factory EphemeralVolumeSource.fromJson(Map<String, dynamic> json) {
    final tempVolumeClaimTemplateJson = json['volumeClaimTemplate'];

    final PersistentVolumeClaimTemplate? tempVolumeClaimTemplate =
        tempVolumeClaimTemplateJson != null
            ? PersistentVolumeClaimTemplate.fromJson(
                tempVolumeClaimTemplateJson)
            : null;

    return EphemeralVolumeSource(
      volumeClaimTemplate: tempVolumeClaimTemplate,
    );
  }

  /// Will be used to create a stand-alone PVC to provision the volume. The pod in which this EphemeralVolumeSource is embedded will be the owner of the PVC, i.e. the PVC will be deleted together with the pod.  The name of the PVC will be `<pod name>-<volume name>` where `<volume name>` is the name from the `PodSpec.Volumes` array entry. Pod validation will reject the pod if the concatenated name is not valid for a PVC (for example, too long).
  ///
  /// An existing PVC with that name that is not owned by the pod will *not* be used for the pod to avoid using an unrelated volume by mistake. Starting the pod is then blocked until the unrelated PVC is removed. If such a pre-created PVC is meant to be used by the pod, the PVC has to updated with an owner reference to the pod once the pod exists. Normally this should not be necessary, but it may be useful when manually reconstructing a broken cluster.
  ///
  /// This field is read-only and no changes will be made by Kubernetes to the PVC after it has been created.
  ///
  /// Required, must not be nil.
  final PersistentVolumeClaimTemplate? volumeClaimTemplate;

  /// Converts a [EphemeralVolumeSource] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempVolumeClaimTemplate = volumeClaimTemplate;

    if (tempVolumeClaimTemplate != null) {
      jsonData['volumeClaimTemplate'] = tempVolumeClaimTemplate.toJson();
    }

    return jsonData;
  }
}

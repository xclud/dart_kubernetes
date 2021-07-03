/// StatefulSetPersistentVolumeClaimRetentionPolicy describes the policy used for PVCs created from the StatefulSet VolumeClaimTemplates.
class StatefulSetPersistentVolumeClaimRetentionPolicy {
  /// The main constructor.
  const StatefulSetPersistentVolumeClaimRetentionPolicy({
    this.whenDeleted,
    this.whenScaled,
  });

  /// Creates a StatefulSetPersistentVolumeClaimRetentionPolicy from JSON data.
  StatefulSetPersistentVolumeClaimRetentionPolicy.fromJson(
      Map<String, dynamic> json)
      : this(
          whenDeleted: json['whenDeleted'],
          whenScaled: json['whenScaled'],
        );

  /// Creates a list of StatefulSetPersistentVolumeClaimRetentionPolicy from JSON data.
  static List<StatefulSetPersistentVolumeClaimRetentionPolicy> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list
        .map((e) => StatefulSetPersistentVolumeClaimRetentionPolicy.fromJson(e))
        .toList();
  }

  /// WhenDeleted specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is deleted. The default policy of `Retain` causes PVCs to not be affected by StatefulSet deletion. The `Delete` policy causes those PVCs to be deleted.
  final String? whenDeleted;

  /// WhenScaled specifies what happens to PVCs created from StatefulSet VolumeClaimTemplates when the StatefulSet is scaled down. The default policy of `Retain` causes PVCs to not be affected by a scaledown. The `Delete` policy causes the associated PVCs for any excess pods above the replica count to be deleted.
  final String? whenScaled;
}

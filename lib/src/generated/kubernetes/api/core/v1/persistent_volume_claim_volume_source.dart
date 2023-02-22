
/// PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace. This volume finds the bound PV and mounts that volume for the pod. A PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of volume that is owned by someone else (the system).
class PersistentVolumeClaimVolumeSource {
  /// The main constructor.
  const PersistentVolumeClaimVolumeSource({
    required this.claimName,
    this.readOnly,
  });

  /// Creates a PersistentVolumeClaimVolumeSource from JSON data.
  PersistentVolumeClaimVolumeSource.fromJson(Map<String, dynamic> json)
      : this(
          claimName: json['claimName'],
          readOnly: json['readOnly'],
        );

  /// Creates a list of PersistentVolumeClaimVolumeSource from JSON data.
  static List<PersistentVolumeClaimVolumeSource> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PersistentVolumeClaimVolumeSource.fromJson(e)).toList();
  }

  /// Converts a PersistentVolumeClaimVolumeSource instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    jsonData['claimName'] = claimName;
    if(readOnly != null) { jsonData['readOnly'] = readOnly!; }
    

    return jsonData;
  }


  /// ClaimName is the name of a PersistentVolumeClaim in the same namespace as the pod using this volume. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims.
  final String claimName;

  /// ReadOnly Will force the ReadOnly setting in VolumeMounts. Default false.
  final bool? readOnly;
}

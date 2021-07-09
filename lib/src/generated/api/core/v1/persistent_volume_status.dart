/// PersistentVolumeStatus is the current status of a persistent volume.
class PersistentVolumeStatus {
  /// The main constructor.
  const PersistentVolumeStatus({
    this.message,
    this.phase,
    this.reason,
  });

  /// Creates a PersistentVolumeStatus from JSON data.
  PersistentVolumeStatus.fromJson(Map<String, dynamic> json)
      : this(
          message: json['message'],
          phase: json['phase'],
          reason: json['reason'],
        );

  /// Creates a list of PersistentVolumeStatus from JSON data.
  static List<PersistentVolumeStatus> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => PersistentVolumeStatus.fromJson(e)).toList();
  }

  /// Converts a PersistentVolumeStatus instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (message != null) {
      jsonData['message'] = message!;
    }
    if (phase != null) {
      jsonData['phase'] = phase!;
    }
    if (reason != null) {
      jsonData['reason'] = reason!;
    }

    return jsonData;
  }

  /// A human-readable message indicating details about why the volume is in this state.
  final String? message;

  /// Phase indicates if a volume is available, bound to a claim, or released by a claim. More info: https://kubernetes.io/docs/concepts/storage/persistent-volumes#phase.
  final String? phase;

  /// Reason is a brief CamelCase string that describes any failure and is meant for machine parsing and tidy display in the CLI.
  final String? reason;
}

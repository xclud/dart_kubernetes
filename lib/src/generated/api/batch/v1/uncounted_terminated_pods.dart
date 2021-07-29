/// UncountedTerminatedPods holds UIDs of Pods that have terminated but haven't been accounted in Job status counters.
class UncountedTerminatedPods {
  /// The main constructor.
  const UncountedTerminatedPods({
    this.failed,
    this.succeeded,
  });

  /// Creates a UncountedTerminatedPods from JSON data.
  UncountedTerminatedPods.fromJson(Map<String, dynamic> json)
      : this(
          failed:
              json['failed'] != null ? List<String>.from(json['failed']) : null,
          succeeded: json['succeeded'] != null
              ? List<String>.from(json['succeeded'])
              : null,
        );

  /// Creates a list of UncountedTerminatedPods from JSON data.
  static List<UncountedTerminatedPods> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => UncountedTerminatedPods.fromJson(e)).toList();
  }

  /// Converts a UncountedTerminatedPods instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (failed != null) {
      jsonData['failed'] = failed!;
    }
    if (succeeded != null) {
      jsonData['succeeded'] = succeeded!;
    }

    return jsonData;
  }

  /// Failed holds UIDs of failed Pods.
  final List<String>? failed;

  /// Succeeded holds UIDs of succeeded Pods.
  final List<String>? succeeded;
}

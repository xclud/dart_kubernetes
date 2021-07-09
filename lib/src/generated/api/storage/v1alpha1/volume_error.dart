/// VolumeError captures an error encountered during a volume operation.
class VolumeError {
  /// The main constructor.
  const VolumeError({
    this.message,
    this.time,
  });

  /// Creates a VolumeError from JSON data.
  VolumeError.fromJson(Map<String, dynamic> json)
      : this(
          message: json['message'],
          time: json['time'] != null ? DateTime.tryParse(json['time']) : null,
        );

  /// Creates a list of VolumeError from JSON data.
  static List<VolumeError> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => VolumeError.fromJson(e)).toList();
  }

  /// Converts a VolumeError instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (message != null) {
      jsonData['message'] = message!;
    }
    if (time != null) {
      jsonData['time'] = time!.toIso8601String();
    }

    return jsonData;
  }

  /// String detailing the error encountered during Attach or Detach operation. This string maybe logged, so it should not contain sensitive information.
  final String? message;

  /// Time the error was encountered.
  final DateTime? time;
}

part of io.istio.v1beta1;

/// Describes the header manipulations to apply.
class HeaderOperations {
  /// The main constructor.
  const HeaderOperations({
    this.set,
    this.add,
    this.remove,
  });

  /// Creates a HeaderOperations from JSON data.
  HeaderOperations.fromJson(Map<String, dynamic> json)
      : this(
          set: json['set'] != null
              ? Map<String, String>.from(json['set'])
              : null,
          add: json['add'] != null
              ? Map<String, String>.from(json['add'])
              : null,
          remove:
              json['remove'] != null ? List<String>.from(json['remove']) : null,
        );

  /// Overwrite the headers specified by key with the given values.
  final Map<String, String>? set;

  /// Append the given values to the headers specified by keys (will create a comma-separated list of values).
  final Map<String, String>? add;

  /// Remove a the specified headers
  final List<String>? remove;
}

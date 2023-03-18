part of kubernetes;

/// Int or String.
class IntOrString {
  /// Constructor.
  factory IntOrString(Object value) {
    final v = value;

    if (v is String) {
      return IntOrString.string(v);
    }

    if (v is int) {
      return IntOrString.int(v);
    }

    throw Exception('Only int or String is accepted.');
  }

  /// Creates an [int] value.
  IntOrString.int(int value)
      : asInt = value,
        asString = value.toString();

  /// Creates a [String] value.
  IntOrString.string(String value)
      : asString = value,
        asInt = int.parse(value);

  /// Value as Int.
  final int asInt;

  /// Value as String.
  final String asString;
}

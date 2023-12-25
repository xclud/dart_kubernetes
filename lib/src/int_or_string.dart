part of kubernetes;

/// Int or String.
class IntOrString {
  /// Constructor.
  const IntOrString(this.value)
      : assert(
          value is String || value is int,
          'Value must be either an int or a String.',
        );

  /// Either [int] or [String].
  final Object value;

  @override
  String toString() {
    return value.toString();
  }
  
  Object toJson() => value;
}

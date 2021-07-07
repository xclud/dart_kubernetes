/// Describes the header manipulations to apply.
class HeaderOperations {
  /// The main constructor.
  const HeaderOperations({
    this.set,
    this.add,
    this.remove,
  });

  /// Overwrite the headers specified by key with the given values.
  final Map<String, String>? set;

  /// Append the given values to the headers specified by keys (will create a comma-separated list of values).
  final Map<String, String>? add;

  /// Remove a the specified headers
  final List<String>? remove;
}

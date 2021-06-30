extension DataExtension on Object {
  Iterable<Map<String, dynamic>> asListMap() =>
      (this as Iterable).cast<Map<String, dynamic>>();
}

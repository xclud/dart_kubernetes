/// ExternalDocumentation allows referencing an external resource for extended documentation.
class ExternalDocumentation {
  /// The main constructor.
  const ExternalDocumentation({
    this.description,
    this.url,
  });

  /// Creates a ExternalDocumentation from JSON data.
  ExternalDocumentation.fromJson(Map<String, dynamic> json)
      : this(
          description: json['description'],
          url: json['url'],
        );

  /// Creates a list of ExternalDocumentation from JSON data.
  static List<ExternalDocumentation> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ExternalDocumentation.fromJson(e)).toList();
  }

  ///
  final String? description;

  ///
  final String? url;
}

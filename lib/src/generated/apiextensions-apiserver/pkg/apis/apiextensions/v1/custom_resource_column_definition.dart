/// CustomResourceColumnDefinition specifies a column for server side printing.
class CustomResourceColumnDefinition {
  /// The main constructor.
  const CustomResourceColumnDefinition({
    this.description,
    this.format,
    required this.jsonPath,
    required this.name,
    this.priority,
    required this.type,
  });

  /// Creates a CustomResourceColumnDefinition from JSON data.
  CustomResourceColumnDefinition.fromJson(Map<String, dynamic> json)
      : this(
          description: json['description'],
          format: json['format'],
          jsonPath: json['jsonPath'],
          name: json['name'],
          priority: json['priority'],
          type: json['type'],
        );

  /// Creates a list of CustomResourceColumnDefinition from JSON data.
  static List<CustomResourceColumnDefinition> listFromJson(
      Iterable<Map<String, dynamic>> list) {
    return list.map((e) => CustomResourceColumnDefinition.fromJson(e)).toList();
  }

  /// Description is a human readable description of this column.
  final String? description;

  /// Format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  final String? format;

  /// JsonPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column.
  final String jsonPath;

  /// Name is a human readable name for the column.
  final String name;

  /// Priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a priority greater than 0.
  final int? priority;

  /// Type is an OpenAPI type definition for this column. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  final String type;
}

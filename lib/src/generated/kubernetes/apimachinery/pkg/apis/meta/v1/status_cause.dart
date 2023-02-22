
/// StatusCause provides more information about an api.Status failure, including cases when multiple errors are encountered.
class StatusCause {
  /// The main constructor.
  const StatusCause({
    this.field,
    this.message,
    this.reason,
  });

  /// Creates a StatusCause from JSON data.
  StatusCause.fromJson(Map<String, dynamic> json)
      : this(
          field: json['field'],
          message: json['message'],
          reason: json['reason'],
        );

  /// Creates a list of StatusCause from JSON data.
  static List<StatusCause> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => StatusCause.fromJson(e)).toList();
  }

  /// Converts a StatusCause instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(field != null) { jsonData['field'] = field!; }
    if(message != null) { jsonData['message'] = message!; }
    if(reason != null) { jsonData['reason'] = reason!; }
    

    return jsonData;
  }


  /// The field of the resource that has caused this error, as named by its JSON serialization. May include dot and postfix notation for nested attributes. Arrays are zero-indexed.  Fields may appear more than once in an array of causes due to fields having multiple errors. Optional.
/// 
/// Examples:
///   "name" - the field "name" on the current resource
///   "items[0].name" - the field "name" on the first array entry in "items".
  final String? field;

  /// A human-readable description of the cause of the error.  This field may be presented as-is to a reader.
  final String? message;

  /// A machine-readable description of the cause of the error. If this value is empty there is no information available.
  final String? reason;
}

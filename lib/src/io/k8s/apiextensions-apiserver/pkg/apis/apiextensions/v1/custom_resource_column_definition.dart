// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../../../io_k8s_apiextensions__apiserver_pkg_apis_apiextensions_v1.dart';

/// CustomResourceColumnDefinition specifies a column for server side printing.
class CustomResourceColumnDefinition {
  /// Default constructor.
  const CustomResourceColumnDefinition({
    this.description,
    this.format,
    required this.jsonPath,
    required this.name,
    this.priority,
    required this.type,
  });

  /// Creates a [CustomResourceColumnDefinition] from JSON data.
  factory CustomResourceColumnDefinition.fromJson(Map<String, dynamic> json) {
    final tempDescriptionJson = json['description'];
    final tempFormatJson = json['format'];
    final tempJsonPathJson = json['jsonPath'];
    final tempNameJson = json['name'];
    final tempPriorityJson = json['priority'];
    final tempTypeJson = json['type'];

    final String? tempDescription = tempDescriptionJson;
    final String? tempFormat = tempFormatJson;
    final String tempJsonPath = tempJsonPathJson;
    final String tempName = tempNameJson;
    final int? tempPriority = tempPriorityJson;
    final String tempType = tempTypeJson;

    return CustomResourceColumnDefinition(
      description: tempDescription,
      format: tempFormat,
      jsonPath: tempJsonPath,
      name: tempName,
      priority: tempPriority,
      type: tempType,
    );
  }

  /// description is a human readable description of this column.
  final String? description;

  /// format is an optional OpenAPI type definition for this column. The 'name' format is applied to the primary identifier column to assist in clients identifying column is the resource name. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  final String? format;

  /// jsonPath is a simple JSON path (i.e. with array notation) which is evaluated against each custom resource to produce the value for this column.
  final String jsonPath;

  /// name is a human readable name for the column.
  final String name;

  /// priority is an integer defining the relative importance of this column compared to others. Lower numbers are considered higher priority. Columns that may be omitted in limited space scenarios should be given a priority greater than 0.
  final int? priority;

  /// type is an OpenAPI type definition for this column. See https://github.com/OAI/OpenAPI-Specification/blob/master/versions/2.0.md#data-types for details.
  final String type;

  /// Converts a [CustomResourceColumnDefinition] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempDescription = description;
    final tempFormat = format;
    final tempJsonPath = jsonPath;
    final tempName = name;
    final tempPriority = priority;
    final tempType = type;

    if (tempDescription != null) {
      jsonData['description'] = tempDescription;
    }

    if (tempFormat != null) {
      jsonData['format'] = tempFormat;
    }

    jsonData['jsonPath'] = tempJsonPath;

    jsonData['name'] = tempName;

    if (tempPriority != null) {
      jsonData['priority'] = tempPriority;
    }

    jsonData['type'] = tempType;

    return jsonData;
  }
}

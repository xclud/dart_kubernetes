// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apiextensions__apiserver.pkg.apis.apiextensions.v1;

/// ExternalDocumentation allows referencing an external resource for extended documentation.
class ExternalDocumentation {
  /// Default constructor.
  const ExternalDocumentation({
    this.description,
    this.url,
  });

  /// Creates a [ExternalDocumentation] from JSON data.
  factory ExternalDocumentation.fromJson(Map<String, dynamic> json) {
    final tempDescriptionJson = json['description'];
    final tempUrlJson = json['url'];

    final tempDescription = tempDescriptionJson;
    final tempUrl = tempUrlJson;

    return ExternalDocumentation(
      description: tempDescription,
      url: tempUrl,
    );
  }

  /// Description.
  final String? description;

  /// Url.
  final String? url;

  /// Converts a [ExternalDocumentation] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempDescription = description;
    final tempUrl = url;

    if (tempDescription != null) {
      jsonData['description'] = tempDescription;
    }

    if (tempUrl != null) {
      jsonData['url'] = tempUrl;
    }

    return jsonData;
  }
}

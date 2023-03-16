// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.authorization.v1;

/// NonResourceAttributes includes the authorization attributes available for non-resource requests to the Authorizer interface.
class NonResourceAttributes {
  /// Default constructor.
  const NonResourceAttributes({
    this.path,
    this.verb,
  });

  /// Creates a [NonResourceAttributes] from JSON data.
  factory NonResourceAttributes.fromJson(Map<String, dynamic> json) {
    final tempPathJson = json['path'];
    final tempVerbJson = json['verb'];

    final String? tempPath = tempPathJson;
    final String? tempVerb = tempVerbJson;

    return NonResourceAttributes(
      path: tempPath,
      verb: tempVerb,
    );
  }

  /// Path is the URL path of the request.
  final String? path;

  /// Verb is the standard HTTP verb.
  final String? verb;

  /// Converts a [NonResourceAttributes] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempPath = path;
    final tempVerb = verb;

    if (tempPath != null) {
      jsonData['path'] = tempPath;
    }

    if (tempVerb != null) {
      jsonData['verb'] = tempVerb;
    }

    return jsonData;
  }
}

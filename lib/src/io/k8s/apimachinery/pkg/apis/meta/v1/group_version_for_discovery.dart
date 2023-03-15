// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.apimachinery.pkg.apis.meta.v1;

/// GroupVersion contains the "group/version" and "version" string of a version. It is made a struct to keep extensibility.
class GroupVersionForDiscovery {
  /// Default constructor.
  const GroupVersionForDiscovery({
    required this.groupVersion,
    required this.version,
  });

  /// Creates a [GroupVersionForDiscovery] from JSON data.
  factory GroupVersionForDiscovery.fromJson(Map<String, dynamic> json) {
    final tempGroupVersionJson = json['groupVersion'];
    final tempVersionJson = json['version'];

    final tempGroupVersion = tempGroupVersionJson;
    final tempVersion = tempVersionJson;

    return GroupVersionForDiscovery(
      groupVersion: tempGroupVersion,
      version: tempVersion,
    );
  }

  /// groupVersion specifies the API group and version in the form "group/version".
  final String groupVersion;

  /// version specifies the version in the form of "version". This is to save the clients the trouble of splitting the GroupVersion.
  final String version;

  /// Converts a [GroupVersionForDiscovery] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempGroupVersion = groupVersion;
    final tempVersion = version;

    jsonData['groupVersion'] = tempGroupVersion;

    jsonData['version'] = tempVersion;

    return jsonData;
  }
}

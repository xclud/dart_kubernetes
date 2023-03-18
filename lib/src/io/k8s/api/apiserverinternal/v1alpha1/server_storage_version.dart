// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.apiserverinternal.v1alpha1;

/// An API server instance reports the version it can decode and the version it encodes objects to when persisting objects in the backend.
class ServerStorageVersion {
  /// Default constructor.
  const ServerStorageVersion({
    this.apiServerID,
    this.decodableVersions,
    this.encodingVersion,
  });

  /// Creates a [ServerStorageVersion] from JSON data.
  factory ServerStorageVersion.fromJson(Map<String, dynamic> json) {
    final tempApiServerIDJson = json['apiServerID'];
    final tempDecodableVersionsJson = json['decodableVersions'];
    final tempEncodingVersionJson = json['encodingVersion'];

    final String? tempApiServerID = tempApiServerIDJson;
    final List<String>? tempDecodableVersions =
        tempDecodableVersionsJson != null
            ? List<String>.from(tempDecodableVersionsJson)
            : null;
    final String? tempEncodingVersion = tempEncodingVersionJson;

    return ServerStorageVersion(
      apiServerID: tempApiServerID,
      decodableVersions: tempDecodableVersions,
      encodingVersion: tempEncodingVersion,
    );
  }

  /// The ID of the reporting API server.
  final String? apiServerID;

  /// The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions.
  final List<String>? decodableVersions;

  /// The API server encodes the object to this version when persisting it in the backend (e.g., etcd).
  final String? encodingVersion;

  /// Converts a [ServerStorageVersion] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempApiServerID = apiServerID;
    final tempDecodableVersions = decodableVersions;
    final tempEncodingVersion = encodingVersion;

    if (tempApiServerID != null) {
      jsonData['apiServerID'] = tempApiServerID;
    }

    if (tempDecodableVersions != null) {
      jsonData['decodableVersions'] = tempDecodableVersions;
    }

    if (tempEncodingVersion != null) {
      jsonData['encodingVersion'] = tempEncodingVersion;
    }

    return jsonData;
  }
}

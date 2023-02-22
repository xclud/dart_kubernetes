
/// An API server instance reports the version it can decode and the version it encodes objects to when persisting objects in the backend.
class ServerStorageVersion {
  /// The main constructor.
  const ServerStorageVersion({
    this.apiServerID,
    this.decodableVersions,
    this.encodingVersion,
  });

  /// Creates a ServerStorageVersion from JSON data.
  ServerStorageVersion.fromJson(Map<String, dynamic> json)
      : this(
          apiServerID: json['apiServerID'],
          decodableVersions: json['decodableVersions'] != null ? List<String>.from(json['decodableVersions']) : null,
          encodingVersion: json['encodingVersion'],
        );

  /// Creates a list of ServerStorageVersion from JSON data.
  static List<ServerStorageVersion> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ServerStorageVersion.fromJson(e)).toList();
  }

  /// Converts a ServerStorageVersion instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(apiServerID != null) { jsonData['apiServerID'] = apiServerID!; }
    if(decodableVersions != null) { jsonData['decodableVersions'] = decodableVersions!; }
    if(encodingVersion != null) { jsonData['encodingVersion'] = encodingVersion!; }
    

    return jsonData;
  }


  /// The ID of the reporting API server.
  final String? apiServerID;

  /// The API server can decode objects encoded in these versions. The encodingVersion must be included in the decodableVersions.
  final List<String>? decodableVersions;

  /// The API server encodes the object to this version when persisting it in the backend (e.g., etcd).
  final String? encodingVersion;
}

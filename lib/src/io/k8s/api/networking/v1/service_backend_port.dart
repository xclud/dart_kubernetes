// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.networking.v1;

/// ServiceBackendPort is the service port being referenced.
class ServiceBackendPort {
  /// Default constructor.
  const ServiceBackendPort({
    this.name,
    this.number,
  });

  /// Creates a [ServiceBackendPort] from JSON data.
  factory ServiceBackendPort.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];
    final tempNumberJson = json['number'];

    final String? tempName = tempNameJson;
    final int? tempNumber = tempNumberJson;

    return ServiceBackendPort(
      name: tempName,
      number: tempNumber,
    );
  }

  /// name is the name of the port on the Service. This is a mutually exclusive setting with "Number".
  final String? name;

  /// number is the numerical port number (e.g. 80) on the Service. This is a mutually exclusive setting with "Name".
  final int? number;

  /// Converts a [ServiceBackendPort] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;
    final tempNumber = number;

    if (tempName != null) {
      jsonData['name'] = tempName;
    }

    if (tempNumber != null) {
      jsonData['number'] = tempNumber;
    }

    return jsonData;
  }
}

// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../core_v1.dart';

/// ResourceClaim references one entry in PodSpec.ResourceClaims.
class ResourceClaim {
  /// Default constructor.
  const ResourceClaim({
    required this.name,
  });

  /// Creates a [ResourceClaim] from JSON data.
  factory ResourceClaim.fromJson(Map<String, dynamic> json) {
    final tempNameJson = json['name'];

    final String tempName = tempNameJson;

    return ResourceClaim(
      name: tempName,
    );
  }

  /// Name must match the name of one entry in pod.spec.resourceClaims of the Pod where this field is used. It makes that resource available inside a container.
  final String name;

  /// Converts a [ResourceClaim] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempName = name;

    jsonData['name'] = tempName;

    return jsonData;
  }
}

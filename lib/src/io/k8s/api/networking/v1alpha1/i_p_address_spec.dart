// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../networking_v1alpha1.dart';

/// IPAddressSpec describe the attributes in an IP Address.
class IPAddressSpec {
  /// Default constructor.
  const IPAddressSpec({
    this.parentRef,
  });

  /// Creates a [IPAddressSpec] from JSON data.
  factory IPAddressSpec.fromJson(Map<String, dynamic> json) {
    final tempParentRefJson = json['parentRef'];

    final ParentReference? tempParentRef = tempParentRefJson != null
        ? ParentReference.fromJson(tempParentRefJson)
        : null;

    return IPAddressSpec(
      parentRef: tempParentRef,
    );
  }

  /// ParentRef references the resource that an IPAddress is attached to. An IPAddress must reference a parent object.
  final ParentReference? parentRef;

  /// Converts a [IPAddressSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempParentRef = parentRef;

    if (tempParentRef != null) {
      jsonData['parentRef'] = tempParentRef.toJson();
    }

    return jsonData;
  }
}

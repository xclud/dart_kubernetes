// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of '../../../../../../resource_v1alpha2.dart';

/// ResourceClaimSpec defines how a resource is to be allocated.
class ResourceClaimSpec {
  /// Default constructor.
  const ResourceClaimSpec({
    this.allocationMode,
    this.parametersRef,
    required this.resourceClassName,
  });

  /// Creates a [ResourceClaimSpec] from JSON data.
  factory ResourceClaimSpec.fromJson(Map<String, dynamic> json) {
    final tempAllocationModeJson = json['allocationMode'];
    final tempParametersRefJson = json['parametersRef'];
    final tempResourceClassNameJson = json['resourceClassName'];

    final String? tempAllocationMode = tempAllocationModeJson;
    final ResourceClaimParametersReference? tempParametersRef =
        tempParametersRefJson != null
            ? ResourceClaimParametersReference.fromJson(tempParametersRefJson)
            : null;
    final String tempResourceClassName = tempResourceClassNameJson;

    return ResourceClaimSpec(
      allocationMode: tempAllocationMode,
      parametersRef: tempParametersRef,
      resourceClassName: tempResourceClassName,
    );
  }

  /// Allocation can start immediately or when a Pod wants to use the resource. "WaitForFirstConsumer" is the default.
  final String? allocationMode;

  /// ParametersRef references a separate object with arbitrary parameters that will be used by the driver when allocating a resource for the claim.
  ///
  /// The object must be in the same namespace as the ResourceClaim.
  final ResourceClaimParametersReference? parametersRef;

  /// ResourceClassName references the driver and additional parameters via the name of a ResourceClass that was created as part of the driver deployment.
  final String resourceClassName;

  /// Converts a [ResourceClaimSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAllocationMode = allocationMode;
    final tempParametersRef = parametersRef;
    final tempResourceClassName = resourceClassName;

    if (tempAllocationMode != null) {
      jsonData['allocationMode'] = tempAllocationMode;
    }

    if (tempParametersRef != null) {
      jsonData['parametersRef'] = tempParametersRef.toJson();
    }

    jsonData['resourceClassName'] = tempResourceClassName;

    return jsonData;
  }
}

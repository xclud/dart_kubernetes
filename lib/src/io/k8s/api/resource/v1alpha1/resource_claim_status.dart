// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.resource.v1alpha1;

/// ResourceClaimStatus tracks whether the resource has been allocated and what the resulting attributes are.
class ResourceClaimStatus {
  /// Default constructor.
  const ResourceClaimStatus({
    this.allocation,
    this.deallocationRequested,
    this.driverName,
    this.reservedFor,
  });

  /// Creates a [ResourceClaimStatus] from JSON data.
  factory ResourceClaimStatus.fromJson(Map<String, dynamic> json) {
    final tempAllocationJson = json['allocation'];
    final tempDeallocationRequestedJson = json['deallocationRequested'];
    final tempDriverNameJson = json['driverName'];
    final tempReservedForJson = json['reservedFor'];

    final AllocationResult? tempAllocation = tempAllocationJson != null
        ? AllocationResult.fromJson(tempAllocationJson)
        : null;
    final bool? tempDeallocationRequested = tempDeallocationRequestedJson;
    final String? tempDriverName = tempDriverNameJson;

    final List<ResourceClaimConsumerReference>? tempReservedFor =
        tempReservedForJson != null
            ? List<dynamic>.from(tempReservedForJson)
                .map((e) => ResourceClaimConsumerReference.fromJson(
                    Map<String, dynamic>.from(e)))
                .toList()
            : null;

    return ResourceClaimStatus(
      allocation: tempAllocation,
      deallocationRequested: tempDeallocationRequested,
      driverName: tempDriverName,
      reservedFor: tempReservedFor,
    );
  }

  /// Allocation is set by the resource driver once a resource has been allocated successfully. If this is not specified, the resource is not yet allocated.
  final AllocationResult? allocation;

  /// DeallocationRequested indicates that a ResourceClaim is to be deallocated.
  ///
  /// The driver then must deallocate this claim and reset the field together with clearing the Allocation field.
  ///
  /// While DeallocationRequested is set, no new consumers may be added to ReservedFor.
  final bool? deallocationRequested;

  /// DriverName is a copy of the driver name from the ResourceClass at the time when allocation started.
  final String? driverName;

  /// ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started.
  ///
  /// There can be at most 32 such reservations. This may get increased in the future, but not reduced.
  final List<ResourceClaimConsumerReference>? reservedFor;

  /// Converts a [ResourceClaimStatus] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAllocation = allocation;
    final tempDeallocationRequested = deallocationRequested;
    final tempDriverName = driverName;
    final tempReservedFor = reservedFor;

    if (tempAllocation != null) {
      jsonData['allocation'] = tempAllocation.toJson();
    }

    if (tempDeallocationRequested != null) {
      jsonData['deallocationRequested'] = tempDeallocationRequested;
    }

    if (tempDriverName != null) {
      jsonData['driverName'] = tempDriverName;
    }

    if (tempReservedFor != null) {
      jsonData['reservedFor'] = tempReservedFor;
    }

    return jsonData;
  }
}

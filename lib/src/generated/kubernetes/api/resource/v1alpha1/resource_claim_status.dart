import 'package:kubernetes/src/generated/kubernetes/api/resource/v1alpha1/allocation_result.dart';
import 'package:kubernetes/src/generated/kubernetes/api/resource/v1alpha1/resource_claim_consumer_reference.dart';

/// ResourceClaimStatus tracks whether the resource has been allocated and what the resulting attributes are.
class ResourceClaimStatus {
  /// The main constructor.
  const ResourceClaimStatus({
    this.allocation,
    this.deallocationRequested,
    this.driverName,
    this.reservedFor,
  });

  /// Creates a ResourceClaimStatus from JSON data.
  ResourceClaimStatus.fromJson(Map<String, dynamic> json)
      : this(
          allocation: json['allocation'] != null ? AllocationResult.fromJson(json['allocation']): null,
          deallocationRequested: json['deallocationRequested'],
          driverName: json['driverName'],
          reservedFor: json['reservedFor'] != null ? ResourceClaimConsumerReference.listFromJson((json['reservedFor'] as Iterable).cast<Map<String, dynamic>>()): null,
        );

  /// Creates a list of ResourceClaimStatus from JSON data.
  static List<ResourceClaimStatus> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceClaimStatus.fromJson(e)).toList();
  }

  /// Converts a ResourceClaimStatus instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(allocation != null) { jsonData['allocation'] = allocation!.toJson(); }
    if(deallocationRequested != null) { jsonData['deallocationRequested'] = deallocationRequested!; }
    if(driverName != null) { jsonData['driverName'] = driverName!; }
    if(reservedFor != null) { jsonData['reservedFor'] = reservedFor!.map((item) => item.toJson()).toList(); }
    

    return jsonData;
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
}

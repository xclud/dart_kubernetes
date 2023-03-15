// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

part of io.k8s.api.coordination.v1;

/// LeaseSpec is a specification of a Lease.
class LeaseSpec {
  /// Default constructor.
  const LeaseSpec({
    this.acquireTime,
    this.holderIdentity,
    this.leaseDurationSeconds,
    this.leaseTransitions,
    this.renewTime,
  });

  /// Creates a [LeaseSpec] from JSON data.
  factory LeaseSpec.fromJson(Map<String, dynamic> json) {
    final tempAcquireTimeJson = json['acquireTime'];
    final tempHolderIdentityJson = json['holderIdentity'];
    final tempLeaseDurationSecondsJson = json['leaseDurationSeconds'];
    final tempLeaseTransitionsJson = json['leaseTransitions'];
    final tempRenewTimeJson = json['renewTime'];

    final tempAcquireTime = tempAcquireTimeJson;
    final tempHolderIdentity = tempHolderIdentityJson;
    final tempLeaseDurationSeconds = tempLeaseDurationSecondsJson;
    final tempLeaseTransitions = tempLeaseTransitionsJson;
    final tempRenewTime = tempRenewTimeJson;

    return LeaseSpec(
      acquireTime: tempAcquireTime,
      holderIdentity: tempHolderIdentity,
      leaseDurationSeconds: tempLeaseDurationSeconds,
      leaseTransitions: tempLeaseTransitions,
      renewTime: tempRenewTime,
    );
  }

  /// acquireTime is a time when the current lease was acquired.
  final String? acquireTime;

  /// holderIdentity contains the identity of the holder of a current lease.
  final String? holderIdentity;

  /// leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed renewTime.
  final int? leaseDurationSeconds;

  /// leaseTransitions is the number of transitions of a lease between holders.
  final int? leaseTransitions;

  /// renewTime is a time when the current holder of a lease has last updated the lease.
  final String? renewTime;

  /// Converts a [LeaseSpec] instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    final tempAcquireTime = acquireTime;
    final tempHolderIdentity = holderIdentity;
    final tempLeaseDurationSeconds = leaseDurationSeconds;
    final tempLeaseTransitions = leaseTransitions;
    final tempRenewTime = renewTime;

    if (tempAcquireTime != null) {
      jsonData['acquireTime'] = tempAcquireTime;
    }

    if (tempHolderIdentity != null) {
      jsonData['holderIdentity'] = tempHolderIdentity;
    }

    if (tempLeaseDurationSeconds != null) {
      jsonData['leaseDurationSeconds'] = tempLeaseDurationSeconds;
    }

    if (tempLeaseTransitions != null) {
      jsonData['leaseTransitions'] = tempLeaseTransitions;
    }

    if (tempRenewTime != null) {
      jsonData['renewTime'] = tempRenewTime;
    }

    return jsonData;
  }
}

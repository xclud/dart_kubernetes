import 'package:kubernetes/src/generated/apimachinery/pkg/apis/meta/v1/micro_time.dart';

/// LeaseSpec is a specification of a Lease.
class LeaseSpec {
  /// The main constructor.
  const LeaseSpec({
    this.acquireTime,
    this.holderIdentity,
    this.leaseDurationSeconds,
    this.leaseTransitions,
    this.renewTime,
  });

  /// Creates a LeaseSpec from JSON data.
  LeaseSpec.fromJson(Map<String, dynamic> json)
      : this(
          acquireTime: json['acquireTime'] != null
              ? MicroTime.fromJson(json['acquireTime'])
              : null,
          holderIdentity: json['holderIdentity'],
          leaseDurationSeconds: json['leaseDurationSeconds'],
          leaseTransitions: json['leaseTransitions'],
          renewTime: json['renewTime'] != null
              ? MicroTime.fromJson(json['renewTime'])
              : null,
        );

  /// Creates a list of LeaseSpec from JSON data.
  static List<LeaseSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => LeaseSpec.fromJson(e)).toList();
  }

  /// Converts a LeaseSpec instance to JSON data.
  Map<String, Object> toJson() {
    final jsonData = <String, Object>{};

    if (acquireTime != null) {
      jsonData['acquireTime'] = acquireTime!.toJson();
    }
    if (holderIdentity != null) {
      jsonData['holderIdentity'] = holderIdentity!;
    }
    if (leaseDurationSeconds != null) {
      jsonData['leaseDurationSeconds'] = leaseDurationSeconds!;
    }
    if (leaseTransitions != null) {
      jsonData['leaseTransitions'] = leaseTransitions!;
    }
    if (renewTime != null) {
      jsonData['renewTime'] = renewTime!.toJson();
    }

    return jsonData;
  }

  /// AcquireTime is a time when the current lease was acquired.
  final MicroTime? acquireTime;

  /// HolderIdentity contains the identity of the holder of a current lease.
  final String? holderIdentity;

  /// LeaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.
  final int? leaseDurationSeconds;

  /// LeaseTransitions is the number of transitions of a lease between holders.
  final int? leaseTransitions;

  /// RenewTime is a time when the current holder of a lease has last updated the lease.
  final MicroTime? renewTime;
}

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

  /// acquireTime is a time when the current lease was acquired.
  final MicroTime? acquireTime;

  /// holderIdentity contains the identity of the holder of a current lease.
  final String? holderIdentity;

  /// leaseDurationSeconds is a duration that candidates for a lease need to wait to force acquire it. This is measure against time of last observed RenewTime.
  final int? leaseDurationSeconds;

  /// leaseTransitions is the number of transitions of a lease between holders.
  final int? leaseTransitions;

  /// renewTime is a time when the current holder of a lease has last updated the lease.
  final MicroTime? renewTime;
}

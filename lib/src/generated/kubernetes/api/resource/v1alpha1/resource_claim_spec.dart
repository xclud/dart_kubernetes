import 'package:kubernetes/src/generated/kubernetes/api/resource/v1alpha1/resource_claim_parameters_reference.dart';

/// ResourceClaimSpec defines how a resource is to be allocated.
class ResourceClaimSpec {
  /// The main constructor.
  const ResourceClaimSpec({
    this.allocationMode,
    this.parametersRef,
    required this.resourceClassName,
  });

  /// Creates a ResourceClaimSpec from JSON data.
  ResourceClaimSpec.fromJson(Map<String, dynamic> json)
      : this(
          allocationMode: json['allocationMode'],
          parametersRef: json['parametersRef'] != null ? ResourceClaimParametersReference.fromJson(json['parametersRef']): null,
          resourceClassName: json['resourceClassName'],
        );

  /// Creates a list of ResourceClaimSpec from JSON data.
  static List<ResourceClaimSpec> listFromJson(Iterable<Map<String, dynamic>> list) {
    return list.map((e) => ResourceClaimSpec.fromJson(e)).toList();
  }

  /// Converts a ResourceClaimSpec instance to JSON data.
  Map<String, Object> toJson()
  {
    final jsonData = <String, Object>{};

    if(allocationMode != null) { jsonData['allocationMode'] = allocationMode!; }
    if(parametersRef != null) { jsonData['parametersRef'] = parametersRef!.toJson(); }
    jsonData['resourceClassName'] = resourceClassName;
    

    return jsonData;
  }


  /// Allocation can start immediately or when a Pod wants to use the resource. "WaitForFirstConsumer" is the default.
  final String? allocationMode;

  /// ParametersRef references a separate object with arbitrary parameters that will be used by the driver when allocating a resource for the claim.
/// 
/// The object must be in the same namespace as the ResourceClaim.
  final ResourceClaimParametersReference? parametersRef;

  /// ResourceClassName references the driver and additional parameters via the name of a ResourceClass that was created as part of the driver deployment.
  final String resourceClassName;
}

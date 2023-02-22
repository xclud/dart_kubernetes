library kubernetes;

import 'dart:convert';

import '../api_admissionregistration_v1.dart' as api_admissionregistration_v1;
import '../api_apiserverinternal_v1alpha1.dart'
    as api_apiserverinternal_v1alpha1;
import '../api_apps_v1.dart' as api_apps_v1;
import '../api_authentication_v1.dart' as api_authentication_v1;
import '../api_authorization_v1.dart' as api_authorization_v1;
import '../api_autoscaling_v1.dart' as api_autoscaling_v1;
import '../api_autoscaling_v2.dart' as api_autoscaling_v2;
import '../api_autoscaling_v2.dart' as api_autoscaling_v2beta2;
import '../api_batch_v1.dart' as api_batch_v1;
import '../api_certificates_v1.dart' as api_certificates_v1;
import '../api_coordination_v1.dart' as api_coordination_v1;
import '../api_core_v1.dart' as api_core_v1;
import '../api_discovery_v1.dart' as api_discovery_v1;
import '../api_events_v1.dart' as api_events_v1;
import '../api_flowcontrol_v1beta2.dart' as api_flowcontrol_v1beta2;
import '../api_flowcontrol_v1beta3.dart' as api_flowcontrol_v1beta3;
import '../api_networking_v1.dart' as api_networking_v1;
import '../api_node_v1.dart' as api_node_v1;
import '../api_policy_v1.dart' as api_policy_v1;
import '../api_rbac_v1.dart' as api_rbac_v1;
import '../api_scheduling_v1.dart' as api_scheduling_v1;
import '../api_storage_v1.dart' as api_storage_v1;
import '../api_storage_v1beta1.dart' as api_storage_v1beta1;
import '../apimachinery_pkg_version.dart' as apimachinery_pkg_version;
import '../apiextensions__apiserver_pkg_apis_apiextensions_v1.dart'
    as apiextensions__apiserver_pkg_apis_apiextensions_v1;
import '../apimachinery_pkg_apis_meta_v1.dart' as apimachinery_pkg_apis_meta_v1;
import '../kube__aggregator_pkg_apis_apiregistration_v1.dart'
    as kube__aggregator_pkg_apis_apiregistration_v1;
import '../istio_v1beta1.dart' as istio_v1beta1;

import 'package:http/http.dart' as http;

export 'api_admissionregistration_v1.dart';
export 'api_apps_v1.dart';
export 'api_authentication_v1.dart';
export 'api_authorization_v1.dart';
export 'api_autoscaling_v1.dart'
    hide
        CrossVersionObjectReference,
        HorizontalPodAutoscaler,
        HorizontalPodAutoscalerList,
        HorizontalPodAutoscalerSpec,
        HorizontalPodAutoscalerStatus;
export 'api_autoscaling_v2.dart';
export 'api_batch_v1.dart';
export 'api_certificates_v1.dart';
export 'api_coordination_v1.dart';
export 'api_core_v1.dart';
export 'api_discovery_v1.dart' hide EndpointPort;
export 'api_events_v1.dart' hide Event, EventSeries, EventList;
export 'api_networking_v1.dart';
export 'api_node_v1.dart';
export 'api_policy_v1.dart';
export 'api_rbac_v1.dart';
export 'api_scheduling_v1.dart';
export 'api_storage_v1.dart' hide TokenRequest;
export 'apimachinery_pkg_runtime.dart';
export 'apimachinery_pkg_version.dart';
export 'apiextensions__apiserver_pkg_apis_apiextensions_v1.dart'
    hide ServiceReference, WebhookClientConfig;
export 'apimachinery_pkg_apis_meta_v1.dart';
export 'kube__aggregator_pkg_apis_apiregistration_v1.dart'
    hide ServiceReference;

part 'src/client.dart';
part 'src/config.dart';
part 'src/object.dart';

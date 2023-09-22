/// A feature-rich and fully-fledged Kubernetes client for Dart/Flutter.
library kubernetes;

import 'dart:convert';
import 'package:http/http.dart' as http;

import 'admissionregistration_v1.dart' as api_admissionregistration_v1;
import 'apiserverinternal_v1alpha1.dart' as api_apiserverinternal_v1alpha1;
import 'apps_v1.dart' as api_apps_v1;
import 'authentication_v1.dart' as api_authentication_v1;
import 'authorization_v1.dart' as api_authorization_v1;
import 'autoscaling_v1.dart' as api_autoscaling_v1;
import 'autoscaling_v2.dart' as api_autoscaling_v2;
import 'autoscaling_v2.dart' as api_autoscaling_v2beta2;
import 'batch_v1.dart' as api_batch_v1;
import 'certificates_v1.dart' as api_certificates_v1;
import 'coordination_v1.dart' as api_coordination_v1;
import 'core_v1.dart' as api_core_v1;
import 'discovery_v1.dart' as api_discovery_v1;
import 'events_v1.dart' as api_events_v1;
import 'flowcontrol_v1beta2.dart' as api_flowcontrol_v1beta2;
import 'flowcontrol_v1beta3.dart' as api_flowcontrol_v1beta3;
import 'networking_v1.dart' as api_networking_v1;
import 'node_v1.dart' as api_node_v1;
import 'policy_v1.dart' as api_policy_v1;
import 'rbac_v1.dart' as api_rbac_v1;
import 'scheduling_v1.dart' as api_scheduling_v1;
import 'storage_v1.dart' as api_storage_v1;
import 'io_k8s_apimachinery_pkg_version.dart' as apimachinery_pkg_version;
import 'io_k8s_apiextensions__apiserver_pkg_apis_apiextensions_v1.dart'
    as apiextensions__apiserver_pkg_apis_apiextensions_v1;
import 'io_k8s_apimachinery_pkg_apis_meta_v1.dart'
    as apimachinery_pkg_apis_meta_v1;
import 'io_k8s_kube__aggregator_pkg_apis_apiregistration_v1.dart'
    as kube__aggregator_pkg_apis_apiregistration_v1;

import 'istio_v1beta1.dart' as istio_v1beta1;

part 'src/client.dart';
part 'src/config.dart';
part 'src/int_or_string.dart';

// ***************************************************************
// * Auto-generated. Please do not modify.                       *
// * Copyright (c) 2020-2023 Mahdi K. Fard.                      *
// ***************************************************************

/// Io K8s Api Core V1;
library io.k8s.api.core.v1;

// Imports
import 'io_k8s_apimachinery_pkg_apis_meta_v1.dart'
    show ObjectMeta, ListMeta, LabelSelector, Condition;
import 'kubernetes.dart' show IntOrString;

// Parts
part 'src/io/k8s/api/core/v1/a_w_s_elastic_block_store_volume_source.dart';
part 'src/io/k8s/api/core/v1/affinity.dart';
part 'src/io/k8s/api/core/v1/attached_volume.dart';
part 'src/io/k8s/api/core/v1/azure_disk_volume_source.dart';
part 'src/io/k8s/api/core/v1/azure_file_persistent_volume_source.dart';
part 'src/io/k8s/api/core/v1/azure_file_volume_source.dart';
part 'src/io/k8s/api/core/v1/binding.dart';
part 'src/io/k8s/api/core/v1/c_s_i_persistent_volume_source.dart';
part 'src/io/k8s/api/core/v1/c_s_i_volume_source.dart';
part 'src/io/k8s/api/core/v1/capabilities.dart';
part 'src/io/k8s/api/core/v1/ceph_f_s_persistent_volume_source.dart';
part 'src/io/k8s/api/core/v1/ceph_f_s_volume_source.dart';
part 'src/io/k8s/api/core/v1/cinder_persistent_volume_source.dart';
part 'src/io/k8s/api/core/v1/cinder_volume_source.dart';
part 'src/io/k8s/api/core/v1/claim_source.dart';
part 'src/io/k8s/api/core/v1/client_i_p_config.dart';
part 'src/io/k8s/api/core/v1/component_condition.dart';
part 'src/io/k8s/api/core/v1/component_status.dart';
part 'src/io/k8s/api/core/v1/component_status_list.dart';
part 'src/io/k8s/api/core/v1/config_map.dart';
part 'src/io/k8s/api/core/v1/config_map_env_source.dart';
part 'src/io/k8s/api/core/v1/config_map_key_selector.dart';
part 'src/io/k8s/api/core/v1/config_map_list.dart';
part 'src/io/k8s/api/core/v1/config_map_node_config_source.dart';
part 'src/io/k8s/api/core/v1/config_map_projection.dart';
part 'src/io/k8s/api/core/v1/config_map_volume_source.dart';
part 'src/io/k8s/api/core/v1/container.dart';
part 'src/io/k8s/api/core/v1/container_image.dart';
part 'src/io/k8s/api/core/v1/container_port.dart';
part 'src/io/k8s/api/core/v1/container_state.dart';
part 'src/io/k8s/api/core/v1/container_state_running.dart';
part 'src/io/k8s/api/core/v1/container_state_terminated.dart';
part 'src/io/k8s/api/core/v1/container_state_waiting.dart';
part 'src/io/k8s/api/core/v1/container_status.dart';
part 'src/io/k8s/api/core/v1/daemon_endpoint.dart';
part 'src/io/k8s/api/core/v1/downward_a_p_i_projection.dart';
part 'src/io/k8s/api/core/v1/downward_a_p_i_volume_file.dart';
part 'src/io/k8s/api/core/v1/downward_a_p_i_volume_source.dart';
part 'src/io/k8s/api/core/v1/empty_dir_volume_source.dart';
part 'src/io/k8s/api/core/v1/endpoint_address.dart';
part 'src/io/k8s/api/core/v1/endpoint_port.dart';
part 'src/io/k8s/api/core/v1/endpoint_subset.dart';
part 'src/io/k8s/api/core/v1/endpoints.dart';
part 'src/io/k8s/api/core/v1/endpoints_list.dart';
part 'src/io/k8s/api/core/v1/env_from_source.dart';
part 'src/io/k8s/api/core/v1/env_var.dart';
part 'src/io/k8s/api/core/v1/env_var_source.dart';
part 'src/io/k8s/api/core/v1/ephemeral_container.dart';
part 'src/io/k8s/api/core/v1/ephemeral_volume_source.dart';
part 'src/io/k8s/api/core/v1/event.dart';
part 'src/io/k8s/api/core/v1/event_list.dart';
part 'src/io/k8s/api/core/v1/event_series.dart';
part 'src/io/k8s/api/core/v1/event_source.dart';
part 'src/io/k8s/api/core/v1/exec_action.dart';
part 'src/io/k8s/api/core/v1/f_c_volume_source.dart';
part 'src/io/k8s/api/core/v1/flex_persistent_volume_source.dart';
part 'src/io/k8s/api/core/v1/flex_volume_source.dart';
part 'src/io/k8s/api/core/v1/flocker_volume_source.dart';
part 'src/io/k8s/api/core/v1/g_c_e_persistent_disk_volume_source.dart';
part 'src/io/k8s/api/core/v1/g_r_p_c_action.dart';
part 'src/io/k8s/api/core/v1/git_repo_volume_source.dart';
part 'src/io/k8s/api/core/v1/glusterfs_persistent_volume_source.dart';
part 'src/io/k8s/api/core/v1/glusterfs_volume_source.dart';
part 'src/io/k8s/api/core/v1/h_t_t_p_get_action.dart';
part 'src/io/k8s/api/core/v1/h_t_t_p_header.dart';
part 'src/io/k8s/api/core/v1/host_alias.dart';
part 'src/io/k8s/api/core/v1/host_path_volume_source.dart';
part 'src/io/k8s/api/core/v1/i_s_c_s_i_persistent_volume_source.dart';
part 'src/io/k8s/api/core/v1/i_s_c_s_i_volume_source.dart';
part 'src/io/k8s/api/core/v1/key_to_path.dart';
part 'src/io/k8s/api/core/v1/lifecycle.dart';
part 'src/io/k8s/api/core/v1/lifecycle_handler.dart';
part 'src/io/k8s/api/core/v1/limit_range.dart';
part 'src/io/k8s/api/core/v1/limit_range_item.dart';
part 'src/io/k8s/api/core/v1/limit_range_list.dart';
part 'src/io/k8s/api/core/v1/limit_range_spec.dart';
part 'src/io/k8s/api/core/v1/load_balancer_ingress.dart';
part 'src/io/k8s/api/core/v1/load_balancer_status.dart';
part 'src/io/k8s/api/core/v1/local_object_reference.dart';
part 'src/io/k8s/api/core/v1/local_volume_source.dart';
part 'src/io/k8s/api/core/v1/n_f_s_volume_source.dart';
part 'src/io/k8s/api/core/v1/namespace.dart';
part 'src/io/k8s/api/core/v1/namespace_condition.dart';
part 'src/io/k8s/api/core/v1/namespace_list.dart';
part 'src/io/k8s/api/core/v1/namespace_spec.dart';
part 'src/io/k8s/api/core/v1/namespace_status.dart';
part 'src/io/k8s/api/core/v1/node.dart';
part 'src/io/k8s/api/core/v1/node_address.dart';
part 'src/io/k8s/api/core/v1/node_affinity.dart';
part 'src/io/k8s/api/core/v1/node_condition.dart';
part 'src/io/k8s/api/core/v1/node_config_source.dart';
part 'src/io/k8s/api/core/v1/node_config_status.dart';
part 'src/io/k8s/api/core/v1/node_daemon_endpoints.dart';
part 'src/io/k8s/api/core/v1/node_list.dart';
part 'src/io/k8s/api/core/v1/node_selector.dart';
part 'src/io/k8s/api/core/v1/node_selector_requirement.dart';
part 'src/io/k8s/api/core/v1/node_selector_term.dart';
part 'src/io/k8s/api/core/v1/node_spec.dart';
part 'src/io/k8s/api/core/v1/node_status.dart';
part 'src/io/k8s/api/core/v1/node_system_info.dart';
part 'src/io/k8s/api/core/v1/object_field_selector.dart';
part 'src/io/k8s/api/core/v1/object_reference.dart';
part 'src/io/k8s/api/core/v1/persistent_volume.dart';
part 'src/io/k8s/api/core/v1/persistent_volume_claim.dart';
part 'src/io/k8s/api/core/v1/persistent_volume_claim_condition.dart';
part 'src/io/k8s/api/core/v1/persistent_volume_claim_list.dart';
part 'src/io/k8s/api/core/v1/persistent_volume_claim_spec.dart';
part 'src/io/k8s/api/core/v1/persistent_volume_claim_status.dart';
part 'src/io/k8s/api/core/v1/persistent_volume_claim_template.dart';
part 'src/io/k8s/api/core/v1/persistent_volume_claim_volume_source.dart';
part 'src/io/k8s/api/core/v1/persistent_volume_list.dart';
part 'src/io/k8s/api/core/v1/persistent_volume_spec.dart';
part 'src/io/k8s/api/core/v1/persistent_volume_status.dart';
part 'src/io/k8s/api/core/v1/photon_persistent_disk_volume_source.dart';
part 'src/io/k8s/api/core/v1/pod.dart';
part 'src/io/k8s/api/core/v1/pod_affinity.dart';
part 'src/io/k8s/api/core/v1/pod_affinity_term.dart';
part 'src/io/k8s/api/core/v1/pod_anti_affinity.dart';
part 'src/io/k8s/api/core/v1/pod_condition.dart';
part 'src/io/k8s/api/core/v1/pod_d_n_s_config.dart';
part 'src/io/k8s/api/core/v1/pod_d_n_s_config_option.dart';
part 'src/io/k8s/api/core/v1/pod_i_p.dart';
part 'src/io/k8s/api/core/v1/pod_list.dart';
part 'src/io/k8s/api/core/v1/pod_o_s.dart';
part 'src/io/k8s/api/core/v1/pod_readiness_gate.dart';
part 'src/io/k8s/api/core/v1/pod_resource_claim.dart';
part 'src/io/k8s/api/core/v1/pod_scheduling_gate.dart';
part 'src/io/k8s/api/core/v1/pod_security_context.dart';
part 'src/io/k8s/api/core/v1/pod_spec.dart';
part 'src/io/k8s/api/core/v1/pod_status.dart';
part 'src/io/k8s/api/core/v1/pod_template.dart';
part 'src/io/k8s/api/core/v1/pod_template_list.dart';
part 'src/io/k8s/api/core/v1/pod_template_spec.dart';
part 'src/io/k8s/api/core/v1/port_status.dart';
part 'src/io/k8s/api/core/v1/portworx_volume_source.dart';
part 'src/io/k8s/api/core/v1/preferred_scheduling_term.dart';
part 'src/io/k8s/api/core/v1/probe.dart';
part 'src/io/k8s/api/core/v1/projected_volume_source.dart';
part 'src/io/k8s/api/core/v1/quobyte_volume_source.dart';
part 'src/io/k8s/api/core/v1/r_b_d_persistent_volume_source.dart';
part 'src/io/k8s/api/core/v1/r_b_d_volume_source.dart';
part 'src/io/k8s/api/core/v1/replication_controller.dart';
part 'src/io/k8s/api/core/v1/replication_controller_condition.dart';
part 'src/io/k8s/api/core/v1/replication_controller_list.dart';
part 'src/io/k8s/api/core/v1/replication_controller_spec.dart';
part 'src/io/k8s/api/core/v1/replication_controller_status.dart';
part 'src/io/k8s/api/core/v1/resource_claim.dart';
part 'src/io/k8s/api/core/v1/resource_field_selector.dart';
part 'src/io/k8s/api/core/v1/resource_quota.dart';
part 'src/io/k8s/api/core/v1/resource_quota_list.dart';
part 'src/io/k8s/api/core/v1/resource_quota_spec.dart';
part 'src/io/k8s/api/core/v1/resource_quota_status.dart';
part 'src/io/k8s/api/core/v1/resource_requirements.dart';
part 'src/io/k8s/api/core/v1/s_e_linux_options.dart';
part 'src/io/k8s/api/core/v1/scale_i_o_persistent_volume_source.dart';
part 'src/io/k8s/api/core/v1/scale_i_o_volume_source.dart';
part 'src/io/k8s/api/core/v1/scope_selector.dart';
part 'src/io/k8s/api/core/v1/scoped_resource_selector_requirement.dart';
part 'src/io/k8s/api/core/v1/seccomp_profile.dart';
part 'src/io/k8s/api/core/v1/secret.dart';
part 'src/io/k8s/api/core/v1/secret_env_source.dart';
part 'src/io/k8s/api/core/v1/secret_key_selector.dart';
part 'src/io/k8s/api/core/v1/secret_list.dart';
part 'src/io/k8s/api/core/v1/secret_projection.dart';
part 'src/io/k8s/api/core/v1/secret_reference.dart';
part 'src/io/k8s/api/core/v1/secret_volume_source.dart';
part 'src/io/k8s/api/core/v1/security_context.dart';
part 'src/io/k8s/api/core/v1/service.dart';
part 'src/io/k8s/api/core/v1/service_account.dart';
part 'src/io/k8s/api/core/v1/service_account_list.dart';
part 'src/io/k8s/api/core/v1/service_account_token_projection.dart';
part 'src/io/k8s/api/core/v1/service_list.dart';
part 'src/io/k8s/api/core/v1/service_port.dart';
part 'src/io/k8s/api/core/v1/service_spec.dart';
part 'src/io/k8s/api/core/v1/service_status.dart';
part 'src/io/k8s/api/core/v1/session_affinity_config.dart';
part 'src/io/k8s/api/core/v1/storage_o_s_persistent_volume_source.dart';
part 'src/io/k8s/api/core/v1/storage_o_s_volume_source.dart';
part 'src/io/k8s/api/core/v1/sysctl.dart';
part 'src/io/k8s/api/core/v1/t_c_p_socket_action.dart';
part 'src/io/k8s/api/core/v1/taint.dart';
part 'src/io/k8s/api/core/v1/toleration.dart';
part 'src/io/k8s/api/core/v1/topology_selector_label_requirement.dart';
part 'src/io/k8s/api/core/v1/topology_selector_term.dart';
part 'src/io/k8s/api/core/v1/topology_spread_constraint.dart';
part 'src/io/k8s/api/core/v1/typed_local_object_reference.dart';
part 'src/io/k8s/api/core/v1/typed_object_reference.dart';
part 'src/io/k8s/api/core/v1/volume.dart';
part 'src/io/k8s/api/core/v1/volume_device.dart';
part 'src/io/k8s/api/core/v1/volume_mount.dart';
part 'src/io/k8s/api/core/v1/volume_node_affinity.dart';
part 'src/io/k8s/api/core/v1/volume_projection.dart';
part 'src/io/k8s/api/core/v1/vsphere_virtual_disk_volume_source.dart';
part 'src/io/k8s/api/core/v1/weighted_pod_affinity_term.dart';
part 'src/io/k8s/api/core/v1/windows_security_context_options.dart';

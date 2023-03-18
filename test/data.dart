import 'dart:convert';

final podList = Map<String, dynamic>.from(jsonDecode('''{
 "apiVersion": "v1",
 "kind": "PodList",
 "items": [
  {
    "apiVersion": "v1",
    "kind": "Pod"
  }
 ]
 
}'''));

final service = Map<String, dynamic>.from(jsonDecode('''{
    "apiVersion": "v1",
    "kind": "Service",
    "metadata": {
        "name": "ab-service",
        "namespace": "default",
        "uid": "1cf0bf61-93d4-4a26-a1b4-4f44df297396",
        "resourceVersion": "66919599",
        "creationTimestamp": "2021-12-06T17:34:27Z",
        "labels": {
            "app": "ab-service",
            "app.kubernetes.io/managed-by": "Helm",
            "backstage.io/kubernetes-id": "ab-service",
            "velero.io/backup-name": "release-backup0612-services",
            "velero.io/restore-name": "release-backup0612-services-01"
        },
        "annotations": {
            "meta.helm.sh/release-name": "ab-service",
            "meta.helm.sh/release-namespace": "default"
        },
        "selfLink": "/api/v1/namespaces/default/services/ab-service"
    },
    "status": {
        "loadBalancer": {}
    },
    "spec": {
        "ports": [
            {
                "name": "http-server",
                "protocol": "TCP",
                "port": 7090,
                "targetPort": 7090
            },
            {
                "name": "grpc",
                "protocol": "TCP",
                "port": 9090,
                "targetPort": 9090
            },
            {
                "name": "http-port",
                "protocol": "TCP",
                "port": 80,
                "targetPort": 7090
            }
        ],
        "selector": {
            "app": "ab-service"
        },
        "clusterIP": "10.72.115.122",
        "clusterIPs": [
            "10.72.115.122"
        ],
        "type": "ClusterIP",
        "sessionAffinity": "None",
        "ipFamilies": [
            "IPv4"
        ],
        "ipFamilyPolicy": "SingleStack",
        "internalTrafficPolicy": "Cluster"
    }
}'''));

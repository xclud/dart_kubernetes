[![pub package](https://img.shields.io/pub/v/kubernetes.svg)](https://pub.dartlang.org/packages/kubernetes)

A feature-rich and fully-fledged Kubernetes client for Dart/Flutter.

## Roadmap

The roadmap of the package is as it follows. Please do not hesitate to suggest changes in the priorities or features. Contributions are welcome:

- [✓] Support for all Kubernetes APIs (REST).
- [ ] Support for `Watch`ing resources.
- [ ] Support for Metric APIs.
- [ ] Implement a fully-fledged UI aiming towards being the best cross-platform Kubernetes client.
- [ ] Support [Istio](https://istio.io) APIs.
  - [✓] [Gateway](https://istio.io/latest/docs/reference/config/networking/gateway/)
  - [✓] [Virtual Service](https://istio.io/latest/docs/reference/config/networking/virtual-service/)
  - [ ] [Destination Rule](https://istio.io/latest/docs/reference/config/networking/destination-rule/)
  - [ ] [Service Entry](https://istio.io/latest/docs/reference/config/networking/service-entry/)
  - [ ] [Sidecar](https://istio.io/latest/docs/reference/config/networking/sidecar/)
  - [ ] [Network resilience and testing](https://istio.io/latest/docs/concepts/traffic-management/#network-resilience-and-testing)
- [ ] Support [Knative](https://knative.dev) APIs.
- [ ] Support [Tekton](https://tekton.dev/) CI/CD APIs.

## Version Skew Policy

This package is built and tested against Kubernetes 1.26.3. As similar to Kubernetes itself, outdated Kubernetes components are deprecated and removed from the life-cycle.

For more information please refer to [Version Skew Policy](https://kubernetes.io/releases/version-skew-policy) document.

## Contribution

Any sort of contribution and support is welcome. Currently, there are no contribution guidelines and we will process them in manual way.

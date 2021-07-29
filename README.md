# kubernetes
[![pub package](https://img.shields.io/pub/v/kubernetes.svg)](https://pub.dartlang.org/packages/kubernetes)

Kubernetes client for Dart/Flutter.

# Warning
This package is in the early stages of development. This means it's not feature complete, is buggy and the APIs are subject to change. Please use this package for development and testing purposes only.

# Roadmap
The roadmap of the package is as it follows. Please do not hesitate to suggest changes in the priorities or features. Contributions are welcome:

- [x] Support for all Kubernetes APIs (REST).
- [ ] Support for `Watch`ing resources.
- [ ] Support for Metric APIs.
- [ ] Implement a fully-fledged UI aiming towards being the best cross-platform Kubernetes client.
- [ ] Support [Istio](https://istio.io) APIs.
  - [x] [Gateway](https://istio.io/latest/docs/reference/config/networking/gateway/)
  - [x] [Virtual Service](https://istio.io/latest/docs/reference/config/networking/virtual-service/)
  - [ ] [Destination Rule](https://istio.io/latest/docs/reference/config/networking/destination-rule/)
  - [ ] [Service Entry](https://istio.io/latest/docs/reference/config/networking/service-entry/)
  - [ ] [Sidecar](https://istio.io/latest/docs/reference/config/networking/sidecar/)
  - [ ] [Network resilience and testing](https://istio.io/latest/docs/concepts/traffic-management/#network-resilience-and-testing)
- [ ] Support [Knative](https://knative.dev) APIs.
- [ ] Support [Tekton](https://tekton.dev/) CI/CD APIs.


# Compatibility
This package is being built and tested against Kubernetes 1.22.x. Older versions will possibly work and future changes and updates will be integrated.

# Contribution
Any sort of contribution and support is welcome. Currently, there are no contribution guidelines and we will process them in manual way.

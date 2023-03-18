import 'package:kubernetes/core_v1.dart';
import 'package:kubernetes/kubernetes.dart';
import 'package:test/test.dart';

import 'data.dart' as c;

void main() {
  test('IntOrString', () {
    final ios = IntOrString(1);

    expect(ios.value, 1);
  });

  test('PodList', () {
    final podList = PodList.fromJson(c.podList);

    expect(podList.items.length, 1);
  });

  test('Service', () {
    final service = Service.fromJson(c.service);

    expect(service.spec!.ports![0].targetPort!.value, 7090);
  });
}

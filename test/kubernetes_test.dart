import 'package:kubernetes/core_v1.dart';
import 'package:test/test.dart';

import 'data.dart' as c;

void main() {
  test('PodList', () {
    final podList = PodList.fromJson(c.podList);

    expect(podList.items.length, 1);
  });
}

import 'package:kubernetes/src/generated/patch_type.dart';

class Patch {
  const Patch({required this.type});

  final PatchType type;
}

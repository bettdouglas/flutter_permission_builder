import 'package:permission_builder/permission_builder.dart';
import 'dart:math';

// extension RandomPermission on Permission {
//   Permission get random {
//     return Permission.values[Random().nextInt(Permission.values.length)];
//   }
// }
Permission get randomPermission {
  return Permission.values[Random().nextInt(Permission.values.length)];
}

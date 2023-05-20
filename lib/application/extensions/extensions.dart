import 'dart:io';

import 'package:image_picker/image_picker.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }
}

extension XFileConv on XFile {
  File toFile() => File(path);
}

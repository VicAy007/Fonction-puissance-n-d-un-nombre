import 'dart:io';

import 'package:path/path.dart' as p;

void main() {   
  var currentPath = p.current;

  print('Current path is: $currentPath');

  var filePath = p.join(currentPath, 'data', 'customer_lifetime_value.csv');

  final file = File(filePath);

  List<String> fileLines = file.readAsLinesSync();

  print('Number of lines: ${fileLines.length}');
}

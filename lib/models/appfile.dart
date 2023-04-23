import 'package:isar/isar.dart';

part 'appfile.g.dart';

@collection
class AppFile {
  Id id = Isar.autoIncrement;
  String path;
  String name;
  String description;

  AppFile({
    required this.path,
    required this.name,
    required this.description,
  });
}

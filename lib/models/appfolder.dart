import 'package:docsack/models/appfile.dart';
import 'package:isar/isar.dart';

part 'appfolder.g.dart';

@collection
class AppFolder{

  Id id = Isar.autoIncrement;
  String name;
  String description;

  final subFolders = IsarLink<AppFolder>();

  final files = IsarLink<AppFile>();

  AppFolder({
    required this.name,
    required this.description,
  });

}
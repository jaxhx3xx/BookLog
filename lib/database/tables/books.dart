import 'package:drift/drift.dart';

class Books extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text()();

  TextColumn get author => text()();

  DateTimeColumn get readDate => dateTime()();

  IntColumn get rating => integer()();

  TextColumn get memo => text()();

  TextColumn get status => text()();
}
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'tables/books.dart';

part 'app_database.g.dart';

@DriftDatabase(tables: [Books])
class LocalDatabase extends _$LocalDatabase {
  LocalDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  // 전체 책 목록 조회
  Stream<List<Book>> watchBooks() {
    return select(books).watch();
  }
  Stream<List<Book>> watchBooksByStatus(String status) {
    return (select(books)
      ..where((tbl) => tbl.status.equals(status)))
        .watch();
  }
  // 책 추가
  Future<int> createBook(BooksCompanion book) {
    return into(books).insert(book);
  }

  // 책 삭제
  Future<int> deleteBook(int id) {
    return (delete(books)
      ..where((tbl) => tbl.id.equals(id)))
        .go();
  }
  Future<bool> updateBook(Book book) {
    return update(books).replace(book);
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();

    final file = File(
      p.join(dbFolder.path, 'books.sqlite'),
    );

    return NativeDatabase(file);
  });
}
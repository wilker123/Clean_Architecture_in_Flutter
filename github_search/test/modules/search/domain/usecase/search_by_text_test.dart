import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/modules/search/domain/entities/result_search.dart';
import 'package:github_search/modules/search/domain/usecases/search_by_text.dart';

void main(){

  final usecase = SearchByTextImpl();

  test("Deve retornar uma lista de ResultSearch", () async {
    final result = await usecase("jacob");

    expect(result, isA<Right>());
    expect(result | [], isA<List<ResultSearch>>());

  });

}
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:github_search/modules/search/domain/entities/result_search.dart';
import 'package:github_search/modules/search/domain/errors/errors.dart';
import 'package:github_search/modules/search/domain/repositories/search_repository.dart';
import 'package:github_search/modules/search/domain/usecases/search_by_text.dart';


class SearchRepositoryMock implements SearchRepository{
  @override
  Future<Either<FailureSearch, List<ResultSearch>>> search(String searchText){
    throw UnimplementedError();
  }
}

void main(){

  final repository = SearchRepositoryMock();

  final usecase = SearchByTextImpl(repository);

  test("Deve retornar uma lista de ResultSearch", () async {
    final result = await usecase("jacob");

    expect(result, isA<Right>());
    expect(result | [], isA<List<ResultSearch>>());
    
  });

}
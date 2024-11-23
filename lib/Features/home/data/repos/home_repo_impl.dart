import 'package:bookly/Features/home/data/model/book_model/book_model.dart';
import 'package:bookly/core/errors/failures.dart';
import 'package:bookly/core/utils/api_services.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  HomeRepoImpl(ApiServices apiServices);

  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await ApiServices.get(
          endPoint: 'https://stephen-king-api.onrender.com/api/books/');

      List<BookModel> books = [];
      for (var element in data['villains']) {
        books.add(BookModel.fromJson(element));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() async {
   try {
      var data = await ApiServices.get(
          endPoint: 'https://stephen-king-api.onrender.com/api/book/19');

      List<BookModel> books = [];
      for (var element in data['villains']) {
        books.add(BookModel.fromJson(element));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}

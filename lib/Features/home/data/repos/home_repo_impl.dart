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
      var data = await ApiServices.get(endPoint: 'book/30');
      print('API Response: $data');

      var bookData = data['data'];
      if (bookData == null ||
          bookData['villains'] == null ||
          bookData['villains'] is! List) {
        return left(ServerFailure(
            "Invalid or missing 'villains' key in API response."));
      }

      var villains = bookData['villains'] as List<dynamic>;
      List<BookModel> books =
          villains.map((e) => BookModel.fromJson(e)).toList();

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
      var data = await ApiServices.get(endPoint: 'book/30');
      print('API Response: $data');

      var bookData = data['data'];
      if (bookData == null ||
          bookData['villains'] == null ||
          bookData['villains'] is! List) {
        return left(ServerFailure(
            "Invalid or missing 'villains' key in API response."));
      }

      var villains = bookData['villains'] as List<dynamic>;
      List<BookModel> books =
          villains.map((e) => BookModel.fromJson(e)).toList();

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}

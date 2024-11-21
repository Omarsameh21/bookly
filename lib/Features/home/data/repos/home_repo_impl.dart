import 'package:bookly/Features/home/data/model/book_model/book_model.dart';

import 'package:bookly/core/errors/failures.dart';

import 'package:dartz/dartz.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo{
  @override
  Future<Either<Failures, List<BookModel>>> fetchBestSellerBooks() {
    // TODO: implement fetchBestSellerBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
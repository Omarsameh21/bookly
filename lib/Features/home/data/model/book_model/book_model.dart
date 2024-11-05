import 'package:equatable/equatable.dart';

import 'datum.dart';

class BookModel extends Equatable {
  final List<Datum>? data;

  const BookModel({this.data});

  factory BookModel.fromJson(Map<String, dynamic> json) => BookModel(
        data: (json['data'] as List<dynamic>?)
            ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'data': data?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props => [data];
}

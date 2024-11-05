import 'package:equatable/equatable.dart';

import 'villain.dart';

class Datum extends Equatable {
  final int? id;
  final int? year;
  final String? title;
  final String? handle;
  final String? publisher;
  final String? isbn;
  final int? pages;
  final List<String>? notes;
  final DateTime? createdAt;
  final List<Villain>? villains;

  const Datum({
    this.id,
    this.year,
    this.title,
    this.handle,
    this.publisher,
    this.isbn,
    this.pages,
    this.notes,
    this.createdAt,
    this.villains,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json['id'] as int?,
        year: json['Year'] as int?,
        title: json['Title'] as String?,
        handle: json['handle'] as String?,
        publisher: json['Publisher'] as String?,
        isbn: json['ISBN'] as String?,
        pages: json['Pages'] as int?,
        notes: json['Notes'] as List<String>?,
        createdAt: json['created_at'] == null
            ? null
            : DateTime.parse(json['created_at'] as String),
        villains: (json['villains'] as List<dynamic>?)
            ?.map((e) => Villain.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'Year': year,
        'Title': title,
        'handle': handle,
        'Publisher': publisher,
        'ISBN': isbn,
        'Pages': pages,
        'Notes': notes,
        'created_at': createdAt?.toIso8601String(),
        'villains': villains?.map((e) => e.toJson()).toList(),
      };

  @override
  List<Object?> get props {
    return [
      id,
      year,
      title,
      handle,
      publisher,
      isbn,
      pages,
      notes,
      createdAt,
      villains,
    ];
  }
}

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:amped_media_admin/features/material/data/models/material_model.dart';
import 'package:amped_media_admin/features/materialuser/domain/entities/materialuser.dart';
import 'package:amped_media_admin/features/user/data/models/user_model.dart';

class MaterialUserModel extends MaterialUser {
  MaterialUserModel({
    required super.id,
    required super.userId,
    required super.materialId,
    required super.isPaid,
    required super.createdAt,
    required super.updatedAt,
    required super.material,
    required super.user,
  });

  factory MaterialUserModel.fromMap(Map<String, dynamic> map) {
    return MaterialUserModel(
      id: map['id'],
      userId: map['userId'],
      materialId: map['materialId'],
      isPaid: map['isPaid'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: DateTime.parse(map['updatedAt']),
      material: MaterialModel.fromMap(map['material']),
      user: UserModel.fromMap(map['user']),
    );
  }

  factory MaterialUserModel.fromJson(Map<String, dynamic> source) =>
      MaterialUserModel.fromMap(source);
}

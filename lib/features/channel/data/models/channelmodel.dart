// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:amped_media_admin/features/channel/domain/entities/channel.dart';
import 'package:amped_media_admin/features/favorite/data/models/favorite_model.dart';
import 'package:amped_media_admin/features/report/data/modles/report_model.dart';
import 'package:amped_media_admin/features/review_rate/data/models/rate_model.dart';
import 'package:amped_media_admin/features/sellerprofile/data/models/sellerprofile_model.dart';
import 'package:amped_media_admin/features/subscriptionplan/data/models/subscriptionplan_model.dart';
import '../../../favorite/domain/entities/favorite.dart';
import '../../../report/domain/entities/reports.dart';
import '../../../review_rate/domain/entities/rate.dart';
import '../../../subscriptionplan/domain/entities/subscriptionplan.dart';

class ChannelModel extends Channel {
  ChannelModel({
    required super.id,
    required super.name,
    super.description,
    required super.draft,
    required super.sellerProfileId,
    required super.createdAt,
    required super.updatedAt,
    required super.channelImage,
    required super.channelPreview,
    required super.sellerProfile,
    required super.favorite,
    required super.rate,
    required super.report,
    required super.subscriptionPlan,
  });

  factory ChannelModel.fromMap(Map<String, dynamic> map) {
    return ChannelModel(
      id: map['id'],
      name: map['name'],
      description: map['description'],
      draft: map['draft'],
      sellerProfileId: map['sellerProfileId'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: DateTime.parse(map['updatedAt']),
      channelImage: map['channelImage'] != null
          ? List<ChannelImageModel>.from(
              (map['channelImage']).map<ChannelImageModel>(
                (x) => ChannelImageModel.fromMap(x),
              ),
            )
          : [],
      channelPreview: map['channelPreview'] != null
          ? List<PreviewChannelModel>.from(
              (map['channelPreview']).map<PreviewChannelModel>(
                (x) => PreviewChannelModel.fromMap(x),
              ),
            )
          : [],
      sellerProfile: SellerProfileModel.fromMap(map['sellerProfile']),
      favorite: map['favorite'] != [] || map['favorite'] != null
          ? List<Favorite>.from(
              (map['favorite']).map<Favorite>(
                (x) => FavoriteModel.fromMap(x),
              ),
            )
          : [],
      rate: map['rate'] != null || map['rate'] != []
          ? List<Rate>.from(
              (map['rate']).map<Rate>(
                (x) => RateModel.fromMap(x),
              ),
            )
          : [],
      report: map['report'] != null || map['report'] != []
          ? List<Report>.from(
              (map['report']).map<Report>(
                (x) => ReportModel.fromMap(x),
              ),
            )
          : [],
      subscriptionPlan:
          map['subscriptionPlan'] != null || map['subscriptionPlan'] != []
              ? List<SubscriptionPlan>.from(
                  (map['subscriptionPlan']).map<SubscriptionPlan>(
                    (x) => SubscriptionPlanModel.fromMap(x),
                  ),
                )
              : [],
    );
  }

  factory ChannelModel.fromJson(Map<String, dynamic> source) =>
      ChannelModel.fromMap(source);
}

class ChannelImageModel extends ChannelImage {
  ChannelImageModel({
    required super.id,
    required super.image,
    required super.primary,
    required super.cover,
    required super.channelId,
    required super.createdAt,
    required super.updatedAt,
  });

  factory ChannelImageModel.fromMap(Map<String, dynamic> map) {
    return ChannelImageModel(
      id: map['id'],
      image: map['image'],
      primary: map['primary'],
      cover: map['cover'],
      channelId: map['channelId'],
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: DateTime.parse(map['updatedAt']),
    );
  }

  factory ChannelImageModel.fromJson(Map<String, dynamic> source) =>
      ChannelImageModel.fromMap(source);
}

class PreviewChannelModel extends PreviewChannel {
  PreviewChannelModel({
    required super.id,
    required super.preview,
    required super.channelId,
    required super.createdAt,
    required super.updatedAt,
  });

  factory PreviewChannelModel.fromMap(Map<String, dynamic> map) {
    return PreviewChannelModel(
      id: map['id'] ?? 0,
      preview: map['preview'] ?? '',
      channelId: map['channelId'] ?? 0,
      createdAt: DateTime.parse(map['createdAt']),
      updatedAt: DateTime.parse(map['updatedAt']),
    );
  }

  factory PreviewChannelModel.fromJson(Map<String, dynamic> source) =>
      PreviewChannelModel.fromMap(source);
}

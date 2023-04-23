import 'package:pilipala/models/video/reply/item.dart';

import 'config.dart';
import 'page.dart';
import 'upper.dart';

class ReplyData {
  ReplyData({
    this.page,
    this.config,
    this.replies,
    this.topReplies,
    this.upper,
  });

  ReplyPage? page;
  ReplyConfig? config;
  late List? replies;
  late List? topReplies;
  ReplyUpper? upper;

  ReplyData.fromJson(Map<String, dynamic> json) {
    page = ReplyPage.fromJson(json['page']);
    config = ReplyConfig.fromJson(json['config']);
    replies =
        json['replies'].map((item) => ReplyItemModel.fromJson(item)).toList();
    topReplies = json['top_replies'] != null
        ? json['top_replies']
            .map((item) => ReplyItemModel.fromJson(item))
            .toList()
        : [];
    upper = ReplyUpper.fromJson(json['upper']);
  }
}

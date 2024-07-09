import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app_flutter/gen/assets.gen.dart';
import 'package:test_app_flutter/localization/app_localizations.dart';

enum NavigationBarItem {
  blogs,
  news,
  aboutApp,
}

extension NavigationBarItemExtension on NavigationBarItem {
  IconData get getIcon {
    switch (this) {
      case NavigationBarItem.blogs:
        return Icons.description;
      case NavigationBarItem.news:
        return Icons.newspaper;
      case NavigationBarItem.aboutApp:
        return Icons.settings;
    }
  }

  String getName(BuildContext context) {
    switch (this) {
      case NavigationBarItem.blogs:
        return AppLocalizations.of(context).blogs;
      case NavigationBarItem.news:
        return AppLocalizations.of(context).news;
      case NavigationBarItem.aboutApp:
        return AppLocalizations.of(context).aboutApp;
    }
  }
}

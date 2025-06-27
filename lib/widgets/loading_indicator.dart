import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/tabs/settings/settings_provider.dart';
import 'package:provider/provider.dart';

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Container(
        alignment: Alignment.center,
        child: CircularProgressIndicator(
          color:
              settingsProvider.isDark ? AppTheme.gold : AppTheme.lightPrimary,
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/tabs/settings/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  static const String routName = 'settingsTab';

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Dark mode',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                Switch(
                  value: settingsProvider.isDark,
                  onChanged: (isDark) => settingsProvider.changeThemeMode(
                      isDark ? ThemeMode.dark : ThemeMode.light),
                  activeTrackColor: AppTheme.gold,
                  inactiveTrackColor: Colors.grey,
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Language',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: settingsProvider.Language,
                  items: [
                    DropdownMenuItem(
                        value: 'EN',
                        child: Text(
                          'English',
                          style: TextStyle(
                              color: settingsProvider.isDark
                                  ? AppTheme.wihte
                                  : AppTheme.black),
                        )),
                    DropdownMenuItem(
                        value: 'AR',
                        child: Text(
                          'Arabic',
                          style: TextStyle(
                              color: settingsProvider.isDark
                                  ? AppTheme.wihte
                                  : AppTheme.black),
                        )),
                  ],
                  onChanged: (selectedLanguage) {
                    if (selectedLanguage == null) return;
                    settingsProvider.changeLanguage(selectedLanguage);
                  },
                  dropdownColor:
                      settingsProvider.isDark ? AppTheme.gold : AppTheme.wihte,
                  borderRadius: BorderRadius.circular(20),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

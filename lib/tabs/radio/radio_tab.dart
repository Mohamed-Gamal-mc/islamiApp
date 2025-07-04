import 'package:flutter/material.dart';
import 'package:islami_app/tabs/settings/settings_provider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {
  static const String routName = 'radioTab';

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            'assets/images/radio_header.png',
            height: MediaQuery.of(context).size.height * 0.40,
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.10),
            height: MediaQuery.of(context).size.height * 0.07,
            child: Text(
              'اذاعة القرأن الكريم',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.10,
                vertical: MediaQuery.of(context).size.height * 0.09),
            child: Image.asset(
              settingsProvider.isDark
                  ? 'assets/images/radio_controls_darkMode.png'
                  : 'assets/images/radio_controls.png',
            ),
          )
        ],
      ),
    );
  }
}

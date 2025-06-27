import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/tabs/hadeth/hadeth.dart';
import 'package:islami_app/tabs/settings/settings_provider.dart';
import 'package:islami_app/widgets/loading_indicator.dart';
import 'package:provider/provider.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = '/hadethDetailsScreen';

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    Hadeth hadeth = ModalRoute.of(context)!.settings.arguments as Hadeth;
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(settingsProvider.backGroundImagePath),
          fit: BoxFit.fill,
        )),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              hadeth.title,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(
                vertical: MediaQuery.of(context).size.height * 0.06,
                horizontal: MediaQuery.of(context).size.width * 0.07),
            decoration: BoxDecoration(
                color: settingsProvider.isDark
                    ? AppTheme.darkPrimary
                    : AppTheme.wihte,
                borderRadius: BorderRadius.circular(30)),
            child: hadeth.contant.isEmpty
                ? LoadingIndicator()
                : ListView.builder(
                    itemBuilder: (_, index) => Text(
                      hadeth.contant[index],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    itemCount: hadeth.contant.length,
                  ),
          ),
        ));
  }
}

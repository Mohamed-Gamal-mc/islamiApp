import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/app_theme.dart';
import 'package:islami_app/tabs/quran/quran_tab.dart';
import 'package:islami_app/tabs/settings/settings_provider.dart';
import 'package:islami_app/widgets/loading_indicator.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = '/suraDetailsScreen';

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> ayat = [];
  late SuraDetailsArgs args;

  @override
  Widget build(BuildContext context) {
    SettingsProvider settingsProvider = Provider.of<SettingsProvider>(context);
    args = ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if (ayat.isEmpty) loadSuraFile();
    return Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(settingsProvider.backGroundImagePath),
          fit: BoxFit.fill,
        )),
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              args.suraName,
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
            child: ayat.isEmpty
                ? LoadingIndicator()
                : ListView.builder(
                    itemBuilder: (_, index) => Text(
                      ayat[index],
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    itemCount: ayat.length,
                  ),
          ),
        ));
  }

  Future<void> loadSuraFile() async {
    await Future.delayed(Duration(seconds: 1));
    String sura =
        await rootBundle.loadString('assets/files/${args.index + 1}.txt');
    ayat = sura.split('\r\n');
    setState(() {});
  }
}

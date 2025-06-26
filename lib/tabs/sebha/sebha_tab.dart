import 'package:flutter/material.dart';
import 'package:islami_app/app_theme.dart';

class SebhaTab extends StatefulWidget {
  static const String routName = 'sebhaTab';

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int numberOfTasbeh = 0;
  List<String> tasbehWords = ['سبحان الله', 'الحمدلله', 'الله واكبر'];
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          GestureDetector(
            onTap: () => setState(() {
              if (numberOfTasbeh == 33) {
                if (index < 2) {
                  index++;
                  numberOfTasbeh = 0;
                } else {
                  index = 0;
                  numberOfTasbeh = 0;
                }
              }
              numberOfTasbeh++;
            }),
            child: Image.asset(
              'assets/images/body_sebha.png',
              height: MediaQuery.of(context).size.height * 0.40,
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.30),
            height: MediaQuery.of(context).size.height * 0.07,
            child: Text(
              'عدد التسبيحات',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.42),
              height: MediaQuery.of(context).size.height * 0.10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppTheme.lightPrimary,
              ),
              child: Text(
                '$numberOfTasbeh',
                style: Theme.of(context).textTheme.headlineSmall,
              )),
          Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppTheme.lightPrimary,
            ),
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.30,
                vertical: MediaQuery.of(context).size.height * 0.03),
            height: MediaQuery.of(context).size.height * 0.07,
            child: Text(
              '${tasbehWords[index]}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          )
        ],
      ),
    );
  }
}

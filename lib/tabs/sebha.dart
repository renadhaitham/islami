import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:two/my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../providers/my_provider.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> tsbeeh = [
    "سبحان الله",
    "الحمدلله",
    "الله اكبر",
    "لا اله الا الله"
  ];
  int counter = 0;
  int index = 0;

  void sebhaCounter() {
    setState(() {
      counter++;
      if (counter == 34) {
        counter = 0;
        index++;
      }
      if (index == 4) {
        index = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Center(
      child: Column(
        children: [
          IconButton(
            onPressed: () {
              sebhaCounter();
            },
            icon: Image.asset(
              provider.theme == ThemeMode.light
                ? "assets/images/msbha.png"
                : "assets/images/darksebha.png",),
            iconSize: 290,
          ),
          SizedBox(
            height: 43,
          ),
          Text(
            AppLocalizations.of(context)!.numberOfTasbihs,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Container(
            margin: EdgeInsets.all(30),
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Theme.of(context).colorScheme.background,
            ),
            child: Text("$counter",style: TextStyle(color: Theme.of(context).colorScheme.onSurface),),
          ),
          Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(60),
                color: Theme.of(context).colorScheme.background,
              ),
              padding: EdgeInsets.all(12),
              child: Text(
                "${tsbeeh[index]}",
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface, fontWeight: FontWeight.bold),
              ))
        ],
      ),
    );
  }
}

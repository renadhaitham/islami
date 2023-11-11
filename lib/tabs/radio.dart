import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/my_provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Image.asset("assets/images/radio_image.png")),

        Text(AppLocalizations.of(context)!.holyQuranRadio),
         IconButton(onPressed: (){},
            icon: Image.asset(provider.theme == ThemeMode.light
                ? "assets/images/play.png"
                : "assets/images/darkplay.png",),iconSize: 180,),
        SizedBox(height: 60,),
      ],
    );
  }
}

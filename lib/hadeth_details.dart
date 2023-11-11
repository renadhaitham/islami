import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:two/hadeth_model.dart';
import 'package:two/providers/my_provider.dart';

import 'my_theme_data.dart';

class HadethDetails extends StatelessWidget {
  static const String routeName = "HadethDetails";

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as HadethModel;
    var provider = Provider.of<MyProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(
              provider.theme == ThemeMode.light
                  ? "assets/images/background.png"
                  : "assets/images/darkBackGround.png",
            ),
            fit: BoxFit.fill),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            args.title,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Card(
          elevation: 14,
          margin: EdgeInsets.all(18),
          shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide:
                BorderSide(color: Theme.of(context).colorScheme.background),
          ),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Directionality(
                  textDirection: TextDirection.rtl,
                  child: Text(
                    "${args.content[index]}",
                    textAlign: TextAlign.center,
                  ));
            },
            itemCount: args.content.length,
          ),
        ),
      ),
    );
  }
}

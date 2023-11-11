import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:two/hadeth_details.dart';
import 'package:two/hadeth_model.dart';
import 'package:two/my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AhadethTab extends StatefulWidget {
  @override
  State<AhadethTab> createState() => _AhadethTabState();
}

class _AhadethTabState extends State<AhadethTab> {
  List<HadethModel> allAhadeth = [];
  @override
  Widget build(BuildContext context) {
if(allAhadeth.isEmpty)
  {
    loadHadeth();
  }
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/ahadeth_image.png"),
          Divider(
            thickness: 3,
            color: Theme.of(context).colorScheme.background,
          ),
          Text(
            AppLocalizations.of(context)!.ahadeth,
          ),
          Divider(
            thickness: 3,
            color: Theme.of(context).colorScheme.background,
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) => Divider(
                thickness: 1,
                endIndent: 60,
                indent: 60,
                color: Theme.of(context).colorScheme.background,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: ()
                  {
                    Navigator.pushNamed(context,HadethDetails.routeName,
                    arguments: allAhadeth[index]) ;
                  },
                  child: Text(
                    allAhadeth[index].title,
                    style: Theme.of(context).textTheme.bodySmall!
                        .copyWith(color: Theme.of(context).colorScheme.onPrimary),
                    textAlign: TextAlign.center,
                  ),
                );
              },
              itemCount: allAhadeth.length,
            ),
          ),
        ],
      ),
    );
  }

  loadHadeth() async {
    rootBundle.loadString("assets/files/ahadeth.txt").then((ahadeth) {
      List<String> ahadethList = ahadeth.split('#');
      for (int i = 0; i < ahadethList.length; i++) {
        String hadethOne = ahadethList[i];
        List<String> hadethOneLines = hadethOne.trim().split("\n");
        String title = hadethOneLines[0];
        hadethOneLines.removeAt(0);
        List<String> content = hadethOneLines;
        HadethModel hadethModel = HadethModel(title, content);
        allAhadeth.add(hadethModel);
        print(title);
      }
      setState(() {});
    }).catchError((e) {
      print(e.toString());
    });
  }
}

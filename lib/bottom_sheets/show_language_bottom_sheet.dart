import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:two/my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/my_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeLanguage("en");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.english,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.local == "en"
                          ? Theme.of(context).colorScheme.background
                          : Theme.of(context).colorScheme.onPrimary),
                ),
                provider.local == "en"
                    ? Icon(
                        Icons.check_box_outlined,
                        color: Theme.of(context).colorScheme.background,
                        size: 40,
                      )
                    : Icon(Icons.check_box_outline_blank,
                        color: Theme.of(context).colorScheme.onPrimary, size: 40),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.arabic,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.local == "ar"
                          ? Theme.of(context).colorScheme.background
                          : Theme.of(context).colorScheme.onPrimary),
                ),
                provider.local == "ar"
                    ? Icon(
                        Icons.check_box_outlined,
                        color: Theme.of(context).colorScheme.background,
                        size: 40,
                      )
                    : Icon(Icons.check_box_outline_blank,
                        color: Theme.of(context).colorScheme.onPrimary,
                        size: 40
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

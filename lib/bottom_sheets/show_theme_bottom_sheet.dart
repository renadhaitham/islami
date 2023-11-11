import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:two/my_theme_data.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../providers/my_provider.dart';

class ThemingBottomSheet extends StatelessWidget {
  const ThemingBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.light);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.light,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.theme == ThemeMode.light
                          ? Theme.of(context).colorScheme.background
                          : Theme.of(context).colorScheme.onPrimary),
                ),
                provider.theme == ThemeMode.light
                    ? Icon(
                        Icons.check_box_outlined,
                        color: MyThemeData.primary,
                        size: 40,
                      )
                    : Icon(Icons.check_box_outline_blank,
                        color: MyThemeData.whiteColor, size: 40),
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          InkWell(
            onTap: () {
              provider.changeTheme(ThemeMode.dark);
              Navigator.pop(context);
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppLocalizations.of(context)!.dark,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: provider.theme == ThemeMode.dark
                          ? Theme.of(context).colorScheme.background
                          : Theme.of(context).colorScheme.onPrimary),
                ),
                provider.theme == ThemeMode.dark
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

import 'package:flutter/material.dart';
import 'package:elibrary/generated/l10n.dart';
import '../presentation/widget/action_card.dart';
import '../style/ui_params.dart';

Widget settingSection(BuildContext context){
  return Row(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Expanded(
        child: ActionCard(
          titleIcon: const Icon(
            Icons.star_rounded,
            color: Colors.amber,
          ),
          title: Text(
            S.of(context).star,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          innerWidget: Text(
            '23本书',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontSize: 22,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ),
      const SizedBox(width: UIParams.smallGap,),
      Expanded(
        child:ActionCard(
          titleIcon: const Icon(
            Icons.history,
          ),
          title: Text(
            S.of(context).history,
            style: Theme.of(context).textTheme.titleLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
          innerWidget: Text(
            '23本书',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontSize: 22,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ),
      ),
    ],
  );
}
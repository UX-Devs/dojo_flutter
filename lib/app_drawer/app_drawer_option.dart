import 'package:flutter/material.dart';

class AppDrawerOption extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String subTitle;
  final String routeName;
  final bool mini;

  const AppDrawerOption({
    Key key,
    this.iconData,
    this.title,
    this.subTitle = "nicht verfügbar",
    this.routeName = "Unknown",
    this.mini = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentRoute = ModalRoute.of(context).settings.name;
    var isActive = currentRoute == routeName;

    if (mini) {
      return IconButton(
        icon: Icon(
          iconData,
          color: Theme.of(context).colorScheme.onPrimary,
        ),
        onPressed: () => Navigator.pushNamed(context, routeName),
      );
    }

    return ListTile(
      tileColor: isActive
          ? Theme.of(context).colorScheme.primaryVariant
          : Theme.of(context).colorScheme.primary,
      leading: Container(
        height: double.infinity,
        child: Icon(iconData,
            size: 24, color: Theme.of(context).colorScheme.onPrimary),
      ),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline6
            .copyWith(color: Theme.of(context).colorScheme.onPrimary),
      ),
      subtitle: Text(
        subTitle,
        style: Theme.of(context)
            .textTheme
            .subtitle2
            .copyWith(color: Theme.of(context).colorScheme.onPrimary),
      ),
      trailing: Icon(Icons.chevron_right,
          size: 24, color: Theme.of(context).colorScheme.onPrimary),
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}

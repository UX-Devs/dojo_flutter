import 'package:flutter/material.dart';

class AppDrawerOption extends StatelessWidget {
  final IconData iconData;
  final String title;
  final String routeName;

  const AppDrawerOption(
      {Key key, this.iconData, this.title, this.routeName = "Unknown"})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentRoute = ModalRoute.of(context).settings.name;
    var isActive = currentRoute == routeName;

    return ListTile(
      tileColor: isActive
          ? Theme.of(context).colorScheme.primaryVariant
          : Theme.of(context).colorScheme.primary,
      leading: Icon(iconData,
          size: 24, color: Theme.of(context).colorScheme.onPrimary),
      contentPadding: const EdgeInsets.only(left: 16),
      title: Text(
        title,
        style: TextStyle(color: Theme.of(context).colorScheme.onPrimary),
      ),
      trailing: Icon(Icons.chevron_right,
          size: 24, color: Theme.of(context).colorScheme.onPrimary),
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
    );
  }
}

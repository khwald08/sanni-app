import 'package:flutter/material.dart';
class DrawerItemWidget extends StatelessWidget {
  final String title;
  final IconData leadingIcon;
  final IconData trailingIcon;
  final Function onAction;

  const DrawerItemWidget({Key? key,
    required this.onAction,
    required this.title,
    required this.leadingIcon,
    required this.trailingIcon }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: Theme.of(context).textTheme.headline5,),
      leading: Icon(leadingIcon, color: Theme.of(context).primaryColor,),
      trailing: Icon(trailingIcon, color: Theme.of(context).primaryColor,),
      onTap: ()=>onAction(),
    );
  }
}

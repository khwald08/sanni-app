

import 'package:flutter/material.dart';
import 'package:sanni_app/ui/widgets/drawer.item.widget.dart';
import 'package:sanni_app/ui/widgets/main.drawer.header.widget.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<dynamic> menus=[
      {"title":"Home","route":"/","leadingIcon":Icons.home,"trailingIcon":Icons.arrow_forward},
      {"title":"Counter Stful","route":"/counter1","leadingIcon":Icons.event_outlined,"trailingIcon":Icons.arrow_forward},
      {"title":"Counter Bloc","route":"/counter2","leadingIcon":Icons.av_timer_rounded,"trailingIcon":Icons.arrow_forward},
      {"title":"Git users","route":"/users","leadingIcon":Icons.person_pin,"trailingIcon":Icons.arrow_forward},
      {"title":"Qr code","route":"/qrcode","leadingIcon":Icons.qr_code_2,"trailingIcon":Icons.arrow_forward},

    ];
    return Drawer(
      child: Column(
         children: [
           const MainDrawerHeader(),
           Expanded(
             child: ListView.separated(
                   itemBuilder: (context, index){
                     return DrawerItemWidget(
                         title: menus[index]['title'],
                         leadingIcon: menus[index]['leadingIcon'],
                         trailingIcon: menus[index]['trailingIcon'],
                         onAction: (){
                           Navigator.pop(context);
                           Navigator.pushNamed(context, menus[index]['route']);
                         }
                     );
                   },
                   separatorBuilder: (context,index){
                     return const Divider(height: 6);
                   },
                   itemCount: menus.length
              ),
             )
        ],
      ),
    );
  }
}

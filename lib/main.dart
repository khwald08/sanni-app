import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sanni_app/bloc/counter.bloc.dart';
import 'package:sanni_app/bloc/theme.bloc.dart';
import 'package:sanni_app/bloc/users.bloc.dart';
import 'package:sanni_app/ui/pages/root.view.dart';


void main(){
  runApp(const MyApp());
}

class  MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>CounterBloc()),
        BlocProvider(create: (context)=>ThemeBloc()),
        BlocProvider(create: (context)=>UsersBloc()),

      ],
      child: const RootView(),
    );
  }
}



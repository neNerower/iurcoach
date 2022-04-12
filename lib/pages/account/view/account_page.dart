import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:iurc_mobile_app/pages/account/cubit/account_cubit.dart';

import 'account_view.dart';

class AccountPage extends StatelessWidget {
  String get title => "Account";
  AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AccountCubit()..fetchAccountData(),
      child: AccountView(),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iurc_mobile_app/components/base_button.dart';
import 'package:iurc_mobile_app/components/form_fields/base_form_field.dart';
import 'package:iurc_mobile_app/components/form_fields/email_field.dart';
import 'package:iurc_mobile_app/components/form_fields/isu_field.dart';
import 'package:iurc_mobile_app/components/form_fields/phone_field.dart';
import 'package:iurc_mobile_app/components/form_fields/vk_id_field.dart';
import 'package:iurc_mobile_app/components/readonly_tab_bar.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen>
    with SingleTickerProviderStateMixin {
  String _firstName = "";
  String _lastName = "";
  DateTime _birthdate = DateTime(0);
  String _isuNumber = "";
  String _phoneNumber = "";
  String _vkIdNumber = "";
  String _email = "";

  late TabController _tabController;
  int _currentIndex = 0;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  // Tabs names
  static const List<Tab> _tabs = <Tab>[
    Tab(text: "1"),
    Tab(text: "2"),
    Tab(text: "3")
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _tabs.length, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: Text("Регистрация"),
          bottom: ReadonlyTabBar(
            child: TabBar(
              tabs: _tabs,
              controller: _tabController,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Form(
            key: _formKey,
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              controller: _tabController,
              children: [
                Column(
                  children: [
                    BaseFormField(
                      labelText: "Имя",
                      onSaved: (value) => _firstName = value!,
                    ),
                    BaseFormField(
                      labelText: "Фамилия",
                      onSaved: (value) => _lastName = value!,
                    ),
                    CupertinoDatePicker(
                      onDateTimeChanged: (DateTime value) => ,
                      mode: CupertinoDatePickerMode.date,

                    ),
                    BaseButton(
                      label: "Далее",
                      onPressed: () =>
                          _tabController.animateTo(_currentIndex += 1),
                    )
                  ],
                ),
                Column(
                  children: [
                    PhoneField(
                      onSaved: (value) => _phoneNumber = value!,
                    ),
                    VkIdField(
                      onSaved: (value) => _vkIdNumber = value!,
                    ),
                    EmailField(
                      onSaved: (value) => _email = value!,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

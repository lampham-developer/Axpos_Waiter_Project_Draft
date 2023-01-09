import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class BaseStatefulWidget extends StatefulWidget{
  const BaseStatefulWidget({Key? key}) : super(key: key);
}

abstract class BaseWidgetState<Page extends BaseStatefulWidget> extends State<Page>{
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
}

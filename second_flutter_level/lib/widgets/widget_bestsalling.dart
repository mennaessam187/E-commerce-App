import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
//import 'package:second_flutter_level/widgets/detales.dart';
//import 'package:second_flutter_level/constant_color.dart';
import 'package:second_flutter_level/widgets/item.dart';

class bestsalling extends StatelessWidget {
  bestsalling({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 2600,
      child: const MyWidget(),
    );
  }
}

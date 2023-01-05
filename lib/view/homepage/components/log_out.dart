import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogOut extends StatelessWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 2,
          leading: Image.asset('images/log.png'),
          actions: [
            IconButton(
              color: Colors.green,
              onPressed: () {},
              icon: const Icon(Icons.notifications),
            )
          ],
        ),
        body: Container(),
      );
}

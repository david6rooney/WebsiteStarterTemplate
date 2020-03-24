import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:WebsiteStartingTemplate/widgets/centered_view/centered_view.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;
  const LayoutTemplate({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        // drawer: sizingInformation.deviceScreenType == DeviceScreenType.Mobile
        //     ? NavigationDrawer()
        //     : null,
        drawer: null,
        drawerEnableOpenDragGesture: false,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              //NavigationBar(),
              Expanded(
                child: child,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

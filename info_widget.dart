
import 'package:bit_coin/settings_app/device_info.dart';
import 'package:bit_coin/settings_app/device_type_enum.dart';
import 'package:bit_coin/settings_app/functions.dart';
import 'package:flutter/material.dart';

class InfoWidget extends StatelessWidget {
    InfoWidget({Key? key , required this.builder}) : super(key: key);

     final Widget Function(BuildContext buildContext , DeviceInfo deviceInfo) builder ;

  late MediaQueryData mediaQuery ;
  late DeviceInfo deviceInfo ;
  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (context ,constrains){
      mediaQuery = MediaQuery.of(context);
      deviceInfo = DeviceInfo(
          deviceType: FunctionsApp.getDeviceType(mediaQuery),
          orientation: mediaQuery.orientation,
          localHeight: constrains.maxHeight,
          localWidth: constrains.maxWidth,
          screenHeight: mediaQuery.size.height,
          screenWidth: mediaQuery.size.width);

      return builder(context , deviceInfo);
    });
  }
}

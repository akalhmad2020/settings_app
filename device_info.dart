
import 'package:bit_coin/settings_app/device_type_enum.dart';
import 'package:flutter/material.dart';

class DeviceInfo {
  final Orientation orientation ;
  final DeviceType deviceType ;
  final double screenWidth ;
  final double screenHeight ;
  final double localWidth ;
  final double localHeight ;

  DeviceInfo({required this.deviceType ,required this.orientation ,
    required this.localHeight , required this.localWidth ,
    required this.screenHeight ,required this.screenWidth});
}
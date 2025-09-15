import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sandbox/utils/device_manager.dart';
import 'package:sandbox/widgets/device_info_card.dart';
import 'package:sandbox/widgets/title/h1.dart';
import 'package:device_info_plus/device_info_plus.dart';

class DeviceInfoScreen extends StatefulWidget {
  const DeviceInfoScreen({super.key});

  @override
  State<DeviceInfoScreen> createState() => _DeviceInfoScreenState();
}

class _DeviceInfoScreenState extends State<DeviceInfoScreen> {
  static final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  Map<String, dynamic> _deviceData = <String, dynamic>{};

  Future<void> initPlatformState() async {
    var deviceData = <String, dynamic>{};

    try {
      deviceData = switch (Platform.operatingSystem) {
        "android" => DeviceInfoManager.readAndroidBuildData(
          await deviceInfoPlugin.androidInfo,
        ),
        "ios" => DeviceInfoManager.readIosDeviceInfo(
          await deviceInfoPlugin.iosInfo,
        ),
        String() => {},
      };
    } on PlatformException {
      deviceData = <String, dynamic>{
        'Error:': 'Failed to get platform version.',
      };
    }

    if (!mounted) return;

    setState(() {
      _deviceData = deviceData;
    });
  }

  @override
  void initState() {
    super.initState();
    // print("OS: ${Platform.operatingSystem} ${Platform.operatingSystem}");
    initPlatformState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H1("Device Info"),
                Text("Here you can find information about your device."),
                SizedBox(height: 20),

                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  children: [
                    DeviceInfoCard(
                      title: "NAME",
                      value: _deviceData["name"] ?? "Unknown",
                      icon: Icons.memory,
                    ),
                    DeviceInfoCard(
                      title: "RAM",
                      value:
                          "${(((_deviceData["physicalRamSize"] as int?) ?? 0) / 1024).ceil().toString()}GB",
                      icon: Icons.memory,
                    ),
                    DeviceInfoCard(
                      title: "ROM",
                      value:
                          "${(((_deviceData["freeDiskSize"] as int?) ?? 0) / (1024 * 1024 * 1024)).ceil().toString()}GB/${(((_deviceData["totalDiskSize"] as int?) ?? 0) / (1024 * 1024 * 1024)).ceil().toString()}GB",
                      icon: Icons.memory,
                    ),
                    DeviceInfoCard(
                      title: "MANUFACTURER",
                      value: _deviceData["manufacturer"] ?? "Unknown",
                      icon: Icons.memory,
                    ),
                    DeviceInfoCard(
                      title: "MODEL",
                      value: _deviceData["model"] ?? "Unknown",
                      icon: Icons.memory,
                    ),
                    DeviceInfoCard(
                      title: "PRODUCT",
                      value: _deviceData["device"] ?? "Unknown",
                      icon: Icons.memory,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

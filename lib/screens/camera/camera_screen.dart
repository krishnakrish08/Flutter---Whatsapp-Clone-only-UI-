import 'dart:math';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_whatsapp_clone/screens/camera/camera_captured_view_page.dart';

late List<CameraDescription> cameraDescriptionList;

class CameraScreen extends StatefulWidget {
  const CameraScreen({Key? key}) : super(key: key);

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  late CameraController cameraController;

  late Future<void> futureCameraValue;

  bool isRecoring = false;
  bool flash = false;
  bool iscamerafront = true;
  double transform = 0;

  @override
  void initState() {
    super.initState();

    cameraController =
        CameraController(cameraDescriptionList[0], ResolutionPreset.high);

    futureCameraValue = cameraController.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              width: MediaQuery.of(context).size.width,
              child: FutureBuilder(
                  future: futureCameraValue,
                  builder: ((context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                      return CameraPreview(cameraController);
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  }))),
          SizedBox(
            child: Align(
              alignment: Alignment.bottomCenter,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.flash_off,
                          color: Colors.white,
                        )),
                    IconButton(
                        onPressed: () async {
                          await futureCameraValue;

                          var xFile = await cameraController.takePicture();
                          setState(() {
                            // if (result != null) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CameraCapturedView(
                                      cameraPath: xFile.path)),
                            );
                            // }
                          });
                        },
                        icon: const Icon(
                          Icons.panorama_fish_eye,
                          color: Colors.white,
                        )),
                    IconButton(
                        icon: Transform.rotate(
                          angle: transform,
                          child: const Icon(
                            Icons.flip_camera_android,
                            color: Colors.white,
                            size: 28,
                          ),
                        ),
                        onPressed: () async {
                          setState(() {
                            iscamerafront = !iscamerafront;
                            transform = transform + pi;
                          });
                          int cameraPos = iscamerafront ? 0 : 1;
                          cameraController = CameraController(
                              cameraDescriptionList[cameraPos],
                              ResolutionPreset.high);
                          futureCameraValue = cameraController.initialize();
                        }),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  "Hold for video, tap for photo",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 16),
              ]),
            ),
          )

          // Container(
          //   color: Colors.black,
          //   width: MediaQuery.of(context).size.width,
          // )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ToolsScreen extends StatelessWidget {
  const ToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 80,
              width: 400,
              child: Row(
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(7)),
                    child: Center(
                      child: Icon(
                        Icons.camera_alt_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 7),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Scan document",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "Scan pages with your camera to create PDF",
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black,
                    size: 20,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

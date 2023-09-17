import 'package:flutter/material.dart';
import 'package:flutter_ncku_test/bottom_webview/controller/bottom_webview_controller.dart';
import 'package:flutter_ncku_test/res/colors.dart';
import 'package:flutter_ncku_test/res/dimens.dart';
import 'package:get/get.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class BottomWebViewView extends GetView<BottomWebViewController> {
  const BottomWebViewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorSet.boundary,
      padding: const EdgeInsets.symmetric(horizontal: Dimens.dp10, vertical: Dimens.dp15),
      child: Obx(() {
        return YoutubePlayer(
          controller: YoutubePlayerController(
            initialVideoId: controller.videoId.value,
            flags: const YoutubePlayerFlags(
              autoPlay: false,
            ),
          ),
        );
      }),
    );
  }


}

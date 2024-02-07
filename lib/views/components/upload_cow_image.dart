import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:dotted_border/dotted_border.dart';
import '../../controllers/image_controller.dart';

final PickImage imageController = Get.put(PickImage());

class CowImage extends StatelessWidget {
  const CowImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GetBuilder<PickImage>(
        init: PickImage(),
        builder: (controller) {
          //Display image or placeholder depends on selectedImage is null or not
          return controller.selectedImage != null
              ? Stack(
                  children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.file(
                          controller.selectedImage!,
                        ),
                      ),
                    ),
      
                    //Close button for user want to cancel uploading an image
                    Positioned(
                      top: 5,
                      right: 5,
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: Material(
                          color: Colors.red,
                          shape: const CircleBorder(),
                          child: InkWell(
                            onTap: () {
                              imageController.resetImage();
                            },
                            child: const Icon(
                              Icons.close_rounded,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              : const ImagePlaceholder();
        },
      ),
    );
  }
}

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //Cow image placeholder with dash border around
        Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0),
          child: DottedBorder(
            borderType: BorderType.RRect,
            radius: const Radius.circular(12),
            dashPattern: const [10],
            strokeWidth: 2,
            color: Colors.pink,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.5),
                    BlendMode.srcOver,
                  ),
                  child: Image.asset(
                    "assets/images/cow-placeholder.jpg",
                  ),
                ),
              ),
            ),
          ),
        ),

        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 110.0),
            child: Column(
              children: [
                //Upload image from gallery button
                MaterialButton(
                  onPressed: () => {imageController.pickImageFromGallery()},
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: const BorderSide(
                        color: Colors.white,
                      )),
                  child: Column(
                    children: [
                      const Icon(
                        Icons.cloud_upload_outlined,
                        color: Colors.white,
                        size: 50,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "อัปโหลดรูปภาพ",
                          style: GoogleFonts.prompt(
                            textStyle: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "หรือ",
                    style: GoogleFonts.prompt(
                      textStyle: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 100,

                  //Take an image from camera button
                  child: MaterialButton(
                    onPressed: () => {
                      imageController.pickImageFromCamera()
                    },
                    color: Colors.pink,
                    padding: const EdgeInsets.all(8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: const BorderSide(
                          color: Colors.pink,
                        )),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.camera_alt_rounded,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "ถ่ายรูป",
                          style: GoogleFonts.prompt(
                            textStyle: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

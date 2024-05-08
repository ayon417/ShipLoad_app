import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:shipload_app/core/core.dart';
import 'package:shipload_app/utils/utils.dart';

//setter getter for uploadfile response
String _imgUrl = "";
String get imgUrl => _imgUrl;
set imgUrl(String value) => _imgUrl = value;

Future<File?> openPickImageModalSheet(
  BuildContext context,
) async {
  File? file;

  await showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      decoration: const BoxDecoration(
        color: kWhite,
      ),
      height: 238,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.only(left: AppSizes.p16, top: AppSizes.p16),
            child: Text(
              "Choose From",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // SizedBox(
          //   height: kWidgetSPadding,
          // ),
          MaterialButton(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onPressed: () async {
              await pickImage(ImageSource.camera).then((image) async {
                if (image == null) {
                  // _snackbarService.showSnackbar(
                  //     message: "Image capture failed");
                } else {
                  file = image;
                  // file = image;
                  imgUrl = await uploadFile(file!);
                }
              });
              Navigator.pop(context);
            },
            child: Row(
              children: [
                const SizedBox(width: AppSizes.p16),
                const Icon(Icons.camera_alt),
                const SizedBox(width: AppSizes.p16),
                Text(
                  "Camera",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontSize: 16, color: kBlack),
                ),
              ],
            ),
          ),
          MaterialButton(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onPressed: () async {
              await pickImage(ImageSource.gallery).then((image) async {
                if (image == null) {
                  // _snackbarService.showSnackbar(
                  //     message: "Image capture failed");
                } else {
                  file = image;
                  imgUrl = await uploadFile(file!);
                  // file = image;
                }
              });
              Navigator.pop(context);
            },
            child: Row(
              children: [
                const SizedBox(width: AppSizes.p16),
                const Icon(Icons.image),
                const SizedBox(width: AppSizes.p16),
                Text(
                  "Gallery",
                  style: Theme.of(context)
                      .textTheme
                      .bodyText1
                      ?.copyWith(fontSize: 16, color: kBlack),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: AppSizes.p16,
          ),
        ],
      ),
    ),
  );

  Uint8List? testunit = await file?.readAsBytes();
  // print("Actual file size in byte==" + testunit?.lengthInBytes.toString());
  if (testunit!.lengthInBytes >= 500000) {
    // print("=====ddd $quality");
    // String test = quality.toStringAsFixed(0);
    // int imgQuality = int.parse(test);
    // Uint8List uint8File = await testComporessList(file, 50);
    // print("==After compress 2mb to 6mb" + uint8File.lengthInBytes.toString());
    // print("==File path " + File.fromRawPath(uint8File).toString());
    // return File.fromRawPath(uint8File);
    print("-----$file");
    return file;
    // return compressFile(file, quality);
  } else {
    return file;
  }

  // return file;
}

Future<File?> openPickVideoModalSheet(BuildContext context) async {
  File? file;
  await showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      height: 200.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          const Text(
            "Pick a Video",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: primaryColor,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          MaterialButton(
            child: const Text(
              "Use camera",
            ),
            onPressed: () async {
              await pickVideo(ImageSource.camera).then((video) {
                if (video == null) {
                  // _snackbarService.showSnackbar(
                  //     message: "Image capture failed");
                } else {
                  file = video;
                }
              });
              Navigator.pop(context);
            },
          ),
          MaterialButton(
            child: const Text(
              "Use Gallery",
            ),
            onPressed: () async {
              await pickVideo(ImageSource.gallery).then((video) {
                if (video == null) {
                  // _snackbarService.showSnackbar(
                  //     message: "Image capture failed");
                } else {
                  file = video;
                }
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
  );
  return file;
}

Future<File?> pickImage(
  ImageSource source, {
  CameraDevice preferredCameraDevice = CameraDevice.rear,
}) async {
  // SnackbarService _snackbarService = locator<SnackbarService>();

  // ignore: deprecated_member_use
  XFile? imagePickedFile = await ImagePicker().pickImage(
    source: source,
    preferredCameraDevice: preferredCameraDevice,
    imageQuality: 50,
    maxHeight: 1280,
    maxWidth: 960,
  );
  if (imagePickedFile != null) {
    // Uint8List uint8File =
    //     await testComporessList(File(imagePickedFile.path), 50);
    // Uint8List testunit = await imagePickedFile.readAsBytes();
    // print("== Before compress" + testunit.lengthInBytes.toString());
    // print("== After compress" + uint8File.lengthInBytes.toString());

    // final tempDir = await getTemporaryDirectory();
    // final ffile = await new File('${tempDir.path}/image.jpg').create();
    // ffile.writeAsBytesSync(uint8File);
    // if (await File(imagePickedFile.path).length() >= 2097152)
    //   return _snackbarService.showCustomSnackBar(
    //       message: "The File may not be greater than 2 MB.");
    // else
    // print("imagepath " + imagePickedFile.path);
    return File(imagePickedFile.path);

    // print("==Non compress image" + File(imagePickedFile.path).toString());
    // return File.fromRawPath(uint8File);
  } else {
    return null;
  }
}

// Future<File> compressFile(File file, double qlt) async {
//   final filePath = file.absolute.path;
//   // Create output file path
//   // eg:- "Volume/VM/abcd_out.jpeg"
//   final lastIndex = filePath.lastIndexOf(new RegExp(r'.jp'));
//   final splitted = filePath.substring(0, (lastIndex));
//   final outPath = "${splitted}_out${filePath.substring(lastIndex)}";
//   var result = await FlutterImageCompress.compressAndGetFile(
//     file.absolute.path,
//     outPath,
//     quality: qlt.toInt(),
//   );
//   print("Before==" + file.lengthSync().toString());
//   print("After==" + result.lengthSync().toString());
//   return result;
// }

// Future<Uint8List> testComporessList(File file, int quality) async {
//   var result = await FlutterImageCompress.compressWithFile(
//     file.path,
//     minHeight: 300,
//     minWidth: 300,
//     quality: quality,
//   );
//   print('compressedimagesize: ${result.lengthInBytes}-${result.length}');
//   return result;
// }

Future<File?> pickVideo(ImageSource source) async {
  // ignore: prefer_final_locals
  XFile? imagePickedFile = await ImagePicker()
      .pickVideo(source: source, maxDuration: const Duration(seconds: 30));
  if (imagePickedFile != null) {
    return File(imagePickedFile.path);
  } else {
    return null;
  }
}

Future<String> uploadFile(File file) async {
  final request = http.MultipartRequest(
    'POST',
    Uri.parse("${AppConstants.baseUrl}/users/upload/file"),
  );

  // Add the file to the request
  final fileStream = http.ByteStream(file.openRead());
  final length = await file.length();
  final multipartFile = http.MultipartFile(
    'file',
    fileStream,
    length,
    filename: file.path.split('/').last,
  );
  request.files.add(multipartFile);

  // Send the request
  final response = await request.send();

  // Check the response status
  if (response.statusCode == 200) {
    final responseBody = await response.stream.bytesToString();

    // Parse the response as JSON
    final jsonResponse = jsonDecode(responseBody);

    // Extract the image URL from the response
    final imageUrl = jsonResponse['file'];

    Logger.write(response.toString());
    return imageUrl;
  } else {
    print('File upload failed with status: ${response.statusCode}');
    return "";
  }
}

UploadResponse uploadResponseFromJson(String str) =>
    UploadResponse.fromJson(json.decode(str));

String uploadResponseToJson(UploadResponse data) => json.encode(data.toJson());

class UploadResponse {
  int code;
  String message;
  bool isSuccess;
  String file;

  UploadResponse({
    required this.code,
    required this.message,
    required this.isSuccess,
    required this.file,
  });

  factory UploadResponse.fromJson(Map<String, dynamic> json) => UploadResponse(
        code: json["code"],
        message: json["message"],
        isSuccess: json["isSuccess"],
        file: json["file"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "isSuccess": isSuccess,
        "file": file,
      };
}

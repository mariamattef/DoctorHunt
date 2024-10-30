mixin PngAssets {
  static const String pngAssets = "assets/images/";
}

mixin SvgAssets {
  static const String svgAssets = "assets/assetsvg/";
}

mixin VideoAssets {
  static const String videoAssets = "assets/videos/";
}

// assets\images\medical_records.png
class AppAssets with PngAssets, SvgAssets, VideoAssets {
  // Image PNG
//   static const String adsImage = "${PngAssets.pngAssets}ads.png";

  // Icons SVG
  static const String assetgoogle = "${SvgAssets.svgAssets}google.svg";
  static const String assetfacebook = "${SvgAssets.svgAssets}facebook.svg";
  static const String bg = "${PngAssets.pngAssets}bg.png";
  static const String logo = '${PngAssets.pngAssets}logo.png';
  static const String onBoarding1 = '${PngAssets.pngAssets}image_1.png';
  static const String onBoarding2 = '${PngAssets.pngAssets}image_2.png';
  static const String medicalRecords =
      '${PngAssets.pngAssets}medical_records.png';
  static const String onBoarding3 = '${PngAssets.pngAssets}image_3.png';
  static const String assethome = "${SvgAssets.svgAssets}Group 1.svg";
  static const String assetheart = "${SvgAssets.svgAssets}Group 2.svg";
  static const String assetbook = "${SvgAssets.svgAssets}Group 3.svg";
  static const String assetchat = "${SvgAssets.svgAssets}Group 4.svg";

  // Video Assets
//   static const String testOnBoardingVideo =
//       "${VideoAssets.videoAssets}test.mp4";
}

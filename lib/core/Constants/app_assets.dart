mixin PngAssets {
  static const String pngAssets = "assets/images/";
}

mixin SvgAssets {
  static const String svgAssets = "assets/assetsvg/";
}

mixin VideoAssets {
  static const String videoAssets = "assets/videos/";
}

class AppAssets with PngAssets, SvgAssets, VideoAssets {
  // Image PNG
//   static const String adsImage = "${PngAssets.pngAssets}ads.png";

  // Icons SVG
  static const String assetgoogle = "${SvgAssets.svgAssets}google.svg";
  static const String assetfacebook = "${SvgAssets.svgAssets}facebook.svg";

  // Video Assets
//   static const String testOnBoardingVideo =
//       "${VideoAssets.videoAssets}test.mp4";
}

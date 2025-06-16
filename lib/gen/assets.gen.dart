/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class Assets {
  const Assets._();

  static const AssetGenImage back = AssetGenImage('assets/back.png');
  static const AssetGenImage buy1get1 = AssetGenImage('assets/buy1get1.jpg');
  static const AssetGenImage duration = AssetGenImage('assets/duration.png');
  static const AssetGenImage flixLogo = AssetGenImage('assets/flix_logo.png');
  static const AssetGenImage genre = AssetGenImage('assets/genre.png');
  static const AssetGenImage movieSelected = AssetGenImage(
    'assets/movie-selected.png',
  );
  static const AssetGenImage movie = AssetGenImage('assets/movie.png');
  static const AssetGenImage popcorn = AssetGenImage('assets/popcorn.jpg');
  static const AssetGenImage ppPlaceholder = AssetGenImage(
    'assets/pp-placeholder.png',
  );
  static const AssetGenImage profileSelected = AssetGenImage(
    'assets/profile-selected.png',
  );
  static const AssetGenImage profile = AssetGenImage('assets/profile.png');
  static const AssetGenImage star = AssetGenImage('assets/star.png');
  static const AssetGenImage ticketSelected = AssetGenImage(
    'assets/ticket-selected.png',
  );
  static const AssetGenImage ticket = AssetGenImage('assets/ticket.png');
  static const AssetGenImage topup = AssetGenImage('assets/topup.png');
  static const AssetGenImage wallet = AssetGenImage('assets/wallet.png');

  /// List of all assets
  static List<AssetGenImage> get values => [
    back,
    buy1get1,
    duration,
    flixLogo,
    genre,
    movieSelected,
    movie,
    popcorn,
    ppPlaceholder,
    profileSelected,
    profile,
    star,
    ticketSelected,
    ticket,
    topup,
    wallet,
  ];
}

class AssetGenImage {
  const AssetGenImage(this._assetName, {this.size, this.flavors = const {}});

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

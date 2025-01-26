import 'package:flutter/material.dart';

class ColorsApp {
  static var white = const Color(0xFFFFFFFF);
  static var stattrak = const Color(0xFFE88D09);
  static var souvenir = const Color(0xFFFFCA0B);

  static var linearConsumerOne = const Color(0xFFB0C3D9);
  static var linearConsumerTwo = const Color(0xFF8795A6);
  static var linearConsumerThree = const Color(0xFF5D6773);
  static var linearIndustrialOne = const Color(0xFF5E98D9);
  static var linearIndustrialTwo = const Color(0xFF4874A6);
  static var linearIndustrialThree = const Color(0xFF325173);
  static var linearMilspecOne = const Color(0xFF4B69FF);
  static var linearMilspecTwo = const Color(0xFF3C54CC);
  static var linearMilspecThree = const Color(0xFF2D3F99);
  static var linearRestrictedOne = const Color(0xFF8847FF);
  static var linearRestrictedTwo = const Color(0xFF7435E6);
  static var linearRestrictedThree = const Color(0xFF3E1192);
  static var linearClassifiedOne = const Color(0xFFD32CE6);
  static var linearClassifiedTwo = const Color(0xFFA821B8);
  static var linearClassifiedThree = const Color(0xFF831B8E);
  static var linearCovertOne = const Color(0xFFEB4B4B);
  static var linearCovertTwo = const Color(0xFFD14242);
  static var linearCovertThree = const Color(0xFFA32E2E);
}

List<Color> gradient(String baseColor) {
  switch (baseColor) {
    case '#b0c3d9':
      return [
        ColorsApp.linearConsumerOne,
        ColorsApp.linearConsumerTwo,
        ColorsApp.linearConsumerThree,
      ];
    case '#5e98d9':
      return [
        ColorsApp.linearIndustrialOne,
        ColorsApp.linearIndustrialTwo,
        ColorsApp.linearIndustrialThree,
      ];
    case '#4b69ff':
      return [
        ColorsApp.linearMilspecOne,
        ColorsApp.linearMilspecTwo,
        ColorsApp.linearMilspecThree,
      ];
    case '#8847ff':
      return [
        ColorsApp.linearRestrictedOne,
        ColorsApp.linearRestrictedTwo,
        ColorsApp.linearRestrictedThree,
      ];
    case '#d32ce6':
      return [
        ColorsApp.linearClassifiedOne,
        ColorsApp.linearClassifiedTwo,
        ColorsApp.linearClassifiedThree,
      ];
    case '#eb4b4b':
      return [
        ColorsApp.linearCovertOne,
        ColorsApp.linearCovertTwo,
        ColorsApp.linearCovertThree,
      ];
    default:
      return [ColorsApp.white];
  }
}

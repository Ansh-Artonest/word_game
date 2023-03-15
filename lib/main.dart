import 'dart:developer';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:english_words/english_words.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flame/components.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flame/input.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:word_game/Game/hard_level_creation.dart';
import 'package:word_game/Game/medium_two_word_game_screen.dart';
import 'package:word_game/Game/responsive_hard_level.dart';
import 'package:word_game/common_textfield.dart';
import 'package:word_game/custom_keyboard.dart';
import 'package:word_game/game_introScreen.dart';
import 'package:word_game/splash_screen.dart';

import 'dart:math' as math;

import 'package:flutter/services.dart';
import 'Game/easy_wordGame_main_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(name: "word-game",options: const FirebaseOptions(apiKey: "AIzaSyAf1pm-skzMuQkiMWSZrKM2LG0V37H6B3A",appId: "1:899147076964:android:7b04a10a5e8a53d5445671", messagingSenderId: "", projectId: "word-game-7df91"));
      Flame.device.fullScreen();
  nouns
      .take(50)
      .first;
  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // home: Scaffold(
      //   body: GameWidget(
      //       game: HardWordGame(0),
      //      ),
      // ),
      home: Scaffold(
        body: SplashScreen(),
      ),
    ),
  );
}

// if(!(dataSnapshot.child("Users").child(busNum).exists()))
// body: SplashScreen(),

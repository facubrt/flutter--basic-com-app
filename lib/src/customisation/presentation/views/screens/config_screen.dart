import 'package:basiccom/core/constants/constants.dart';
import 'package:basiccom/src/customisation/presentation/provider/customisation_controller.dart';
import 'package:basiccom/src/voice/presentation/provider/voice_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ConfigScreen extends ConsumerWidget {
  const ConfigScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appParameters = ref.watch(customisationControllerProvider);
    final voiceParameters = ref.watch(voiceControllerProvider);
    Size mq = MediaQuery.of(context).size;
    Orientation orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: appParameters.highContrast ? Colors.black : Colors.white,
      appBar: AppBar(
        title: const Text(
          CONFIG_SCREEN_TITLE,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: const Color(0xFF003A70),
        centerTitle: true,
        elevation: 0,
      ),
      body: NotificationListener<OverscrollIndicatorNotification>(
        onNotification: (overScroll) {
          overScroll.disallowIndicator();
          return true;
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        VOLUME_OPTION_TITLE,
                        style: TextStyle(
                          fontSize: orientation == Orientation.portrait
                              ? mq.width * appParameters.factorSize
                              : mq.height * appParameters.factorSize,
                          fontWeight: FontWeight.bold,
                          color: appParameters.highContrast
                              ? Colors.white
                              : const Color(0xFF003A70),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          //ref.read(configProvider.notifier).setVolume(-0.05);
                        },
                        borderRadius: BorderRadius.circular(500),
                        child: Container(
                          alignment: Alignment.center,
                          width: orientation == Orientation.portrait
                              ? mq.width * 0.1
                              : mq.height * 0.1,
                          height: orientation == Orientation.portrait
                              ? mq.width * 0.1
                              : mq.height * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                            color: voiceParameters.volume > 0.05
                                ? appParameters.highContrast
                                    ? Colors.white
                                    : const Color(0xFF003A70)
                                : appParameters.highContrast
                                    ? Colors.black
                                    : Colors.grey,
                          ),
                          child: Icon(
                            Icons.chevron_left,
                            color: appParameters.highContrast
                                ? Colors.black
                                : Colors.white,
                            size: orientation == Orientation.portrait
                                ? mq.width * 0.06
                                : mq.height * 0.06,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: orientation == Orientation.portrait
                            ? mq.width * 0.3
                            : mq.height * 0.3,
                        child: Text(
                          '${(voiceParameters.volume * 100).round()}',
                          style: TextStyle(
                            fontSize: orientation == Orientation.portrait
                                ? mq.width * appParameters.factorSize
                                : mq.height * appParameters.factorSize,
                            fontWeight: FontWeight.normal,
                            color: appParameters.highContrast
                                ? Colors.white
                                : const Color(0xFF003A70),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          //ref.read(configProvider.notifier).setVolume(0.05);
                        },
                        borderRadius: BorderRadius.circular(500),
                        child: Container(
                          alignment: Alignment.center,
                          width: orientation == Orientation.portrait
                              ? mq.width * 0.1
                              : mq.height * 0.1,
                          height: orientation == Orientation.portrait
                              ? mq.width * 0.1
                              : mq.height * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                            color: voiceParameters.volume < 1
                                ? appParameters.highContrast
                                    ? Colors.white
                                    : const Color(0xFF003A70)
                                : appParameters.highContrast
                                    ? Colors.black
                                    : Colors.grey,
                          ),
                          child: Icon(
                            Icons.chevron_right,
                            color: appParameters.highContrast
                                ? Colors.black
                                : Colors.white,
                            size: orientation == Orientation.portrait
                                ? mq.width * 0.06
                                : mq.height * 0.06,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: orientation == Orientation.portrait
                      ? mq.width * 0.04
                      : mq.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        RATE_OPTION_TITLE,
                        style: TextStyle(
                          fontSize: orientation == Orientation.portrait
                              ? mq.width * appParameters.factorSize
                              : mq.height * appParameters.factorSize,
                          fontWeight: FontWeight.bold,
                          color: appParameters.highContrast
                              ? Colors.white
                              : const Color(0xFF003A70),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          //ref.read(configProvider.notifier).setRate(-0.05);
                        },
                        borderRadius: BorderRadius.circular(500),
                        child: Container(
                          alignment: Alignment.center,
                          width: orientation == Orientation.portrait
                              ? mq.width * 0.1
                              : mq.height * 0.1,
                          height: orientation == Orientation.portrait
                              ? mq.width * 0.1
                              : mq.height * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                            color: voiceParameters.rate > 0.05
                                ? appParameters.highContrast
                                    ? Colors.white
                                    : const Color(0xFF003A70)
                                : appParameters.highContrast
                                    ? Colors.black
                                    : Colors.grey,
                          ),
                          child: Icon(
                            Icons.chevron_left,
                            color: appParameters.highContrast
                                ? Colors.black
                                : Colors.white,
                            size: orientation == Orientation.portrait
                                ? mq.width * 0.06
                                : mq.height * 0.06,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: orientation == Orientation.portrait
                            ? mq.width * 0.3
                            : mq.height * 0.3,
                        child: Text(
                          '${(voiceParameters.rate * 100).round()}',
                          style: TextStyle(
                            fontSize: orientation == Orientation.portrait
                                ? mq.width * appParameters.factorSize
                                : mq.height * appParameters.factorSize,
                            fontWeight: FontWeight.normal,
                            color: appParameters.highContrast
                                ? Colors.white
                                : const Color(0xFF003A70),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          //ref.read(configProvider.notifier).setRate(0.05);
                        },
                        borderRadius: BorderRadius.circular(500),
                        child: Container(
                          alignment: Alignment.center,
                          width: orientation == Orientation.portrait
                              ? mq.width * 0.1
                              : mq.height * 0.1,
                          height: orientation == Orientation.portrait
                              ? mq.width * 0.1
                              : mq.height * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                            color: voiceParameters.rate < 1
                                ? appParameters.highContrast
                                    ? Colors.white
                                    : const Color(0xFF003A70)
                                : appParameters.highContrast
                                    ? Colors.black
                                    : Colors.grey,
                          ),
                          child: Icon(
                            Icons.chevron_right,
                            color: appParameters.highContrast
                                ? Colors.black
                                : Colors.white,
                            size: orientation == Orientation.portrait
                                ? mq.width * 0.06
                                : mq.height * 0.06,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: orientation == Orientation.portrait
                      ? mq.width * 0.04
                      : mq.height * 0.04,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        PITCH_OPTION_TITLE,
                        style: TextStyle(
                          fontSize: orientation == Orientation.portrait
                              ? mq.width * appParameters.factorSize
                              : mq.height * appParameters.factorSize,
                          fontWeight: FontWeight.bold,
                          color: appParameters.highContrast
                              ? Colors.white
                              : const Color(0xFF003A70),
                        ),
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          //ref.read(configProvider.notifier).setPitch(-0.05);
                        },
                        borderRadius: BorderRadius.circular(500),
                        child: Container(
                          alignment: Alignment.center,
                          width: orientation == Orientation.portrait
                              ? mq.width * 0.1
                              : mq.height * 0.1,
                          height: orientation == Orientation.portrait
                              ? mq.width * 0.1
                              : mq.height * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                            color: voiceParameters.pitch > 0.05
                                ? appParameters.highContrast
                                    ? Colors.white
                                    : const Color(0xFF003A70)
                                : appParameters.highContrast
                                    ? Colors.black
                                    : Colors.grey,
                          ),
                          child: Icon(
                            Icons.chevron_left,
                            color: appParameters.highContrast
                                ? Colors.black
                                : Colors.white,
                            size: orientation == Orientation.portrait
                                ? mq.width * 0.06
                                : mq.height * 0.06,
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: orientation == Orientation.portrait
                            ? mq.width * 0.3
                            : mq.height * 0.3,
                        child: Text(
                          '${(voiceParameters.pitch * 100).round()}',
                          style: TextStyle(
                            fontSize: orientation == Orientation.portrait
                                ? mq.width * appParameters.factorSize
                                : mq.height * appParameters.factorSize,
                            fontWeight: FontWeight.normal,
                            color: appParameters.highContrast
                                ? Colors.white
                                : const Color(0xFF003A70),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          //ref.read(configProvider.notifier).setPitch(0.05);
                        },
                        borderRadius: BorderRadius.circular(500),
                        child: Container(
                          alignment: Alignment.center,
                          width: orientation == Orientation.portrait
                              ? mq.width * 0.1
                              : mq.height * 0.1,
                          height: orientation == Orientation.portrait
                              ? mq.width * 0.1
                              : mq.height * 0.1,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(500),
                            color: voiceParameters.pitch < 1
                                ? appParameters.highContrast
                                    ? Colors.white
                                    : const Color(0xFF003A70)
                                : appParameters.highContrast
                                    ? Colors.black
                                    : Colors.grey,
                          ),
                          child: Icon(
                            Icons.chevron_right,
                            color: appParameters.highContrast
                                ? Colors.black
                                : Colors.white,
                            size: orientation == Orientation.portrait
                                ? mq.width * 0.06
                                : mq.height * 0.06,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: orientation == Orientation.portrait
                      ? mq.width * 0.04
                      : mq.height * 0.04,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Material(
                    borderRadius: BorderRadius.circular(16),
                    color: appParameters.highContrast ? Colors.white : Colors.blue,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(16),
                      child: Container(
                        alignment: Alignment.center,
                        width: orientation == Orientation.portrait
                            ? mq.width * 0.6
                            : mq.height * 0.6,
                        height: orientation == Orientation.portrait
                            ? mq.width * 0.2
                            : mq.height * 0.2,
                        child: Text(
                          TEST_VOICE_BUTTON,
                          style: TextStyle(
                            fontSize: orientation == Orientation.portrait
                                ? mq.width * 0.68 * appParameters.factorSize
                                : mq.height * 0.68 * appParameters.factorSize,
                            fontWeight: FontWeight.bold,
                            color: appParameters.highContrast
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                      onTap: () {
                        ref.read(voiceControllerProvider.notifier).speak(text: TEST_VOICE_TEXT);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40.0),
                  child: Column(
                    children: [
                      Text(
                        CARD_STYLE_TITLE,
                        style: TextStyle(
                          fontSize: orientation == Orientation.portrait
                              ? mq.width * appParameters.factorSize
                              : mq.height * appParameters.factorSize,
                          fontWeight: FontWeight.bold,
                          color: appParameters.highContrast
                              ? Colors.white
                              : const Color(0xFF003A70),
                        ),
                      ),
                      SizedBox(
                        height: orientation == Orientation.portrait
                            ? mq.width * 0.04
                            : mq.height * 0.04,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Material(
                            borderRadius: BorderRadius.circular(16),
                            color: appParameters.cardStyle == TEXT_ONLY_CARD_STYLE
                                ? appParameters.highContrast
                                    ? Colors.white
                                    : Colors.blue
                                : appParameters.highContrast
                                    ? Colors.transparent
                                    : Colors.grey[400],
                            child: InkWell(
                              onTap: () {
                                ref.read(customisationControllerProvider.notifier).setCardStyle(cardStyle: TEXT_ONLY_CARD_STYLE);
                                
                              },
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        width: appParameters.highContrast ? 2 : 0,
                                        color: Colors.white)),
                                padding: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                child: Text(
                                  TEXT_ONLY_CARD_STYLE,
                                  style: TextStyle(
                                    color: appParameters.cardStyle == TEXT_ONLY_CARD_STYLE
                                        ? appParameters.highContrast
                                            ? Colors.black
                                            : Colors.white
                                        : Colors.white,
                                    fontSize:
                                        orientation == Orientation.portrait
                                            ? mq.width * appParameters.factorSize
                                            : mq.height * appParameters.factorSize,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: orientation == Orientation.portrait
                                ? mq.width * 0.02
                                : mq.height * 0.02,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(16),
                            color: appParameters.cardStyle == TEXT_AND_IMAGE_CARD_STYLE
                                ? appParameters.highContrast
                                    ? Colors.white
                                    : Colors.blue
                                : appParameters.highContrast
                                    ? Colors.transparent
                                    : Colors.grey[400],
                            child: InkWell(
                              onTap: () {
                                ref.read(customisationControllerProvider.notifier).setCardStyle(cardStyle: TEXT_AND_IMAGE_CARD_STYLE);
                                
                              },
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        width: appParameters.highContrast ? 2 : 0,
                                        color: Colors.white)),
                                padding: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                child: Text(
                                  TEXT_AND_IMAGE_CARD_STYLE,
                                  style: TextStyle(
                                    color:
                                        appParameters.cardStyle == TEXT_AND_IMAGE_CARD_STYLE
                                            ? appParameters.highContrast
                                                ? Colors.black
                                                : Colors.white
                                            : Colors.white,
                                    fontSize:
                                        orientation == Orientation.portrait
                                            ? mq.width * appParameters.factorSize
                                            : mq.height * appParameters.factorSize,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: orientation == Orientation.portrait
                                ? mq.width * 0.02
                                : mq.height * 0.02,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(16),
                            color: appParameters.cardStyle == IMAGE_ONLY_CARD_STYLE
                                ? appParameters.highContrast
                                    ? Colors.white
                                    : Colors.blue
                                : appParameters.highContrast
                                    ? Colors.transparent
                                    : Colors.grey[400],
                            child: InkWell(
                              onTap: () {
                                ref.read(customisationControllerProvider.notifier).setCardStyle(cardStyle: IMAGE_ONLY_CARD_STYLE);
                              },
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        width: appParameters.highContrast ? 2 : 0,
                                        color: Colors.white)),
                                padding: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                child: Text(
                                  IMAGE_ONLY_CARD_STYLE,
                                  style: TextStyle(
                                    color: appParameters.cardStyle == IMAGE_ONLY_CARD_STYLE
                                        ? appParameters.highContrast
                                            ? Colors.black
                                            : Colors.white
                                        : Colors.white,
                                    fontSize:
                                        orientation == Orientation.portrait
                                            ? mq.width * appParameters.factorSize
                                            : mq.height * appParameters.factorSize,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      Text(
                        FACTOR_TEXT_TITLE,
                        style: TextStyle(
                          fontSize: orientation == Orientation.portrait
                              ? mq.width * appParameters.factorSize
                              : mq.height * appParameters.factorSize,
                          fontWeight: FontWeight.bold,
                          color: appParameters.highContrast
                              ? Colors.white
                              : const Color(0xFF003A70),
                        ),
                      ),
                      SizedBox(
                        height: orientation == Orientation.portrait
                            ? mq.width * 0.04
                            : mq.height * 0.04,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Material(
                            borderRadius: BorderRadius.circular(16),
                            color: appParameters.factorText == FACTOR_TEXT_SMALL
                                ? appParameters.highContrast
                                    ? Colors.white
                                    : Colors.blue
                                : appParameters.highContrast
                                    ? Colors.transparent
                                    : Colors.grey[400],
                            child: InkWell(
                              onTap: () {
                                ref.read(customisationControllerProvider.notifier).setFactorText(factorText: FACTOR_TEXT_SMALL);
                              },
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        width: appParameters.highContrast ? 2 : 0,
                                        color: Colors.white)),
                                padding: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                child: Text(
                                  FACTOR_TEXT_SMALL,
                                  style: TextStyle(
                                    color: appParameters.factorText == FACTOR_TEXT_SMALL
                                        ? appParameters.highContrast
                                            ? Colors.black
                                            : Colors.white
                                        : Colors.white,
                                    fontSize:
                                        orientation == Orientation.portrait
                                            ? mq.width * appParameters.factorSize
                                            : mq.height * appParameters.factorSize,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: orientation == Orientation.portrait
                                ? mq.width * 0.02
                                : mq.height * 0.02,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(16),
                            color: appParameters.factorText == FACTOR_TEXT_DEFAULT
                                ? appParameters.highContrast
                                    ? Colors.white
                                    : Colors.blue
                                : appParameters.highContrast
                                    ? Colors.transparent
                                    : Colors.grey[400],
                            child: InkWell(
                              onTap: () {
                                ref.read(customisationControllerProvider.notifier).setFactorText(factorText: FACTOR_TEXT_DEFAULT);
                              },
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        width: appParameters.highContrast ? 2 : 0,
                                        color: Colors.white)),
                                padding: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                child: Text(
                                  FACTOR_TEXT_DEFAULT,
                                  style: TextStyle(
                                    color: appParameters.factorText ==
                                            FACTOR_TEXT_DEFAULT
                                        ? appParameters.highContrast
                                            ? Colors.black
                                            : Colors.white
                                        : Colors.white,
                                    fontSize:
                                        orientation == Orientation.portrait
                                            ? mq.width * appParameters.factorSize
                                            : mq.height * appParameters.factorSize,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: orientation == Orientation.portrait
                                ? mq.width * 0.02
                                : mq.height * 0.02,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(16),
                            color: appParameters.factorText == FACTOR_TEXT_BIG
                                ? appParameters.highContrast
                                    ? Colors.white
                                    : Colors.blue
                                : appParameters.highContrast
                                    ? Colors.transparent
                                    : Colors.grey[400],
                            child: InkWell(
                              onTap: () {
                                ref.read(customisationControllerProvider.notifier).setFactorText(factorText: FACTOR_TEXT_BIG);
                              },
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        width: appParameters.highContrast ? 2 : 0,
                                        color: Colors.white)),
                                padding: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                child: Text(
                                  FACTOR_TEXT_BIG,
                                  style: TextStyle(
                                    color: appParameters.factorText == FACTOR_TEXT_BIG
                                        ? appParameters.highContrast
                                            ? Colors.black
                                            : Colors.white
                                        : Colors.white,
                                    fontSize:
                                        orientation == Orientation.portrait
                                            ? mq.width * appParameters.factorSize
                                            : mq.height * appParameters.factorSize,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
                  child: Column(
                    children: [
                      Text(
                        DESIGN_TITLE,
                        style: TextStyle(
                          fontSize: orientation == Orientation.portrait
                              ? mq.width * appParameters.factorSize
                              : mq.height * appParameters.factorSize,
                          fontWeight: FontWeight.bold,
                          color: appParameters.highContrast
                              ? Colors.white
                              : const Color(0xFF003A70),
                        ),
                      ),
                      SizedBox(
                        height: orientation == Orientation.portrait
                            ? mq.width * 0.04
                            : mq.height * 0.04,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Material(
                            borderRadius: BorderRadius.circular(16),
                            color: appParameters.highContrast
                                ? appParameters.highContrast
                                    ? Colors.transparent
                                    : Colors.grey[400]
                                : appParameters.highContrast
                                    ? Colors.white
                                    : Colors.blue,
                            child: InkWell(
                              onTap: () {
                                ref.read(customisationControllerProvider.notifier).setHighContrast(highContrast: false);
                              },
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        width: appParameters.highContrast ? 2 : 0,
                                        color: Colors.white)),
                                padding: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                child: Text(
                                  DEFAULT_DESIGN_OPTION,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        orientation == Orientation.portrait
                                            ? mq.width * appParameters.factorSize
                                            : mq.height * appParameters.factorSize,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: orientation == Orientation.portrait
                                ? mq.width * 0.02
                                : mq.height * 0.02,
                          ),
                          Material(
                            borderRadius: BorderRadius.circular(16),
                            color: appParameters.highContrast
                                ? appParameters.highContrast
                                    ? Colors.white
                                    : Colors.blue
                                : appParameters.highContrast
                                    ? Colors.transparent
                                    : Colors.grey[400],
                            child: InkWell(
                              onTap: () {
                               ref.read(customisationControllerProvider.notifier).setHighContrast(highContrast: true);
                              },
                              borderRadius: BorderRadius.circular(16),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(
                                        width: appParameters.highContrast ? 2 : 0,
                                        color: Colors.white)),
                                padding: const EdgeInsets.all(20),
                                alignment: Alignment.center,
                                child: Text(
                                  HIGH_CONTRAST_OPTION,
                                  style: TextStyle(
                                    color: appParameters.highContrast
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize:
                                        orientation == Orientation.portrait
                                            ? mq.width * appParameters.factorSize
                                            : mq.height * appParameters.factorSize,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: orientation == Orientation.portrait
                      ? mq.width * 0.08
                      : mq.height * 0.08,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Text(
                        DEVELOPED_BY,
                        style: TextStyle(
                          fontSize: orientation == Orientation.portrait
                              ? mq.width * 0.6 * appParameters.factorSize
                              : mq.height * 0.6 * appParameters.factorSize,
                          color: appParameters.highContrast
                              ? Colors.white
                              : const Color(0xFF003A70),
                        ),
                      ),
                      SizedBox(
                        height: orientation == Orientation.portrait
                            ? mq.width * 0.02
                            : mq.height * 0.02,
                      ),
                      Text(
                        AUTHOR_APP,
                        style: TextStyle(
                          fontSize: orientation == Orientation.portrait
                              ? mq.width * 0.8 * appParameters.factorSize
                              : mq.height * 0.8 * appParameters.factorSize,
                          color: appParameters.highContrast
                              ? Colors.white
                              : const Color(0xFF003A70),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(
                        height: orientation == Orientation.portrait
                            ? mq.width * 0.08
                            : mq.height * 0.08,
                      ),
                      SizedBox(
                        height: orientation == Orientation.portrait
                            ? mq.width * 0.08
                            : mq.height * 0.08,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
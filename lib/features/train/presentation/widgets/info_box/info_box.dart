import 'package:flutter/material.dart';

/// A Info Box with body text and a [OutlinedButton].
/// If [iconData] is null then the [OutlinedButton] will not display an icon.
/// [buttonText] is the text displayed on the [OutlinedButton].
/// [bodyText] is the text displayed on the body of the [InfoBox].
/// if [bigHeight] or [smallHeight] is null then the default height of the [InfoBox] will be used.
/// The default height is the screen height / 5 if the screen width is bigger then 375.
/// If the screen width is smaller then 375 then the default height is the screen height / 4.
class InfoBox extends StatelessWidget {
  const InfoBox(
      {Key? key,
      required this.bodyText,
      required this.buttonText,
      this.bigHeight,
      this.smallHeight,
      this.iconData})
      : super(key: key);

  final String bodyText;
  final String buttonText;
  final IconData? iconData;
  final double? bigHeight;
  final double? smallHeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      child: Card(child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 375) {
            return _buildBigContainer(context);
          } else {
            return _buildSmallContainer(context);
          }
        },
      )),
    );
  }

  Widget _buildBigContainer(BuildContext context) {
    return Container(
      height: bigHeight ?? MediaQuery.of(context).size.height / 5,
      padding: const EdgeInsets.all(16),
      child:
          _Body(bodyText: bodyText, buttonText: buttonText, iconData: iconData),
    );
  }

  Widget _buildSmallContainer(BuildContext context) {
    return Container(
      height: smallHeight ?? MediaQuery.of(context).size.height / 4,
      padding: const EdgeInsets.all(16),
      child:
          _Body(bodyText: bodyText, buttonText: buttonText, iconData: iconData),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
    required this.bodyText,
    required this.buttonText,
    this.iconData,
  }) : super(key: key);

  final String bodyText;
  final String buttonText;
  final IconData? iconData;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(
          bodyText,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: Theme.of(context).colorScheme.onPrimaryContainer),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        OutlinedButton(
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  buttonText,
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                iconData != null ? const SizedBox(width: 8) : const SizedBox(),
                iconData != null
                    ? Icon(
                        iconData,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      )
                    : const SizedBox(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';

PopupMenuButton<dynamic> popupDirectionMenu() {
  return PopupMenuButton(
    child: const Icon(
      FontAwesome.ellipsis,
      color: Colors.white,
    ),
    itemBuilder: (context) {
      return <PopupMenuEntry>[
        PopupMenuItem(
          child: Transform.rotate(
            angle: -math.pi / 4,
            child: const Icon(
              FontAwesomeIcons.arrowUp,
            ),
          ),
        ),
        const PopupMenuItem(child: Icon(FontAwesomeIcons.arrowUp)),
        PopupMenuItem(
          child: Transform.rotate(
            angle: math.pi / 4,
            child: const Icon(
              FontAwesomeIcons.arrowUp,
            ),
          ),
        ),
        const PopupMenuItem(child: Icon(FontAwesomeIcons.arrowLeft)),
        const PopupMenuItem(child: Icon(FontAwesomeIcons.arrowRight)),
        PopupMenuItem(
          child: Transform.rotate(
            angle: -math.pi / 1.5,
            child: const Icon(
              FontAwesomeIcons.arrowUp,
            ),
          ),
        ),
        const PopupMenuItem(child: Icon(FontAwesomeIcons.arrowDown)),
        PopupMenuItem(
          child: Transform.rotate(
            angle: math.pi / 1.5,
            child: const Icon(
              FontAwesomeIcons.arrowUp,
            ),
          ),
        ),
      ];
    },
  );
}

ReorderableListView colorListTile(
  BuildContext context,
  List<Color> colors,
  Function(int oldIndex, int newIndex) changed,
  Function(Color picked) onAdd,
  Function(int index) onDelete,
) {
  return ReorderableListView.builder(
    header: Row(
      children: [
        const UIText('Colors Order', style: UITextStyles.mainTitle),
        const Spacer(),
        IconButton(
          style: UITextButtonStyles.simpleButton,
          onPressed: () async {
            final res = await showColorPicker(context);
            if (res is Color) onAdd(res);
          },
          icon: const Icon(
            FontAwesomeIcons.palette,
            color: AppColorScheme.primaryColor,
          ),
        ),
      ],
    ),
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    proxyDecorator: (child, index, animation) {
      return AnimatedBuilder(
        animation: animation,
        builder: (BuildContext context, Widget? child) {
          return Material(
            color: Colors.transparent,
            child: child,
          );
        },
        child: child,
      );
    },
    itemBuilder: (context, i) {
      final grayscale = (0.299 * colors[i].red) +
          (0.587 * colors[i].green) +
          (0.114 * colors[i].blue);
      return Slidable(
        key: Key('$i'),
        endActionPane: ActionPane(
          motion: const StretchMotion(),
          children: [
            SlidableAction(
              flex: 2,
              onPressed: (c) {
                if (colors.length > 2) onDelete(i);
              },
              borderRadius: BorderRadius.circular(33),
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              icon: FontAwesomeIcons.trash,
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(33),
            ),
            color: colors[i],
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: Icon(
                FontAwesomeIcons.bars,
                color: grayscale > 128 ? Colors.black : Colors.white,
              ),
            ),
          ),
        ),
      );
    },
    itemCount: colors.length,
    onReorder: changed,
  );
}

// Alignment resolveStartAlignmentOfDirection(GradientDirection direction){
//   switch (direction) {

//     case GradientDirection.TOPLEFT:
//       return Alignment.bottomRight;
//     case GradientDirection.TOPCENTER:
//     case GradientDirection.TOPRIGHT:
//       // TODO: Handle this case.
//       break;
//     case GradientDirection.CENTERLEFT:
//       // TODO: Handle this case.
//       break;
//     case GradientDirection.CENTER:
//       // TODO: Handle this case.
//       break;
//     case GradientDirection.CENTERRIGHT:
//       // TODO: Handle this case.
//       break;
//     case GradientDirection.BOTTOMLEFT:
//       // TODO: Handle this case.
//       break;
//     case GradientDirection.BOTTOMCENTER:
//       // TODO: Handle this case.
//       break;
//     case GradientDirection.BOTTOMRIGHT:
//       // TODO: Handle this case.
//       break;
//   }
// }
// Alignment resolveEndAlignment()

Future<dynamic> showColorPicker(BuildContext context) {
  var currentColor = const Color.fromRGBO(255, 0, 0, 1);
  return showDialog(
    context: context,
    builder: (c) => Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: AlertDialog(
            backgroundColor: Colors.black54,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(33)),
            content: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(33),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ColorPicker(
                        displayThumbColor: true,
                        pickerColor: currentColor,
                        onColorChanged: (c) {
                          currentColor = c;
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: UITextButtonStyles.simpleButton,
                      child:
                          const UIText('Cancel', style: UITextStyles.mainTitle),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(c).pop(currentColor);
                      },
                      style: UITextButtonStyles.simpleButton,
                      child: const UIText(
                        'Add Color',
                        style: UITextStyles.mainTitle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}

Future<bool?> showDeleteAccountDialog(BuildContext context) async {
  return showDialog<bool?>(
    context: context,
    builder: (context) {
      return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: AlertDialog(
          backgroundColor: AppColorScheme.cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const UIText(
            'Are you sure?',
            style: UITextStyles.headLine,
          ),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'I acknowledge that by deleting my account:',
                style: UITextStyles.mainTitle,
              ),
              Divider(
                color: Colors.tealAccent,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '1. I will lose access to all my data, including profile information, posts, progress, and any other information associated with this account.',
                style: UITextStyles.mainTitle,
              ),
              Divider(
                color: Colors.white60,
              ),
              Text(
                '2. I will no longer be able to log in or use any features or services associated with this account.',
                style: UITextStyles.mainTitle,
              ),
              Divider(
                color: Colors.white60,
              ),
              Text(
                '3. I understand that this action is irreversible and cannot be undone.',
                style: UITextStyles.mainTitle,
              ),
              Divider(
                color: Colors.white60,
              ),
              Text(
                '4. I am responsible for any consequences resulting from the deletion of my account.',
                style: UITextStyles.mainTitle,
              ),
              Divider(
                color: Colors.white60,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(false);
              },
              child: const UIText(
                'Cancel',
                style: UITextStyles.mainTitle,
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.32,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(true);
              },
              child: UIText(
                'Delete',
                style: UITextStyles.mainTitle.copyWith(
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}

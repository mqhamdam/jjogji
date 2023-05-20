import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jjogji/domain/user/user.dart';
import 'package:jjogji/presentation/screens/settings/widgets/linked_contact_type.dart';
import 'package:jjogji/presentation/styles/stylesheet.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkedContactTile extends StatelessWidget {
  const LinkedContactTile(
    this.linkedContact, {
    required this.onDelete,
    required this.onEdit,
    this.editMode = true,
    super.key,
  });

  final LinkedContact linkedContact;
  final bool editMode;
  final Function() onDelete;
  final Function() onEdit;

  @override
  Widget build(BuildContext context) {
    return Slidable(
      enabled: editMode,
      endActionPane: ActionPane(
        motion: const StretchMotion(),
        children: [
          SlidableAction(
            backgroundColor: Colors.blue,
            onPressed: (e) {
              onEdit();
            },
            icon: FontAwesomeIcons.pen,
          ),
          SlidableAction(
            backgroundColor: Colors.red,
            onPressed: (e) {
              onDelete();
            },
            icon: FontAwesomeIcons.trash,
          )
        ],
      ),
      child: ListTile(
        onTap: () async {
          final url = Uri.parse(linkedContact.url.getOrCrash());
          if (await canLaunchUrl(url)) {
            await launchUrl(url, mode: LaunchMode.externalApplication);
          } else {
            // can't launch url, there is some error
            throw "Could not launch $url";
          }
        },
        leading: CircleAvatar(
          backgroundColor: Colors.transparent,
          child: LinkedContactType(linkedContact.type),
        ),
        trailing: Icon(
          editMode ? FontAwesomeIcons.bars : FontAwesomeIcons.link,
          color: Colors.white,
        ),
        title: UIText(linkedContact.type.name, style: UITextStyles.mainTitle),
        subtitle: UIText(
          linkedContact.url.getOrCrash(),
          style: UITextStyles.subtitle,
        ),
      ),
    );
  }
}

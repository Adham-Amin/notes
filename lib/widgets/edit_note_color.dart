import 'package:flutter/material.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/color_item.dart';

class EditNoteColor extends StatefulWidget {
  const EditNoteColor({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColor> createState() => _EditNoteColor();
}

class _EditNoteColor extends State<EditNoteColor> {
  late int indexCurrent;

  List<Color> colorsList = [
    const Color(0XFF003049),
    const Color(0XFFd62828),
    const Color(0XFFf77f00),
    const Color(0XFFfcbf49),
    const Color(0XFFeae2b7),
  ];

  @override
  void initState() {
    indexCurrent = colorsList.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                indexCurrent = index;
                widget.note.color = colorsList[index].value;
                setState(() {});
              },
              child: Coloritem(
                color: colorsList[index],
                isActive: index == indexCurrent,
              ));
        },
      ),
    );
  }
}

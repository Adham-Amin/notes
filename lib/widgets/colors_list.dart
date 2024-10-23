
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/addNoteCubit/add_note_cubit.dart';
import 'package:notes/widgets/color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int indexCurrent = 0;

  List<Color> colorsList = [
    const Color(0XFF003049),
    const Color(0XFFd62828),
    const Color(0XFFf77f00),
    const Color(0XFFfcbf49),
    const Color(0XFFeae2b7),
  ];

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
                BlocProvider.of<AddNoteCubit>(context).color = colorsList[index];
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

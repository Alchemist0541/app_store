import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  final text;
  // ignore: prefer_typing_uninitialized_variables
  final checked;

  const Category({super.key, required this.text, required this.checked});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0, top: 10),
      child: SizedBox(
        child: Container(
          width: 80.0,
          decoration: BoxDecoration(
              gradient: checked
                  ? const LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topCenter,
                      colors: [
                        Color.fromARGB(255, 26, 44, 141),
                        Color.fromARGB(255, 22, 79, 102),
                      ],
                    )
                  : const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 163, 241, 255),
                        Color.fromARGB(255, 163, 241, 255),
                      ],
                    ),
              borderRadius: BorderRadius.circular(50)),
          child: Center(child: Text(text,style: TextStyle(color: checked ? Colors.white:Colors.black,fontSize: 16),)),
        ),
      ),
    );
  }
}

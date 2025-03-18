import 'package:flutter/material.dart';

class Story extends StatelessWidget {
  final String imageUrl;

  const Story({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 35,
              ),
              const SizedBox(
                width: 5,
              ),
              const Column(
                children: [
                  Text(
                    "vish patil",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                  Text("Neha kakkar ",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ))
                ],
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "4H",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.close))
            ],
          ),
          Row(children: [

          ],)
        ],
      ),
    );
  }
}

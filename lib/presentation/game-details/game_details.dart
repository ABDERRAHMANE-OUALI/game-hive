import 'package:cloud_storage/core/data.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class GameDetails extends StatelessWidget {
  final String artboard;
  const GameDetails({super.key, required this.artboard});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ColoredBox(
        color: const Color.fromARGB(255, 26, 27, 50),
        child: CustomScrollView(
          slivers: [
            SliverAppBar.large(
              expandedHeight: 400,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                  background: RiveAnimation.asset(
                "assets/file.riv",
                artboard: artboard,
                animations: const ["init"],
                fit: BoxFit.cover,
              )),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
              (context, index) => Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 18.0),
                child: Container(
                  height: 150,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(21)),
                      color: Colors.black),
                  padding: const EdgeInsets.all(12),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 38.0),
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            radius: 42,
                            child: RiveAnimation.asset(
                              "assets/skills.riv",
                              artboard: skills[index].artboardName,
                              animations: const ["init"],
                            ),
                          ),
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                skills[index].title,
                                style: const TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Text(
                                skills[index].main,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Flexible(
                                child: Text(
                                  skills[index].subTitle,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ]),
                ),
              ),
              childCount: 4,
            ))
          ],
        ),
      ),
    );
  }
}

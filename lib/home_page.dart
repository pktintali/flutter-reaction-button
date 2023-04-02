import 'package:flutter/material.dart';
import 'package:flutter_exp/reaction_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Posts'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Demo'),
                    ReactionButton(
                      initialReaction: getFakeInitialReaction(index),
                      onReactionChanged: (reaction) {
                        print(reaction.name);
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Reaction? getFakeInitialReaction(int index) {
    if (index % 5 == 0) {
      return Reaction.like;
    } else if (index % 7 == 0) {
      return Reaction.love;
    } else if (index % 9 == 0) {
      return Reaction.laugh;
    }
    return null;
  }
}

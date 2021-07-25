import 'package:flutter/material.dart';
import 'package:flutter_reaction_button/flutter_reaction_button.dart';

final defaultInitialReaction = Reaction(
  icon: Text('No raction'),
);

final reactions = [
  Reaction(
 //   title: _buildTitle('Happy'),
    previewIcon: _buildReactionsPreviewIcon('assets/images/happy.png'),
    icon: _buildReactionsIcon(
      'assets/images/happy.png',
     
    ),
  ),
  Reaction(
   // title: _buildTitle('Angry'),
    previewIcon: _buildReactionsPreviewIcon('assets/images/angry.png'),
    icon: _buildReactionsIcon(
      'assets/images/angry.png',
     
    ),
  ),
  Reaction(
  //  title: _buildTitle('In love'),
    previewIcon: _buildReactionsPreviewIcon('assets/images/in-love.png'),
    icon: _buildReactionsIcon(
      'assets/images/in-love.png',
    
    ),
  ),
  Reaction(
   // title: _buildTitle('Sad'),
    previewIcon: _buildReactionsPreviewIcon('assets/images/sad.png'),
    icon: _buildReactionsIcon(
      'assets/images/sad.png',

    ),
  ),
  Reaction(
   // title: _buildTitle('Surprised'),
    previewIcon: _buildReactionsPreviewIcon('assets/images/surprised.png'),
    icon: _buildReactionsIcon(
      'assets/images/surprised.png',

    ),
  ),
  Reaction(
   // title: _buildTitle('Mad'),
    previewIcon: _buildReactionsPreviewIcon('assets/images/mad.png'),
    icon: _buildReactionsIcon(
      'assets/images/mad.png',

    ),
  ),
];





Widget _buildReactionsPreviewIcon(String path) => Padding(
      padding: const EdgeInsets.symmetric(horizontal: 3.5, vertical: 5),
      child: Image.asset(path, height: 40),
    );

Widget _buildIcon(String path) => Image.asset(
      path,
      height: 30,
      width: 30,
    );

Widget _buildReactionsIcon(String path) => Container(
      color: Colors.transparent,
      child: Row(
        children: <Widget>[
          Image.asset(path, height: 20),
          const SizedBox(width: 5),
          
        ],
      ),
    );

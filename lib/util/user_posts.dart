import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  const UserPosts({Key? key, required this.name}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    //profile photo
                    Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          shape: BoxShape.circle,
                        )),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      name,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                const Icon(Icons.menu)
              ],
            )),
        Container(
          height: 400,
          color: Colors.grey[300],
        ),
        //below post
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  Icon(Icons.favorite),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(Icons.chat_bubble_outline),
                  ),
                  Icon(Icons.share),
                ],
              ),
              const Icon(Icons.bookmark)
            ],
          ),
        ),
        //commnets
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: const [
              Text('Liked By'),
              Text(
                'Anu',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('and'),
              Text(
                'others',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        //Caption
        Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                    text: TextSpan(
                        style: const TextStyle(color: Colors.black),
                        children: [
                      TextSpan(
                        text: name,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const TextSpan(text: 'Go Goa Gone')
                    ])),
              ],
            ))
      ],
    );
  }
}

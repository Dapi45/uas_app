import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class recomFriends extends StatelessWidget {
  const recomFriends({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        clipBehavior: Clip.antiAlias,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: const Image(
                    image: NetworkImage(
                      'assets/icons/profile.png',
                    ),
                  ),
                ),
                const Positioned(
                  bottom: 10,
                  left: 50,
                  child: Text(
                    'user',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: SizedBox(
                    height: 36,
                    width: 36,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      child: const Icon(Ionicons.add_circle_outline),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

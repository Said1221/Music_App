import 'package:flutter/material.dart';

class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.deepPurple.shade800,
            Colors.deepPurple.shade200,
          ]
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Icon(Icons.grid_view_rounded),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://yt3.googleusercontent.com/uhPqqwcr6yIRYGbt_HWPeuqf8KmVRgdzdN9ZHzbKqbsl1S-j63C3PzHC-Bd3BjEwDlaRYQhXjw=s900-c-k-c0x00ffffff-no-rj'),
              ),
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Welcome' , style: Theme.of(context).textTheme.bodyLarge!.copyWith(color: Colors.white),),
                    Text('enjoy your favorites music' ,
                      style: Theme.of(context).
                      textTheme.headline6!.copyWith(color: Colors.white , fontWeight: FontWeight.bold),
                    ),

                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        fillColor: Colors.white,
                        filled: true,  // عشان يسمح بالتلوين
                        isDense: true,  //الحجم علي المقاس بالظبط
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),

                        )
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.deepPurple.shade800,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedIconTheme: IconThemeData(size: 35),
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home'
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline),
                label: 'Favorites'
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.play_circle_outline),
                label: 'Play'
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.people_alt_outlined),
                label: 'Profile'
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:uts_project_gita/profile.dart';
import 'package:simple_icons/simple_icons.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 20),
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 149, 33, 243),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      SimpleIcons.shopware,
                      size: 30,
                      color: Colors.white,
                    ),
                    GestureDetector(
                      child: const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/gita.jpg'),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Profile()));
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "Hai, Ekanata",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Apa yang ingin kamu cari..",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: const Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 15, right: 15),
                ),
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Outfit",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            child: ListView(
              padding: const EdgeInsets.only(left: 15),
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    buildCard(),
                    const SizedBox(
                      width: 12,
                      height: 12,
                    ),
                    buildCard(),
                    const SizedBox(
                      width: 12,
                    ),
                    buildCard(),
                    const SizedBox(
                      width: 12,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Outfit",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            child: ListView(
              padding: const EdgeInsets.only(left: 15),
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    buildCard(),
                    const SizedBox(
                      width: 12,
                      height: 15,
                    ),
                    buildCard(),
                    const SizedBox(
                      width: 12,
                    ),
                    buildCard(),
                    const SizedBox(
                      width: 12,
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 20),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Outfit",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 200,
            child: ListView(
              padding: const EdgeInsets.only(left: 15),
              scrollDirection: Axis.horizontal,
              children: [
                Row(
                  children: [
                    buildCard(),
                    const SizedBox(
                      width: 12,
                      height: 15,
                    ),
                    buildCard(),
                    const SizedBox(
                      width: 12,
                    ),
                    buildCard(),
                    const SizedBox(
                      width: 12,
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
        ],
      ),
    );
  }

  Widget buildCard() => Container(
        width: 200,
        height: 200,
        color: const Color.fromARGB(255, 174, 0, 255),
        child: Column(
          children: [
            Image.asset('assets/images/pashmina.png'),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Hijab Pashmina",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Text(
              "IDR 13.400",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white.withOpacity(0.8)),
            ),
          ],
        ),
      );
}

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:whatsapp/scr/global/globals.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int index = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade900,
        title: const Text(
          "Whatsapp",
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.search_rounded,
            color: Colors.white,
          ),
          SizedBox(
            width: 25,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.white,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
              color: Colors.teal.shade900,
              height: 55,
              width: double.infinity,
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        index = 0;
                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: index == 0
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 4,
                            ),
                          ),
                        ),
                        child: const Icon(
                          Icons.camera_alt_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onTap: () {
                        index = 1;
                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: index == 1
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                        child: const Text(
                          "CHATS",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onTap: () {
                        index = 2;
                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: index == 2
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                        child: const Text(
                          "STATUS",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: GestureDetector(
                      onTap: () {
                        index = 3;
                        setState(() {});
                      },
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: index == 3
                                  ? Colors.white
                                  : Colors.transparent,
                              width: 2,
                            ),
                          ),
                        ),
                        child: const Text(
                          "CALLS",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
          Visibility(
            visible: index == 1,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ...whatsappDetail.map(
                    (e) => Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            radius: 23,
                            backgroundImage: AssetImage(
                              e['image'],
                            ),
                          ),
                          title: Text(
                            e['name'],
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                          subtitle: Row(
                            children: [
                              const Icon(
                                Icons.done_all_outlined,
                                color: Colors.grey,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                e['message'],
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          trailing: Text(
                            e['time'],
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        const Divider(
                          thickness: 2,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: FloatingActionButton(
                        onPressed: () {},
                        child: const Icon(Icons.add),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Visibility(
            visible: index == 2,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(16),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 23,
                      backgroundImage: AssetImage("asstes/img 2.png"),
                    ),
                    title: Text(
                      "My Status",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(" Add Status "),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 35,
                  color: Colors.black26,
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "    Viewed Status",
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ),
                ...statusDetail.map(
                  (e) => Padding(
                    padding: const EdgeInsets.only(
                      left: 16,
                      bottom: 10,
                    ),
                    child: ListTile(
                      leading: CircleAvatar(
                        radius: 23,
                        backgroundImage: AssetImage(e["image"]),
                      ),
                      title: Text(
                        e['name'],
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      subtitle: Text(e['time']),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 35,
                  color: Colors.black26,
                  child: const Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "    Muted upadtes",
                          style: TextStyle(fontSize: 15),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: index == 3,
            child: Column(
              children: [
                ...callsDetail.map(
                  (e) => ListTile(
                    leading: CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage(
                          e['image'],
                        )),
                    title: Text(
                      e['name'],
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        const Icon(
                          Icons.arrow_outward,
                          color: Colors.green,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          e['time'],
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.settings_phone_rounded),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

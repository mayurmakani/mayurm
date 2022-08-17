import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({Key? key}) : super(key: key);

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  List<String> des = [
    "Lorem ipsum dolor sit amet,consectetur adipiscing elit."
        "Viverra at turpis aliquet quam anim semper blandit.",
    "Lorem ipsum dolor sit amet,consectetur adipiscing elit."
        "Viverra at turpis aliquet quam anim semper blandit."
  ];
  List<String> img = ["", "Rectangle 1534.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Community"),
        leading: const Icon(Icons.arrow_back_ios_outlined),
        actions: const [
          Icon(Icons.search),
          SizedBox(
            width: 13,
          ),
          Icon(Icons.add_alert),
        ],
      ),
      body: ListView.builder(
          itemCount: 2,
          itemBuilder: (_, i) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              color: Colors.blue,
                            ),
                            (i % 2 == 0)
                                ? const Text(
                                    "Mumbai",
                                    style: TextStyle(color: Colors.blue),
                                  )
                                : const Text("Agra",
                                    style: TextStyle(color: Colors.blue))
                          ],
                        ),
                      ),
                      const ListTile(
                        leading: CircleAvatar(),
                        title: Text("Sapna Yadav"),
                        subtitle: Text("10 minutes ago"),
                        trailing: Icon(Icons.more_vert),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(des[i]),
                      img[i] != ""
                          ? Image.asset("assets/image/${img[i]}")
                          : const SizedBox(
                              height: 10,
                            ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Himanshu, Neha and 4 other liked"),
                          Text("10 answer"),
                        ],
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.heart_broken,
                                  color: Colors.red,
                                ),
                                Text("Like"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.question_answer_outlined,
                                  color: Colors.red,
                                ),
                                Text("Answer"),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: const [
                                Icon(
                                  Icons.share,
                                  color: Colors.red,
                                ),
                                Text("Share"),
                              ],
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white38,
                        ),
                        child: const ListTile(
                          leading: CircleAvatar(),
                          title: Text("Ramesh"),
                          subtitle: Text(
                            "Lorem ipsum dolor sit amet,consectetur adipiscing elit."
                            "Viverra at turpis aliquet quam anim semper blandit.",
                            style: TextStyle(fontSize: 12),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Icon(Icons.heart_broken),
                          Text("Like"),
                          SizedBox(
                            width: 15,
                          ),
                          Text("Reply"),
                          SizedBox(
                            width: 15,
                          ),
                          Text("3 minute ago"),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "View all answers >",
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

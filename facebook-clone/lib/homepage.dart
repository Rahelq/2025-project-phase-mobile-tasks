//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: const FacebookHomePage(),
//     );
//   }
// }
//
// class FacebookHomePage extends StatelessWidget {
//   const FacebookHomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 0,
//         title: const Text(
//           'facebook',
//           style: TextStyle(
//             color: Colors.blue,
//             fontWeight: FontWeight.bold,
//             fontSize: 24,
//           ),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.search, color: Colors.black),
//           ),
//           IconButton(
//             onPressed: () {},
//             icon: const Icon(Icons.message, color: Colors.black),
//           ),
//         ],
//         bottom: PreferredSize(
//           preferredSize: const Size.fromHeight(50),
//           child: Padding(
//             padding: const EdgeInsets.only(bottom: 5),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 buildHeaderIcon(Icons.home, Colors.blue),
//                 buildHeaderIcon(Icons.people_outline, Colors.black),
//                 buildHeaderIcon(Icons.tv, Colors.black),
//                 buildHeaderIcon(Icons.person_outline, Colors.black),
//                 buildHeaderIcon(Icons.notifications_outlined, Colors.black),
//                 buildHeaderIcon(Icons.menu, Colors.black),
//               ],
//             ),
//           ),
//         ),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           // Top Section
//           Container(
//             color: Colors.white,
//             padding: const EdgeInsets.all(10),
//             child: Row(
//               children: [
//                 const CircleAvatar(
//                   radius: 20,
//                   backgroundColor: Colors.grey,
//                   child: Icon(Icons.person, color: Colors.white),
//                 ),
//                 const SizedBox(width: 10),
//                 Expanded(
//                   child: TextField(
//                     decoration: InputDecoration(
//                       contentPadding:
//                       const EdgeInsets.symmetric(horizontal: 10),
//                       hintText: "Write something here...",
//                       hintStyle: const TextStyle(color: Colors.black38),
//                       fillColor: Colors.grey[200],
//                       filled: true,
//                       border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20),
//                         borderSide: BorderSide.none,
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(width: 10),
//                 const Icon(Icons.edit, color: Colors.green, size: 24),
//               ],
//             ),
//           ),
//           const Divider(),
//
//           // Stories Section
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: const [
//                 Text('Stories', style: TextStyle(fontWeight: FontWeight.bold)),
//                 Text('Reels',
//                     style: TextStyle(
//                         fontWeight: FontWeight.bold, color: Colors.blue)),
//               ],
//             ),
//           ),
//           const SizedBox(height: 10),
//
//           // Stories List
//           SizedBox(
//             height: 120,
//             child: ListView(
//               scrollDirection: Axis.horizontal,
//               children: [
//                 buildStoryItem(context, isCreateStory: true),
//                 buildStoryItem(context, storyName: "Friend 1"),
//                 buildStoryItem(context, storyName: "Friend 2"),
//                 buildStoryItem(context, storyName: "Friend 3"),
//                 buildStoryItem(context, storyName: "Friend 4"),
//               ],
//             ),
//           ),
//           const Divider(),
//
//           // Posts Section
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 children: [
//                   buildPostItem(
//                     username: "raj__2255",
//                     content:
//                     "One of the most popular thoughts during the rainy season...",
//                     likes: "pari roy and 453 others",
//                     comments: "251 comments",
//                   ),
//                   buildPostItem(
//                     username: "jane_doe",
//                     content: "Loving the sunny vibes today!",
//                     likes: "124 likes",
//                     comments: "56 comments",
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget buildHeaderIcon(IconData icon, Color color) {
//     return IconButton(
//       onPressed: () {},
//       icon: Icon(icon, color: color, size: 30),
//     );
//   }
//
//   // Build Story Item
//   Widget buildStoryItem(BuildContext context, {bool isCreateStory = false, String storyName = "Your Story"}) {
//     return GestureDetector(
//       onTap: () {
//         if (!isCreateStory) {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => StoryViewerPage(storyName: storyName),
//             ),
//           );
//         }
//       },
//       child: Padding(
//         padding: const EdgeInsets.only(right: 10),
//         child: Column(
//           children: [
//             Stack(
//               alignment: Alignment.bottomRight,
//               children: [
//                 Container(
//                   width: 70,
//                   height: 70,
//                   decoration: BoxDecoration(
//                     color: Colors.grey[300],
//                     shape: BoxShape.circle,
//                   ),
//                   child: isCreateStory
//                       ? const Icon(Icons.add, size: 40, color: Colors.blue)
//                       : const Icon(Icons.person, color: Colors.white),
//                 ),
//                 if (!isCreateStory)
//                   Container(
//                     width: 20,
//                     height: 20,
//                     decoration: const BoxDecoration(
//                       color: Colors.blue,
//                       shape: BoxShape.circle,
//                     ),
//                   ),
//               ],
//             ),
//             const SizedBox(height: 5),
//             Text(isCreateStory ? "Create story" : storyName,
//                 style: const TextStyle(fontSize: 12)),
//           ],
//         ),
//       ),
//     );
//   }
//
//   // Build Post Item
//   Widget buildPostItem({
//     required String username,
//     required String content,
//     required String likes,
//     required String comments,
//   }) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 5),
//       color: Colors.white,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           ListTile(
//             leading: const CircleAvatar(
//               backgroundColor: Colors.grey,
//               child: Icon(Icons.person, color: Colors.white),
//             ),
//             title: Text(
//               username,
//               style: const TextStyle(fontWeight: FontWeight.bold),
//             ),
//             subtitle: const Text("Just now"),
//             trailing: const Icon(Icons.more_horiz),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: Text(content),
//           ),
//           const SizedBox(height: 10),
//           Container(
//             height: 200,
//             color: Colors.grey[300],
//             child: const Center(child: Icon(Icons.image, size: 50)),
//           ),
//           const SizedBox(height: 5),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(likes, style: const TextStyle(color: Colors.black54)),
//                 Text(comments, style: const TextStyle(color: Colors.black54)),
//               ],
//             ),
//           ),
//           const Divider(),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: const [
//                 ActionButton(icon: Icons.thumb_up_alt_outlined, label: 'Like'),
//                 ActionButton(icon: Icons.comment_outlined, label: 'Comment'),
//                 ActionButton(icon: Icons.send_outlined, label: 'Send'),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class ActionButton extends StatelessWidget {
//   final IconData icon;
//   final String label;
//
//   const ActionButton({super.key, required this.icon, required this.label});
//
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Icon(icon, color: Colors.black54),
//         const SizedBox(width: 5),
//         Text(label, style: const TextStyle(color: Colors.black54)),
//       ],
//     );
//   }
// }
//
// class StoryViewerPage extends StatelessWidget {
//   final String storyName;
//
//   const StoryViewerPage({super.key, required this.storyName});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(storyName),
//       ),
//       body: Center(
//         child: Text(
//           "$storyName's Story",
//           style: const TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
//
//
// //text button
//



import 'package:facebook_clone/messanger.dart';
import 'package:facebook_clone/story.dart';
import 'package:flutter/material.dart';




class Homepage extends StatelessWidget {
  const Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Builder(
          builder: (context) => Scaffold(
              appBar: AppBar(
                title: const Text('Facebook',
                    style: TextStyle(
                        color: Color(0xFF343AD1),
                        fontSize: 32,
                        fontWeight: FontWeight.w600)),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.message_outlined),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MessengerPage()),
                      );
                    },
                  ),
                ],
              ),
              body: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.home)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.group)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.ondemand_video)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.person)),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.notifications)),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.menu)),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const CircleAvatar(),
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        width: 300,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Colors.white,
                        ),
                        child: const Text(
                          'Write something here...',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                      IconButton(
                          onPressed: () {}, icon: const Icon(Icons.photo))
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Color(0xFFe4e6e6)),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "stories",

                            style: TextStyle(
                                fontSize: (20), fontWeight: FontWeight.w600),
                          ),
                          Text("Reels",
                              style: TextStyle(
                                  fontSize: (20), fontWeight: FontWeight.w600))
                        ]),
                  ),
                  const SizedBox(
                    height: 10,
                    child: DecoratedBox(
                      decoration: BoxDecoration(color: Color(0xFFe4e6e6)),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      // Make the column scrollable
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 195,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  Container(
                                      height: 165,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: Column(
                                            children: [
                                              Container(
                                                  width: 83,
                                                  height: 87,
                                                  decoration: BoxDecoration(
                                                    image:
                                                    const DecorationImage(
                                                      image: NetworkImage(
                                                          'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDF8fHNtaWxpbmd8ZW58MHx8fHwxNjg2OTYwMjEz&ixlib=rb-4.0.3&q=80&w=1080'),
                                                      fit: BoxFit.cover,
                                                    ),
                                                    color: Colors.white,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        10),
                                                  )),
                                              Container(
                                                width: 38,
                                                height: 38,
                                                decoration: const BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Color(0xFF1F1BD1),
                                                ),
                                                child: const Icon(
                                                  Icons.add,
                                                  color: Colors.white,
                                                ),
                                              ),

                                              const Text(
                                                'Create Story',
                                                style: TextStyle(fontSize: 14),
                                              ),
                                            ],
                                          ))),
                                  const SizedBox(width: 20),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Story(
                                            imageUrl:
                                            'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDl8fG5pZ2h0fGVufDB8fHx8MTY4Njk2MDAwMA&ixlib=rb-4.0.3&q=80&w=1080',
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                        height: 165,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDl8fG5pZ2h0fGVufDB8fHx8MTY4Njk2MDAwMA&ixlib=rb-4.0.3&q=80&w=1080'),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.blue,
                                          borderRadius:
                                          BorderRadius.circular(10),
                                        ),
                                        child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: CircleAvatar(
                                                radius: 18,
                                              ),
                                            ))),
                                  ),
                                  const SizedBox(width: 20),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Story(
                                            imageUrl:
                                            'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDl8fG5pZ2h0fGVufDB8fHx8MTY4Njk2MDAwMA&ixlib=rb-4.0.3&q=80&w=1080',
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      height: 165,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        image: const DecorationImage(
                                          image: NetworkImage(

                                              'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDl8fG5pZ2h0fGVufDB8fHx8MTY4Njk2MDAwMA&ixlib=rb-4.0.3&q=80&w=1080'),
                                          fit: BoxFit.cover,
                                        ),
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Align(
                                          alignment: Alignment.topLeft,
                                          child: CircleAvatar(
                                            radius: 18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Story(
                                            imageUrl:
                                            'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDF8fHNtaWxpbmd8ZW58MHx8fHwxNjg2OTYwMjEz&ixlib=rb-4.0.3&q=80&w=1080',
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                        height: 165,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDF8fHNtaWxpbmd8ZW58MHx8fHwxNjg2OTYwMjEz&ixlib=rb-4.0.3&q=80&w=1080'),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.blue,
                                          borderRadius:
                                          BorderRadius.circular(10),
                                        ),
                                        child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: CircleAvatar(
                                                radius: 18,
                                              ),
                                            ))),
                                  ),
                                  const SizedBox(width: 20),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Story(
                                            imageUrl:

                                            'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDl8fG5pZ2h0fGVufDB8fHx8MTY4Njk2MDAwMA&ixlib=rb-4.0.3&q=80&w=1080',
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                        height: 165,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDl8fG5pZ2h0fGVufDB8fHx8MTY4Njk2MDAwMA&ixlib=rb-4.0.3&q=80&w=1080'),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.blue,
                                          borderRadius:
                                          BorderRadius.circular(10),
                                        ),
                                        child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: CircleAvatar(
                                                radius: 18,
                                              ),
                                            ))),
                                  ),
                                  const SizedBox(width: 20),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Story(
                                            imageUrl:
                                            'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDF8fHNtaWxpbmd8ZW58MHx8fHwxNjg2OTYwMjEz&ixlib=rb-4.0.3&q=80&w=1080',
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                        height: 165,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1524504388940-b1c1722653e1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDF8fHNtaWxpbmd8ZW58MHx8fHwxNjg2OTYwMjEz&ixlib=rb-4.0.3&q=80&w=1080'),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.blue,
                                          borderRadius:
                                          BorderRadius.circular(10),
                                        ),
                                        child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: CircleAvatar(

                                                radius: 18,
                                              ),
                                            ))),
                                  ),
                                  const SizedBox(width: 20),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const Story(
                                            imageUrl:
                                            'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDl8fG5pZ2h0fGVufDB8fHx8MTY4Njk2MDAwMA&ixlib=rb-4.0.3&q=80&w=1080',
                                          ),
                                        ),
                                      );
                                    },
                                    child: Container(
                                        height: 165,
                                        width: 90,
                                        decoration: BoxDecoration(
                                          image: const DecorationImage(
                                            image: NetworkImage(
                                                'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDl8fG5pZ2h0fGVufDB8fHx8MTY4Njk2MDAwMA&ixlib=rb-4.0.3&q=80&w=1080'),
                                            fit: BoxFit.cover,
                                          ),
                                          color: Colors.blue,
                                          borderRadius:
                                          BorderRadius.circular(10),
                                        ),
                                        child: const Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Align(
                                              alignment: Alignment.topLeft,
                                              child: CircleAvatar(
                                                radius: 18,
                                              ),
                                            ))),
                                  ),
                                  const SizedBox(width: 20),
                                ],
                              ),
                            ),
                          ),
                          // Post 1
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            padding: const EdgeInsets.all(10),
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const CircleAvatar(),
                                    const SizedBox(width: 10),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: const Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text('raj__2255',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          Text(

                                            "one of the most popular thinking about so raining",
                                            softWrap:
                                            true, // Allow text wrapping
                                            overflow: TextOverflow.visible,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.more_horiz)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.close)),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Image.network(
                                  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDl8fG5pZ2h0fGVufDB8fHx8MTY4Njk2MDAwMA&ixlib=rb-4.0.3&q=80&w=1080',
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon:
                                            const Icon(Icons.thumb_up_alt)),
                                        const Text("pari roy and 483 others"),
                                      ],
                                    ),
                                    const Text("258 comments"),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon:
                                            const Icon(Icons.thumb_up_alt)),
                                        const Text("Like"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.comment)),
                                        const Text("Comment"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.share)),
                                        const Text("Share"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          // Divider between posts
                          const SizedBox(
                            height: 10,

                            child: DecoratedBox(
                              decoration:
                              BoxDecoration(color: Color(0xFFe4e6e6)),
                            ),
                          ),
                          // Post 2 (Repeat the same structure for Post 2)
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            padding: const EdgeInsets.all(10),
                            color: Colors.white,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const CircleAvatar(),
                                    const SizedBox(width: 10),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.5,
                                      child: const Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text('raj__2255',
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold)),
                                          Text(
                                            "one of the most popular thinking about so raining",
                                            softWrap:
                                            true, // Allow text wrapping
                                            overflow: TextOverflow.visible,
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.more_horiz)),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.close)),
                                  ],
                                ),
                                const SizedBox(height: 10),
                                Image.network(
                                  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=MnwzNjUyOXwwfDF8c2VhcmNofDl8fG5pZ2h0fGVufDB8fHx8MTY4Njk2MDAwMA&ixlib=rb-4.0.3&q=80&w=1080',
                                ),
                                const SizedBox(height: 10),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon:
                                            const Icon(Icons.thumb_up_alt)),
                                        const Text("pari roy and 483 others"),
                                      ],
                                    ),
                                    const Text("258 comments"),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [

                                        IconButton(
                                            onPressed: () {},
                                            icon:
                                            const Icon(Icons.thumb_up_alt)),
                                        const Text("Like"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.comment)),
                                        const Text("Comment"),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(Icons.share)),
                                        const Text("Share"),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              )),
        ));
  }
}












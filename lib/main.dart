import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'Student Profile DashBoard',
      theme:ThemeData(
        useMaterial3:true,
        colorScheme:ColorScheme.fromSeed(seedColor:Colors.indigo),
      scaffoldBackgroundColor:const Color(0xFFF5F7FB),
      appBarTheme:const AppBarTheme(
        backgroundColor:Colors.indigo,
        foregroundColor:Colors.white,
        centerTitle:true,
      ),
      cardTheme:CardThemeData(
        color:Colors.white,
        elevation:2,
        margin:const EdgeInsets.symmetric(vertical:6),
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(12),
        ),
      ),
      ),
      home: const StudentProfilePage(),
    );
  }
}

class StudentProfilePage extends StatelessWidget{
  const StudentProfilePage({super.key});

    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar:AppBar(
          title:const Text('Student Profile'),
        ),
        body:Padding(
          padding:const EdgeInsets.all(16.0),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Card(
              child:Padding(
                padding:const EdgeInsets.all(16.0),
                child:Row(
                  children:[
                    const CircleAvatar(
                      radius:40,
                      backgroundImage:NetworkImage('https://media.istockphoto.com/id/814423752/photo/eye-of-model-with-colorful-art-make-up-close-up.jpg?s=612x612&w=0&k=20&c=l15OdMWjgCKycMMShP8UK94ELVlEGvt7GmB_esHWPYE='),
                    ),
                    const SizedBox(width:16),
                    const Column(
                     crossAxisAlignment:CrossAxisAlignment.start,
                      children:[
                        Text(
                          'Syam',
                          style: TextStyle(
                            fontSize:20,
                            fontWeight:FontWeight.bold,
                          ),
                        ),
                       SizedBox(height:6),
                       Text('Department:Computer Science'),
                       Text('Year:3rd Year'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height:20),

            

               const SizedBox(height: 20),

                  const Text(
                   'My Skills',
                   style: StudentProfilePage.sectionTitleStyle,
                 ),

            const SizedBox(height:10),

            const SkillWidget(skillName:'Flutter'),
            const SkillWidget(skillName:'Java'),
            const SkillWidget(skillName:'C++'),
            const SkillWidget(skillName:'Python'),
            const SkillWidget(skillName:'SupaBase'),


            const SizedBox(height:20),
            

            const Text(
              'My Achievements',
              style: StudentProfilePage.sectionTitleStyle,
              ),

            const SizedBox(height:10),
            const AchievementsWidget(title:'Leetcode 200-Day Streak',
            description:'Completed 200 days of consistent coding on Leetcode.',),
            const AchievementsWidget(title:'Spark Tank Hackathon Winner',
            description:'Winnners of Sprak tank-4.0',
            ),

            const AchievementsWidget(title:'Winner of Morse Code Hackothan',
            description: 'Participated and winner of Morse code hackothan',
            ),

          
          ],
        ),
        ),
      );
  }
  static const sectionTitleStyle = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.bold,
  color: Colors.indigo,
);



}

class SkillWidget extends StatelessWidget{
  final String skillName;
  const SkillWidget({super.key, required this.skillName});

  @override
  Widget build(BuildContext context){
    return Card(
      child:ListTile(
        leading:const Icon(Icons.check_circle, color:Colors.green),
        title:Text(skillName),
      ),
    );
  }
 
}

class AchievementsWidget extends StatelessWidget{
  final String title;
  final String description;
  const AchievementsWidget({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context){
    return Card(
      child:ListTile(
        leading:const Icon(Icons.emoji_events, color:Colors.amber,
        size:32,
        ),
        title:Text(
          title,
          style:const TextStyle(
            fontSize:18,
            fontWeight:FontWeight.bold,
          ),
        ),
        subtitle:Text(description),
      ),
    );
  }
}
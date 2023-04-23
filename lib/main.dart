import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:concentric_transition/concentric_transition.dart';



void main() => runApp( MyApp());

class MyApp extends StatelessWidget {
   MyApp({super.key});





  @override
  Widget build(BuildContext context) {

Color scColor = Color.fromARGB(255, 8, 59, 148);
Color pmColor = Color.fromARGB(255, 40, 109, 228);


ColorScheme myColorScheme = ColorScheme(
  primary: pmColor,
  secondary: scColor,
  
  surface: pmColor,
  background: Colors.white,
  error: Colors.orange,
  onPrimary: Colors.white,
  onSecondary: Colors.white12,
  onSurface: pmColor,
  onBackground: pmColor,
  onError: Colors.white,
  brightness: Brightness.light,
  shadow: pmColor,
);

ThemeData myTheme = ThemeData(
  colorScheme: myColorScheme
);

    return MaterialApp(

      debugShowCheckedModeBanner: false, 
      title: 'My App',
      theme: myTheme,
        
        
        
       
       


      home:  OnboardingScreen(),
            
    );
  }
}

class OnboardingScreen extends StatelessWidget {
   OnboardingScreen({Key? key}) : super(key: key);

Color pmColor = Color.fromARGB(255, 8, 59, 148);

  final data =  [
    
    CardPlanetData(
      title: "Cordelia Travel Limited", 
      image: AssetImage('images/ok (1).png'),
      backgroundColor: Colors.white, 
      subtitle: 'ready for an extraordinary journey', 
      subtitleColor:  Color.fromARGB(255, 8, 59, 148), 
      titleColor: Color.fromARGB(255, 27, 27, 27),
      ),


       CardPlanetData(
      title: "Adventure Awaits", 
      image: AssetImage('images/ok (4).png'),
      backgroundColor: Color.fromARGB(255, 8, 59, 148), 
      subtitle: 'ready for an extraordinary journey', 
      subtitleColor: Colors.white60 , 
      titleColor: Colors.white,
      ),



    CardPlanetData(
      title: "Time for a break", 
      image: AssetImage('images/ok (3).png'),
      backgroundColor: Colors.white, 
      subtitle: 'ready for an extraordinary journey', 
      subtitleColor: Color.fromARGB(255, 29, 29, 29), 
      titleColor: Color.fromARGB(255, 8, 59, 148),
      ),



  ];

  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
       
     
      body: Stack(
        children:[ ConcentricPageView( 
        physics: const NeverScrollableScrollPhysics(),
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: data.length,
        itemBuilder: (int index) {
        return  CardPlanet(data: data[index]);
        }
        
      
        ),

        Container(
          
          margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height/1.1,
        left: MediaQuery.of(context).size.width/1.2,
        ),
          child: InkWell (
            onTap: (){
              Navigator.pushReplacement(
                context, MaterialPageRoute(
                  builder: (context) {
                    return LoginScreen();
                  }
                )
              );
            },
            child: 
          Stack(children:[ 
              
          Container(
              
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                color: Color.fromARGB(111, 75, 175, 246),
                borderRadius: BorderRadius.circular(20))
              ),
          Text('Skip', style:  TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: Color.fromARGB(255, 8, 59, 148),),),
              
          ]
          
          ),
          ),
        )

      ]),
    );
  }
}


//TODO: work on the login scren to fit the colors

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 8, 59, 148),
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Enter your login details.',
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              const SizedBox(height: 20.0),
              const TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                ),
              ),
              const SizedBox(height: 10.0),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                ),
              ),
              const SizedBox(height: 20.0),
              Container(
                width: MediaQuery.of(context).size.width,
               
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BottomNav()),
                        );
                      },
                      child: const Text('Login'),
                    ), 

                 

                    ElevatedButton(
                      
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BottomNav()),
                        );
                      },
                      child: const Text('Signup'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});




  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {


final navigationKey = GlobalKey<CurvedNavigationBarState>();

int index = 2;
 int _page= 0;

List screens = [

  
  const HomePage(),
  const FavouritesPage(),
  const ProfilePage(),
  const HotelsPage(),
  const TicketsPage()


];

  

  @override
  Widget build(BuildContext context) {


final items = [
       const Icon(Icons.home, size: 24,), 
       const Icon(Icons.person_outline, size: 24,), 
       const Icon(Icons.favorite_outline, size: 24,),
        const Icon(Icons.location_city_outlined, size: 24,),
        const Icon(Icons.menu_outlined, size: 24,),
];


           return
           
                Scaffold(
              
                  bottomNavigationBar: CurvedNavigationBar(
                    key: navigationKey,
                    letIndexChange: (index) => true,
                    backgroundColor: Colors.transparent,
                    buttonBackgroundColor: Color.fromARGB(255, 255, 255, 255),
                        color: Color.fromARGB(255, 255, 255, 255),
                        animationDuration: const Duration(milliseconds: 300),
                        height: 60.0,
                        index:  2,
                        items: items,
                        onTap: (index) {
                          setState(() => this.index = index
                            );
                        },
                        
                         
                         ),
                         body: screens[index],

                 );
  }
}


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const  Center(
        child: Text('Screen 1'),
      )
    ;
  }
}

class FavouritesPage extends StatelessWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.red,
      child: Text('Screen 2'))
    
;
}
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

@override
Widget build(BuildContext context) {
return MaterialApp(
  home:    Center(
  
  child: Text('Screen 3'),
  
  ),
);
}
}

class HotelsPage extends StatelessWidget {
  const HotelsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Screem 4')
    );
  }
}

class TicketsPage extends StatelessWidget {
  const TicketsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('data'));
  }
}





class CardPlanetData {
 final String title;
 final String subtitle;
 final ImageProvider image;
 final Color backgroundColor;
 final Color titleColor;
 final Color subtitleColor;



  const CardPlanetData ({
  required this.title,
  required this.subtitle,
  required this.image,
  required this.backgroundColor,
  required this.titleColor,
  required this.subtitleColor,

});
}



class CardPlanet extends StatelessWidget {
  const CardPlanet({Key? key, required this.data}): super(key: key);
  
   final CardPlanetData data;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0),
      child: Column(
        children: [
          const Spacer(flex: 3),
          Flexible(
            flex:20,
            child:Image(image: data.image)),
          const Spacer(flex: 1),
          Text(data.title.toUpperCase(),
          style: TextStyle(color: data.titleColor,fontSize: 20, fontWeight: FontWeight.w800),),
          
           Text(data.subtitle.toLowerCase(),
          style: TextStyle(color: data.subtitleColor,fontSize: 14, fontWeight: FontWeight.w300),
          textAlign: TextAlign.center,
          ),
         

          
    
        ],
      ),
    );
  }
}

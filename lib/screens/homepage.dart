// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {

  var categories = [
    'Best Places',
    'Most Visited',
    'Favourites',
    'New Places',
    'Restaurants',
    'Hotels'
  ];
  var cityNames = [
    "Dubai",
    "Egypt",
    "Maldives",
    "Paris",
    "louvre",
    "Istanbul"

  ];




  @override
  Widget build(BuildContext context) {
    return
     Container(
         
          decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage('images/bg (2).jpg',),scale: 20,alignment: Alignment.center, opacity: 0.2),
             color: Colors.white,


          ),
          child: SingleChildScrollView(
            child: SafeArea(
              
                child: Column(
                  children: [
                     Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                       children: [
                         Container(
                           width: 200,
                           height: MediaQuery.of(context).size.height / 3.5,
                           
        
                           decoration:  const BoxDecoration(
                             image: DecorationImage(image: AssetImage('images/jpg (2).jpg'), fit: BoxFit.cover)
                           ),
                            
                         ),

                          // the welcome image and button aligned to the left center
                          Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              
                              
                              children:  [
                              const Text("Welcome!",
                               style: TextStyle(fontWeight: FontWeight.w800,fontSize: 30, color: Color.fromARGB(255, 0, 62, 24)),),
                               const Text("Your Adventure \n " "" "  Starts Here!",
                               style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18, color: Color.fromARGB(255, 0, 62, 24)),),
                               
                              CupertinoButton(child:  Text('Plan Your Trip', style: TextStyle(fontSize: 12, color: Colors.white, fontWeight: FontWeight.bold ),), 
                                onPressed: (){}, color: Colors.cyan[900],padding: const EdgeInsets.only( left: 14, right: 14), )
                            ]),
                       ],
                     ),



                     //Icons under the carousel, with a little color pastes behind



                     Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: Column(
                         children: [
                           Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                             children: [
                              Column(
                            children: [
                              Icon(CupertinoIcons.paperplane, color: Colors.cyan[900],),
                              Text('Flights', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.cyan[900]),)
                            ],
                              ),
                              Column(
                            children: [
                              Icon(CupertinoIcons.tickets, color: Colors.lime[900],),
                              Text('Tickets', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.cyan[900]),)
                            ],
                              ),
                              Column(
                            children: [
                              Icon(CupertinoIcons.bed_double, color: Colors.red[900],),
                              Text('Hotels', style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,color: Colors.cyan[900]),)
                            ],
                              )
                             ],
                                            
                             ),
                            const SizedBox(height: 10,),

                             Padding(
                                padding: const EdgeInsets.only(left: 50, right: 50),
                               child: Container(
                               
                                decoration: const BoxDecoration(
                                  
                                                       border: Border(
                                                         
                                                         bottom: BorderSide(
                                color: Colors.blueGrey,
                                width: 0.5,
                                
                                                         )
                                                       )
                                                     ),
                                                   
                               ),
                             )
                         ],
                       ),
                     ),
                    
                    
                    //list of places pictures
                    Column(
                      children: [
                         Padding(
                          padding: const EdgeInsets.only(left: 20.0,),
                          child: Text("Explore", style: TextStyle(fontWeight: FontWeight.w600,fontSize: 12, color: Colors.cyan[900]),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20.0,),
                          child: Text("Our Top Destinations", style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18, color: Colors.cyan[900]),),
                        ),
                            Row(
                               children: [
        
                             Expanded(
                                child: SizedBox(
        
        
                                height: MediaQuery.of(context).size.height / 4,
                           child: ListView.builder(
        
                               itemCount: 6,
                               scrollDirection: Axis.horizontal,
                               shrinkWrap: true,
                               physics: const BouncingScrollPhysics(),
                               itemBuilder: (BuildContext context, int index)
        
                               {
        
                              return InkWell(
        
                              onTap: (){
                                // Navigator.push(context, MaterialPageRoute(builder: (context)=> PostScreen()));
                              },
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.center,
        
                                   children: [
        
                                     Container(
        
                                     width: 180,
                                     height: 160,
        
                                       margin: const EdgeInsets.only(left:10, right: 15),
                                       decoration: BoxDecoration(
                                         color: Colors.white,
                                         borderRadius: BorderRadius.circular(15),
                                         image: DecorationImage(
        
                                           image: AssetImage("images/city (${index+1}).jpg"),
                                           fit: BoxFit.cover,
        
                                         ),
                                       ),
                                       child:  Text( cityNames[ index],
                                           style: const TextStyle(
                                             color: Colors.white70,
                                             fontSize: 26,
                                             fontWeight: FontWeight.w600,
                                           )
                                       ),
        
        
                                     ),
        
        
                                 ]),
                                 );
                        }),
                      ))]),

                      const SizedBox(height: 20),
        
        
        
                      SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Padding(
                                padding: const EdgeInsets.all(0),
                                child: Row(
                                  children: [
                                    for (int i = 0; i < 6; i++)
                                    Container(
                                      margin: const EdgeInsets.symmetric(horizontal: 10),
                                      padding: const EdgeInsets.all(10),
                                      decoration: BoxDecoration
                                     (
                                        border: Border.all(color: Colors.white,width: 0.8,) ,
                                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                                        color: Colors.cyan[900],
                                      ),
                                      child: Text(categories[i],
                                        style: const TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,color: Colors.white
                                        ) ,) ,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(29, 255, 64, 64),
                            borderRadius: BorderRadius.circular(15),
                        
                          ),
                          child:const Padding(padding: EdgeInsets.all(40),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text('Prepare Yourself & Let\'s Explore The Beauty Of The World', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, ),)),),
                          
                          ),
                        ),
                        const SizedBox(height: 50,)
                    ],
                    ),
                  ],
                )),
          ),
        


    
     );
}
}

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/Menu.dart';
import 'package:myapp/Reviews.dart';

class Restaurant extends StatefulWidget {
  const Restaurant({super.key});

  @override
  State<Restaurant> createState() => _RestaurantState();
}

class _RestaurantState extends State<Restaurant> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return Scaffold(
      
      body: NestedScrollView(
        
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: size.height*0.3,
              floating: false,
              pinned: false,
              backgroundColor: Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                  
                  
                  
                  background: Image.network(
                    "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                    fit: BoxFit.cover,
                  )),
            ),
          ];
        },
        body: SingleChildScrollView(
          child:Container(
            height: size.height*1.5,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                child: Container(
                  height: size.height*0.15,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),                        
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      blurStyle: BlurStyle.normal
                    ),]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    
                    children: [
                      SizedBox(height: size.height*0.03,),
                      Text(
                        'Tamasha',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Connaught Place, Central Delhi',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 99, 98, 98),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            '\u{20B9}100 for 1 ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 38, 37, 37),
                            ),
                          ),
                          
                          Text(
                            '| Continental, Asian, Italian, North Indian',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 38, 37, 37),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'Now Open ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.green,
                            ),
                          ),
                          
                          Text(
                            '| Closes at 01:30 AM',
                            style: TextStyle(
                              fontSize: 13,
                              color: Color.fromARGB(255, 38, 37, 37),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  ),
                ),
                
              ),
              
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                child: GestureDetector(
                  child: Container(
                  height: size.height*0.08,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),                        
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      blurStyle: BlurStyle.normal
                    ),]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      
                      children: [
                        SizedBox(width: size.width*0.02,),
                        Icon(
                          FontAwesomeIcons.chair,size: 35,
                        ),
                        SizedBox(width: size.width*0.05,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Reserve a table',
                              
                              style: TextStyle(
                                fontSize: 20,
                                
                              ),
                            ),
                            
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    builder: (context) {
                      return  Padding(padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                        child: Container(
                          height: size.height*0.55,
                          width: size.width,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'SELECT DATE & TIME',
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black
                                    ),
                                  ),
                                  IconButton(
                                    icon: Icon(FontAwesomeIcons.x,size: 20,),
                                    iconSize: 15,
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  )
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
                                child: Container(
                                  height: size.height*0.05,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(18),topRight: Radius.circular(18)),                        
                                    color: Colors.white,
                                    boxShadow: [BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 2.0,
                                      spreadRadius: 0.0,
                                      blurStyle: BlurStyle.normal
                                    ),]
                                  ),
                                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('Date',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text('Oct 2022',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.black,
                                          ),
                                        )

                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: size.height*0.08,
                                width: size.width,
                                child: ListView.builder(
                                  itemCount: 10,
                                  
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      height: size.height*0.08,
                                      width: size.width/5,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      child: Column(
                                        children: [
                                          Text('Day',
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          
                                          ),
                                          Text('29',
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold
                                          ),)
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                              
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 10.0),
                                  child: Container(
                                    height: size.height*0.22,
                                    width: size.width,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),                        
                                      color: Colors.white,
                                      boxShadow: [BoxShadow(
                                        color: Colors.black,
                                        offset: Offset(0.0, 0.0),
                                        blurRadius: 2.0,
                                        spreadRadius: 0.0,
                                        blurStyle: BlurStyle.normal
                                      ),]
                                    ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(horizontal: 5.0),
                                    child: Column(
                                      children: [
                                        Text('Time',
                                          style: TextStyle(
                                            fontSize: 22,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              
                                              children: [
                                                Text('Lunch',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
                                                GestureDetector(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Color.fromARGB(255, 249, 137, 137)
                                                    ),
                                                    height: 25,
                                                    width: 100,
                                                    child: Center(
                                                      child: Text(
                                                        'time',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: size.height*0.003,),
                                                GestureDetector(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Color.fromARGB(255, 249, 137, 137)
                                                    ),
                                                    height: 25,
                                                    width: 100,
                                                    child: Center(
                                                      child: Text(
                                                        'time',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: size.height*0.003,),
                                                GestureDetector(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Color.fromARGB(255, 249, 137, 137)
                                                    ),
                                                    height: 25,
                                                    width: 100,
                                                    child: Center(
                                                      child: Text(
                                                        'time',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: size.height*0.003,),
                                                GestureDetector(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Color.fromARGB(255, 249, 137, 137)
                                                    ),
                                                    height: 25,
                                                    width: 100,
                                                    child: Center(
                                                      child: Text(
                                                        'time',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: size.height*0.003,),
                                                GestureDetector(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Color.fromARGB(255, 249, 137, 137)
                                                    ),
                                                    height: 25,
                                                    width: 100,
                                                    child: Center(
                                                      child: Text(
                                                        'time',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                
                                              ],
                                            ),
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text('Dinner',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
                                                GestureDetector(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Color.fromARGB(255, 249, 137, 137)
                                                    ),
                                                    height: 25,
                                                    width: 100,
                                                    child: Center(
                                                      child: Text(
                                                        'time',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: size.height*0.003,),
                                                GestureDetector(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Color.fromARGB(255, 249, 137, 137)
                                                    ),
                                                    height: 25,
                                                    width: 100,
                                                    child: Center(
                                                      child: Text(
                                                        'time',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: size.height*0.003,),
                                                GestureDetector(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Color.fromARGB(255, 249, 137, 137)
                                                    ),
                                                    height: 25,
                                                    width: 100,
                                                    child: Center(
                                                      child: Text(
                                                        'time',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: size.height*0.003,),
                                                GestureDetector(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Color.fromARGB(255, 249, 137, 137)
                                                    ),
                                                    height: 25,
                                                    width: 100,
                                                    child: Center(
                                                      child: Text(
                                                        'time',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(height: size.height*0.003,),
                                                GestureDetector(
                                                  child: Container(
                                                    decoration: BoxDecoration(
                                                      borderRadius: BorderRadius.circular(10),
                                                      color: Color.fromARGB(255, 249, 137, 137)
                                                    ),
                                                    height: 25,
                                                    width: 100,
                                                    child: Center(
                                                      child: Text(
                                                        'time',
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    )
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20.0),
                                child: GestureDetector(
                                  child: Container(
                                  height: size.height*0.06,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),                        
                                    color: Colors.white,
                                    boxShadow: [BoxShadow(
                                      color: Colors.black,
                                      offset: Offset(0.0, 0.0),
                                      blurRadius: 2.0,
                                      spreadRadius: 0.0,
                                      blurStyle: BlurStyle.normal
                                    ),]
                                  ),
                                  child: Padding(padding: EdgeInsets.symmetric(horizontal: 10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('Continue',
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  
                                },
                                ),
                              ),    
                            ],
                          ),
                        ),
                      );
                      
                    },
                  );
                },
                ),
                
                
              ),
              
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                child: GestureDetector(
                  child: Container(
                  height: size.height*0.08,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),                        
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      blurStyle: BlurStyle.normal
                    ),]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      
                      children: [
                        SizedBox(width: size.width*0.02,),
                        Icon(
                          FontAwesomeIcons.list,size: 35,
                        ),
                        SizedBox(width: size.width*0.05,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Menu',
                              
                              style: TextStyle(
                                fontSize: 20,
                                
                              ),
                            ),
                            
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Menu()));
                },
                )
                
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                child: Container(
                  height: size.height*0.85,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),                        
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      blurStyle: BlurStyle.normal
                    ),]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    
                    children: [
                      SizedBox(height: size.height*0.03,),
                      Text(
                        'About',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: size.height*0.15,
                        width: size.width,
                        child: Text(
                        'hutyuidfghjxcvbdfghjjbyughhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhd',
                        style: TextStyle(
                          fontSize: 15,
                          color: Color.fromARGB(255, 99, 98, 98),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      ),
                      Container(
                        height: size.height*0.08,
                        width: size.width,
                        
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.bowlFood,size: 35,),
                            SizedBox(width: size.width*0.03,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('CUISINE',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Continental, Asian, Italian, North Indian',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 99, 98, 98),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: size.height*0.08,
                        width: size.width,
                        
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.hotel,size: 35,),
                            SizedBox(width: size.width*0.03,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('ESTABLISHMENT TYPE',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Nightlife',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 99, 98, 98),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: size.height*0.08,
                        width: size.width,
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.bowlFood,size: 35,),
                            SizedBox(width: size.width*0.03,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('MUST TRY',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'bdjbwk,stigsuuuuuuuuuuuu',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Color.fromARGB(255, 99, 98, 98),
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: size.height*0.12,
                        width: size.width,
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.calculator,size: 35,),
                            SizedBox(width: size.width*0.03,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('AVERAGE COST',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '\u{20B9}2000* for 2 ',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'includes Alcohol',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 99, 98, 98),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                      '\u{20B9}185* for a pint beer',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 99, 98, 98),
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                    Text(
                                      '*approx amount',
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Color.fromARGB(255, 99, 98, 98),
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ),
                              ],

                            )
                          ],
                        ),
                      ),
                      Container(
                        height: size.height*0.25,
                        width: size.width,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Icon(FontAwesomeIcons.bowlFood,size: 35,),
                            SizedBox(width: size.width*0.03,),
                            Container(
                              height: size.height*0.24,
                              width: size.width*0.7,
                              child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('FEAUTURES & FACILITIES',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Container(
                                  height: size.height*0.20,
                                  width: size.width*0.7,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.smoking,size: 15,),
                                              SizedBox(width: size.width*0.02,),
                                              Text('Smoking Area',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.watchmanMonitoring,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Valet Available',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.microphone,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Live Performance',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.wineBottle,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Full Bar Available',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.television,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Live Screening',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          
                                        ],
                                      ),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.fan,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Air Conditioned',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.car,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Parking',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.creditCard,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Cards Accepted',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.tent,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('OutDoor Seating',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            
                                            children: [
                                              Icon(FontAwesomeIcons.wallet,size: 15,),
                                              SizedBox(width: size.width*0.01,),
                                              Text('Wallet Accepted',
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              )
                                            ],
                                          ),
                                          
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                                
                              ],
                            ),
                            )
                          ],
                        ),
                      ),
                      
                      
                    ],
                  ),
                  ),
                ),
                
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 15.0),
                child: GestureDetector(
                  child: Container(
                  height: size.height*0.08,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),                        
                    color: Colors.white,
                    boxShadow: [BoxShadow(
                      color: Colors.black,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 2.0,
                      spreadRadius: 0.0,
                      blurStyle: BlurStyle.normal
                    ),]
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      
                      children: [
                        SizedBox(width: size.width*0.02,),
                        Icon(
                          FontAwesomeIcons.list,size: 35,
                        ),
                        SizedBox(width: size.width*0.05,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Reviews',
                              
                              style: TextStyle(
                                fontSize: 20,
                                
                              ),
                            ),
                            
                          ],
                        ),
                        
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: ((context) => Reviews())));
                },
                )
                
              ),

            ],
          ),
          ),
        ),
        )
          
        
      );
      
    
  }

}
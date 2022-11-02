import 'dart:ui';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:myapp/Billing.dart';
class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
    int select=0;int qt=0;int tp=0;  bool visible=false;
    void change(int num,int t,)
    {
      setState(() {
        qt=qt+num;
      tp=tp+t;
      visible=true;
      });
    }
  @override
  Widget build(BuildContext context) {
    
    int num=1;int price=250;int selectPrice=price;

    final size=MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
        child: Column(
          
          children: [
            SizedBox(height: size.height*0.02,),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Material(
                elevation: 3,
                borderRadius: BorderRadius.circular(18),
                child: Container(
                height: size.height*0.15,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18)
                ),
                child: Center(
                  child: Column(
                  
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: size.height*0.15,
                      width: size.width*0.8,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Name',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 25,
                                  color: Colors.black,
                                ),
                                
                              ),
                              Text(
                                'Cuisine',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),
                              ),
                              Text('location',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                ),
                              )
                            ],
                          ),
                          Container(
                            height: size.height*0.1,
                            width: size.width*0.2,
                            
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              border: Border.all(color: Colors.black),

                              boxShadow: [BoxShadow(
                              color: Colors.white,
                              offset: Offset(0.0, 0.0),
                              blurRadius: 2.0,
                              spreadRadius: 2.0,
                              blurStyle: BlurStyle.normal
                              ),]
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: size.height*0.05,
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(18),topLeft: Radius.circular(18))
                                  ),
                                  child: Center(
                                    child: Row(mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text('3.4 ',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        Icon(FontAwesomeIcons.solidStar,size: 15,),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: size.height*0.04,
                                  child: Center(
                                    child: Column(
                                      children: [
                                        Text('836',style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.black
                                        ),),
                                        Text('Reviews',
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Colors.grey,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                )

              ),
              ),
            ),
            Material(
                elevation: 5,
                borderRadius: BorderRadius.circular(18),
                child: Container(
                  height: size.height*5,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18)
                  ),
                  child: ListView.separated(
                    separatorBuilder: (BuildContext context, int index) => const Divider(),
                    itemCount: 10,physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                        child: GestureDetector(
                        child: Container(
                          height: size.height*0.16,
                          width: size.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: size.height*0.16,
                                width: size.width*0.5,
                                child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: size.height*0.02,),
                                  Icon(FontAwesomeIcons.solidCircleDot,color: Colors.green,size: 20,),
                                  Text('Dish',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),

                                  ),
                                  Row(
                                    children: [
                                      Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 15,),
                                      Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 15,),
                                      Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 15,),
                                      Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 15,),
                                      Icon(FontAwesomeIcons.solidStar,color: Colors.grey,size: 15,),
                                      SizedBox(width: 10,),
                                      Text('33 reviews'),
                                    ],
                                  ),
                                  Text('price',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  )
                                ],
                              ),
                              ),
                              Container(
                                height: size.height*0.16,
                                width: size.width*0.3,
                                child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      height: size.height*0.1,
                                      width: size.width*0.3,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        image: DecorationImage(
                                          image: NetworkImage("https://i.ytimg.com/vi/JEeO_hagtVM/maxresdefault.jpg"),
                                            fit: BoxFit.cover,
                                        ),
                                      ),
                                      
                                    ),
                                    Container(
                                      height: size.height*0.035,
                                      width: size.width*0.25,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Color.fromARGB(255, 251, 138, 138),
                                      ),
                                      
                                      child: Center(
                                        child: Text('ADD+',
                                          style: TextStyle(
                                            color: Colors.red,
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        onTap: () {
                          showModalBottomSheet(context: context, 
                          isScrollControlled: true,
                            builder: ((context) {
                              return StatefulBuilder(
                                builder: ((context, setState) {
                                  return Container(
                                  height: size.height*0.7,
                                  width: size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0)
                                    )
                                  ),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Container(
                                          height: size.height*0.25,
                                          width: size.width-20,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(image: NetworkImage('https://2rdnmg1qbg403gumla1v9i2h-wpengine.netdna-ssl.com/wp-content/uploads/sites/3/2016/05/worstSnacks-527905022-770x533-1-745x490.jpg'),fit: BoxFit.cover),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 10),
                                        child: Container(
                                          height: size.height*0.4,
                                          width: size.width-20,
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('Dish Name',
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 15,),
                                                  Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 15,),
                                                  Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 15,),
                                                  Icon(FontAwesomeIcons.solidStar,color: Colors.amber,size: 15,),
                                                  Icon(FontAwesomeIcons.solidStar,color: Colors.grey,size: 15,),
                                                  SizedBox(width: 10,),
                                                  Text('33 reviews'),
                                                ],
                                              ),
                                              Container(
                                                height: size.height*0.05,
                                                width: size.width-20,
                                                child: Text('ifdjknvskjdfvncjksvdnc ikjsdznvikjsdfvc iukjsdfnvciukjsdfnvci ukjsndfvickjsdzfvkbsdfkj',
                                                  style: TextStyle(
                                                    fontSize: 15,
                                                    color: Color.fromARGB(255, 99, 98, 98),
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                                ),
                                              ),
                                              
                                              Text('Quantity',
                                                style: TextStyle(
                                                  fontSize: 25,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.black,
                                                ),
                                              ),
                                              Text('Select 1 out of 3 options'),
                                              ListView.builder(
                                                itemCount: 3,shrinkWrap: true,
                                                itemBuilder: ((context, index) {
                                                  return GestureDetector(
                                                    child: Container(
                                                    height: size.height*0.06,
                                                    width: size.width,
                                                    color: select==index? Colors.grey:null,
                                                    child: Row(
                                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                      children: [
                                                        
                                                        Text('option',
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        SizedBox(width: 200,),
                                                        Text((price*(index+1)-(20*index)).toString(),
                                                          style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight: FontWeight.bold,
                                                          ),
                                                        ),
                                                        
                                                      ],
                                                    ),
                                                    
                                                  ),
                                                  onTap: () {
                                                    select=index;
                                                    setState(() {
                                                      selectPrice=price*(index+1)-(20*index);
                                                    });
                                                  },
                                                  behavior: HitTestBehavior.opaque,
                                                  );
                                                }),
                                              ),
                                              Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 5),
                                        child: Container(
                                          height: size.height*0.06,
                                          width: size.width,
                                          child: Row(crossAxisAlignment: CrossAxisAlignment.end,mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                            children: [
                                            Container(
                                              height: size.height*0.05,
                                              width: size.width*0.29,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border: Border.all(color: Colors.red),
                                              ),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                children: [
                                                  IconButton(
                                                     icon: Icon(FontAwesomeIcons.minus,size: 15,color: Colors.red,),
                                                     onPressed: () {
                                                       if(num>1)
                                                      {
                                                        setState(() {
                                                          num=num-1;
                                                          
                                                        },);
                                                      }
                                                     },
                                                  ),
                                                  Text(num.toString(),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                                                  IconButton(
                                                    icon: Icon(FontAwesomeIcons.plus,size: 15,color: Colors.red,),
                                                    onPressed:(){
                                                      setState(() {
                                                        num=num+1;
                                                      });
                                                    }
                                                  )
                                                ],
                                              ),
                                            ),
                                            GestureDetector(
                                              child: Container(
                                                height: size.height*0.05,
                                                width: size.width*0.6,
                                                decoration: BoxDecoration(
                                                  borderRadius: BorderRadius.circular(10),
                                                  color: Colors.red,
                                                ),
                                                child: Center(
                                                  child: Text('Add item '+selectPrice.toString(),
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              onTap: () {
                                                change(num,(num*selectPrice));
                                                
                                                
                                                
                                                Navigator.pop(context);
                                                
                                              },
                                            )
                                          ]),
                                        ),
                                      )
                                            ],
                                          ),
                                        ),
                                      ),
                                      
                                    ],
                                  ),
                                );
                                })
                              );
                              
                            })
                          );
                        },
                      ),
                      );
                    },
                  ),
                ),
            ),

          ],
        ),
        
         
      ),
        visible
        ?Align(
          alignment: Alignment.bottomCenter,
          child: Padding(padding: EdgeInsets.all(10),
          child: GestureDetector(
            child: Container(
            height: size.height*0.07,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.red,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('  '+qt.toString()+((qt>1)?' ITEMS':' ITEM'),
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    Text('  '+tp.toString(),
                    style: TextStyle(
                      fontSize: 18,

                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),),
                  ],
                ),
                Text('Next  ',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => Billing())));
          },
          ),
        ),
        )
        :SizedBox(height: 1),
        ],
      )
      
    );
  }
}
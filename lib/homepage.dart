import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int weight = 73;
  int age = 27;
  int height =150;
  bool isMale = true;
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Center(child: Text("$result",style: const TextStyle(
              color: Colors.white
          ),)),),
        body: Container(
          color: Colors.black,
          child: Column(
            children: [
              Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                      Expanded(child: InkWell(
                        onTap: (){
                          setState(() {
                            isMale = true;
                          });
                        },
                        child: Card(
                          margin: const EdgeInsets.all(10),
                          color: isMale==true?Colors.deepOrange:Colors.white12,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male,color: Colors.white,size: 35,),
                              Text("Male",style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),),
                            ],
                          ),
                        ),
                      )),
                      Expanded(child: InkWell(
                        onTap: (){
                          setState(() {
                            isMale=false;
                          });
                        },
                        child: Card(
                          margin: const EdgeInsets.all(10),
                          color: isMale==false?Colors.deepOrange:Colors.white12,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female,color: Colors.white,size: 35,),
                              Text("Female",style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white
                              ),),
                            ],
                          ),
                        ),
                      ))
                    ],
                  )),
              Expanded(
                  flex: 4,
                  child: Container(

                    margin: const EdgeInsets.all(10),
                    width: double.infinity,
                    color: Colors.white12,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Height",style: TextStyle(
                            color: Colors.white
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text("$height",style: const TextStyle(
                              color: Colors.white,
                              fontSize: 30
                            ),),
                            const Text("cm",style: TextStyle(
                                color: Colors.white,
                                fontSize: 15
                            ),),
                          ],
                        ),
                        Slider(
                            max: 220,
                            min: 140,
                            value: height.toDouble(), onChanged: (value)
                        {
                         setState(() {
                           height = value.toInt();
                         });
                        }),

                      ],
                    ),
                  )),
              Expanded(
                  flex: 4,
                  child: Row(
                    children: [
                      Expanded(child: Card(
                        color: Colors.white12,
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            const Text("Weight",style: TextStyle(
                                color: Colors.white
                            ),),
                            Text("$weight",style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  child: const CircleAvatar(
                                      backgroundColor: Colors.white30,
                                      child: Icon(Icons.minimize,color: Colors.white,)),
                                ),
                                const SizedBox(width: 5,),
                                CircleAvatar(
                                    backgroundColor: Colors.white30,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          weight++;
                                        });
                                      },
                                      icon: const Icon(Icons.add,color: Colors.white,),)),
                              ],
                            ),
                          ],
                        ),
                      )),
                      Expanded(child: Card(
                        color: Colors.white12,
                        margin: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [

                            const Text("Age",style: TextStyle(
                                color: Colors.white
                            ),),
                            Text("$age",style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 30
                            ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                  onTap: (){
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  child: const CircleAvatar(
                                      backgroundColor: Colors.white30,
                                      child: Icon(Icons.minimize,color: Colors.white,)),
                                ),
                                const SizedBox(width: 5,),
                                CircleAvatar(
                                    backgroundColor: Colors.white30,
                                    child: IconButton(
                                      onPressed: (){
                                        setState(() {
                                          age++;
                                        });
                                      },
                                      icon: const Icon(Icons.add,color: Colors.white,),)),
                              ],
                            ),
                          ],
                        ),
                      )),
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: InkWell(
                    onTap: (){
                      setState(() {
                        double h = height / 100;

                        double heightSquare = h * h;
                        double res = weight / heightSquare;
                        result = res;
                      });

                    },
                    child: Container(
                      color: Colors.redAccent,
                      child: const Center(child: Text("Calculate",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                    ),
                  )),
                SizedBox(height: 50,

                child: Text("$result",style: const TextStyle(
                  color: Colors.white, fontSize: 25
                ),),
                )
            ],
          ),
        ),
      ),
    );
  }
}

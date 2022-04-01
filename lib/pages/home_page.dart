import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final String id = 'home_page';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _isLogin = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/im_party.jpeg',),
              fit: BoxFit.cover
            )
          ),
          child: Container(
            padding: EdgeInsets.all(15),
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter,colors: [
                Colors.black.withOpacity(0.6),
                Colors.black.withOpacity(0.5),
                Colors.black.withOpacity(0.4),
                Colors.black.withOpacity(0.1)
              ])
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 100,),
                Text('Find the best parties near you',
                  style: TextStyle(color: Colors.yellow,
                      fontSize: 40,),),
                SizedBox(height: 30,),
                Text('Lets us find you a party for you interest',
                  style: TextStyle(color: Colors.greenAccent,
                      fontSize: 25,fontWeight: FontWeight.w400),),
                SizedBox(height: 150,),

                _isLogin ?
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Container(
                                height: 55,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.blue
                                ),
                                child: Center(child: Text('FaceBook',style: TextStyle(color: Colors.white,fontSize: 18),)),
                              ),
                            ),
                            SizedBox(width: 15,),
                            Expanded(
                              child: Container(
                                height: 55,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(50),
                                    color: Colors.red
                                ),
                                child: Center(child: Text('Google+',style: TextStyle(color: Colors.white,fontSize: 18),)),
                              ),
                            ),
                          ],
                  ),
                      ):
                Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                  height: 55,
                  decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Colors.red
                  ),
                  child: Center(child: Text('Start+',style: TextStyle(color: Colors.white,fontSize: 18),)),
                ),
                          ],
                        ),
                      ),
                SizedBox(height: 5,)
              ],
            ),
          ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'InputField1.dart';

void main() => runApp(App());

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Trouver',
      home: Start(),
    );
  }
}

class Start extends StatelessWidget {
  const Start({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: AppBar(
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50),bottomRight: Radius.circular(50)),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/app_bar1.png'),
                  fit: BoxFit.fill
                ),
              ),
            ),
          ),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(50),bottomLeft: Radius.circular(50))),
          centerTitle: true,
        ),
      ),

      body: Center(
        /*child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/main_bg.png'),
                fit: BoxFit.cover
            ),
          ),
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('images/appbar2.png'),
                Image.asset('images/logo.png'),
              ],
            ),
          )
        ),*/
        child: Image.asset('images/main_bg.png',width: 500,height: 2000,fit: BoxFit.fill,),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LoginPage()));
          //Navigator.pop(context);
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return LoginPage();
          }));
        },
        foregroundColor: Colors.redAccent,
        backgroundColor: Colors.black,
        child: Text('CLICK'),
      ),
    );
  }
}

class Features extends StatelessWidget {
  const Features({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.view_headline),
          color: Colors.white,
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('Trouver : Bus Tracking',style: TextStyle(fontFamily: 'ArchitectsDaughter',fontSize: 24),),
        elevation: 30,
      ),
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            //SizedBox(height: 40),
            Expanded(
              flex: 1,
              child: Text('Search for bus tickets !',style: TextStyle(fontSize: 27,color: Colors.red),),
            ),
            Expanded(
              flex: 3,
              child: InputField1(),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return New();
                  }));
                },
                child: Text('Check Availability',style: TextStyle(color: Colors.purple,fontSize: 23),),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class New extends StatelessWidget {
  const New({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){},
          icon: Icon(Icons.wrong_location),
          color: Colors.greenAccent,
        ),
        backgroundColor: Colors.yellow,
        centerTitle: true,
        title: Text('Features',style: TextStyle(fontFamily: 'ArchitectsDaughter',fontSize: 24),),
        elevation: 30,
      ),
      body : Column(
       crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 100),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.access_time_outlined), label: Text('Guest Booking')),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.add_ic_call_outlined), label: Text('Contact Us')),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.arrow_right_alt), label: Text('Login')),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.question_answer), label: Text('Depots Enquiry')),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.info_outline), label: Text('About App')),
          RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.file_copy_outlined), label: Text('Terms & Conditions')),
        ],
      ),
    );
  }
}





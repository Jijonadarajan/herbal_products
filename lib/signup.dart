import 'package:flutter/material.dart';
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
      return
            Scaffold(body: SingleChildScrollView(
                     child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                                         children: [
                                          
                                          Image.asset('assets/herbalsignup.png',height: 300,width: 300,),
                                         SizedBox(height: 10,),
                                         Text('Sign Up',style: TextStyle(
                                           fontSize: 20,fontWeight: FontWeight.bold
                                         ),),
                         
                                         Container(
                                           padding: EdgeInsets.all(15),
                                           child: TextFormField(decoration: InputDecoration(
                                             
                                             labelText: 'NAME',
                                             hintText: ('Enter Your Name'),
                                             border: OutlineInputBorder(
                                               
                                             ),
                                             
                                             
                                           ),
                                           ),
                                         ),SizedBox(height: 0),
                                         
                                         Container(
                                           padding: EdgeInsets.all(15),
                                           child: TextFormField(decoration: InputDecoration(
                                             
                                             enabledBorder: OutlineInputBorder(
                                             
                                             ),
                                             focusedBorder: OutlineInputBorder(
                                               
                                               borderRadius: BorderRadius.circular(15),
                                             ),
                                             
                                           
                                             labelText: 'Email',
                                             hintText: ('Enter Your Email'),
                                           ),),
                                         ),
                                         SizedBox(
                                           height: 0,
                                         
                                         ),
                                         SizedBox(height: 0),
                                         
                                         Container(
                                           padding: EdgeInsets.all(15),
                                           child: TextFormField(decoration: InputDecoration(
                                             
                                             enabledBorder: OutlineInputBorder(
                                             
                                             ),
                                             focusedBorder: OutlineInputBorder(
                                               
                                               borderRadius: BorderRadius.circular(15),
                                             ),
                                             
                                           
                                             labelText: 'PASSWORD',
                                             hintText: ('Enter Your Password'),
                                           ),),
                                         ),
                                         SizedBox(height: 0),
                                         
                                         Container(
                                           padding: EdgeInsets.all(15),
                                           child: TextFormField(decoration: InputDecoration(
                                             
                                             enabledBorder: OutlineInputBorder(
                                             
                                             ),
                                             focusedBorder: OutlineInputBorder(
                                               
                                               borderRadius: BorderRadius.circular(15),
                                             ),
                                             
                                           
                                             labelText: 'RE ENTER',
                                             hintText: ('Enter Confirm Password'),
                                           ),),
                                         ),
                                         MaterialButton(minWidth: 300,
                                         height: 50,
                         
                                         
                                         color:Color.fromARGB(56, 51, 156, 13),
                                       shape: RoundedRectangleBorder(
                                         borderRadius: BorderRadius.circular(15)
                                         
                                       ),
                                       child: Text('SIGNUP',
                                       style: TextStyle(
                                         color: Colors.white
                                       ),),
                                         onPressed: () {
                                           
                                           
                                        
                                         },),
                                         
                                     SizedBox(
                                             height: 60,
                                             child: Row(
                                               mainAxisAlignment: MainAxisAlignment.center,
                                             children: [
                                               
                                               GestureDetector(
                          onTap: () {
                            
                          },
                          child: Image.asset('assets/icons8-google-48.png',height:250,),
                          
                                               ),
                                               GestureDetector(
                          
                          onTap: () {
                            
                          },
                          child: Image.asset('assets/icons8-facebook-48.png',),
                                               )
                                               
                                             ],
                                             
                                             ),
                                             
                                           ),
                                           SizedBox(height: 30,
                                           child: Row(
                                             mainAxisAlignment: MainAxisAlignment.center,
                                             children: [
                                               Text('Already have an acoount',style:TextStyle(
                          fontSize: 15,
                          color: Colors.grey
                                               ) ,),
                          TextButton(
                          onPressed: () {
                            
                            },child: Text('Log In',style: TextStyle(
                              fontSize: 15,color: Colors.blue,
                              
                            ),),
                          ),
                                               
                                             ],
                                           ),),
                                           
                                         SizedBox(height: 20,)
                                         ],
                                         
                                         
                                         
                                         
                                          
                                       ),
                       ),
                     ),
                   );
                   
                 
         
    }
  }
  


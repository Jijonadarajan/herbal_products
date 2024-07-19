import 'package:flutter/material.dart';
import 'package:herbel_products/Loginscreen.dart';


class foodapp extends StatefulWidget {
  const foodapp({super.key});

  @override
  State<foodapp> createState() => _foodappState();
}

class _foodappState extends State<foodapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Image.asset('assets/herbal.png.png'),
            SizedBox(height: 10,),
            Text('Passionate about herbal!',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
              
              
              

            ),),
            SizedBox(height: 10,),
            
            Text('This is unique one and its therir in controle every thing'),
            SizedBox(height: 40,),
            Center(
                  child: MaterialButton(
                    minWidth: 300,
                    height: 50,
                    color: Color.fromARGB(56, 51, 156, 13),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Text('Get started',
                    
                    style: TextStyle(
                      color: Colors.white

                    ),),
                    

                    onPressed: () { 
                      Navigator.push(context, MaterialPageRoute(builder:(context) =>LoginScreen()));
                     },
                    
                    

                      
              
                        
                        
                    
                   ),
                      
                    ),
                  
                    
                      
                      
            ]
                  ),
      ),
      ),
      );
              
  }
} 
            
            
            
            
          
      
          
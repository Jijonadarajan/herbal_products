import 'package:flutter/material.dart';
import 'package:herbel_products/homescreen/product.dart';
class Addtocart extends StatefulWidget {
  final Product product;
  const Addtocart({super.key,required this.product});

  @override
  State<Addtocart> createState() => _AddtocartState();
}

class _AddtocartState extends State<Addtocart> {
  int currentindex=1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),

      child: Container(
        height: 85,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          color: Colors.black,
        ),
        padding: EdgeInsets.symmetric(horizontal: 15),
        alignment: Alignment.center,
        child: Row(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.white)
              ),
              child: Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.remove,color: Colors.white, size: 18,)),
                  SizedBox(width: 5,),
                  Text(currentindex.toString(),style: TextStyle(
                    fontWeight: FontWeight.bold,color: Colors.white
                  ),),
                  SizedBox(width: 5,),
                   IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.white, size: 18,))
                ],
              ),

              

            ),
            SizedBox(width: 10,),
            GestureDetector(
               onTap: () {
                
              },
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadiusDirectional.circular(30)
                ),
                alignment: Alignment.center,
                padding:  EdgeInsets.symmetric(horizontal: 50),
                child: Text('Add to cart',style:TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20

                ),),
              ),
            )
          ],
        ),

      ),
    );
    
  }
}
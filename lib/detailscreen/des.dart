import 'package:flutter/material.dart';
import 'package:herbel_products/homescreen/product.dart';

class Des extends StatelessWidget {
  final Product product;
  

  const Des({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          product.tittle,
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      
        
        SizedBox(height: 20),
        Row(
          children: [
            Text(
              '₹${product.price.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
              
            ),
            SizedBox(width: 200,),
            Container(height: 20,width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color.fromARGB(255, 202, 120, 12),
              ),
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              children: [
                Icon(Icons.star,color: Colors.white,size: 14,),
                SizedBox(width: 3,),
                Text(product.rating.toString(),style: TextStyle(
                  fontSize: 13,
                  color: Colors.white
                ),)
              ],
            ),
            )
          ],
        ),

        SizedBox(height: 10),
        Text(
          'Seller: ${product.seller}',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        SizedBox(height: 10),
        Text(
          'Category: ${product.category}',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
      
        
        SizedBox(height: 10),
        Text(
          'Quantity: ${product.quantity}',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(height: 40,width: 120,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 202, 120, 12),
                  ),
                alignment: Alignment.center,
                
                child: Text('Description',style:TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ) ,),
              
                 )   ,
            
                Text('Specification',style:TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0)
                ) ,),Text('Reviews',style:TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0)
                ) ,),
               
                    
          ],
          
          
        ),
        SizedBox(height: 10,),
        Text(product.description)
        
      ],
    );
  }
}

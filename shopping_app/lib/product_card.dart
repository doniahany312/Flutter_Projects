import 'package:flutter/material.dart';
import 'package:shopping_app/product.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class product_card extends StatelessWidget {
  Product product;
  product_card({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
          width: 190,
          height: 250,
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    color: Colors.grey,
                    height: 150,
                    child: Image.network(product.imageURL),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  product.name,
                ),
                SizedBox(
                  height: 10,
                ),
                RatingBarIndicator(
                    itemBuilder: (context, _) => Icon(Icons.star),
                rating: product.rating,
                itemCount: 5,itemSize: 10,physics: BouncingScrollPhysics(),)
              ,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text("\$${product.price}"),InkWell(child: Icon(Icons.shopping_cart,color: Colors.deepOrange,),onTap: (){},)])]),
            ),
          ));

  }
}

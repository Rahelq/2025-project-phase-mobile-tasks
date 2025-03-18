import 'package:flutter/material.dart';

class FoodDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: Column(
        children: [
        
          Expanded(
            flex: 4,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.blue.shade900, Colors.blue.shade500],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 50),
                    child: Image.network(
                      'https://s3-alpha-sig.figma.com/img/b1d0/0daa/34c503883ae34fb535339930ae8d46c7?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=JrpkbaJqHgurdgvdfnnGQwGJVmuB2krwiYuIs6B935SuiLFVfzdmOAIdcEgJLuQqABYdcE0GHRCEJdBI8vZOZTUJ0gk69ARiP9U2duJwveTdn1h8XD1BVMfXn9VCemwt2Jx655Znw3XrcecDXJaqQsni9dSZ4TNOSK~JWql6gGs3MTgsc1ek0AJXT5VjcNvuYpYQgxjNfm2dOLTlqmvWXmXnbpd14v0BHDRsZkhIVzwqFi~rNlC9bGHc89ek4UTE5KzuDxkjUGLm17oV1AHzm2F8-qtf5m4o50lWaNLyWNIwASBEvHwDQ3mbSGzv1spTHZgQjnIhyPblekO-h~q0TQ__', // Add your food image here
                      height: 200,
                    ),
                  ),
                ),
              ],
            ),
          ),

      
          Expanded(
            flex: 6,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
               
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.star, color: Colors.white, size: 20),
                            SizedBox(width: 5),
                            Text(
                              '4.8',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '\$20',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.orange.shade800,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 15),

                
                  Text(
                    'Beef Burger',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 8),

                 
                  Text(
                    'Big juicy burger with Cheese, Lettuce, Onions, Tomato, and special sauce!',
                    style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
                  ),

                  SizedBox(height: 15),

               
                  Text(
                    'Add Ons:',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 10),

                
                  Row(
                    children: [
                      addOnItem(
                        'https://s3-alpha-sig.figma.com/img/b736/c2dc/46c1d62c2602103d0c76fc9e021ef615?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=a~wRn8G6OhNIg5Dqui1rN65ZH0KIcrMUZSTOQBwrdutSAu3oWW43uAY7CgDFabIejtOWTVmvzXpv3LENY4TEnxEUYpcgIm5igYVHzkZCNV47upptrLEzBtKrXgMwLuJu7nOdiZeoIbftFGNjUKzx9vffiZQsqsvtc7~3eUvWkCMEW2UT3o2Ij1SMU54sw5u6nPyfC3pKAUVsEuKo4xAn4Nsu~EcY1igLmQUZhYnTJL-EVYeVpRmsTWXIfAoHSwmKYGBj3e1cO2-7Zm~Ggy41yKPWxvYjw~ASH2L08qhlkLO5RGCHMhwpqNBKILfeKOwEeYdBASuZlL4BzkdO0rQO0A__',
                      ), // Example image
                      SizedBox(width: 10),
                      addOnItem(
                        'https://s3-alpha-sig.figma.com/img/8fff/29f7/591e249a84594f6948c5e4eff5449c0e?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=NI7D-jlYe-Hk~9e6sIXjRISk72rwYDcatu5bqus2t6H2RNPd5ggO8JOYde~c~9fNPDp68NGOImCJ-ghYNPhVCyk~3VUq6Ev8U-8xAabQyFZXgI7bJyon-s-izHb77P1UFq3k5XPIVZ0DSHqZlZMdd40D4vlwrAw3FAVJ7y0C~C5zC4gNKTID-RNUJWm2kWB9B6~E9GVCTmw7Jlui5LIgVJ9sTRWHgLGLSVnAZPkm1zdkBR~xk9x5ia4S-PbBEwaUI4rLLTZddGdCPlc2rHu6r3EXT0GApSeQAkJlngsOk9bqF1FRTSEaEUZdgPFOiBF-hHpJbPBt5Q58SlfBHjrVEw__',
                      ),
                      SizedBox(width: 10),
                      addOnItem(
                        'https://s3-alpha-sig.figma.com/img/1f0f/e0af/93738c2187eb7695186826f2389b29d0?Expires=1742774400&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=MapLPVIwMlXPdkeGGK-Ny9Z908yt6pMWpSiU2ui6k93Bq-BXIvjCX4NvDubtesxlc1UlF4C8NwMBI9JYmaNOd~Wo-pfj-okvHNOFeG5rwj~e6Vxhb8V9nAlqbnBI6UrvnfosBOKlxy6GKaRhCrNDjf-ArWNU0UBCwvJ0mlIMT-g02mHMc5tKGoqFFN6pe2wCg29rnMIbAUkQboAsLX--vMc3eocTDh~-f9DoBEVEq6UeMhxk5i~1AlJpSAOu-cwe1FcHdh~ZNrOJ1JUNOs3Ml8SOQRIot9p7X5vJBylTZrF2x8HIB7tL~Ljt0cpvHEGUhLffVUE2VDXk2SmprdJFnw__',
                      ),
                    ],
                  ),

                  Spacer(),


                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue.shade900,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Add to Cart',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }


  Widget addOnItem(String imagePath) {
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white, 
        borderRadius: BorderRadius.circular(15), 
        border: Border.all(color: Colors.green, width: 2),
      ),
      child: ClipOval(child: Image.network(imagePath, fit: BoxFit.cover)),
    );
  }
}

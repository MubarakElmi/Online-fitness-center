import 'package:flutter/material.dart';
import 'package:spor/Models/fit.dart';
class FitTitle extends StatelessWidget {
  final Fit fit ;
  void Function()? onPressed;
  FitTitle({super.key, required this.fit, required this.onPressed,  });
   
//required this.onPressed,
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[200], borderRadius: BorderRadius.circular(12)
      ),
      margin: const EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
      child: ListTile(
        
        title: Text(fit.name),
        leading: Image.asset(fit.imagePath,
        )
        ,
        trailing: IconButton(icon: Icon(Icons.start),
        onPressed: onPressed ,
        ),
        
      ),
      
      
      
      
    );
    
  }
}
import 'package:cash_manager/presentation/core/strings.dart';
import 'package:flutter/material.dart';

class TypeOfExpences extends StatelessWidget {
   const TypeOfExpences({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Card(
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: types.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                    child: ListTile(
                      leading: Icon(icons[index]),
                      title: Text(types[index], style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                      subtitle: Text(subtitles[index]),
                      trailing: Text(incomes[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

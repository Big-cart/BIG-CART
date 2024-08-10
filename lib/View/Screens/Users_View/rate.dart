import 'package:big_cart/core/Widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class Rate extends StatelessWidget {
  const Rate({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      isPadding: false,
      appBar: AppBar(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text(
                'التقييم',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'يرجى إعطاء تقييمك عن طريق النقر على النجوم أدناه',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(5, (index) {
                  return IconButton(
                    icon: Icon(
                      index < 4 ? Icons.star : Icons.star_border,
                      color: Colors.amber,
                    ),
                    onPressed: () {
                      // Handle rating update here
                      print('Rating: ${index + 1}');
                    },
                  );
                }),
              ),
              const SizedBox(height: 20),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: 'أخبرنا عن تجربتك',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  suffixIcon: const Icon(Icons.edit),
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Add your submit functionality here
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  backgroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Text(
                    'إرسال',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatelessWidget {
  const Search({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        actions: const [
          Icon(Icons.person),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Icon(Icons.settings),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'ابحث هنا',
                      prefixIcon: const Icon(Icons.search),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 50.h),
            Text(
              'سجل البحث',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 30.h),
            Wrap(
              spacing: 8,
              children: [
                'موز',
                'طماط',
                'بقرة',
                'تفاح أخضر',
                'بن يمني',
              ]
                  .map(
                    (text) => Chip(
                      shape: const LinearBorder(),
                      side: BorderSide.none,
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      label: Text(
                        text,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 50.h),
            Text(
              'الإقتراحات',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 30.h),
            Wrap(
              spacing: 8,
              children: [
                'بطاط',
                'افوكادو',
                'دجاج بلدي',
                'دقيق أبيض',
              ]
                  .map((text) => Chip(
                      shape: const LinearBorder(),
                      side: BorderSide.none,
                      padding: EdgeInsets.symmetric(horizontal: 14.w),
                      label: Text(
                        text,
                        style: Theme.of(context).textTheme.bodyMedium,
                      )))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

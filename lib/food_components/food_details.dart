import 'package:flutter/material.dart';

import 'map_screen.dart';


class FoodDetailScreen extends StatelessWidget {
  final Map<String, dynamic> foodItem;

  const FoodDetailScreen({super.key, required this.foodItem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(50, 50, 50, 1), // الخلفية الرمادي
      body: SingleChildScrollView( // إضافة خاصية التمرير
        child: SizedBox(
          height: MediaQuery.of(context).size.height, // استخدام ارتفاع الشاشة بالكامل
          child: Stack(
            children: [
              // الكارد الذي يحتوي على الصورة والبيانات
              Positioned(
                top: 138, // رفع الكارد ليكون قريب من الأعلى
                left: 10, // المسافة من اليسار
                right: 10,
                bottom: 0,
                child: Card(
                  elevation: 8, // تأثير الظل
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25), // زاوية دائرية للكارد
                  ),
                  color: Colors.white, // لون الكارد الأبيض
                  child: Padding(
                    padding: const EdgeInsets.all(20.0), // المسافات داخل الكارد
                    child: Column(
                      children: [
                        // الصورة التي تخرج من الكارد (مع Container شفاف)
                        Transform.translate(
                          offset: const Offset(0, -100), // رفع الصورة للأعلى
                          child: Container(
                            height: 350,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.transparent, // خلفية شفافة
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.network(
                                foodItem['image']!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10), // المسافة بين الصورة وبقية البيانات

                        // اسم الطعام
                        Transform.translate(
                          offset: const Offset(0, -100), // رفع النص للأعلى
                          child: Text(
                            foodItem['name']!,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(0, -80),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // ساعة الأيقونة
                              Image.network(
                                'https://s3-alpha-sig.figma.com/img/4c0f/d125/b13596157cc1ed9ecf91be4725fdc610?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=PfMoAmBj4oqI3Xz0qhW1erxfhg1F9E4TOLxDV3guS6rNEFrdvLbUsx2lTKaf987vCzQ9oaRxJhnkXosDXesRkyUXZKcdtcqm6zQCd2~wMx1lxv91K-lmVoM4XAIQD-~M1NFYlnoKcs3IIR6wQOLlMzDMZJT6frCgoiURSxi2fdqCdaMnuBv-q8dRSIQBUklFqpr61ROiprQzwp~tpvZSByPTbF31b6~gF-9IUoBK2iV5kXbnS8Xz6WJdfywm9xvraRSHmtjVVQQAiG8knCa4dhbrAO4nf7romnAsxru-0BaMhS0WZpySw~Djre8gaqVu6iaSibXgZq-sLzkIFtAI2w__',
                                width: 40,
                                height: 40,
                              ),
                              const SizedBox(width: 5),
                              const Text(
                                "30 Min",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 15),
                              // الصورة الثانية
                              Image.network(
                                'https://s3-alpha-sig.figma.com/img/b38f/8a27/01c2a7db013e24d36b5bcfe22d5dcc35?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=ko2bkaDs8KTjMBJbxr9P8TmucU1P59udVCRcs1lrQ9Cskx5mIP0S56CrS9sVOLxObAfZLc2XMnN9KjaepRubPl60zVDCS3l~zwmYqH45HTkBMCdRLB964QXWVeezx2RBc9Z6wvzBGMD9w63yRlc1HOZ0a3JBzweTCr-AWKE~FY~9mfMSEa4wuAJ0U7TSWZ7EmaOWNTlS~8ry2yRI8zaL~dhEVGCV-vyma0P2CK0IomoT8y7k0lfv4hX-hir0qUVJRenKX3i1CR6U7nflRdPO7XbHMc0Y-4RYOTRARnr5y87MWYAdORUqDejYv2d7ldhaMWx923BWbMG4tzsM7~H7xA__',
                                width: 40,
                                height: 40,
                              ),
                              const SizedBox(width: 5),
                              // السعرات الحرارية
                              const Text(
                                "350 Kcal",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                              const SizedBox(width: 15),
                              Image.network(
                                'https://s3-alpha-sig.figma.com/img/ee93/208b/ac67f1dd845ec3174deb1462ef5abd0e?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=csl3ed2Ggv0MPN4Ljyq4nbMrIBZ6vAbq2Hq6I1vrTdT7mC1KMxpKPa6oCsNIgwyPB7PSFZtoodUiABLo-4uNKHI3VdcJ3jNY5haVkyOOTzjdEl72fgigOdPFBEWys3MQUMr~S7DqdKjnkdEw-9pmwobVRhPYbeU98X8tiTql7rHhJEijxpsRTZPF~CqTAleq9DOU1Cb27ERKprZbJdoKcYR3LqOmT6vsxBmVnobVCJ6Rkwx0YDDOWpanescz9WaEcTejBwiAeEdLBoA3a0McShCMLA0MbLmkvFiGfyNxAQshmxNCSlPg8V9EO1dNz943A2El0gHyJ9AJrTO95lR8lA__',
                                width: 40,
                                height: 40,
                              ),
                              const SizedBox(width: 5),
                              // السعرات الحرارية
                              const Text(
                                "4.9",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20), // المسافة بين السعر والوصف

                        Transform.translate(
                          offset: const Offset(0, -80), // رفع النص للأعلى
                          child: const Text(
                            "Chicken curry with rice is a flavorful dish made by simmering chunks of chicken in a spicy curry sauce and serving it over a bed of steamed rice. The curry sauce is typically made with a blend of aromatic spices and coriander, as well as coconut milk for creaminess.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),

                        const SizedBox(height: 20), // المسافة قبل الأزرار

                        Transform.translate(
                          offset: const Offset(0, -40), // رفع النص للأعلى
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // زر الكمية (يسار) مع + و -
                              Container(
                                height: 50, // تحديد الارتفاع ليتناسب مع الزر الآخر
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                decoration: BoxDecoration(
                                  color: const Color.fromRGBO(217, 217, 217, 1), // خلفية فاتحة
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(Icons.remove),
                                      onPressed: () {
                                        // تقليل الكمية
                                      },
                                    ),
                                    const Text(
                                      "2",
                                      style: TextStyle(fontSize: 18),
                                    ),
                                    IconButton(
                                      icon: const Icon(Icons.add),
                                      onPressed: () {
                                        // زيادة الكمية
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => MapScreen()),
                                  );
                                },
                                child: Container(
                                  height: 50, // تحديد الارتفاع ليتناسب مع الزر الآخر
                                  padding: const EdgeInsets.symmetric(horizontal: 15),
                                  decoration: BoxDecoration(
                                    color: const Color.fromRGBO(40, 40, 40, 1), // خلفية داكنة
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Row(
                                    children: [
                                      Text(
                                        "Add to Cart",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "\$18",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
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

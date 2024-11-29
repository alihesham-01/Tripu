import 'package:flutter/material.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // الخلفية بالصورة مع التحكم في الحجم والتحريك
          Positioned.fill(
            child: Transform(
              transform: Matrix4.identity()
                ..scale(1.6) // تكبير الصورة (1.5 يمكن تعديلها حسب الحجم المطلوب)
                ..translate(0.0, -50.0), // تحريك الصورة لليمين بمقدار 50 بكسل (يمكنك التعديل)
              child: Image.network(
                'https://s3-alpha-sig.figma.com/img/d582/740d/3646c8e98e2a56e3902d3c9b610cec14?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=o8l3cqIKOiZun3rN6U86bwXY3aXjbQTYjkQBS-1yw4TOtWugKcvnNC13jfeeekgoQHWAm4qE-WQb~4kSX1NrBDcG2Pc0394I~TO2b0Kp~4NkJ4q3F5ME4HI1qBBB8hBJAUjtSZLqIUXppqgEE-FTTb10YGaE0AcTF~dccWEOcuVFDl1gwmOGKjWpW~Tn0V-txzMpSgUiReiwNGyFYZ2BCueq55vXq~tDNRXA4dL9uvSNayrWkobcafU3fnntyyfHU3UXEA8~m3kJPxDGXZSZE31nHJon5v2v~P35EK0g3pBCMA5B8uMPtjvTIENUkjz84msa6TOb~FDq1g76SYq6DQ__',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // الدائرة البيضاوية في الزاوية اليمنى
          Positioned(
            top: 40, // المسافة من أعلى الشاشة
            right: 15, // المسافة من يمين الشاشة
            child: Container(
              height: 50, // صغر الحجم
              width: 50, // جعلها بيضاوية مع عرض أكبر من الارتفاع
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(25), // تحديد الحواف الدائرية
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Center(
                child: ClipOval(
                  child: Image.network(
                    'https://s3-alpha-sig.figma.com/img/a28a/0137/e0456aeb7e916ab9ec48965c227317b0?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=P92~mfOcyBiqicAJm55CjIfM-ofmhKrtNrN7UUWzQXLLbY75eD-mjjgBpkocxCSYHuky8FNs09aG1ei9z6woh336mnXEL1MKef05dGJaoao1eTrvTdH1hrTnf~wFpoRmfPWrezy9LHDdNA9hDimS5FPoWlZpsg336LFPMYg4GHgC8zKk2kPmbmPc3~3j~P5v~v2ppSskCVYsTmiwCiEk0gnXPqwMbCm0YmQ9Ew0ZXGBAg9UqreotyoYWxjBjGr~PZ6PJJbJ3RP-tGKuN9ktIqWLbmawVlVIz2iN~lTCFfR59z7-xi~vi3RW-D7Kld~XI6fpD83jBZ0uHFOj4GU5HXA__',
                    height: 25,
                    width: 25,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),

          // الدائرة الرمادية على اليسار
          Positioned(
            top: 40, // المسافة من أعلى الشاشة
            left: 15, // المسافة من يسار الشاشة
            child: Container(
              height: 50, // صغر الحجم
              width: 50, // صغر الحجم
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(222, 222, 222, 1),
              ),
              child: const Center(
                child: Text(
                  "<",
                  style: TextStyle(
                    fontSize: 24, // تقليل حجم النص
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),

          // الدائرة الكبيرة 74x74
          Positioned(
            top: 400, // المسافة من أعلى الشاشة
            left: 200, // المسافة من يسار الشاشة
            child: Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(255, 255, 255, 1),
              ),
              child: Center(
                child: Image.network(
                  'https://s3-alpha-sig.figma.com/img/7491/2503/a37fcbb79dc369e6a70ce1f45f4936d5?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=D--tJ9QsuB9ciGssiqW49NqkKPs2WIZPUpi7x5j4EebsVXsjK2evrK1WOeCaJQRMnZzfl~mL83VhhdJhmPdZwRPXOK9exkhYmxSl-vrGKw~875PUU2bQz6CCqmn2fm5YgrOYqpTy7L0PcUTUxcHKoAYJrm2IAjmBZ7a7aQvda2yLKB9DZxR63zObT4CNBCDm9GCP4LZ5VN-zosQAx3uennEjWutYoQWUBhi7fi9RatIFikFcs04VA9qxRtJTVBMZ~jzemWJSDRwTSAS4stO~f39W4lEJfhWyrEMCZLb864CdqxKfRtO~HQTcpJbUhGjMmjv8oAjoEY3TT8Zu6xm7Sw__',
                  height: 60,
                  width: 60,
                ),
              ),
            ),
          ),

          // الدائرة الصغيرة 57x57
          Positioned(
            top: 200, // المسافة من أعلى الشاشة
            left: 100, // المسافة من يسار الشاشة
            child: Container(
              height: 57,
              width: 57,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(254, 254, 254, 1),
              ),
              child: Center(
                child: ClipOval(
                  child: Container(
                    height: 20,
                    width: 20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [Color(0xFFFF0000), Color(0xFFFF8A00)],
                      ),
                    ),
                    child: Center(
                      child: ClipOval(
                        child: Container(
                          height: 8,
                          width: 8,
                          color: Colors.pink,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),

          // إضافة DeliveryInfo في الأسفل
          const Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: DeliveryInfo(),
          ),

          // إضافة CustomContainer في الأسفل
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: CustomContainer(),
          ),
        ],
      ),
    );
  }
}
class DeliveryInfo extends StatelessWidget {
  const DeliveryInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(4, 3),
              ),
            ],
          ),
          child: Column(
            children: [
              // صف الساعة
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(222, 222, 222, 1),
                    ),
                    child: Image.network(
                      'https://s3-alpha-sig.figma.com/img/f408/fbe1/220f15a44a6eeb48b585e8660bdb55c3?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=W4Cp09WD3~dQFbMxQzXKV1k~8aQ4T2mhlnvR76DvHgJOnAhc~6QjN6GjFpPClS-bAyWRslDvkEsOQuu9GW5VvYHAdu4MKM6eMBJ7llNoS9zdHlSGqUyZ0a~m-DJgh1yXBI5t9eWN~Dl23Juy1I64AJ6NykCa5BSLSkn-3jYTEfiRYBpg21dBuIoOg5silBKUv1CXjRtnjNKQYF2MzYyIHRsO58Ny506IfYiiUVP6vVPYAGehtGWkZ40z1TTsdHTVYAwWK4UA7coHngUys7w3cZCiOmS2xDyc5qGPE~jFDd9DJtg6zeriLs4TUogi82HoyvRlwNS4~GqHxpGF6TEX1g__',
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '10-15 min',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Delivery time',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 15),
              // صف العنوان
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color.fromRGBO(222, 222, 222, 1),
                    ),
                    child: Image.network(
                      'https://s3-alpha-sig.figma.com/img/7661/7f96/1c167e325a617f663a47ce466f3342ef?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=qIEfSd98TcAkhCzYSJ0IWDUuPZUoAwlt~EhWpRFc85GqSoZI1Am4UgBLT8MS10EqBH6ZlFP64XOiybVX-W2QH08C4T~GSxyD6M2kv1c9YKekj7ngJgFEuBKyI8AI6JxJ5S0T1Fx0s2JPMyDvzLuXVS6Rdeo7BmiltkXIB6usdaQVdCu~0odmqStucFenhXW3BurUBoRmrjOYpPCmll95Up5~EDPtsaBB5NBAp~R5Sm8NE22-5wyfOsEyyknOg3KK7pCerpOSWjNVsihoZh7tk~dmKtXc5QPlzDEaw456LcsgZd8QBqBLutlYGPZzonHOiiGxEqStY7Uo~cTOCnjdtg__',
                    ),
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '70 Washington Square',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Delivery address',
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 300, // عرض الكنتينر
          height: 150, // ارتفاع الكنتينر
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 62, 62, 1), // الخلفية بلون rgba(62, 62, 62, 1)
            borderRadius: BorderRadius.circular(16), // إضافة حواف دائرية للكنتينر
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween, // توزيع العناصر
            crossAxisAlignment: CrossAxisAlignment.center, // محاذاة العناصر عموديًا
            children: [
              // الدائرة على اليسار مع الصورة
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Column(
                  children: [
                    Container(
                      width: 64,
                      height: 64,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle, // شكل دائري
                        image: DecorationImage(
                          image: NetworkImage(
                            'https://s3-alpha-sig.figma.com/img/abc0/e81b/e485d2084993dfc7c8872a3d4a9edcda?Expires=1733702400&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=O2yKuUUhemXsDfaBE8BJlUmL9cmHJ0RYrbVAM0SZenWI2l1MGCpDcun9fopnPtMBEn-Ar2k0CJPZTV2Bg8gAfdqZYuthgTQrGCC2pNaNDd22OZWEOO5aBQuNJN6dMQCiqOj25JI4lagQvJFB8SuaQWcn6Cnthf43O1TURMlB733UG6U2Xo23Q9IHSJKFSVoia0qRZEkMhZ9LhRQxKbTSErphyuaD128REIvH8z3Urlai5PHN6FckVu~6n2uCTBqpSLosv66UKnj3aLS5pPw5LK1J4sBZlrKVla6K1IAueesJLHJffrbwP~xp6ntp9oJobvoV0z587v77gqPUHuMF1w__',
                          ),
                          fit: BoxFit.cover, // ضبط الصورة داخل الدائرة
                        ),
                      ),
                    ),
                    SizedBox(height: 8), // مسافة بين الصورة والنص
                    Text(
                      'Jordan Keith', // النص فوق الصورة
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Courier', // النص تحت اسم الشخص
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              // الدائرة على اليمين مع الأيقونة
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white, // خلفية الدائرة بيضاء
                  ),
                  child: Icon(
                    Icons.phone, // أيقونة الهاتف
                    color: Colors.green,
                    size: 30,
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









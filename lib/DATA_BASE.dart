import 'models/product_model.dart';

List<Category> categoryData = [
  Category(
    id: 1,
    name: 'کرم',
    latinName: 'Cream',
    image: 'assets/images/adelio/aha.png',
  ),
  Category(
    id: 2,
    name: 'شامپو',
    latinName: 'Shampoo',
    image: 'assets/images/adelio/aha.png',
  ),
  Category(
    id: 3,
    name: 'ژل',
    latinName: 'Gel',
    image: 'assets/images/adelio/aha.png',
  ),
  Category(
    id: 4,
    name: 'سرم',
    latinName: 'Serum',
    image: 'assets/images/adelio/aha.png',
  ),
  Category(
    id: 5,
    name: 'فوم',
    latinName: 'Foam',
    image: 'assets/images/adelio/aha.png',
  ),
  Category(
    id: 6,
    name: 'پن',
    latinName: 'Pan',
    image: 'assets/images/adelio/aha.png',
  ),
  Category(
    id: 7,
    name: 'لوسیون',
    latinName: 'Lotion',
    image: 'assets/images/adelio/aha.png',
  ),
  Category(
    id: 8,
    name: 'روغن',
    latinName: 'Oil',
    image: 'assets/images/adelio/aha.png',
  ),
  Category(
    id: 9,
    name: 'ماسک',
    latinName: 'Mask',
    image: 'assets/images/adelio/aha.png',
  ),
  Category(
    id: 10,
    name: 'تونر و میسلار',
    latinName: 'Toner & Micellar',
    image: 'assets/images/adelio/aha.png',
  ),
  Category(
    id: 11,
    name: 'بالم',
    latinName: 'Balm',
    image: 'assets/images/adelio/aha.png',
  ),
];

List<Brands> brandData = [
  Brands(
    id: 1,
    name: "درمالیفت",
    latinName: "Dermalift",
    image: "images/brands/dermalift.png",
  ),
  Brands(
    id: 2,
    name: "استم سل",
    latinName: "Stem Cell",
    image: "images/brands/stemcell.png",
  ),
  Brands(
    id: 3,
    name: "میلیتو",
    latinName: "Milito",
    image: "images/brands/milito.png",
  ),
  Brands(
    id: 4,
    name: "راکوتن",
    latinName: "Racuten",
    image: "images/brands/racuten.png",
  ),
  Brands(
    id: 5,
    name: "لاکوئینتا",
    latinName: "La Quinta",
    image: "images/brands/la_quinta.png",
  ),
  Brands(
    id: 6,
    name: "توتال درم",
    latinName: "Total Derm",
    image: "images/brands/total_derm.png",
  ),
  Brands(
    id: 7,
    name: "دلانو",
    latinName: "Delano",
    image: "images/brands/delano.png",
  ),
  Brands(
    id: 8,
    name: "بایوریچ",
    latinName: "Bio Reach",
    image: "images/brands/bio_reach.png",
  ),
  Brands(
    id: 9,
    name: "پلزنت",
    latinName: "Pleasent",
    image: "images/brands/pleasant.png",
  ),
  Brands(
    id: 10,
    name: "ادلیو",
    latinName: "Adelio",
    image: "images/brands/adelio.png",
  ),
  Brands(
    id: 11,
    name: "فارمالاین",
    latinName: "PharmaLine",
    image: "images/brands/pharma_line.png",
  ),
  Brands(
    id: 12,
    name: "جوجو",
    latinName: "JOJO",
    image: "images/brands/jojo.png",
  ),
  Brands(
    id: 13,
    name: "رینکون",
    latinName: "Rinkon",
    image: "images/brands/rinkon.png",
  ),
  Brands(
    id: 14,
    name: "بتیس",
    latinName: "Betis",
    image: "images/brands/betis.png",
  ),
  Brands(
    id: 15,
    name: "رین استایل",
    latinName: "Rain Style",
    image: "images/brands/rs.png",
  ),
  Brands(
    id: 16,
    name: "فاین",
    latinName: "Fine",
    image: "images/brands/fine.png",
  ),
];

List<Products> productsData = [
  //! DERMALIFT Products
  Products(
    id: 0101,
    name: 'کرم روشن کننده قوی ملالیفت',
    latinName: 'MELALIFT Cream',
    categoryId: 1,
    brandId: 1,
    fullLatinName: 'MELALIFT Intensive Depigmenting Cream',
    description: [],
    points: [
      'روشن کننده قوی پوست',
      'محافظ پوست در برابر اشعه ماورا بنفش نور خورشید',
      'برطرف کننده تیرگیهای پوستی در اثر عوامل مختلف',
      'رفع لکهای مقاوم به درمان',
      'حفظ شادابی و طراوت پوست',
      'حاوی قوی ترین و جدید ترین ترکیبات روشن کننده پوست',
    ],
    activeIngredients: [
      {
        'ingredientName': '4 N Butylresorcinol',
        'ingredientInfo':
            'جدیدترین و قویترین ترکیب ضد لک در دنیا که بیشترین مقالات و تحقیقات درماتولوژی را در چند سال اخیر در زمینه درمان لک و تیرگی به خود اختصاص داده است. این ماده با اتصال به گیرنده های آنزیم تیروزیناز به صورت برگشت ناپذیر مانع از تشکیل رنگدانه های پوستی می گردد. این ماده فعالیتی سریعتر و قوی تر از هیدروکینون داشته ولی عوارض مصرف آن را بر روی پوست ایجاد نمی کند. بوتیل رزورسینول با اثر روشن کنندگی قوی خود رفع کننده لک های ناشی از نور خورشید، بارداری، افزایش سن و جای زخمها و جوش ها می گردد.',
      },
      {
        'ingredientName': 'Hierogaline',
        'ingredientInfo':
            'پوست را در برابر اثرات مضر اشعه UV خصوصا UVA که اثر مستقیمی روی ایجاد لک دارد محافظت می کند. همچنین مهار رادیکال های آزاد، باعث ترمیم آسیب های ناشی از افزایش سن می گردد و در حفظ و شادابی پوست بسیار موثر است.',
      },
      {
        'ingredientName': 'Asparlyne',
        'ingredientInfo':
            'با افزایش میزان انرژی و متابولیسم سلول ها (ATP) موجب حفظ طراوت و شادابی پوست می شود.',
      },
      {
        'ingredientName': 'Fucogel',
        'ingredientInfo':
            'ترکیبی پلی ساکاریدی است که موجب حفظ رطوبت لایه شاخی پوست می شود.',
      },
      {
        'ingredientName': 'Potassium Azeloyl Diglycinate',
        'ingredientInfo':
            'کمپلکسی از اسید آزلئیک و اسید آمینه گلایسین بوده و با مهار آنزیم تیروزیناز، لک ها و تیرگی های سطح پوست را برطرف می کند. همچنین باعث کاهش ترشحات اضافی سموم و افزایش خاصیت کشسانی پوست می گردد.',
      },
    ],
    color: [],
    image: 'images/dermalift/melaliftCream.png',
    skinType: "مناسب انواع پوست",
    method:
        'روزانه دو بار کرم ملالیفت را بر روی مناطق تیره پوست مالیده و به خوبی ماساژ دهید. در طی روز حتما از کرم ضد آفتاب با SPF مناسب استفاده نمائید.',
  ),
  Products(
    id: 0102,
    name: 'کرم ضد آکنه سبولیفت',
    latinName: 'SEBOLIFT Cream',
    categoryId: 1,
    brandId: 1,
    fullLatinName: 'SEBOLIFT Anti Acne Cream',
    description: [],
    points: [
      'درمان سریع آکنه های التهابی و چرکی',
      'برطرف کننده کومدون های سر سیاه و سر سفید',
      'تنظیم و کنترل مناسب چربی، مهار آنزیم تولید کننده چربی',
      'ضد باکتری و ضد قارچ',
      'کاهش سطح لایه شاخی مجاری غدد چربی و درمان اسکار ناشی از آکنه',
    ],
    activeIngredients: [
      {
        'ingredientName': 'Seboxyl',
        'ingredientInfo':
            'ماده ای موثر در این فراورده بوده که باعث مهار اکسیداسیون چربی و کاهش ترشحات غدد چربی می گردد. این ماده همچنین باعث کاهش التهابات پوستی ناشی از فعالیت باکتری های مولد آکنه می گردد.',
      },
      {
        'ingredientName': 'Encapsulated BHA',
        'ingredientInfo':
            'اسید سالسلیک موجود در این کرم به صورت محلول در آب و داخل کپسول های قابل عبور از غشاء سلولی است. این ماده منجر به لایه برداری ملایم پوست، کاهش سطح لایه شاخی مجاری غدد چربی و درمان اسکار ناشی از آکنه می شود.',
      },
      {
        'ingredientName': 'Asparlyne',
        'ingredientInfo':
            'با افزایش میزان انرژی و متابولیسم سلول ها (ATP) موجب حفظ طراوت و شادابی پوست می شود.',
      },
      {
        'ingredientName': '5 Alpha Avocuta',
        'ingredientInfo':
            'یک مهار کننده قوی آنزیم تولید کننده چربی بوده که منجر به تنظیم و کنترل مناسب ترشح چربی از غدد سباسه پوست می گردد.',
      },
      {
        'ingredientName': 'Fucogel',
        'ingredientInfo':
            'ترکیبی پلی ساکاریدی است که موجب حفظ رطوبت لایه شاخی پوست می شود.',
      },
      {
        'ingredientName': 'Zinc PCA',
        'ingredientInfo':
            'ترکیبی از فعال ترین شکل زینک است که دارای اثرات قوی ضد باکتری، ضد قارچ و ضد چربی می باشد.',
      },
    ],
    color: [
      'غیر رنگی',
      'بژ روشن',
      'بژ متوسط',
    ],
    image: 'images/dermalift/seboliftCream.png',
    skinType: 'مناسب پوست های چرب و دارای جوش',
    method:
        'پس از شستشوی مناسب پوست، روزانه دو بار کرم سبولیفت را روی مناطقی از پوست که دچار آکنه و کومدون گردیده اند، مالیده و به خوبی ماساژ دهید.',
  ),
  Products(
    id: 0103,
    name: 'کرم ضد تیرگی و التیام بخش دور چشم ویتالیفت',
    latinName: 'VITALIFT Cream',
    categoryId: 1,
    brandId: 1,
    fullLatinName: 'VITALIFT Anti Dark Circle Eye Cream',
    description: [],
    points: [
      'کاهش حلقه های تیره دور چشم',
      'ضد التهاب و التیام بخش پوست دور چشم',
      'رفع کننده کبودی دور چشم',
      'افزایش گردش خون پوست دور چشم',
      'دارای خاصیت مرطوب کنندگی و ضد پیری',
      'حاوی کمپلکسی انکپسوله از ویتامینهای موثر در رفع تیرگی دور چشم',
    ],
    activeIngredients: [
      {
        'ingredientName': 'Liposomal Vitamins (A, C, E, B5)',
        'ingredientInfo':
            'کمپلکسی از ویتامین های آنتی اکسیدان که در کپسول های لیپوزومال قرار دارند و به راحتی از غشاء سلول های پوست عبور می کنند و خاصیت روشن کنندگی دارند.',
      },
      {
        'ingredientName': 'Encapsulated Caffeine',
        'ingredientInfo':
            'کافئین موجود در کرم ویتالیفت بصورت لیپوزومال بوده و به راحتی از غشاء سلولی عبور می کند و موجب افزایش گردش خون در ناحیه دور چشم می شود، همچنین از آسیب های پوست ناشی از اشعه UV جلوگیری می کند.',
      },
      {
        'ingredientName': 'Asparlyne',
        'ingredientInfo':
            'با افزایش میزان انرژی و متابولیسم سلول ها (ATP) موجب حفظ طراوت و شادابی پوست می شود.',
      },
      {
        'ingredientName': 'Liposomal Vitamins K',
        'ingredientInfo':
            'ویتامین K در کپسول های لیپوزومال محلول در آب حمل می گردد و منجر به افزایش گردش خون پوست ناحیه دور چشم می گردد.',
      },
      {
        'ingredientName': 'Unisooth EG',
        'ingredientInfo':
            'یک کمپلکسی از مواد طبیعی است که باعث رفع تیرگی و التهاب ناحیه دور چشم می گردد.',
      },
      {
        'ingredientName': 'Fucogel',
        'ingredientInfo':
            'ترکیبی پلی ساکاریدی است که موجب حفظ رطوبت لایه شاخی پوست می شود.',
      },
      {
        'ingredientName': 'Sweetone',
        'ingredientInfo':
            'این ماده التیام بخش و ضد التهاب و ضد قرمزی ناحیه دور چشم بوده و در رفع کبودی و تیرگی بسیار موثر است.',
      },
    ],
    color: [],
    image: 'images/dermalift/vitaliftCream.png',
    skinType: 'مناسب انواع پوست',
    method:
        'ترجیحا شبها کرم دور چشم ویتالیفت را از سمت داخل به خارج پلک تحتانی با حرکات ضربه ای ملایم بمالید. مراقب باشید کرم داخل چشم نگردد. کرم دور چشم را حداقل به مدت شش ماه استفاده نمائید.',
  ),
  Products(
    id: 0104,
    name: 'کرم ضد قرمزی رزالیفت',
    latinName: 'ROSALIFT Cream',
    categoryId: 1,
    brandId: 1,
    fullLatinName: 'ROSALIFT Anti Redness Cream',
    description: [],
    points: [
      'رفع کننده سرخی و قرمزی پوست',
      'کمک به رفع التهاب پوستی',
      'تسکین دهنده و ضد التهاب پوست',
      'حفظ شادابی و طراوت پوست',
      'فاقد ترکیبات استروئیدی',
    ],
    activeIngredients: [
      {
        'ingredientName': 'Asparlyne',
        'ingredientInfo':
            'با افزایش میزان انرژی و متابولیسم سلول ها (ATP) موجب حفظ طراوت و شادابی پوست می شود.',
      },
      {
        'ingredientName': 'Fucogel',
        'ingredientInfo':
            'ترکیبی پلی ساکاریدی است که موجب حفظ رطوبت لایه شاخی پوست می شود.',
      },
      {
        'ingredientName': 'Sweetone',
        'ingredientInfo':
            'این ماده التیام بخش و ضد التهاب و ضد قرمزی ناحیه دور چشم بوده و در رفع کبودی و تیرگی بسیار موثر است.',
      },
      {
        'ingredientName': 'Claritea',
        'ingredientInfo':
            'این ترکیب پلی فنولی، آنتی اکسیدانی قوی است که موجب کاهش سرخی گسترده پوست می گردد و این ماده کمک شایانی به رفع جوش های التهابی می کند.',
      },
    ],
    color: [],
    image: 'images/dermalift/rozaliftCream',
    skinType: 'مناسب پوست های خشک و حساس',
    method:
        'کرم رزالیفت را روزانه ۲ تا ۳ بار بر روی مناطقی از پوست که دچار قرمزی یا التهاب گردیده اند، بمالید. مصرف کرم را تا رفع کامل قرمزی و التهاب ادامه دهید.',
  ),
  Products(
    id: 0105,
    name: 'کرم سفت کننده و لیفتینگ پوست فرمالیفت',
    latinName: 'FIRMALIFT Cream',
    categoryId: 1,
    brandId: 1,
    fullLatinName: 'FIRMALIFT Skin Lifting Cream',
    description: [],
    points: [
      'سفت کننده و لیفتینگ پوست',
      'افزایش دهنده قوام و استحکام پوست',
      'محرک ساخت رشته های کلاژن و الاستین و جلوگیری از تخریب آنها',
      'محافظت از پوست در برابر اثرات مضر اشعه UV',
      'حفظ رطوبت لایه شاخی پوست',
      'افزایش متابولیسم و انرژی سلولهای پوست',
      'حفظ طراوت، شادابی و جوانی پوست',
    ],
    activeIngredients: [
      {
        'ingredientName': 'Asparlyne',
        'ingredientInfo':
            'با افزایش میزان انرژی و متابولیسم سلول ها (ATP) موجب حفظ طراوت و شادابی پوست می شود.',
      },
      {
        'ingredientName': 'Fucogel',
        'ingredientInfo':
            'ترکیبی پلی ساکاریدی است که موجب حفظ رطوبت لایه شاخی پوست می شود.',
      },
      {
        'ingredientName': 'Actimp',
        'ingredientInfo':
            'این ترکیب با مهار تولید MMP موجب محدود کردن تخریب کلاژن و الاستین و افزایش استحکام و قوام پوست می گردد. این ترکیب از پوست در برابر مضرات اشعه UV محافظت می کند.',
      },
      {
        'ingredientName': 'Collageneer',
        'ingredientInfo':
            'از پروتئین لوپین گرفته شده است که موجب تحریک سلول فیبروبلاست می شود. کلاژنر ترکیبی است که محرک قوی ساخت رشته های کلاژن و الاستین است و در نتیجه ضد چین و چروک، سفت کننده و بازسازی کننده پوست است.',
      },
    ],
    color: [],
    image: 'images/dermalift/fermaliftCream.png',
    skinType: 'مناسب انواع پوست',
    method:
        'پس از شستشوی مناسب پوست، کرم فرمالیفت را صبحها و شبها بر روی پوست صورت و گردن مالیده و به خوبی ماساژ دهید.',
  ),
  Products(
    id: 0106,
    name: 'کرم مرطوب کننده قوی هیدرالیفت',
    latinName: 'HYDRALIFT Cream',
    categoryId: 1,
    brandId: 1,
    fullLatinName: 'HYDRALIFT Intensive Moisturizing Cream',
    description: [],
    points: [
      'افزایش میزان فاکتورهای مرطوب کننده طبیعی پوست',
      'آبرسانی به عمیق ترین لایه های پوست با اثر 24 ساعته',
      'کاهش تبخیر سطحی و حفظ رطوبت لایه شاخی پوست',
      'نرم کننده و التیام بخش مناسب',
      'بازسازی سد دفاعی پوست',
      'حفظ شادابی و طراوت پوست',
    ],
    activeIngredients: [
      {
        'ingredientName': 'Sodium Lactate',
        'ingredientInfo':
            'یکی از اجزاء مرطوب کننده های طبیعی پوست (NMF) محسوب گردیده که جاذب رطوبت است و آن را تا چندین ساعت حفظ می کند.',
      },
      {
        'ingredientName': 'Unimoist',
        'ingredientInfo':
            'کمپلکسی از اوره و گلیسرین همراه با آمینو اسیدهای ضروری است که ساختاری مشابه مرطوب کننده های طبیعی (NMF) دارد و موجب حفظ رطوبت پوست و آبرسانی به عمیق ترین لایه های پوست می گردد.',
      },
      {
        'ingredientName': 'Asparlyne',
        'ingredientInfo':
            'با افزایش میزان انرژی و متابولیسم سلول ها (ATP) موجب حفظ طراوت و شادابی پوست می شود.',
      },
      {
        'ingredientName': 'Fucogel',
        'ingredientInfo':
            'ترکیبی پلی ساکاریدی است که موجب حفظ رطوبت لایه شاخی پوست می شود.',
      },
      {
        'ingredientName': 'Soline',
        'ingredientInfo':
            'چربی های طبیعی پوست را افزایش داده و به کورنئوسیت ها متصل شده و مانع از خروج رطوبت از لایه شاخی پوست می گردد و با این عملکرد باعث حفظ رطوبت و جلوگیری از دفع آن (کاهش TEWL) می شود.',
      },
      {
        'ingredientName': 'Avocado Oil',
        'ingredientInfo':
            'روغن گیاه آووکادو یک مرطوب کننده بسیار قوی است که با انواع پوست سازگاری داشته و اثر نرم کنندگی بالایی دارد.',
      },
    ],
    color: [
      'غیر رنگی',
      'بژ متوسط',
    ],
    image: 'images/dermalift/hydraliftCream.png',
    skinType: 'مناسب پوست های خشک و خیلی خشک',
    method:
        'کرم مرطوب کننده هیدرالیفت را روزها و شبها به دفعات مورد نیاز به روی پوست صورت و گردن مالیده و به ملایمت ماساژ دهید تا جذب گردد. از این کرم می توانید زیر آرایش نیز استفاده کنید.',
  ),
//   Products(
//     id: 0107,
//     name: 'شامپو ضد ریزش و تقویت کننده مو',
//     latinName: 'VITA-GROW',
//     categoryId: 2,
//     brandId: 1,
//     fullLatinName: '',
//     description: [''],
//     points: [
//       'کمک به رفع ریزش موی سر با علل مختلف',
//       'تقویت رشد فولیکولهای ضعیف موی سر',
//       'پیشگیری از پیری و سفید شدن موهای سر',
//       'کاهش دهنده ترشحات غدد چربی پوست سر',
//       'احیا کننده موهای خشک و آسیب دیده و پیشگیری از ایجاد موخوره',
//       'جلوگیری از ایجاد بوی نامناسب پوست سر',
//       'مناسب جهت مصرف بانوان و آقایان',
//       'فاقد سولفات، فاقد نمک، فاقد پارابن',
//     ],
//     activeIngredients: [],
//     skinType: [],
//     color: [],
//     image: 'images/dermalift/vitaGrow.png',
//     method: '',
//   ),
//   Products(
//     id: 0108,
//     name: 'شامپو ضد شوره',
//     latinName: 'VITA-KER',
//     categoryId: 2,
//     brandId: 1,
//     fullLatinName: '',
//     description: [''],
//     points: [
//       'رفع کامل شوره های خشک و شوره های چرب و مقاوم به درمان',
//       'کاهش قرمزی، خارش و حساسیت پوست سر',
//       'جلوگیری از رشد باکتریها و قارچ های مولد شوره',
//       'احیا کننده موهای خشک و آسیب دیده و پیشگیری از ایجاد موخوره',
//       'تنظیم کننده ترشحات غدد چربی پوست سر',
//       'مناسب جهت مصرف بانوان و آقایان',
//       'فاقد سولفات، فاقد نمک، فاقد پارابن',
//     ],
//     activeIngredients: [],
//     color: [],
//     image: 'images/dermalift/vitaKer.png',
//     skinType: [],
//     method: '',
//   ),
//   Products(
//     id: 0109,
//     name: 'شامپو مناسب موهای رنگ شده',
//     latinName: 'VITA-COLOR',
//     categoryId: 2,
//     brandId: 1,
//     fullLatinName: '',
//     description: [''],
//     points: [
//       'کمک به تثبیت رنگ مو و جلوگیری از کدر شدن موها',
//       'مراقبت کامل رنگ موها در برابر اشعه UV نور خورشید',
//       'نرم کننده و حالت دهنده موهای رنگ شده',
//       'جلوگیری از ایجاد موخوره، زبری و خشکی موها',
//       'فاقد سولفات، فاقد نمک، فاقد بارابن',
//     ],
//     activeIngredients: [],
//     color: [],
//     skinType: [],
//     image: 'images/dermalift/vitaColor.png',
//     method: '',
//   ),
//   Products(
//     id: 0110,
//     name: 'شامپو مناسب موهای وزدار',
//     latinName: 'VITA-FRIZZ',
//     categoryId: 2,
//     brandId: 1,
//     fullLatinName: '',
//     description: [''],
//     points: [
//       'صاف کننده موهای وزدار و مجعد',
//       'ایجاد لایه محافظ بر روی تار مو',
//       'افزایش نرمی و لطافت ساقه مو',
//       'جلوگیری از ایجاد موخوره',
//       'تغذیه کننده و آبرسان موهای وزدار',
//       'فاقد سولفات، فاقد نمک، فاقد پارابن',
//     ],
//     activeIngredients: [],
//     color: [],
//     skinType: [],
//     image: 'images/dermalift/vitaFrizz.png',
//     method: '',
//   ),
//   Products(
//     id: 0111,
//     name: 'فوم بعد از کاشت مو',
//     latinName: 'VITA-PLANT',
//     categoryId: 5,
//     brandId: 1,
//     fullLatinName: '',
//     description: [''],
//     points: [
//       'مناسب شستشوی موهای سر پس از پیوند مو با روش های مختلف',
//       'کاهش التهابات، سوزش و خارش پوست سر',
//       'کمک به کاهش درد و احساس کشیدگی پس از عمل پیوند مو',
//       'افزایش خون رسانی و تقویت فولیکولهای پیوند یافته',
//       'افزایش رطوبت رسانی به سطح پوست سر',
//     ],
//     activeIngredients: [],
//     color: [],
//     skinType: [],
//     image: 'images/dermalift/vitaPlant.png',
//     method: '',
//   ),
//   Products(
//     id: 0112,
//     name: 'شامپو بدن ضد قارچ',
//     latinName: 'VITA-BODY',
//     categoryId: 2,
//     brandId: 1,
//     fullLatinName: '',
//     description: [''],
//     points: [
//       'کمک به رفع بیماری های قارچی سطح پوست',
//       'برطرف کننده بوی نامطبوع بدن',
//       'التیام بخش و نرم کننده پوست بدن',
//       'دارای خاصیت آنتی باکتریال و آنتی میکروبیال',
//       'فاقد سولفات، فاقد نمک و فاقد پارابن',
//     ],
//     activeIngredients: [],
//     color: [],
//     image: 'images/dermalift/vitaBody.png',
//     method: '',
//   ),
//   Products(
//     id: 0113,
//     name: 'شامپو بدن کرمی',
//     latinName: 'VITA-SENSE',
//     categoryId: 2,
//     brandId: 1,
//     fullLatinName: '',
//     description: [''],
//     points: [
//       'مناسب پوستهای خشک، حساس و مستعد اگزما',
//       'جلوگیری از ایجاد خشکی، زبری و خارش پوست',
//       'مناسب افراد مبتلا به اگزما، درماتیک آتوپیک و پسوریازیس',
//       'حاوی کرم مرطوب کننده جهت حفظ لطافت و نرمی پوست',
//       'فاقد سولفات، فاقد نمک و پارابن',
//     ],
//     activeIngredients: [],
//     color: [],
//     skinType: [],
//     image: 'images/dermalift/vitaSense.png',
//     method: '',
//   ),
//   Products(
//     id: 0114,
//     name: 'کرم مرطوب کننده بدن هیدرالیفت',
//     latinName: 'HYDRALIFT Body Cream',
//     categoryId: 1,
//     brandId: 1,
//     fullLatinName: '',
//     description: [''],
//     points: [
//       'مناسب پوست های معمولی تا خشک',
//       'افزایش دهنده نرمی و لطافت پوست',
//       'کمک به درمان خشکی، زبری و حفظ شادابی و طراوت پوست',
//       'کاهش تبخیر سطحی و حفظ رطوبت لایه شاخی پوست',
//       'آبرسانی به عمیق ترین لایه های پوست با اثر 24 ساعته',
//       'نرم کننده، التیام بخش مناسب و بازسازی کننده سد دفاعی پوست',
//     ],
//     activeIngredients: [],
//     color: [],
//     skinType: [],
//     image: 'images/dermalift/hydraBody.png',
//     method: '',
//   ),
//   Products(
//     id: 0115,
//     name: 'پن شفاف مرطوب کننده هیدرالیفت',
//     latinName: 'HYDRALIFT Pan',
//     categoryId: 6,
//     brandId: 1,
//     fullLatinName: '',
//     description: [''],
//     points: [
//       'مناسب پوست های معمولی تا خشک',
//       'افزایش دهنده نرمی و لطافت پوست',
//       'کمک به درمان خشکی، زبری و حفظ شادابی و طراوت پوست',
//       'کاهش تبخیر سطحی و حفظ رطوبت لایه شاخی پوست',
//       'آبرسانی به عمیق ترین لایه های پوست با اثر 24 ساعته',
//       'نرم کننده، التیام بخش مناسب و بازسازی کننده سد دفاعی پوست',
//     ],
//     activeIngredients: [],
//     color: [],
//     skinType: [],
//     image: 'images/dermalift/hydraPan.png',
//     method: '',
//   ),
//   Products(
//     id: 0116,
//     name: 'فوم مرطوب کننده هیدرالیفت',
//     latinName: 'HYDRALIFT Foam',
//     categoryId: 5,
//     brandId: 1,
//     fullLatinName: '',
//     description: [''],
//     points: [
//       'مناسب پوست های معمولی تا خشک',
//       'افزایش دهنده نرمی و لطافت پوست',
//       'کمک به درمان خشکی، زبری و حفظ شادابی و طراوت پوست',
//       'کاهش تبخیر سطحی و حفظ رطوبت لایه شاخی پوست',
//       'آبرسانی به عمیق ترین لایه های پوست با اثر 24 ساعته',
//       'نرم کننده، التیام بخش مناسب و بازسازی کننده سد دفاعی پوست',
//     ],
//     activeIngredients: [],
//     color: [],
//     skinType: [],
//     image: 'images/dermalift/hydraFoam.png',
//     method: '',
//   ),

//! Stem Cell Products
  Products(
    id: 0201,
    name: 'شامپو گیاهی مخصوص موهای رنگ شده',
    latinName: 'Color Therapy Shampoo',
    categoryId: 2,
    brandId: 2,
    fullLatinName: 'Color Therapy Shampoo',
    description: [],
    points: [
      'عدم نیاز به مصرف نرم کننده و ماسک داخل حمام',
      'فاقد سولفات، پارابن، دی اکسان و سایر ترکیبات مضر و زیان بار برای پوست و مو',
      'بستن سریع کوتیکولهای سطح ساقه مو و محافظت از مرکز ساقه مو از انحلال و از بین رفتن رنگ مو زیر دوش',
    ],
    activeIngredients: [
      {
        'ingredientName': 'عصاره ریشه آپونتیا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پروتئین هیدرولیز شده سبزیجات',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب مو رنگ شده',
    image: 'image',
    method: '',
  ),
  Products(
    id: 0202,
    name: 'شامپو گیاهی مخصوص موهای خشک و آسیب دیده',
    latinName: 'Dry & Damage Therapy Shampoo',
    categoryId: 2,
    brandId: 2,
    fullLatinName: 'Dry & Damage Therapy Shampoo',
    description: [],
    points: [
      'عدم نیاز به مصرف نرم کننده و ماسک داخل حمام',
      'تنها شامپوی ایرانی بعد از کراتین، دکلره و رنگ مو',
      'فاقد سولفات، پاربن، دی اکسان و سایر ترکیبات مضر و زیان بار برای پوست و مو',
      'ترمیم سریع و عمقی ساقه مو، موخوره و رطوبت رسانی بالای مو',
      'ایجاد حس ابریشمی، نرمی، شانه پذیری بسیار بالا و براقیت پس از دوره استفاده',
    ],
    activeIngredients: [
      {
        'ingredientName': 'روغن آرگان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'شی باتر',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن جوانه گندم',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب موی خشک و کراتین',
    image: 'image',
    method: '',
  ),
  Products(
    id: 0203,
    name: 'شامپو گیاهی مخصوص موهای چرب',
    latinName: 'Oily Therapy Shampoo',
    categoryId: 2,
    brandId: 2,
    fullLatinName: 'Oily Therapy Shampoo',
    description: [],
    points: [
      'فاقد سولفات، پاربن، دی اکسان و سایر ترکیبات مضر و زیان بار برای پوست و مو',
      'حاوی اکتیوهای تخصصی جهت کم کردن و کنترل فعالیت غدد چربی در پوست سر',
      'پاک شدن و شستشوی سریع چربی از سطح پوست و مو',
    ],
    activeIngredients: [
      {
        'ingredientName': 'اسید آزلائیک',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اسید سالیسیلیک',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره آلوئه ورا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره بابونه',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گل گاو زبان',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب موی چرب',
    image: 'image',
    method: '',
  ),
  Products(
    id: 0204,
    name: 'شامپو بدن آرامش بخش و ضد التهاب',
    latinName: 'Cleaning Body Wash Shampoo',
    categoryId: 2,
    brandId: 2,
    fullLatinName: 'Cleaning Body Wash Shampoo',
    description: [],
    points: [
      'فاقد سولفات، پارابن، دی اکسان و سایر ترکیبات مضر و زیان بار برای پوست',
      'تنظیم شده مناسب برای انواع پوست به ویژه خشک و آتوپیک',
      'حاوی اکتیوهای تخصصی جهت رطوبت رسانی سریع و عمقی به پوست',
      'مناسب بعد از سوختگی، التهاب و سایر اگزماها',
    ],
    activeIngredients: [
      {
        'ingredientName': 'عصاره سنتلا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'شی باتر',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پالمیتویل تتراپپتاید ۸',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن کالندولا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آلفا گلوکان',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method: '',
  ),
  Products(
    id: 0205,
    name: 'شامپو گیاهی تقویت کننده و ضد ریزش نرمال',
    latinName: 'Hair Loss Therapy Shampoo',
    categoryId: 2,
    brandId: 2,
    fullLatinName: 'Hair Loss Therapy Shampoo',
    description: [],
    points: [
      'فاقد سولفات، پارابن، دی اکسان و سایر ترکیبات مضر و زیان بار برای پوست و مو',
      'حاوی پپتایدهای تخصصی کنترل کننده و مهار کننده آنزیم ۵ آلفا ردوکتاز جهت جلوگیری از ریزش مو',
      'حاوی اکتیوهای گیاهی جهت افزایش خون رسانی به فولیکول مو حاوی ریز مغذی های مورد نیاز برای رشد مو',
    ],
    activeIngredients: [
      {
        'ingredientName': 'عصاره تریفولیوم پراتنس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'استیل تتراپپتید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن زیتون',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب موی خشک و نرمال',
    image: 'image',
    method: '',
  ),
  Products(
    id: 0206,
    name: 'شامپو گیاهی تقویت کننده و ضد ریزش چرب',
    latinName: 'Hair Loss Therapy Shampoo',
    categoryId: 2,
    brandId: 2,
    fullLatinName: 'Hair Loss Therapy Shampoo',
    description: [],
    points: [
      'فاقد سولفات، پارابن، دی اکسان و سایر ترکیبات مضر و زیان بار برای پوست و مو',
      'حاوی پپتایدهای تخصصی کنترل کننده و مهار کننده آنزیم ۵ آلفا ردوکتاز جهت جلوگیری از ریزش مو',
      'حاوی اکتیوهای گیاهی جهت افزایش خون رسانی به فولیکول مو',
      'حاوی ریز مغذی های مورد نیاز برای رشد مو',
      'کاهش فعالیت غدد تولید چربی و متعادل کردن چربی اسکالپ سر',
    ],
    activeIngredients: [
      {
        'ingredientName': 'اسید آزلائیک',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سالیسیلیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره آلوئه ورا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'استیل تتراپپتید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن زیتون',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب موی چرب',
    image: 'image',
    method: '',
  ),
  Products(
    id: 0207,
    name: 'فوم شستشوی بعد از کاشت',
    latinName: 'After Trans Therapy Foam',
    categoryId: 5,
    brandId: 2,
    fullLatinName: 'After Trans Therapy Foam',
    description: [],
    points: [
      'فاقد سولفات، پارابن، دی اکسان و سایر ترکیبات مضر و زیان بار برای پوست و مو',
      'دارای اکتیوهای تخصصی جهت تقویت فولیکول و افزایش گردش خون در اطراف فولیکول',
      'ایجاد کف مناسب بدون نیاز به ماساژ، جهت محافظت فولیکول های تازه کاشته شده',
    ],
    activeIngredients: [
      {
        'ingredientName': 'کافئین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'رزماری',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'تریفولیوم پراتنس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بیوتینیل تری پپتاید ۱',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'استیل تتراپپتاید ۳',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: '',
    image: 'image',
    method: '',
  ),
  Products(
    id: 0208,
    name: 'شامپو گیاهی ضد شوره خشک',
    latinName: 'Anti Dandruff Therapy Shampoo',
    categoryId: 2,
    brandId: 2,
    fullLatinName: 'Anti Dandruff Therapy Shampoo',
    description: [],
    points: [
      'فاقد سولفات، پارابن، دی اکسان و سایر ترکیبات مضر و زیان بار برای پوست و مو',
      'کنترل کامل شوره ها بدون عادت پوست سر به استفاده همیشگی از محصولات ضد شوره',
    ],
    activeIngredients: [
      {
        'ingredientName': 'پپروکتون اولامین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره کیوی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره آلوئه ورا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آلفا گلوکان',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب موی خشک',
    image: 'image',
    method: '',
  ),
  Products(
    id: 0209,
    name: 'شامپو گیاهی ضد شوره چرب',
    latinName: 'Anti Dandruff Therapy Shampoo',
    categoryId: 2,
    brandId: 2,
    fullLatinName: 'Anti Dandruff Therapy Shampoo',
    description: [],
    points: [
      'فاقد سولفات، پارابن، دی اکسان و سایر ترکیبات مضر و زیان بار برای پوست و مو',
      'کنترل کامل شوره ها بدون عادت پوست سر به استفاده همیشگی از محصولات ضد شوره',
    ],
    activeIngredients: [
      {
        'ingredientName': 'پپروکتون اولامین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره کیوی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره آلوئه ورا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن درخت چای',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آزلائیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اسید سالیسیلیک',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب موی خشک',
    image: 'image',
    method: '',
  ),
  Products(
    id: 0210,
    name: 'شامپو گیاهی سر و بدن کودک',
    latinName: 'Kids Shampoo',
    categoryId: 2,
    brandId: 2,
    fullLatinName: 'Kids Hair & Body Shampoo',
    description: [
      'محصولات کودک و نوزاد استم سل، با داشتن کمترین عدد زئین، ملایم ترین و بی ضرر ترین محصول کودک و نوزاد می باشد. عدد زئین تعیین کننده میزان ضرر و خشونت یک شوینده است.',
      'حداکثر عدد زئین مجاز استفاده شده در محصولات کودک سراسر دنیا ۱۵۰ است و شامپو های نوزاد و کودک استم سل، با حذف مواد خشن و آسیب رسان و استفاده از مواد بی ضرر و ترجیحا با منشا گیاهی، این عدد را به ۹/۲ رسانده است تا بهترین مراقبت را از سلامت پوست و موی فرزندان شما داشته باشد.',
    ],
    points: [
      'فاقد سولفات، پارابن، دی اکسان و سایر ترکیبات خشن و زیان بار برای پوست و مو',
      'بدون ایجاد حساسیت، خارش و خشکی سر و بدن',
      'حاوی اکتیو های گیاهی جهت افزایش خون رسانی به فولیکول مو',
      'مرطوب کننده و نرم کننده موی سر و بدن کودک بدون سوزش چشم و ریزش اشک',
    ],
    activeIngredients: [
      {
        'ingredientName': 'روغن کالندولا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن نارگیل',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سدیم لاکتات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن جوانه گندم و بادام شیرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره آلوئه ورا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن زیتون',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: '',
    image: 'image',
    method: '',
  ),
  Products(
    id: 0211,
    name: 'شامپو گیاهی سر و بدن نوزاد دختر',
    latinName: 'New Born Shampoo',
    categoryId: 2,
    brandId: 2,
    fullLatinName: 'New Born Hair & Body Shampoo',
    description: [
      'محصولات کودک و نوزاد استم سل، با داشتن کمترین عدد زئین، ملایم ترین و بی ضرر ترین محصول کودک و نوزاد می باشد. عدد زئین تعیین کننده میزان ضرر و خشونت یک شوینده است.',
      'حداکثر عدد زئین مجاز استفاده شده در محصولات کودک سراسر دنیا ۱۵۰ است و شامپو های نوزاد و کودک استم سل، با حذف مواد خشن و آسیب رسان و استفاده از مواد بی ضرر و ترجیحا با منشا گیاهی، این عدد را به ۹/۲ رسانده است تا بهترین مراقبت را از سلامت پوست و موی فرزندان شما داشته باشد.',
    ],
    points: [
      'فاقد سولفات، پارابن، دی اکسان و سایر ترکیبات خشن و زیان بار برای پوست و مو',
      'بدون ایجاد حساسیت، خارش و خشکی سر و بدن',
      'رطوبت رسانی قوی پوست سر نوزاد',
      'مرطوب کننده و نرم کننده موی سر و بدن نوزاد',
      'بدون سوزش چشم و ریزش اشک',
    ],
    activeIngredients: [
      {
        'ingredientName': 'روغن کالندولا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن نارگیل',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سدیم لاکتات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن جوانه گندم',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بوتیلن گلایکول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره آلوئه ورا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن زیتون',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: '',
    image: 'image',
    method: '',
  ),
  Products(
    id: 0212,
    name: 'شامپو گیاهی سر و بدن نوزاد پسر',
    latinName: 'New Born Shampoo',
    categoryId: 2,
    brandId: 2,
    fullLatinName: 'New Born Hair & Body Shampoo',
    description: [
      'محصولات کودک و نوزاد استم سل، با داشتن کمترین عدد زئین، ملایم ترین و بی ضرر ترین محصول کودک و نوزاد می باشد. عدد زئین تعیین کننده میزان ضرر و خشونت یک شوینده است.',
      'حداکثر عدد زئین مجاز استفاده شده در محصولات کودک سراسر دنیا ۱۵۰ است و شامپو های نوزاد و کودک استم سل، با حذف مواد خشن و آسیب رسان و استفاده از مواد بی ضرر و ترجیحا با منشا گیاهی، این عدد را به ۹/۲ رسانده است تا بهترین مراقبت را از سلامت پوست و موی فرزندان شما داشته باشد.',
    ],
    points: [
      'فاقد سولفات، پارابن، دی اکسان و سایر ترکیبات خشن و زیان بار برای پوست و مو',
      'بدون ایجاد حساسیت، خارش و خشکی سر و بدن',
      'رطوبت رسانی قوی پوست سر نوزاد',
      'مرطوب کننده و نرم کننده موی سر و بدن نوزاد',
      'بدون سوزش چشم و ریزش اشک',
    ],
    activeIngredients: [
      {
        'ingredientName': 'روغن کالندولا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن نارگیل',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سدیم لاکتات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن جوانه گندم',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بوتیلن گلایکول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره آلوئه ورا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن زیتون',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: '',
    image: 'image',
    method: '',
  ),
  Products(
    id: 0213,
    name: 'ژل شستشوی روزانه بانوان',
    latinName: 'Intimate Therapy Gel',
    categoryId: 3,
    brandId: 2,
    fullLatinName: 'Intimate Therapy Gel',
    description: [],
    points: [
      'فاقد سولفات، بارابن، دی اکسان و سایر ترکیبات خشن و زیان بار برای بدن',
      'استفاده از سولفکتانت های بسیار تخصصی و ملایم',
      'حاوی مواد پری بایوتیک جهت حفظ فلور طبیعی باکتری های ناحیه واژن',
      'فوق ملایم و مناسب برای مصرف روزانه بدون ایجاد حساسیست',
      'تنظیم شده برای ناحیه خارجی دستگاه تناسلی',
    ],
    activeIngredients: [
      {
        'ingredientName': 'پیروکتون اولامین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آلفا گلوکان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره کالندولا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'شی باتر',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'دکسپانتنول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اولیگا ساکارید',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: '',
    image: 'image',
    method: '',
  ),
  Products(
    id: 0214,
    name: 'ژل شستشوی حساس بانوان',
    latinName: 'Intimate Therapy Gel',
    categoryId: 3,
    brandId: 2,
    fullLatinName: 'Intimate Therapy Gel',
    description: [],
    points: [
      'فاقد سولفات، پارابن، دی اکسان و سایر ترکیبات خشن و زیان بار برای بدن',
      'مناسب به هنگام عفونت های دستگاه تناسلی، دوران قاعدگی و...',
      'رفع سوزش، خارش و از بین برنده قارچ های ملتهب کننده دستگاه تناسلی',
      'برطرف کننده بوی نامطبوع دستگاه تناسلی',
      'تنظیم شده برای ناحیه خارجی دستگاه تناسلی',
    ],
    activeIngredients: [
      {
        'ingredientName': 'پیروکتون اولامین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آلفا گلوکان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره کالندولا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'شی باتر',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'دکسپانتنول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پالمیتویل تری پپتاید ۸',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: '',
    image: 'image',
    method: '',
  ),
  Products(
    id: 0215,
    name: 'ژل شستشوی صورت پوست چرب',
    latinName: 'Face Wash Gel',
    categoryId: 3,
    brandId: 2,
    fullLatinName: 'Face Wash Gel, Oily Skin Types',
    description: [],
    points: [
      'فاقد سولفات، بارابن، دی اکسان و سایر ترکیبات خشن و زیان بار برای بدن',
      'حاوی اکتیوهای تخصصی جهت کاهش فعالیت غدد تولید چربی پوست',
      'رطوبت رسانی، تنظیم و متعادل کردن چربی پوست',
      'پاکسازی عمیق، ولی ملایم پوست صورت و دور چشم از مواد آرایشی و آلودگی های محیطی',
      'بدون نیاز به استفاده از شیر پاک کن',
    ],
    activeIngredients: [
      {
        'ingredientName': 'آزلائیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سالیسیلیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'شی باتر',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پالمیتویل تری پپتاید ۸',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن چای سبز',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست چرب',
    image: 'image',
    method: '',
  ),
  Products(
    id: 0216,
    name: 'ژل شستشوی صورت پوست خشک',
    latinName: 'Face Wash Gel',
    categoryId: 3,
    brandId: 2,
    fullLatinName: 'Face Wash Gel, Dry & Normal Skin Types',
    description: [],
    points: [
      'فاقد سولفات، بارابن، دی اکسان و سایر ترکیبات خشن و زیان بار برای بدن',
      'حاوی اکتیوهای تخصصی جهت کاهش فعالیت غدد تولید چربی پوست',
      'فاقد مواد صابونی، بدون ایجاد حساسیت و خارش',
      'پاکسازی عمیق، ولی ملایم پوست صورت و دور چشم از مواد آرایشی و آلودگی های محیطی',
      'بدون نیاز به استفاده از شیر پاک کن',
    ],
    activeIngredients: [
      {
        'ingredientName': 'روغن آووکادو',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'شی باتر',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پالمیتویل تری پپتاید ۸',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست نرمال و خشک',
    image: 'image',
    method: '',
  ),

//! Pleasant Products
  Products(
    id: 0901,
    name: 'ژل شستشو صورت پوست خشک، دهیراته و حساس',
    latinName: 'Cleansing Gel',
    categoryId: 3,
    brandId: 9,
    fullLatinName: 'Cleansing Gel For Normal to Dry Skin',
    description: [],
    points: [
      'شوینده ملایم و قوی در پاکسازی آلودگی های روزمره و منافذ، همراه با عوامل موثر دارای منشاء گیاهی به منظور باسازی سد دفاعی و پیشگیری از تخریب لایه های هیدرولیپیدی پوست.',
      'کاهش واکنش های آلرژی زادر پوست های حساس با اثر بهبود کیفیت سطح پوست.',
      'آبرسانی عمیق و التیام بخش.',
      'افزایش محدودیت در حملات سلولی واکنش گرهای پوست با اثر شفاف کنندگی، رفع تیرگیها و کنترل حساسیتهای ناشی از خشکی زیاد.',
    ],
    activeIngredients: [
      {
        'ingredientName': 'صمغ دانه شاهی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره شیرین بیان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'جلبک دریایی هیدرولیز شده',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آلفا آربوتین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گلیسیرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'لاکتیک اسید',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست نرمال و خشک',
    image: 'image',
    method:
        'روزانه یک الی دو بار برای شستشو آلودگیها و پاکسازی مواد آرایشی سطح پوست صورت استفاده نمایید.',
  ),
  Products(
    id: 0902,
    name: 'ژل شستشو صورت پوست چرب، مختلط و مستعد آکنه',
    latinName: 'Cleansing Gel',
    categoryId: 3,
    brandId: 9,
    fullLatinName: 'Cleansing Gel For Oily & Acne-Prone Skin',
    description: [],
    points: [
      'شوینده عمقی و پاکسازی کننده پوست با اثر لایه برداری، تنظیم ترشح چربی، حذف سلول های مرده و آلودگی ها همراه با رطوبت رسانی پوست.',
      'کمک به کاهش علائم آکنه، جمع کننده منافذ باز پوست و رفع جوش های سر سیاه با خاصیت آنتی باکتریال و ضد التهاب',
      'دارای PH سازگار با پوست جهت جلوگیری از آسیب بافت همبند و بهبود خاصیت ارتجاعی',
    ],
    activeIngredients: [
      {
        'ingredientName': 'عصاره برگ مورینگا اولیفرا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ کاملیا (چای سبز)',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سالیسیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گلیسرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره ریشه آیریس فلورنتینا (زنبق)',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سیتریک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'رتینیل پالمیتات',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست چرب، مختلط و مستعد آکنه',
    image: 'image',
    method:
        'روزانه یک الی دو بار برای شستشو آلودگی ها و پاکسازی مواد آرایشی سطح پوست صورت استفاده نمایید.',
  ),
  Products(
    id: 0903,
    name: 'کرم مرطوب کننده و آبرسان ۲۴ ساعته',
    latinName: 'Hydrating Moisturizer Cream',
    categoryId: 1,
    brandId: 9,
    fullLatinName: 'Hydrating Moisturizer Cream',
    description: [],
    points: [
      'کمپلکس مغذی حاوی روغن هیدروژنه سبزیجات جهت افزایش سیستم هیدراسیون سلولی با اثر آبرسانی و حفظ رطوبت به منظور ایجاد سد دفاعی و لایه محافظ جهت استحکام و بهبود پوست خشک و کم آب',
      'دارای خاصیت آنتی اکسیدانی در برابر عوامل استرس زا، رادیکال های آزاد محیطی (Stress Control) و نرم کننده پوست',
      'دارای بافت سبک و غنی با قابلیت جذب سریع، جهت افزایش خاصیت ارتجاعی و تقویت ساختار پوست',
    ],
    activeIngredients: [
      {
        'ingredientName': 'آسکوربیل پالمیتات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن هیدروژنه سبزیجات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن سبوس برنج',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گلیسرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن اولوس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'کراتین هیدرولیز شده',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سیتریک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن بادام تلخ',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'شی باتر',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست خشک، دهیدراته و حساس',
    image: 'image',
    method:
        'روزانه دو بار صبح و عصر بر روی پوست تمیز استفاده گردد. در مواقع ضروری به دفعات این دستورالعمل قابل استفاده می باشد.',
  ),
  Products(
    id: 0904,
    name: 'کرم مرطوب کننده و آبرسان 24 ساعته',
    latinName: 'Hydrating Moisturizer Cream',
    categoryId: 1,
    brandId: 9,
    fullLatinName: 'Hydrating Moisturizer Cream',
    description: [],
    points: [
      'دارای فرمولاسیون هوشمند فاقد چربی با خاصیت مات کنندگی و افزایش آنتی بیوتیکهای طبیعی پوست جهت پیشگیری از ایجاد آکنه و درمان خشکی ناشی از مکمل های خوراکی (قرصهای مربوط به کنترل آکنه).',
      'کاهش قطر منافذ باز با خاصیت کنترل ترشح سبوم به منظور حفظ رطوبت پوست و تعادل چربی در طول روز، باسازی کننده فیزیکی، التیام آکنه و تسکین دهنده.',
      'محافظت پوست با اثر فلاونوئیدها، ترپنوئیدها و آنتی اکسیدانها در برابر آسیب اکسیداتیو سلولی ناشی از رادیکالهای آزاد محیطی',
    ],
    activeIngredients: [
      {
        'ingredientName': 'عصاره برگ جنیکو بیلوبا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره جلبک دریایی لامیناریا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'دایمتیکون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'توکوفریل استات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آلانتوئین',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست چرب، مختلط و مستعد آکنه',
    image: 'image',
    method:
        'روزانه دوبار صبح و عصر بر روی پوست تمیز استفاده گردد. در مواقع ضروری به دفعات این دستورالعمل قابل استفاده می باشد.',
  ),
  Products(
    id: 0905,
    name: 'کرم ضد آفتاب فاقد رنگ SPF 50',
    latinName: 'Sunscreen Cream',
    categoryId: 1,
    brandId: 9,
    fullLatinName: 'Sunscreen Cream Invisible',
    description: [
      'محصولات مراقبت از آفتاب پلزنت مکمل بسیار خوبی برای پوست های مستعد و تحت درمان لک می باشد.'
    ],
    points: [
      'دارای فیلترهای محافظتی وسیع در برابر تاثیرات مخرب اشعه UVA و UVB به منظور پیشگیری از بروز پیری زودرس و ایجاد لک روی سطح پوست.',
      'حاوی ویتامین ای و سی با اثرات آنتی اکسیدانی و ضد رادیکالهای آزاد جهت بهبود رطوبت رسانی، بازسازی سلولی با خاصیت ضد چروک و جوانسازی.',
      'غیر کومدون زا و هایپو آلرژنیک مناسب انواع پوست به خصوص پوستهای چرب، مختلط و مستعد آکنه.',
    ],
    activeIngredients: [
      {
        'ingredientName': 'تیتانیوم دی اکسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'ویتامین C',
        'ingredientInfo': 'سدیم آسکوربیل فسفات',
      },
      {
        'ingredientName': 'هوموسالات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'توکوفریل استات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ آلوئه ورا آربوسنس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره صنوبر نروژی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'کائولن',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'سی دقیقه قبل از قرار گرفتن در معرض آفتاب استفاده گردد. در طول روز هر سه ساعت یکبار تمدید نمائید.',
  ),
  Products(
    id: 0906,
    name: 'کرم ضد آفتاب رنگی SPF 50',
    latinName: 'Sunscreen Cream',
    categoryId: 1,
    brandId: 9,
    fullLatinName: 'Sunscreen Cream Tinted',
    description: [
      'محصولات مراقبت از آفتاب پلزنت مکمل بسیار خوبی برای پوست های مستعد و تحت درمان لک می باشد.'
    ],
    points: [
      'دارای فیلترهای محافظتی وسیع در برابر تاثیرات مخرب اشعه UVA و UVB به منظور پیگیری از بروز پیری زودرس و ایجاد لک روی سطح پوست',
      'ساختاری فوق سبک با پوشش دهی کامل و یکنواخت حاوی عصاره های گیاهی فعال، ویتامین E به عنوان آنتی اکسیدان جهت افزایش سد دفاعی پوست در برابر آلودگی و آسیب های محیطی',
      'ضد آفتاب با عملکرد چندگانه (محافظت کننده، ضد چروک، ضد جوش) با خاصیت درمان آفتاب سوختگی و ایجاد جلوه مات مناسب انواع پوست به خصوص پوست های چرب، مختلط و مستعد آکنه می باشد',
    ],
    activeIngredients: [
      {
        'ingredientName': 'تیتانیوم دی اکساید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'ویتامین C (سدیم آسکوربیل فسفات)',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ آلوئه ورا آربورسنس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پوست درخت کاج',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بیزابولول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سلول بنیادی غنچه گیاه گل داوودی',
        'ingredientInfo': '',
      },
    ],
    color: [
      'بژ روشن',
      'بژ طبیعی',
    ],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'سی دقیقه قبل از قرار گرفتن در معرض آفتاب استفاده گردد. در طول روز هر سه ساعت یکبار تمدید نمائید.',
  ),
  Products(
    id: 0907,
    name: 'کرم دپیگمانت و روشن کننده',
    latinName: 'Depigmentante Lightening Cream',
    categoryId: 1,
    brandId: 9,
    fullLatinName: 'Depigmentante Lightening Cream',
    description: [],
    points: [
      'مهار آنزیم تیروزیناز با اثر اختصاصی بر روی ملانین های فعال و عوامل هایپر پیگمنتاسیون (عوامل ایجاد لک و تیرگی ها) در جهت ممانعت از تشکیل رنگدانه های پوستی',
      'اثر روشن کنندگی قوی و رفع لک های ناشی از نور خورشید، بارداری، افزایش سن، جای زخم و اثرات باقی مانده از جای جوش همراه با ایجاد شفافیت و درخشندگی چهره',
      'هماهنگ و یکنواخت کننده تناژ رنگ پوست با خاصیت آنتی اکسیدانی قوی به منظور محافظت در برابر رادیکال های آزاد محیطی و کاهش انتقال رنگدانه به سطح پوست صورت',
    ],
    activeIngredients: [
      {
        'ingredientName': 'بوتیل رزورسینول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آسکوربیل پالمیتات (ویتامین C)',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'نیاسین آمید (ویتامین B3)',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن بادام شیرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'توکوفرول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سدیم هیالورونات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن گیاهی هیدروژن دار',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'روزانه صبح یا عصر کرم دپیگمانت را بر روی نواحی دارای لک ماساژ دهید و توصیه می شود شب ها به عنوان تکمیل درمان از سرم بوستر ویتامین C استفاده گردد.',
  ),
  Products(
    id: 0908,
    name: 'سرم بوستر ویتامین C',
    latinName: 'Vitamin C Serum',
    categoryId: 4,
    brandId: 9,
    fullLatinName: 'Vitamin C Serum',
    description: [],
    points: [
      'فرمولاسیون کاملا تخصصی مطابق با تکنولوژی نوین برای تقویت متابولیسم سلولی و کنترل کننده ملانین، مناسب پوست های خسته، کدر، دارای لک و همچنین کاهش چروک های ناشی از افزایش سن',
      'تامین ویتامین C مورد نیاز سلول های پوست و انرژی رسانی همراه با تحریک سنتز کلاژن و الاستین جهت افزایش مقاومت پوست در برابر نشانه های پیری',
      'خاصیت ضد اکسیداسیون برای محافظت روزانه پوست در برابر رادیکال های آزاد محیط، حفظ PH سازگار به منظور کمک به رفع لک های تیره و رطوبت رسانی عمیق',
    ],
    activeIngredients: [
      {
        'ingredientName': 'ویتامین C',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره مرکبات اورانتیوم',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'کلاژن هیدرولیز شده',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'هیالورونیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پروتئین هیدرولیز شده جوانه گندم',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پروتئین هیدرولیز شده سویا',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'روزانه صبح یا عصر کرم دپیگمانت را بر روی نواحی دارای لک ماساژ دهید و توصیه می شود شب ها به عنوان تکمیل درمان از سرم بوستر ویتامین C استفاده گردد.',
  ),
  Products(
    id: 0909,
    name: 'کمپلکس تخصصی ضد چروک',
    latinName: 'Anti Wrinkle Cream',
    categoryId: 1,
    brandId: 9,
    fullLatinName: 'Anti Wrinkle Cream',
    description: [
      'در مواقع لزوم و سنین بالاتر از ۴۵ کرم ضد چروک و لیفت را به صورت مکمل، جهت افزایش اثر بخشی می توان استفاده کرد.',
    ],
    points: [
      'کنسانتره قوی با عملکرد ضد چروک و آبرسانی به منظور تقویت سیستم دفاع طبیعی پوست، تحریک سلول های فیبروبلاست با اثر افزایش تولید کلاژن و الاستین پوست',
      'حاوی اسید های چرب ضروری و مواد مغذی با تاثیر بر پیری محیطی (ناشی از عدم محافظت پوست در برابر رادیکال های آزاد محیطی) و پیری فیزیولوژیک (ارثی) ناشی از افزایش سن و عوامل ژنتیکی',
      'انرژی رسان، آبرسانی عمیق و ماندگار در جهت افزایش روند بازسازی سلولی و کمک به میکروپیلینگ ملایم همراه با کاهش تیرگی و پر کننده خطوط',
    ],
    activeIngredients: [
      {
        'ingredientName': 'هیالورونیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ لاله زرد',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'شی باتر',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'دایمتیکون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'توکوفریل استات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سیتریک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ بولبین',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method: 'صبح و عصر بر روی پوست تمیز صورت و گردن به آرامی ماساژ دهید.',
  ),
  Products(
    id: 0910,
    name: 'کرم لیفت خیلی قوی',
    latinName: 'Ultimate Lifting Cream',
    categoryId: 1,
    brandId: 9,
    fullLatinName: 'Ultimate Lifting Cream',
    description: [
      'در مواقع لزوم و سنین بالاتر از ۴۵ کرم ضد چروک و لیفت را به صورت مکمل، جهت افزایش اثر بخشی می توان استفاده کرد.',
    ],
    points: [
      'بهره گیری از فرمولاسیون نوآورانه جهت افزایش کلاژن سازی، بهبود روند ترمیم، بازسازی و تقویت ساختار بافت همبند پوست همراه با خاصیت ضد چروک، ضد افتادگی و سفت کننده قوی.',
      'محرک عملکرد حیاتی به منظور آبرسانی عمیق سلولها جهت جلوگیری از تخریب الاستین، افزایش کلاژن سازی و استحکام پوست صورت.',
      'محافظت کننده پوست در برابر عوامل مهاجم محیطی با اثر معجزه آسای جوان سازی.',
    ],
    activeIngredients: [
      {
        'ingredientName': 'رتینول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن دانه آفتابگردان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'دایمتیکون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ کاملیا',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method: 'صبح و عصر بر روی پوست تمیز صورت و گردن به آرامی ماساژ دهید.',
  ),
  Products(
    id: 0911,
    name: 'کرم جوان ساز دور چشم',
    latinName: 'Eye Contour Cream',
    categoryId: 1,
    brandId: 9,
    fullLatinName: 'Eye Contour Cream',
    description: [],
    points: [
      'کرم مولتی پپتید با مولفه های حرفه ای جهت مراقبت پوست حساس دور چشم با اثر کاهش خطوط و چروک، درمان حلقه های تیره و پف ناحیه دور چشم',
      'بازیابی آب میان سلولی و حفظ تعادل هیدراسیون طولانی مدت با نفوذ پذیری به لایه های عمیق پوست به منظور بهبود خاصیت ارتجاعی اطراف چشم',
      'محرک کلاژن سازی و تقویت گردش خون رسانی مویرگی به عنوان آنتی اکسیدان قدرتمند در برابر اثرات مخرب آلاینده ها و رادیکال های آزاد محیط',
    ],
    activeIngredients: [
      {
        'ingredientName': 'عصاره جلبک دریایی',
        'ingredientInfo': 'آلاریا اسکولنتا',
      },
      {
        'ingredientName': 'عصاره هندوانه',
        'ingredientInfo': 'سیترولوس لاناتوس',
      },
      {
        'ingredientName': 'پروتئین سبوس برنج',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پرتئین هیدرولیز شده سویا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'دایمتیکون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'توکوفریل استات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پانتنول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سدیم هیالورونات',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method: 'روزانه صبح و عصر بر روی پوست تمیز دور چشم استفاده گردد.',
  ),
  Products(
    id: 0912,
    name: 'ژل ترمیم کننده و درمات تخصصی اسکار',
    latinName: 'Repair & Rejuvenating Gel',
    categoryId: 3,
    brandId: 9,
    fullLatinName: 'Repair & Rejuvenating Gel',
    description: [],
    points: [
      'ژل تقویت کننده لایه هیدرولیپیدی سطح پوست به منظور کمک به بازسازی طبیعی اپیدرم همراه با افزایش سرعت ترمیم و کاهش تحریک پوست در درمان اسکارهای نو ظهور',
      'مهار فاکتور های ایجاد التهاب، خارش، قرمزی و تغییر رنگ ناشی از آسیب های پوستی مناسب انواع اسکارهای کلوئیدی، هایپرتروفیک مانند جراحت، لیزر درمانی، میکرودرم، سوختگی و پیلینگ صورت',
      'تجدید ساختار سلولی، ایجاد لایه محافظتی روی پوست در برابر عوامل مهاجم محیطی به منظور تقویت سد دفاعی با اثر پیگیری از تکثیر باکتری و قارچ ها بر روی جراحت',
    ],
    activeIngredients: [
      {
        'ingredientName': 'سیلکوپنتاسیلوکسان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سیلیکون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'تیتانیوم دی اکسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'زینک اکسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'دایمتیکون',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'اسکار ژل را روزی دوبار بر روی پوست تمیز و خشک به صورت موضعی استفاده نمایید.',
  ),
  Products(
    id: 0913,
    name: 'ژل لایه بردار AHA 15%',
    latinName: 'AHA Exfoliating Gel',
    categoryId: 3,
    brandId: 9,
    fullLatinName: 'AHA Exfoliating Gel',
    description: [],
    points: [
      'ژل لایه بردار با ساختاری سبک و فاقد چربی جهت حذف لایه مرده سطح پوست، تنظیم ترشح چربی و جلوگیری از فعالیت باکتری های مولد آکنه با خاصیت ضد التهابی و آنتی باکتریال',
      'پاکسازی تسریع پوسته ریزی طبیعی با اثر کاهش قطر منافذ، ترمیم بافت های آسیب دیده، افزایش طراوت و شفافیت صورت',
      'بهبود بافت همبند پوست به منظور درمال لک و تیرگی ها، کاهش چروک های سطحی و اسکار ناشی از ضایعات آکنه',
    ],
    activeIngredients: [
      {
        'ingredientName': 'گلیکولیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره کامومیل',
        'ingredientInfo': 'بابونه آلمانی',
      },
      {
        'ingredientName': 'سدیم هیالورونات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ آلوئه ورا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ کاملیا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پانتنول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سدیم PCA',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آسکوربیل پالمیتات',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: '',
    image: 'image',
    method:
        'روزانه صبح و عصر از ژل ضد جوش بر روی ضایعات آکنه و شب ها به عنوان کمک درمان از ژل لایه بردار استفاده نمایید.',
  ),
  Products(
    id: 0914,
    name: 'ژل ضد جوش',
    latinName: 'Anti-Acne Gel',
    categoryId: 3,
    brandId: 9,
    fullLatinName: 'Anti-Acne Gel',
    description: [],
    points: [
      'درمان فوری انواع جوش و آکنه های ملتهب، کومدون ها (جوش های سرسیاه و سرسفید) با خاصیت ضد عفونی کننده، ضد قارچ و ممانعت از تکثیر و رشد باکتری ها',
      'ترمیم، بازسازی کننده و التیام بخش سریع و موثر در رفع لک های ناشی از جای جوش در سطح پوست',
      'کنترل کننده ترشح سبوم از غدد سباسه با اثر مات کنندگی، ضد التهاب و قرمزی مناسب پوست های چرب و مستعد آکنه',
    ],
    activeIngredients: [
      {
        'ingredientName': 'سباسیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'زینک PCA',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'هیالورونیک اسید هیدرولیز شده',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'تانیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بیزابولول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره شیرین بیان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سالیسیلیک اسید',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست چرب و مستعد آکنه',
    image: 'image',
    method:
        'روزانه صبح و عصر از ژل ضد جوش بر روی ضایعات آکنه و شب ها به عنوان کمک درمان از ژل لایه بردار استفاده نمایید.',
  ),
  Products(
    id: 0915,
    name: 'کانتورینگ بالم لب',
    latinName: 'Lip Balm',
    categoryId: 11,
    brandId: 9,
    fullLatinName: 'Lip Balm',
    description: [],
    points: [
      'غنی شده از روغن های گیاهی ارگانیک و مغذی جهت رطوبت رسانی طولانی مدت پوست لب و ایجاد سد دفاعی بر روی آن همراه با محافظت در برابر عوامل محیطی، مناسب مصرف روزانه لب های خشک و حساس',
      'حجم دهنده و بازسازی کننده با اثر تولید کلاژن، ضد التهاب، تسکین دهنده، افزایش انعطاف پذیری و استحکام بافت پوست لب',
      'حفظ آب و جلوگیری از تبخیر آن، به عنوان نرم کننده قوی لب بدون ایجاد سنگینی و قابل استفاده آقایان و بانوان',
    ],
    activeIngredients: [
      {
        'ingredientName': 'رویال ژلی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن سویا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن کتان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن دانه آفتابگردان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره گل گاردنیا تایتنسیس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'ویتامین E',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'موم زنبور عسل',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن نارگیل',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن رز وحشی',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: '',
    image: 'image',
    method: 'روزانه بالم لب را در جهت درمان خشکی لب استفاده نمایید.',
  ),
  Products(
    id: 0916,
    name: 'کرم دست پروتئین پیله ابریشم',
    latinName: 'Moisturizing Hand Cream',
    categoryId: 1,
    brandId: 9,
    fullLatinName: 'Moisturizing Hand Cream',
    description: [],
    points: [
      'کمپلکس تخصصی آبرسان مغذی دست با اثر تحریک متابولیسم و احیا کننده چرخه سلولی جهت استفاده روزانه پوست خشک، آسیب دیده و اگزمایی',
      'ساختار ابریشمی با قابلیت جذب فوری و اثر رطوبت رسانی در لایه فوقانی اپیدرم، هیدراته کردن، رفع چروک ناشی از خشکی و کاهش لک های پوستی با خاصیت جوانسازی',
      'حاوی اسیدهای چرب ضروری و تغذیه کننده به منظور کنترل التهابات پوستی، ضد آلرژی، ترمیم کننده، ایجاد عملکرد های محافظتی بر روی پوست دست جهت مقابله با آثار عوامل مخرب محیطی',
    ],
    activeIngredients: [
      {
        'ingredientName': 'روغن جوانه گندم',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اوره',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'هیالورونیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پروتئین پیله ابریشم',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گلیسیرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'دایمتیکون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سدیم PCA',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آربوتین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'رزورسینول',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'روزانه کرم دست پروتئین پیله ابریشم را در جهت درمان خشکی پوست دست استفاده نمایید.',
  ),
  Products(
    id: 0917,
    name: 'ژل بهداشتی بانوان',
    latinName: 'Intimate Gel',
    categoryId: 3,
    brandId: 9,
    fullLatinName: 'Intimate Gel',
    description: [],
    points: [
      'فرموله شده بر اساس نیازهای بهداشتی و مراقبت بانوان حاوی عوامل آنتی باکتریال و آنتی سپتیک با اثر رطوبت رسانی و جلوگیری از ایجاد حساسیت و تحریکات پوستی با کنترل باکتری های مفید و مهار باکتری های مضر',
      'تنظیم PH ناحیه ژنیتال، ایجاد تعادل مخاط واژن و برقراری تعادل هورمونی سیستم دفاعی طبیعی بدن به منظور تسکین سوزش، خارش و التهاب',
      'هایپو آلرژنیک، فاقد مواد صابونی دارای خاصیت پاک کنندگی ملایم و رفع بوی نامطبوع ناحیه، پیشگیری از عفونت های دستگاه تناسلی همراه با جلوگیری از رشد و تکثیر قارچ ها',
    ],
    activeIngredients: [
      {
        'ingredientName': 'عصاره برگ زیتون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره بیربری',
        'ingredientInfo': 'توت خرس',
      },
      {
        'ingredientName': 'لاکتیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گلیسیرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سیتریک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن کرچک هیدروژن شده',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: '',
    image: 'image',
    method:
        'ابتدا قسمت خارجی دستگاه تناسلی را مرطوب و به مقدار کافی از ژل بهداشتی بانوان بر روی موضع مورد نظر استعمال نموده و به خوبی آبکشی نمایید.',
  ),
  Products(
    id: 0918,
    name: 'لوسیون مغذی بدن',
    latinName: 'Body Lotion',
    categoryId: 7,
    brandId: 9,
    fullLatinName: 'Body Lotion',
    description: [],
    points: [
      'لوسیون فوق مغذی بدن با اثر رطوبت رسانی عمیق و عوامل انرژی زا مناسب ترمیم بافت پوست های خشک و حساس',
      'افزایش سرعت نوسازی سلول های پوست در برابر عوامل نامساعد محیطی و رادیکال های آزاد به منظور کاهش خشکی، خارش و تحریکات پوستی',
      'تسکین دهنده، التیام بخش موثر در نرم کنندگی، جهت افزایش خاصیت ارتجاعی پوست بدن',
    ],
    activeIngredients: [
      {
        'ingredientName': 'روغن زیتون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره دانه انگور',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'ویتامین E',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن هیدروژنه سبزیجات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'شی باتر',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'روزانه و پس از استحمام جهت رطوبت رسانی بدن از لوسیون مغذی استفاده نمایید.',
  ),
  Products(
    id: 0919,
    name: 'شامپو ضد شوره',
    latinName: 'Anti-Dandruff Shampoo',
    categoryId: 2,
    brandId: 9,
    fullLatinName: 'Anti-Dandruff Shampoo',
    description: [],
    points: [
      'حاوی عوامل موثر در رفع و بهبود انواع شوره (چرب و خشک) با اثر کاهش علائم ناشی از خشکی پوست سر',
      'متعادل کننده چربی (کنترل ترشح سبوم) در جهت مهار پوسته ریزی و پاکسازی لایه های فلسی از کف سر',
      'غنی شده از ریز مغذی ها به منظور تغذیه رسانی و افزایش مقاومت سلول ها در جهت جلوگیری از ظهور مجدد شوره و کمک به کاهش التهاب، قرمزی و تسکین حساسیت های کف سر',
      'دارای خاصیت آنتی باکتریال در جهت پیشگیری از رشد و تکثیر قارچ های مولد شوره و افزایش فعالیت میکروارگانیسم های مفید پوست سر',
    ],
    activeIngredients: [
      {
        'ingredientName': 'پیروکتون اولامین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سیتریک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ پیچک',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره خزه ایسلندی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ گل نسترن',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ رزماری',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گلیسیرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره مریم گلی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن برگ اکالیپتوس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سالیسیلیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'منیزیم',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع مو',
    image: 'image',
    method:
        'مقدار مناسبی از شامپو را روی موها و پوست مرطوب سر ماساژ داده پس از سه تا پنج دقیقه به خوبی آبکشی نمایید.',
  ),
  Products(
    id: 0920,
    name: 'شامپو موی چرب',
    latinName: 'Greasy Hair Shampoo',
    categoryId: 2,
    brandId: 9,
    fullLatinName: 'Greasy Hair Shampoo',
    description: [],
    points: [
      'فرمولاسیون ارگانیک جهت پاکسازی عمیق و کنترل ترشح چربی از غدد سباسه با اثر آنتی اکسیدان قوی و پیشگیری کننده از آسیب های پوست سر در مقابل عوامل محیطی (قارچ، آلودگی و...)',
      'بهبود اکسیژن رسانی و افزایش جریان خون رسانی مویرگی کف سر جهت تقویت و استحکام فولیکول های مو همراه با مهار ریزش های ناشی از چربی',
      'حاوی سورفکتانت های ملایم بر پایه آمینو اسید ها به منظور ماندگاری مو در فاز رشد و کمک به حجم دهندگی، حفظ رطوبت و کاهش تحریکات پوست سر',
    ],
    activeIngredients: [
      {
        'ingredientName': 'عصاره ریشه گیاه بابا آدم',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره گزنه',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره مریم گلی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ درخت توس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره گل اسطوخودوس',
        'ingredientInfo': 'لاوندر',
      },
      {
        'ingredientName': 'عصاره گل همیشه بهار کوهی',
        'ingredientInfo': 'آرنیکا مونتانا',
      },
      {
        'ingredientName': 'روغن برگ اکالیپتوس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اسیدهای آمینه ضروری',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب موی چرب',
    image: 'image',
    method:
        'مقدار مناسبی از شامپو را روی موها و پوست مرطوب سر ماساژ داده پس از سه تا پنج دقیقه به خوبی آبکشی نمایید.',
  ),
  Products(
    id: 0921,
    name: 'شامپو کراتین و بازسازی کننده',
    latinName: 'Keratin Shampoo',
    categoryId: 2,
    brandId: 9,
    fullLatinName: 'Keratin & Revitalizing Shampoo',
    description: [],
    points: [
      'بهره گیری از کراتین غنی شده جهت بازسازی و تقویت پروتئین ساختار مو، مغذی با خاصیت افزایش مقاومت کشسانی و ارتجاعی',
      'مناسب موهای رنگ شده، شکننده، آسیب دیده و کراتین شده',
      'تقویت فیبر مو همراه با ترمیم شکاف های بافت آن به منظور افزایش سلامت، درخشندگی و لطافت ساقه مو',
      'خاصیت آبرسانی قوی، محافظت کننده در مقابل آلودگی های محیطی و رادیکال های آزاد در جهت پیشگیری از ایجاد موخوره، گره خوردگی و کنترل ریزش مو',
    ],
    activeIngredients: [
      {
        'ingredientName': 'پروتئین هیدرولیز شده سویا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اسید های آمینه کراتین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پروتئین هیدرولیز شده گندم',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره سیر',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن دانه آفتابگردان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ رزماری',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره گل همیشه بهار کوهی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره گزنه',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ اکالیپتوس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'توکوفرول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سیلیکون',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب موهای آسیب دیده و کراتین',
    image: 'image',
    method:
        'مقدار مناسبی از شامپو را روی موها و پوست مرطوب سر ماساژ داده پس از سه تا پنج دقیقه به خوبی آبکشی نمایید.',
  ),
  Products(
    id: 0922,
    name: 'شامپو موی خشک',
    latinName: 'Dry Hair Shampoo',
    categoryId: 2,
    brandId: 9,
    fullLatinName: 'Dry Hair Shampoo',
    description: [],
    points: [
      'شوینده ایده آل حاوی سورفکتانت های ملایم و حفظ رطوبت با خاصیت آنتی اکسیدانی کمک به بهبود آسیب های ناشی از خشکی مو (آسیب های حرارتی، اتو، عوامل محیطی)',
      'حاوی عصاره خالص ابریشم جهت احیا کوتیکول های آسیب دیده با اثر افزایش حالت پذیری مو',
      'خاصیت تقویت و ترمیم موهای خشک همراه با هیدراسیون جهت استحکام ریشه، ساقه و محرک رشد مو',
    ],
    activeIngredients: [
      {
        'ingredientName': 'گلیسیرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سیتریک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پروتئین هیدرولیز شده ابریشم',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'توکوفریل استات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پانتنول',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب موی خشک',
    image: 'image',
    method:
        'مقدار مناسبی از شامپو را روی موها و پوست مرطوب سر ماساژ داده پس از سه تا پنج دقیقه به خوبی آبکشی نمایید.',
  ),
  Products(
    id: 0923,
    name: 'شامپو روزانه',
    latinName: 'Daily Shampoo',
    categoryId: 2,
    brandId: 9,
    fullLatinName: 'Daily Shampoo',
    description: [],
    points: [
      'فرموله شده بر پایه پروتئین های گیاهی هیدرولیز شده با حفاظت سد دفاعی پوست سر حساس، تقویت کننده و حجم دهنده مناسب انواع مو بخصوص نازک و شکننده',
      'افزایش متابولیسم سلولی، تامین رطوبت مورد نیاز پوست سر در جهت بازسازی ریشه و ساقه مو در برابر عوامل مخرب محیطی',
      'پشتیبانی از تغذیه فولیکولی به منظور تسریع روند رشد، افزایش انعطاف پذیری و ضخامت تار مو',
    ],
    activeIngredients: [
      {
        'ingredientName': 'سیلیکون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پروتئین هیدرولیز شده گندم',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پروتئین هیدرولیز شده سویا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'لاکتیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'توکوفرول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اوره',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن سبوس برنج',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پروتئین هیدرولیز شده ذرت',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع مو',
    image: 'image',
    method:
        'مقدار مناسبی از شامپو را روی موها و پوست مرطوب سر ماساژ داده پس از سه تا پنج دقیقه به خوبی آبکشی نمایید.',
  ),
  Products(
    id: 0924,
    name: 'شامپو تقویت کننده',
    latinName: 'Fortifying Hair Shampoo',
    categoryId: 2,
    brandId: 9,
    fullLatinName: 'Fortifying Hair Shampoo',
    description: [],
    points: [
      'کمپلکس تخصصی تقویت کننده، ضد ریزش همراه با کاهش هورمون (دی هیدروتستوسترون) DHT و مهار آنزیم آلفاردوکتاز در جهت کنترل انواع ریزش مو (ارثی، هورمونی، عدم تغذیه رسانی صحیح).',
      'بهبود تغذیه و تنفس ریشه مو با افزایش گردش خون سلولی در اطراف آن به منظور محرک غشاء فولیکول و رویش مجدد، افزایش حجم و ضخامت موهای ضعیف و نازک',
      'آنتی اکسیدان و محافظ سلول های بنیادی ریشه مو با مهار رادیکال های آزاد و کمک به کاهش ریزش، تسکین التهاب و خارش پوست سر',
    ],
    activeIngredients: [
      {
        'ingredientName': 'کافئین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره ریشه جینسینگ',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'توکوفریل استات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'منتول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سدیم PCA',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گلیسین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'دی سدیم EDTA',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اسید های آمینه ضروری',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع مو',
    image: 'image',
    method:
        'مقدار مناسبی از شامپو را روی موها و پوست مرطوب سر ماساژ داده پس از سه تا پنج دقیقه به خوبی آبکشی نمایید.',
  ),

//! DELANO PRODUCT
  Products(
    id: 0701,
    name: 'کرم ضد آفتاب فاقد چربی SPF 50+',
    latinName: 'SunScreen Cream',
    categoryId: 1,
    brandId: 7,
    fullLatinName: 'SunScreen Oil Free SPF 50+ Cream',
    description: [],
    points: [
      'ساختاری بسیار سبک و محافظت بالا در برابر تاثیرات مخرب اشعه های مضر UVA و UVB',
      'خاصیت ضد میکروبی و تنظیم کننده ترشح چربی پوست',
      'دارای خاصیت مات کنندگی و ضد براق پوست',
      'مقاوم در برابر تعریق',
    ],
    activeIngredients: [],
    color: [
      'غیر رنگی',
      'بژ روشن',
      'بژ طبیعی',
    ],
    skinType: 'مناسب پوست های چرب و دارای جوش',
    image: 'image',
    method:
        'نیم ساعت قبل از قرار گرفتن در معرض اشعه خورشید، روی پوست تمیز ماساژ داده و هر سه تا چهار ساعت یکبار آن را تجدید کنید.',
  ),
  Products(
    id: 0702,
    name: 'کرم ضد آفتاب نرمال SPF 50+',
    latinName: 'SunScreen Cream',
    categoryId: 1,
    brandId: 7,
    fullLatinName: 'SunScreen Normal SPF 50+ Cream',
    description: [],
    points: [
      'پوشش دهنده و محافظت کننده قوی در برابر اشعه های مضر UVA و UVB',
      'حاوی ترکیبات مرطوب کننده قوی',
      'پیشگیری از چروک پوست ناشی از آفتاب و بالا رفتن سن',
      'مقاوم در برابر تعریق',
    ],
    activeIngredients: [],
    color: [
      'بژ روشن',
      'بژ طبیعی',
    ],
    skinType: 'مناسب پوست های خشک و نرمال',
    image: 'image',
    method:
        'نیم ساعت قبل از قرار گرفتن در معرض اشعه خورشید، روی پوست تمیز ماساژ داده و هر سه تا چهار ساعت یکبار آن را تجدید کنید.',
  ),
  Products(
    id: 0703,
    name: 'کرم ضد آفتاب ضد لک SPF 50+',
    latinName: 'SunScreen Cream',
    categoryId: 1,
    brandId: 7,
    fullLatinName: 'SunScreen Bio-Taches SPF 50+ Cream',
    description: [],
    points: [
      'قوی ترین و موثر ترین ضد آفتاب با دو عملکرد (ضد آفتاب + ضد لک)',
      'مناسب برای پوست های دارای لک همراه با خاصیت روشن کنندگی',
      'مکمل درمان انواع لک های ناشی از آفتاب، ملاسما، جای جوش و افزایش سن',
      'با خاصیت حفاظتی بالا در برابر اشعه های مضر UVA و UVB',
      'قابل استفاده بعد از درمان های پوستی ماننده لیزر، میکرودرم، پیلینگ شیمیایی و...',
      'پیشگیری از ایجاد لک خصوصا در افرادی که مستعد ابتلا به لک های ناشی از آفتاب هستند',
      'مرطوب کننده و التیام بخش پوست',
    ],
    activeIngredients: [],
    color: [
      'بژ روشن',
      'بژ طبیعی',
    ],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'نیم ساعت قبل از قرار گرفتن در معرض اشعه خورشید، روی پوست تمیز ماساژ داده و هر سه تا چهار ساعت یکبار آن را تجدید کنید.',
  ),
  Products(
    id: 0704,
    name: 'کرم ضد لک قوی حاوی هیدروکینون',
    latinName: 'Whitening Cream',
    categoryId: 1,
    brandId: 7,
    fullLatinName: 'Whitening & Lightening Cream',
    description: [],
    points: [
      'درمان قوی و سریع انواع لک به واسطه ترکیب موثر هیدروکینون',
      'اثر گذاری قابل رویت پس از دو هفته استفاده صحیح از محصول',
      'مناسب جهت از بین بردن لک های مقاوم به درمان',
      'موثر در درمان لک های ناشی از آفتاب، جای جوش، لیزر، پیلینگ، افزایش سن و ملاسما',
    ],
    activeIngredients: [
      {
        'ingredientInfo': 'هیدروکینون',
        'ingredientName': '2-Acetyl Hydroquinone',
      },
      {
        'ingredientInfo': 'آلفا آربوتین',
        'ingredientName': 'Alpha Arbutin',
      },
      {
        'ingredientInfo': 'رتینول',
        'ingredientName': 'Retinol',
      },
      {
        'ingredientInfo': 'گلایکولیک اسید',
        'ingredientName': 'Glycolic Acid',
      },
      {
        'ingredientInfo': 'ویتامین سی',
        'ingredientName': 'Vitamin C',
      },
      {
        'ingredientInfo': 'سالیسیلیک اسید',
        'ingredientName': 'Salicylic Acid',
      },
      {
        'ingredientInfo': 'عصاره پرتغال',
        'ingredientName': 'Citrus Aurantum Dulcis Flower',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'شب ها روی پوست تمیز ماساژ داده و در طول روز به طور مستمر حتما از ضد آفتاب مناسب پوست استفاده شود.',
  ),
  Products(
    id: 0705,
    name: 'کرم روشن کننده روز با SPF 15',
    latinName: 'Day Cream',
    categoryId: 1,
    brandId: 7,
    fullLatinName: 'Hydrating Day SPF 15 Cream ',
    description: [],
    points: [
      'این کرم روند بازسازی سلول ها را بهبود می بخشد و سطح پوست را نرم و صاف می کند که بافت پوست را ترمیم می کند',
      'دارای فاکتور حفاظتی مناسب در مقابل اشعه های مضر آفتاب',
      'روند پیری پوست را کند می کند و همچنین از آزاد شدن برخی آنزیم ها جلوگیری می کند که باعث پیشگیری از التهاب ها می شود',
    ],
    activeIngredients: [
      {
        'ingredientInfo': 'گلیسرین',
        'ingredientName': '',
      },
      {
        'ingredientName': 'عصاره هیدرولیز شده جوجوبا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بیزابولول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'توکوفریل استات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'مشتق ویتامین سی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره نارون کوهی',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست های خشک و نرمال',
    image: 'image',
    method:
        'هر روز صبح بر روی پوست تمیز استفاده شود. با حرکت دایره ای به آرامی به سمت بالا ماساژ دهید تا کاملا جذب پوست شود.',
  ),
  Products(
    id: 0706,
    name: 'ژل لایه بردار شب AHA 15%',
    latinName: 'AHA Gel',
    categoryId: 3,
    brandId: 7,
    fullLatinName: 'AHA 15% Night Gel ',
    description: [],
    points: [
      'ژل لایه بردار قوی و کنترل کننده ضخامت لایه شاخی پوست',
      'ضد چروک همراه با خاصیت جوانسازی پوست',
      'لایه بردار و از بین برنده سلول های سطحی مرده پوست',
      'کاهش چشمگیر چروک های ناشی از افزایش سن در ناحیه صورت و گردن',
      'افزایش شفافیت، روشن کننده رنگ پوست',
      'محرک ساخت کلاژن و پیشگیری از افتادگی پوست',
      'حاوی ترکیبات مغذی و رطوبت رسان قوی',
      'تنظیم PH پوست',
      'به دلیل داشتن فرم ژل فاقد چربی بوده و مناسب انواع پوست (حتی پوست های چرب و مختلط) می باشد',
    ],
    activeIngredients: [
      {
        'ingredientInfo': 'گلایکولیک اسید',
        'ingredientName': 'Glycolic Acid',
      },
      {
        'ingredientInfo': 'عصاره گل بابونه',
        'ingredientName': 'Chamomilla Recutita Flower Juice',
      },
      {
        'ingredientInfo': 'عصاره آلوئه ورا',
        'ingredientName': 'Aloe Barbadensis Leaf Juice',
      },
      {
        'ingredientInfo': 'عصاره کاملیا',
        'ingredientName': 'Camillia Oleifera Leaf Extract',
      },
      {
        'ingredientInfo': 'سدیم هیالورونات',
        'ingredientName': 'Sodium Hyaluronte',
      },
      {
        'ingredientInfo': 'پنتنول',
        'ingredientName': 'Panthenol',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'شب ها مقدار کمی از کرم را روی پوست تمیز ماساژ دهید و در طول روز حتما از ضد آفتاب مناسب پوست استفاده نمایید.',
  ),
  Products(
    id: 0707,
    name: 'سرم بوستر ویتامین سی (روشن کننده و جوانساز)',
    latinName: 'Vitamin C Serum',
    categoryId: 4,
    brandId: 7,
    fullLatinName: 'Vitamin C++ Booster Serum ',
    description: [],
    points: [
      'ایجاد حس صافی و افزایش انرژی و جوانی پوست با خاصیت درخشان کنندگی و آنتی اکسیدان',
      'حاوی ترکیبات اختصاصی محرک ساخت کلاژن و الاستین',
      'روشن کننده یکنواخت پوست',
    ],
    activeIngredients: [
      {
        'ingredientInfo': 'روغن کرچک',
        'ingredientName': 'Hydrolyzed Castor Oil',
      },
      {
        'ingredientInfo': 'کلاژن محلول',
        'ingredientName': 'Soluble Collagen',
      },
      {
        'ingredientInfo': 'کلاژن هیدرولیز شده',
        'ingredientName': 'Hydrolyzed Collagen',
      },
      {
        'ingredientInfo': 'عصاره پرتغال',
        'ingredientName': 'Citrus Aurantium Dulcis Extract',
      },
      {
        'ingredientInfo': 'مشتق ویتامین سی',
        'ingredientName': 'Sodium Ascorbyl Phosphat',
      },
      {
        'ingredientInfo': 'پروتئین هیدرولیز شده گندم',
        'ingredientName': 'Hydrolyzed Wheat Protein',
      },
      {
        'ingredientInfo': 'تری پپتاید',
        'ingredientName': 'Tripeptide',
      },
      {
        'ingredientInfo': 'هیالورونیک اسید',
        'ingredientName': 'Hyaluronic Acid',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'سرم ویتامین سی را بر روی پوست تمیز ماساژ دهید تا به طور کامل جذب پوست شود.',
  ),
  Products(
    id: 0708,
    name: 'ژل فیس واش روزانه خشک',
    latinName: 'Cleansing Gel',
    categoryId: 3,
    brandId: 7,
    fullLatinName: 'Daily Face Wash Cleansing Gel',
    description: [],
    points: [
      'شوینده ملایم مناسب پوست های نرمال و خشک بدون ایجاد خشکی و احساس کشیدگی در پوست',
      'جلوگیری از دهیدراته شدن پوست',
      'قابلیت پاک شوندگی آسان از پوست صورت',
      'هیپوآلرژنیک با قابلیت تحمل پذیری بالا',
      'فاقد مواد صابونی و دارای PH مناسب پوست',
    ],
    activeIngredients: [
      {
        'ingredientInfo': 'عصاره هیدرولیز شده جلبک',
        'ingredientName': 'Hydrolyzed Algae Extract',
      },
      {
        'ingredientInfo': 'عصاره شاهی',
        'ingredientName': 'Lepidium Sativum Sprot Extract',
      },
      {
        'ingredientInfo': 'تارتاریک اسید',
        'ingredientName': 'Tartaric Acid',
      },
      {
        'ingredientInfo': 'لاکتیک اسید',
        'ingredientName': 'Lactic Acid',
      },
      {
        'ingredientInfo': 'آلفا آربوتین',
        'ingredientName': 'Alpha Arbutin',
      },
      {
        'ingredientInfo': 'عصاره ریشه شیرین بیان',
        'ingredientName': 'Glycyrrhiza Glabra Root Extract',
      },
    ],
    color: [],
    skinType: 'مناسب پوست های خشک و نرمال',
    image: 'image',
    method:
        'صورت را با کمی آب مرطوب نمائید. مقداری از ژل را با حرکات دورانی روی صورت ماساژ دهید. از تماس با چشم ها و مخاط خودداری گردد. بعد با آب ولرم شستشو دهید.',
  ),
  Products(
    id: 0709,
    name: 'ژل فیس واش روزانه چرب',
    latinName: 'Cleasing Gel',
    categoryId: 3,
    brandId: 7,
    fullLatinName: 'Daily Face Wash Cleansing Gel',
    description: [],
    points: [
      'کوچک کننده منافذ باز پوست',
      'میکروب زدا و آنتی باکتریال',
      'لایه بردار ملایم و پاکسازی کننده سلول های مرده سطح پوست',
      'قابلیت پاک شوندگی آسان از پوست صورت',
      'هیپوآلرژنیک با قابلیت تحمل پذیری بالا',
      'فاقد مواد صابونی و دارای PH مناسب پوست',
      'پاک کننده عمیق، پیشگیری از ایجاد جوش و کنترل چربی پوست',
    ],
    activeIngredients: [
      {
        'ingredientInfo': 'سالیسیلک اسید',
        'ingredientName': 'Salicylic Acid',
      },
      {
        'ingredientInfo': 'سیتریک اسید',
        'ingredientName': 'Citric Acid',
      },
      {
        'ingredientInfo': 'عصاره گل زنبق',
        'ingredientName': 'Iris Florentina Root Extract',
      },
      {
        'ingredientInfo': 'چای سبز',
        'ingredientName': 'Green Tea',
      },
      {
        'ingredientInfo': 'عصاره برگ کاملیا',
        'ingredientName': 'Camellia Oleifera Leaf Extract',
      },
    ],
    color: [],
    skinType: 'مناسب پوست های چرب و مستعد آکنه',
    image: 'image',
    method:
        'صورت را با کمی آب مرطوب نمائید. مقداری از ژل را با حرکات دورانی روی صورت ماساژ دهید. از تماس با چشم ها و مخاط خودداری گردد. سپس با آب ولرم شستشو دهید.',
  ),
  Products(
    id: 0710,
    name: 'کرم دور چشم',
    latinName: 'Eye Cream',
    categoryId: 1,
    brandId: 7,
    fullLatinName: 'Eye Cream',
    description: [],
    points: [
      'ضد چروک و بازسازی کننده قوی',
      'از بین برنده پف و تیرگی دور چشم',
      'رطوبت رسان، التیام بخش و آنتی اکسیدان',
      'سفت کننده، استحکام بخش و لیفت کننده پوست دور چشم',
      'انرژی رسان و جوان کننده پوست دور چشم',
      'دارای فیلتر ضد آفتاب جهت محافظت پوست دور چشم در برابر اشعه مضر UV',
    ],
    activeIngredients: [
      {
        'ingredientInfo': 'پروتئین هیدرولیز شده برنج',
        'ingredientName': 'Hydrolyzed Rice Protein',
      },
      {
        'ingredientInfo': 'روغن بادام شیرین',
        'ingredientName': 'Prunus Amygdalus Dulcis Oil',
      },
      {
        'ingredientInfo': 'توکوفریل استات ویتامین ای',
        'ingredientName': 'Tocopheryl Acetate',
      },
      {
        'ingredientInfo': 'سدیم هیالورونات',
        'ingredientName': 'Sodium Hyaluronate',
      },
      {
        'ingredientInfo': 'پروتئین سویا',
        'ingredientName': 'Soya Protein',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'صبح و شب بر روی پوست تمیز دور چشم به صورت دورانی با ضربات ملایم از داخل به خارج ماساژ دهید.',
  ),
  Products(
    id: 0711,
    name: 'پاک کننده آرایش صورت و چشم',
    latinName: 'Makeup Remover',
    categoryId: 10,
    brandId: 7,
    fullLatinName: 'Makeup Remover',
    description: [],
    points: [
      'بدون نیاز به شستشو',
      'مناسب برای آرایش چشم و صورت',
      'پاک کننده یک مرحله ای مواد آرایشی و آلودگی ها از روی صورت',
      'مرطوب کننده، شاداب کننده، تقویت کننده، مغذی و طراوت بخش پوست',
      'تسکین دهنده و آرامش بخش پوست',
      'فاقد مواد صابونی، روغن، الکل و پاربن',
    ],
    activeIngredients: [
      {
        'ingredientInfo': 'روغن کرچک هیدرولیز شده',
        'ingredientName': 'Hydrolyzed Castor Oil',
      },
      {
        'ingredientInfo': 'هاماملیس',
        'ingredientName': 'Hamamelis Virginiana Water',
      },
      {
        'ingredientInfo': 'روغن دانه های خیار',
        'ingredientName': 'Cucumis Sativus Seed Oil',
      },
      {
        'ingredientInfo': 'آلانتویین',
        'ingredientName': 'Allantoin',
      },
      {
        'ingredientInfo': 'سدیم هیالورونات',
        'ingredientName': 'Sodium Hyaluronate',
      },
      {
        'ingredientInfo': 'سیتریک اسید',
        'ingredientName': 'Citric Acid',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'یک پد پنبه ای را مقدار مناسب از محصول آغشته کرده و هرگونه آلودگی، چربی و مواد آرایشی را از پوست خود پاک نمایید.',
  ),
  Products(
    id: 0712,
    name: 'ژل ترمیم کننده',
    latinName: 'Repair Gel',
    categoryId: 3,
    brandId: 7,
    fullLatinName: 'Rejuvenating & Repair Gel',
    description: [],
    points: [
      'ترمیم کننده قوی و التیام بخش پوست های آسیب دیده',
      'قابل استفاده در زخم ها، بریدگی ها و سوختگی های سطحی با قابلیت جلوگیری از ایجاد کلوئید',
      'تسریع روند بهبودی زخم و بازسازی پوست های صدمه دیده',
      'ضد عفونی کننده و آنتی باکتریال',
      'مناسب جهت استفاده بعد از لیزر، پیلینگ، میکرودرم ابریژن، خال برداری و جراحی های سطحی پوست',
    ],
    activeIngredients: [
      {
        'ingredientInfo': 'دایمتیکون',
        'ingredientName': 'Dimethicone',
      },
      {
        'ingredientInfo': 'تیتانیوم دی اکساید',
        'ingredientName': 'Titanium Dioxide',
      },
      {
        'ingredientInfo': 'زینک اکساید',
        'ingredientName': 'Zinc Oxide',
      },
      {
        'ingredientInfo': 'سیلیکون',
        'ingredientName': 'Silica',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'میزان مناسب از ژل ترمیم کننده را بر روی نواحی آسیب دیده پوست ماساژ دهید و حداقل سه بار در روز استفاده نمایید.',
  ),
  Products(
    id: 0713,
    name: 'ژل کرم کنترل کننده چربی پوست',
    latinName: 'Control Gel',
    categoryId: 3,
    brandId: 7,
    fullLatinName: 'Sebum Control Cream Gel',
    description: [],
    points: [
      'تنظیم ترشح چربی پوست و از بین بردن حالت براقیت آن به مدت طولانی',
      'کمک به بهبود جوش های صورت',
      'مات کننده سطح پوست و آنتی باکتریال و ضد التهاب قوی',
      'کمک به جمع شدن منافذ باز پوست',
      'مرطوب کننده پوست های چرب، مختلط و تحت درمان با داروهای ضد آکنه',
    ],
    activeIngredients: [
      {
        'ingredientName': 'سالیسیلیک اسید',
        'ingredientInfo': 'Salicylic Acid',
      },
      {
        'ingredientName': 'عصاره گل زنبق',
        'ingredientInfo': 'Iris Florentina Root Extract',
      },
      {
        'ingredientName': 'ویتامین ای',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'رتینیل پالمیتات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سیتریک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اولئانولیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بیوتین',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست های چرب و جوش دار',
    image: 'image',
    method:
        'صبح و عصر بر روی پوست تمیز به آرامی ماساژ دهید تا کاملا جذب پوست شود.',
  ),
  Products(
    id: 0714,
    name: 'ژل ضد آکنه',
    latinName: 'Anti Acne Gel',
    categoryId: 3,
    brandId: 7,
    fullLatinName: 'Anti Acne Gel',
    description: [],
    points: [
      'ژل ضد جوش قوی موضعی و اورژانسی، موثر در از بین بردن سریع جوش و جلوگیری از ایجاد اسکار',
      'عملکرد آنتی باکتریال و ضد التهابی قوی و ضد عفونی کننده سطح پوست',
      'لایه برداری در نتیجه نفوذ پذیری عمیق به لایه های زیرین پوست',
      'درمان انواع آکنه خصوصا جوشهای زیر پوستی سر سیاه و سر سفید',
    ],
    activeIngredients: [
      {
        'ingredientName': 'سدیم سالیسیلات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'زینک پی سی ای',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'کوپر پی سی ای',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سباسیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'هیالورونیک اسید هیدرولیز شده',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بیزابولول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'توکوفریل استات ویتامین ای',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آلانتویین',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست های چرب، مختلط و جوش دار',
    image: 'image',
    method:
        'جهت استفاده صبح و شب روی موضع به آرامی ماساژ دهید و برای تکمیل درمان روزها از کرم ضد آفتاب فاقد چربی استفاده شود.',
  ),
  Products(
    id: 0715,
    name: 'کرم ضد چروک',
    latinName: 'Anti Wrinkle Cream',
    categoryId: 1,
    brandId: 7,
    fullLatinName: 'Firming Effect Anti Wrinkle Cream',
    description: [],
    points: [
      'پیشگیری و درمان چین و چروک پوست',
      'بازسازی کننده پوست/بهبود خشکی و زبری پوست',
      'چین و چروک ها و خطوط ریز پوستی را کاهش می دهد',
      'این کرم به سرعت جذب شده و پوست را لطیف و نرم می کند',
      'پوست را لطیف می کند، استحکام بخش و تقویت کننده می باشد',
      'پوست را شفاف و جوان می کند',
    ],
    activeIngredients: [
      {
        'ingredientName': 'عصاره میوه ترنج',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره میوه کلمنتینا',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'بعد از تمیز کردن کامل پوست خود، صبح یا عصر روی صورت و گردن مالیده و به آرامی ماساژ دهید.',
  ),
  Products(
    id: 0716,
    name: 'کرم انرژی زا ۲۴ ساعته',
    latinName: '24H Cream',
    categoryId: 1,
    brandId: 7,
    fullLatinName: '24H Energizer Cream',
    description: [],
    points: [
      'مرطوب کننده، ایجاد حس لطافت در پوست شما',
      'مصرف مداوم این کرم تیرگی و دانه های سر سیاه پوست را از بین می برد',
      'شفاف کننده و جوان کننده',
      'با جذب سریع مناسب به عنوان پایه آرایش',
      'مغذی طبیعی پوست بوده و عملکرد سلول های پوستی را بهبود می بخشد',
      'رطوبت کافی برای پوست را در طول ۲۴ ساعت شبانه روز تامین می کند و قابلیت ارتجاعی و درخشندگی پوست را دوام می بخشد',
    ],
    activeIngredients: [
      {
        'ingredientName': 'روغن آوکادو و گلابی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گلیسرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پنتنول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بیزابولول',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'هر روز صبح بعد از تمیز کردن پوست صورت و گردن خود، از کرم انرژی زا ۲۴ ساعته استفاده نمایید.',
  ),
  Products(
    id: 0717,
    name: 'کرم لیفتینگ قوی',
    latinName: 'Lifting Cream',
    categoryId: 1,
    brandId: 7,
    fullLatinName: 'Tighten Lifting Cream',
    description: [],
    points: [
      'افزایش تولید ساخت رشته های کلاژن و الاستین و جلوگیری از تخریب آن',
      'افزایش متابولیسم و انرژی سلول های پوست',
      'حفظ رطوبت لایه شاخی پوست',
      'افزایش دهنده قوام و استحکام پوست',
      'خاصیت سفت شدن و لیفتینگ پوست',
    ],
    activeIngredients: [
      {
        'ingredientName': 'رتینول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن گل آفتابگردان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ کاملیا',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'کرم سفت کننده و لیفتینگ را صبح و شب روی پوست تمیز صورت و گردن خود ماساژ دهید تا کاملا جذب پوست شود.',
  ),
  Products(
    id: 0718,
    name: 'کرم شب مغذی',
    latinName: 'Night Cream',
    categoryId: 1,
    brandId: 7,
    fullLatinName: 'Nourishing Night Cream',
    description: [
      'کرم شب مغذی بازسازی سلولی را تحریک کرده، منافذ باز پوست را می بندد. شب ها با استفاده از این محصول تیرگی و معایب پوست خود را رفع کنید و در طول روز پوستی لطیف و شفاف و یکدست را تجربه کنید.',
      'این کرم مناسب برای هر نوع پوست می باشد و پوست را بازسازی و سم زدایی می کند.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'روغن گیاه شی باتر',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پنتنول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بیزابولول',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'شب ها روی پوست تمیز به حالت دورانی ماساژ دهید تا کاملا جذب پوست شود.',
  ),
  Products(
    id: 0719,
    name: 'تونر پاک کننده و آبرسان',
    latinName: 'Cleansing Toner',
    categoryId: 10,
    brandId: 7,
    fullLatinName: 'Cleansing Toner',
    description: [],
    points: [
      'پاک کننده و از بین برنده آلودگی ها از سطح پوست',
      'خنک کننده و آبرسان پوست',
      'مغذی و جوان سازی پوست',
      'حفظ رطوبت پوست در تمام طول روز',
      'ایجاد تعادل پوست',
      'کاهش آثار قرمزی پوست و براق شدن آن',
      'آماده سازی پوست برای جذب بهتر محصولات مراقبتی',
      'به دلیل بافت سبک احساس طراوت به پوست خواهد داد',
    ],
    activeIngredients: [
      {
        'ingredientName': 'روغن کرچک هیدرولیز شده',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'هاماملیس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سیتریک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آلانتویین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گلیسرین',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'صبح و شب با پنبه یا پد آرایشی آغشته به محلول صورت و گردن را پاک نمایید.',
  ),
  Products(
    id: 0720,
    name: 'کرم آبرسان فاقد چربی',
    latinName: 'Moisturizing Cream',
    categoryId: 1,
    brandId: 7,
    fullLatinName: 'Hydrating Cream',
    description: [],
    points: [
      'دارای خواص مرطوب کنندگی و آبرسانی عمیق برای پوست می باشد و باعث تسکین خشکی و زبری پوست می شود',
      'آبرسان مناسب پوست های چرب',
      'حاوی مواد محافظ پوست در برابر رادیکال های آزاد',
      'غنی شده از آنتی اکسیدان و ویتامین برای رطوبت رسانی بیشتر به پوست می باشد و خواص جوانسازی نیز دارد',
    ],
    activeIngredients: [
      {
        'ingredientName': 'روغن هسته زردآلو',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'هیالورونیک اسید هیدرولیز شده',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن دانه فندق',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن آفتاب گردان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره مخمر هیدرولیز شده',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست های چرب و مختلط',
    image: 'image',
    method: 'در مواقع لزوم با توجه به خشکی پوست استفاده نمایید.',
  ),
  Products(
    id: 0721,
    name: 'شامپو ضد ریزش موی چرب (کافئین پلاس)',
    latinName: 'Anti-Hair Loss Shampoo',
    categoryId: 2,
    brandId: 7,
    fullLatinName: 'Anti-Hair Loss Shampoo Caffein+',
    description: [
      'شامپو ضد ریزش موی چرب به عنوان یک شامپوی کنترل کنده ریزش مو و تقویت کننده جهت انواع الگوی ریزش موی چرب مناسب می باشد. مواد موثر موجود در این شامپو، ویتامین ها، پروتئین ها و مواد معدنی لازم را برای پوست سر و تارهای مو تامین می کند. همچنین ترشح چربی در پوست سر را تنظیم می کند.',
      'حاوی کافئین کپسوله که باعث تسریع رشد مو شده و همچنین آثار مخرب DHT را کاهش می دهد.',
      'این شامپو فاقد سولفات بوده و به ساقه ی مو آسیبی نمی رساند.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'عصاره ریشه جینسینگ',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'ویتامین ای',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آرجینین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اسپارتیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آلانین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'والین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'تریونین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سالیسیلک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'منتول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'کافئین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'متیل نیکوتینات',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب موهای چرب',
    image: 'image',
    method:
        'مقدار مناسبی از شامپو را به مدت دو تا سه دقیقه بر روی موهای مرطوب ماساژ دهید و سپس آبکشی نمایید. این عمل را مجددا تکرار کنید.',
  ),
  Products(
    id: 0722,
    name: 'شامپو ضد ریزش موی خشک (بیوتین پلاس)',
    latinName: 'Anti-Hair Loss Shampoo',
    categoryId: 2,
    brandId: 7,
    fullLatinName: 'Anti-Hair Loss Shampoo Biotin+',
    description: [
      'شامپو ضد ریزش موی خشک به عنوان یک شامپوی کنترل کننده ریزش مو و تقویت کننده جهت انواع الگوی ریزش موی خشک مناسب می باشد.',
      'بیوتین موجود در این شامپو باعث تقویت فولیکول ها می گردد و به بهبود تارهای آسیب دیده کمک شایانی می نماید.',
      'این شامپو فاقد سولفات بوده و به ساقه ی مو آسیبی نمی رساند.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'پروتئین هیدرولیز شده سویا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پروتئین هیدرولیز شده ذرت',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پروتئین هیدرولیز شده گندم',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن سبوس برنج',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بیوتین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'توکوفرول (ویتامین ای)',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب موهای خشک',
    image: 'image',
    method:
        'مقدار مناسبی از شامپو را به مدت دو تا سه دقیقه بر روی موهای مرطوب ماساژ دهید و سپس آبکشی نمایید. این عمل را مجددا تکرار کنید.',
  ),
  Products(
    id: 0723,
    name: 'شامپو ضد شوره موی چرب',
    latinName: 'Anti-Dandruff Shampoo',
    categoryId: 2,
    brandId: 7,
    fullLatinName: 'Anti-Dandruff Shampoo',
    description: [
      'شامپو ضد شوره موی چرب با بهره گیری از فرمولاسیون منحصر به فرد در رفع چربی، شوره، التهاب و خارش پوست سر بسیار موثر است. چربی پوست سر و شوره نشانه بارز عدم تعادل پوست سر است که اغلب باعث ریزش مو هم می شود.',
      'استفاده از این محصول پوست را به حالت نرمال باز می گرداند.',
    ],
    points: [
      'حاوی کمپلکس کنترل کننده سبوم (چربی پوست سر)',
      'مهار آنزیم ۵ آلفا ردوکتاز',
      'جلوگیری از تکثیر قارچ ها و باکتری ها',
      'بر طرف کننده التهاب و خارش کف سر',
      'این شامپو فاقد سولفات بوده و به ساقه ی مو آسیبی نمی رساند',
    ],
    activeIngredients: [
      {
        'ingredientName': 'عصاره برگ پیچک',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره مریم گلی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره گل نسترن',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره پروپولیس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ رزماری',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پیروکتون اولامین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بادام شیرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سالیسیلک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن برگ اوکالیپتوس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سیتریک اسید',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب موهای چرب',
    image: 'image',
    method:
        'مقدار مناسبی از شامپو را به مدت دو تا سه دقیقه بر روی موهای مرطوب ماساژ داهید و سپس آبکشی نمایید. این عمل را مجددا تکرار کنید.',
  ),
  Products(
    id: 0725,
    name: 'شامپو ضد شوره موی نرمال و خشک',
    latinName: 'Anti-Dandruff Shampoo',
    categoryId: 2,
    brandId: 7,
    fullLatinName: 'Anti-Dandruff Shampoo',
    description: [
      'شامپو ضد شوره موی نرمال و خشک با داشتن ترکیبات ضد قارچ موثر همچون پریکتون اولامین و زینک پریتیون که دارای تاییدیه FDA می باشد؛ عوامل ایجاد کننده شوره سر را از بین برده و نیز به دلیل وجود اسیدهای میوه عمل طبیعی پوسته ریزی را کلی سرعت می بخشد و این امکان را می دهد که ماده موثر موجود در محصول بیشتر و سریع تر نفوذ نماید.',
    ],
    points: [
      'بر طرف کننده خارش و التهاب پوست سر',
      'حاوی مواد کاتیونی که باعث ایجاد نرمی، درخشندگی و شانه پذیری و رفع الکتریسیته ساکن می شود.',
      'این شامپون فاقد سولفات بوده و به ساقه ی مو آسیبی نمی رساند',
    ],
    activeIngredients: [
      {
        'ingredientName': 'عصاره برگ پیچک',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره مریم گلی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره گل نسترن',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ رزماری',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پیروکتون اولامین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سالیسیلیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن برگ اوکالیپتوس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سیتریک اسید',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب موهای نرمال و خشک',
    image: 'image',
    method:
        'مقدار مناسبی از شامپو را به مدت دو تا سه دقیقه بر روی موهای مرطوب ماساژ دهید و سپس آبکشی نمایید. این عمل را مجددا تکرار کنید.',
  ),
  Products(
    id: 0726,
    name: 'شامپو موهای رنگ شده و آسیب دیده (آرگان پلاس)',
    latinName: 'Colored & Damaged Shampoo',
    categoryId: 2,
    brandId: 7,
    fullLatinName: 'Colored & Damaged Shampoo Argan+',
    description: [
      'شامپو موهای رنگ شده و آسیب دیده مناسب افرادی است که تمایل به تثبیت و دوام بیشتر رنگ مو را دارند. همچنین این شامپو به دلیل داشتن روغن آرگان و فرمولاسیون خاص علاوه بر ماندگاری رنگ مو، خشکی، زبری و شانه پذیری سخت مو را برطرف کرده و باعث درخشندگی بیشتر مو می شود.',
      'این شامپو فاقد سولفات بوده و به ساقه ی مو آسیبی نمی رساند.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'عصاره میوه انار',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره هسته انگور',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پلی گواترنیوم 10',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن آرگان',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب موهای رنگ شده و آسیب دیده',
    image: 'image',
    method:
        'مقدار مناسبی از شامپو را به مدت دو تا سه دقیقه بر روی موهای مرطوب ماساژ دهید و سپس آبکشی نمایید. این عمل را مجددا تکرار کنید.',
  ),
  Products(
    id: 0727,
    name: 'روغن آرگان و کراتین',
    latinName: 'Argan Oil',
    categoryId: 8,
    brandId: 7,
    fullLatinName: 'Argan Oil',
    description: [],
    points: [
      'تقویت کلاژن سازی و ترمیم بافت سلول های مو',
      'ضد ریزش و محافظت کامل از مو',
      'مناسب انواع مو و احیا کننده موهای خیلی آسیب دیده',
      'رفع شکنندگی و موخوره',
      'تقویت موهای آسیب دیده ناشی از رنگ، دکلره، مواد شیمیایی و حرارت',
      'محرک رشد مو',
      'کاهش دهنده و جلوگیری کننده از ریزش غیر طبیعی مو',
      'حفظ رطوبت، درخشندگی، افزایش رشد مو، آنتی اکسیدان، نرم کنندگی و حالت دهندگی قوی به علت وجود روغن کاملیا و سنگ های معدنی',
    ],
    activeIngredients: [
      {
        'ingredientName': 'مشتقات ویتامن ای',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'فنول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'کاروتن',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اسکوالن',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع مو',
    image: 'image',
    method:
        'مقداری از محصول را با استفاده از کف دست به موها (از ریشه تا ساقه) ماساژ دهید.',
  ),

//!  MILITO products
  Products(
    id: 0301,
    name: 'محلول ضد جوش خیلی قوی',
    latinName: 'Ultra Anti Acne',
    categoryId: 7,
    brandId: 3,
    fullLatinName: 'Ultra Anti Acne',
    description: [
      'لوسیون ضد جوش میلیتو با دارا بودن مواد فعال میکرو لایه بردار برای رفع جوش ها و دانه های سر سیاه سظح پوست های چرب و مستعد آکنه و کنترل جربی و برق اضافی پوست مناسب است. این محصول حاوی کمپلکس Erythate 5.2% است که دارای مواد آنتی باکتریال و ضد التهاب جهت از بین بردن باکتری های ایجاد کننده جوش می باشد و از سوی دیگر موجب محو شدن و خشک شدن جوش ها و کنترل قرمزی و التهاب می شود.'
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'Zinc PCA 0.5%',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'هیالورونیک اسید ۳%',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سدیم سالیسیلات ۲%',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آلانتوئین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'کمپلکس Eruthate 5.2%',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بیزابولول',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست چرب و مستعد آکنه',
    image: 'image',
    method:
        'روزانه و در طی دو نبت صبح و عصر مقداری از لوسیون آنتی آکنه را به طور مستقیم یا با استفاده از پد روی تمام نقاط مد نظر مالیده و به آرامی ماساژ دهید. از تماس لوسیون با پوست نازک اطراف چشم و سطوح مخاطی پوست حتما جلوگیری شود.',
  ),
  Products(
    id: 0302,
    name: 'ژل شستشو دهنده مناسب پوست مختلط تا چرب',
    latinName: 'Cleansing Gel',
    categoryId: 3,
    brandId: 3,
    fullLatinName: 'Cleansing Gel AHA Complex',
    description: [
      '',
      'به طور موثر چربی ها، آرایش و کثیفی را از پوست پاک می کند. این محصول با داشتن AHA (اسید گلیکولیک) و عصاره جلبک در شفاف سازی پوست بسیار موثر است و به بهبود منافذ بزرگ و پاک سازی عمیق لک های پوست کمک می کند و موجب مات کردن، کاهش براقیت پوست و از بین رفتن جوش های سر سیاه پوست می شود.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'گلیسیرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره هیدرولیز شده جلبک دریایی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره لیکوریس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'تارتاریک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گلایکولیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آسکوربیک اسید',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست چرب و مختلط',
    image: 'image',
    method:
        'صورت خود را با آب مرطوب کنید، سپس مقدار کمی از ژل شستشو را کف دست ریخته و روی پوست صورت ماساژ داده و پس از چند دقیقه شستشو دهید.',
  ),
  Products(
    id: 0303,
    name: 'کرم ترمیم کننده زخم بسته',
    latinName: 'Ultra Repair Cream',
    categoryId: 1,
    brandId: 3,
    fullLatinName: 'Ultra Repair Cream',
    description: [
      'این کرم حاوی ترکیبات فعالی است که موجب بازسازی سلول های پوستی شده و همچنین از التهاب، عفونت و رشد باکتری در این نواحی که بسیار مستعد آلودگی هستند جلوگیری می نماید.',
      'این محصول به بهبودی بیماری های پوستی نظیر اگزما و درماتیت آتوپیک کمک شایانی می نماید و موجب رفع التهابات ناشی از لیزر، تزریق و لایه برداری، التهابات ناشی از اصلاح، آفتاب سوختگی و خشکی پوست می شود.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'هیالورونیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'شی باتر',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن بادام',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'ویتامین E',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'تیتانیوم دی اکساید',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'دو تا سه بار در روز بر روی نقاط مورد نظر به صورت ضربه ای بمالید. برای التیام پوستهای حساس، نقاط آفتاب سوخته، لبهای ترک خورده و یا حتی جهت درمان پوستهای تحریک شده پس از اصلاح می توان از این کرم استفاده کرد.',
  ),
  Products(
    id: 0304,
    name: 'کرم دور چشم',
    latinName: 'Multi-Action Eye Cream',
    categoryId: 1,
    brandId: 3,
    fullLatinName: 'Multi-Action Eye Cream',
    description: [
      'کرم دور چشم میلیتو حاوی فرمولاسیونی نوآورانه است که با افزایش تغذیه و آبرسانی موجب بازسازی سلول های پوست اطراف چشم شده و از ایجاد چین و چروک، پف یا تیرگی جلوگیری می کند. این کرم مانع شل شدن و افتادگی پوست دور چشم شده و خاصیت ارتجاعی آن را افزایش می دهد.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'عصاره جلبک',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره هندوانه',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پپتید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره سنتیلا آسیاتیکا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پروتئین های هیدرولیز شده سویا و برنج',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سدیم هیالورونات',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'پس از پاک کردن آرایش چشم هایتان روزانه دوبار صبح و شب مقدار مناسبی از کرم را روی پوست تمیز دور چشم بمالید. سپس با استفاده از نوک انگشت با حرکات ضربه ای ملایم کرم را اطراف چشم ماساژ داده تا خوب جذب شود.',
  ),
  Products(
    id: 0305,
    name: 'کرم درمان خشکی و اگزما',
    latinName: 'Eczema Therapy',
    categoryId: 1,
    brandId: 3,
    fullLatinName: 'ٍEczema Therapy Moisturizing Cream',
    description: [
      'این کرم مرطوب کننده برای پوست های خشک، خیلی خشک یا در معرض آتوپی و نیز پوست های مبتلا به اگزما صورت و بدن در نوزادان، کودکان و بزرگسالان بسیار مناسب بوده و با آبرسانی عمیق موجب کاهش خارش، احساس کشیدگی پوست و التهاب در افراد با اگزما و خارش شدید می شود. مناسب برای استفاده در تمامی فصول.'
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'استرهای هیدرولیز شده جوجوبا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آلوئه ورا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'ویتامین E',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اوره',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پوسته قهوه عربی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آرژنین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بیزابولول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'فندق افسونگر',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'فالوپیا جاپنیکا',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست خشک و اگزمایی',
    image: 'image',
    method:
        'روزانه دو بار، صبح و شب، مقدار کافی از فرآورده را بر روی پوست تمیز و خشک صورت و گردن مالیده و به آرامی ماساژ دهید. این محصول فاقد عطر، رنگ و پروپیلن گلیکول است. همچنین دارای بافت چرب با جذب بسیار سریع می باشد.',
  ),
  Products(
    id: 0306,
    name: 'ژل شستشو دهنده مناسب پوست مختلط تا خشک و نرمال',
    latinName: 'Cleansing Gel',
    categoryId: 3,
    brandId: 3,
    fullLatinName: 'Face Wash Gel CeZn',
    description: [
      'ژل شستشوی مناسب پوست مختلط تا خشک و نرمال با بهره گیری از فرمولاسیونی بسیار ملایم بدون آسیب رساندن به پوست آن را کاملا تمیز می کند. این محصول با ایجاد رطوبت پوست را نرم و لطیف می کند و در حفظ جوانی و شادابی پوست نقش موثری دارد و باعث می شود تا روند پیری پوست به تاخیر بیفتد.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'گلیسرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'توکوفریل استات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ کاملیا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'چای سبز',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره گل زنبق',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست خشک و نرمال',
    image: 'image',
    method:
        'صورت خود را با آب مرطوب کنید، سپس مقدار کمی از ژل شستشو را کف دست ریخته و روی پوست صورت ماساژ داده و پس از چند دقیقه شستشو دهید.',
  ),
  Products(
    id: 0307,
    name: 'ژل ترمیم کننده زخم باز',
    latinName: 'Ultra Repair Gel',
    categoryId: 3,
    brandId: 3,
    fullLatinName: 'Skin Care Treatment',
    description: [
      'اسکار ژل میلیتو موجب ترمیم سریع و با کیفیت بالای پوست می شود. این محصول با تسکین پوست، روند درمانی ترمیم پوست را بهینه می کند و جهت ترمیم انواع بریدگی ها، بخیه و زخم بدون ایجاد کلوئید ایده آل است.',
      'اسکار ژل میلیتو بعد از لیزر، پلینگ، میکرودرم ابریژن، خال برداری و جراحی های سطحی پوست توصیه می شود.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'دایمتیکون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'مجموعه ای از سیلیکون ها',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'زینک اکساید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'تیتانیوم دی اکساید',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'روزانه دو تا سه بار کرم را بر روی نواحی مورد نظر ماساژ دهید. توجه شود که این کرم بر روی زخم های باز و بخیه ها استفاده نشود و از تماس این کرم با چشم و سایر بافت های مخاطی خودداری شود.',
  ),
  Products(
    id: 0308,
    name: 'کرم ضد لک',
    latinName: 'Anti-Brown Spot',
    categoryId: 1,
    brandId: 3,
    fullLatinName: 'Intense Lightening Cream',
    description: [
      'کرم ضد لک میلیتو یکی از بهترین و موثرترین کرم های ضد لک در درمان انواع لک (لک ناشی از آفتاب سوختگی - لک های ناشی از افزایش سن و جای زخم و...) می باشد که با مواد ضد لک پیشرفته از جمله رزورسینول، کوجیک اسید، گلایکولیک اسید و آسکوربیک اسید سبب مهار آنزیم تیروزیناز و کاهش تولید ملانین در پوست و همچنین کاهش سایز و اندازه لک های قهوه ای و تیره پوستی می گردد.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'Ascorbyl Tetraisopalmitate 10%',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'رزورسینول 1.5%',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'کوجیک اسید 2.5%',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'AHA 5%',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست های دارای لک',
    image: 'image',
    method:
        'دو بار در روز استفاده شود. استفاده از ضد آفتاب همراه با کرم فراموش نشود.',
  ),
  Products(
    id: 0309,
    name: 'شیر پاک کن میسلار',
    latinName: 'Ultra Clean Milk',
    categoryId: 10,
    brandId: 3,
    fullLatinName: 'Micellar Cleansing Milk',
    description: [
      'شیر پاککن میلیتو پاک کننده صورت و آرایش، آبرسان و نرم کننده پوست با فرمولاسیون انحصاری از ترکیبات موثر جهت پاکسازی و تغذیه پوست می باشد. این شیر پاککن با ساختاری کرمی تمامی آلودگی ها و باقی مانده مواد آرایشی (حتی آرایش های ضد آب) را از بین برده و پوست را شاداب می سازد و با وجود ترکیبات اختصاصی پوست را احیا نموده و به حفظ فلور طبیعی پوست کمک کرده و لطافت و نرمی را به آن باز می گرداند.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'گلیسرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره خیار',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اسکولان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره چای سبز',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سویا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره جلبک دریایی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن هسته زردآلو',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'ویتامین E',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'صبح و شب با پنبه آغشته به شیر پاککن یا با نوک انگشت کل صورت و گردن را پاک نمایید.',
  ),
  Products(
    id: 0310,
    name: 'کرم مرطوب کننده مناسب انواع پوست',
    latinName: 'Ultra Facial Cream',
    categoryId: 1,
    brandId: 3,
    fullLatinName: 'Daily Moisturizing Cream',
    description: [
      'این محصول با ایجاد رطوبتی متعادل و ماندگار، نرمی و لطافت خاصی به پوست بخشیده و با ساختار غیر چرب خود مانع از بروز برق ناخوشایند در سطح پوست خواهد شد. علاوه بر آبرسانی پوست، فاقد چربی اضافی بوده و مات کننده پوست نیز می باشد. این محصول با تمرکز بر کنترل ترشح سبوم و جلوگیری از بروز آکنه رطوبت کافی را برای انواع پوست ها فراهم می نماید و از خروج آب از لایه اپیدرم مخصوصا در فصول سرد و خشک جلوگیری می نماید.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'عصاره برگ جینکو بیلوبا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره جلبک دریایی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گلیسیرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آلانتوئین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سرآمید',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'صبح ها و یا پس از محصولات درمانی دیگر می توانید از این کرم بر روی پوست خود مالیده و با ماساژ ملایم به جذب آن کمک نمایید.',
  ),
  Products(
    id: 0311,
    name: 'کرم تسکین دهنده درد',
    latinName: 'Relief Cream',
    categoryId: 1,
    brandId: 3,
    fullLatinName: 'Skin Relief Cream',
    description: [
      'این محصول حاوی عصاره گیاهان تسکین دهنده بوده که افزایش دهنده گردش خون سطحی و گرم کننده موضعی است و تسکین دهنده دردهای مفصلی، روماتیسمی، عضلانی، عصبی و خستگی مفرط می باشد. همچنین مناسب برای رفع انقباضات و آسیب های عضلانی بدن می باشد، تسکین دهنده دردهای عضلانی بوده و برای انقباضات عضلانی و رگ به رگ شدن مناسب می باشد.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'آرنیکا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'رزماری',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اکالیپتوس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گلیسرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'هیالورونیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'ویتامین E',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'روزی چند بار مقدار مناسبی از کرم را روی ناحیه ای که دارای درد، ورم، خشکی یا سفتی می باشد گذاشته و به آرامی ماساژ دهید تا جذب شود.',
  ),

//! adelio products
  Products(
    id: 1001,
    name: 'کرم ضد آفتاب فاقد چربی SPF 50+',
    latinName: 'Sunscreen Cream',
    categoryId: 1,
    brandId: 10,
    fullLatinName: 'Sunscreen Cream Oily Skin SPF 50+',
    description: [],
    points: [
      'دارای فرمولاسیون بسیار سبک',
      'موثر در رفع لک های پوستی',
      'تنظیم ترشح چربی پوست',
      'جلوگیری از آفتاب سوختگی',
      'محافظت از پوست در برابر اشعه های مضر آفتاب',
      'مقاوم در برابر تعریق و شستشو',
    ],
    activeIngredients: [],
    color: [
      'بی رنگ',
      'بژ روشن',
      'بژ طبیعی',
    ],
    skinType: 'مناسب پوست چرب',
    image: 'image',
    method:
        'نیم ساعت قبل از قرار گرفتن در معرض اشعه آفتاب، روی پوست تمیز ماساژ داده و هر چهار ساعت یکبار آن را تجدید کنید.',
  ),
  Products(
    id: 1002,
    name: 'ژل لایه بردار AHA 15%',
    latinName: 'AHA 15% Gel',
    categoryId: 3,
    brandId: 10,
    fullLatinName: 'AHA Exfoliating Gel Lightens Skin Tone',
    description: [],
    points: [
      'تحریک پوست به ساخت سلول های جدید پوستی',
      'قابلیت لایه برداری بسیار موثر، سرعت بخشیدن به پوسته ریزی طبیعی پوست',
      'کمک به رفع اسکارهای به جا مانده ناشی از جوش صورت و بدن',
      'تحریک سنتز کلاژن و الاستین و تسریع ساختار سلولی پوست',
      'ترمیم و بازسازی پوست',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'assets/images/adelio/aha.png',
    method:
        'لطفا در طول درمان از شستشو با آب گرم پرهیز شود و از شوینده های مناسب با PH 4.5 و 5.5 استفاده گردد. هفته اول یک شب در میان و از هفته دوم هر شب بر روی نواحی مورد نظر استفاده گردد و در طول روز از مرطوب کننده استفاده شود.',
  ),
  Products(
    id: 1003,
    name: 'کرم لایه بردار AHA 20%',
    latinName: 'AHA Cream',
    categoryId: 1,
    brandId: 10,
    fullLatinName: 'AHA Exfoliating Cream Lightens Skin Tone',
    description: [],
    points: [
      'مناسب درمان لک ها و بثورات جلدی از جمله ملاسما (لک بارداری)',
      'مناسب درمان اسکارهای پوستی - درمان جای جوش و لک های پوستی',
      'کمک به درمان پیری پوست ناشی از آفتاب - بر طرف کننده لایه سلول های مرده پوست',
      'دارای ساختار سبک و قابلیت نفوذ پذیری بالا جهت کاهش خطوط ظریف، چروک های قابل مشاهده',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'لطفا در طول درمان از شستشو با آب گرم پرهیز شود و از شوینده های مناسب با PH 4.5 و 5.5 استفاده گردد. هفته اول یک شب در میان و از هفته دوم هر شب بر روی نواحی مورد نظر استفاده گردد و در طول روز از مرطوب کننده استفاده شود.',
  ),
  Products(
    id: 1004,
    name: 'کرم آبرسان پوست چرب',
    latinName: 'Moisturizing Cream',
    categoryId: 1,
    brandId: 10,
    fullLatinName: 'Hydratant Cream Oily Skin',
    description: [],
    points: [
      'رطوبت رسان، قابض منافذ پوست',
      'در کنار آبرسانی پوست از ایجاد جوش و آکنه نیز جلوگیری می کند',
      'مات کننده، ترمیم کننده و ضد حساسیت می باشد',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب پوست چرب',
    image: 'image',
    method: 'صبح و شب با ماساژ ملایم بر روی پوست تمیز صورت و گردن استفاده شود.',
  ),
  Products(
    id: 1005,
    name: 'کرم آبرسان (مرطوب کننده) پوست خشک',
    latinName: 'Rich Ultra Moisturizing Cream',
    categoryId: 1,
    brandId: 10,
    fullLatinName: 'Ultra-Hydratant Cream Sensitive & Dry Skin',
    description: [],
    points: [
      'حاوی هیالورونیک اسید، گلیسیرین، عصاره بادام می باشد که سرشار از ویتامین های A، B، C، D و آنتی اکسیدان های مفید برای پوست هستند',
      'خاصیت کشسانی (الاستیسیته) پوست را که با افزایش سن کاهش می یابد، بیشتر می کند',
      'مانع از پیری زودرس پوست و حفظ لطافت آن می شود',
      'آبرسانی به لایه های عمیق پوست را به خوبی انجام داده و در نتیجه باعث می شود ساختار پوست شما قوی شود',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب پوست خشک و حساس',
    image: 'image',
    method: 'صبح و شب با ماساژ ملایم بر روی پوست تمیز صورت و گردن استفاده شود.',
  ),
  Products(
    id: 1006,
    name: 'سرم ضد لک قوی',
    latinName: 'Anti Taches & Whitening Serum',
    categoryId: 4,
    brandId: 10,
    fullLatinName: 'Depigmenting Serum All Skin Types',
    description: [],
    points: [
      'کاهش لک های قهوه ای و جلوگیری از تشکیل مجدد آن ها',
      'حاوی ترکیبات روشن کننده و آنتی اکسیدان',
      'مرطوب کننده و ضد التهاب',
      'از بین بردن لک ها و خال های معمول پوست',
      'از بین بردن لک های سرسخت و عمیق',
      'جلوگیری از ایجاد لک های جدید',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'assets/images/adelio/depigmening-serum.png',
    method:
        'هر شب سرم را به پوست تمیز بمالید و با ملایمت ماساژ دهید تا جذب شود. استفاده از این سرم پیش از کرم های مورد استفاده معمول بلامانع است. در طی روز استفاده از کرم ضد آفتاب الزامی است.',
  ),
  Products(
    id: 1007,
    name: 'کرم ضد لک',
    latinName: 'Anti Spot',
    categoryId: 1,
    brandId: 10,
    fullLatinName: 'Whitening Cream All Skin Types',
    description: [],
    points: [
      'بر طرف کننده قوی لک های ناشی از ملاسما، آفتاب سوختگی و افزایش سن',
      'محو شدن لک های ناشی از جوش صورت و کک مکی',
      'جوان کننده و شاداب کننده پوست',
      'افزایش اکسیژن رسانی به پوست',
      'پیشگیری از بروز لک ها',
      'افزایش انرژی پوست',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'شب ها روی پوست تمیز ماساژ داده و در طول روز به طور مستمر حتما از ضد آفتاب مناسب پوست استفاده شود.',
  ),
  Products(
    id: 1008,
    name: 'ژل ضد جوش',
    latinName: 'Repairing Gel',
    categoryId: 3,
    brandId: 10,
    fullLatinName: 'Anti Acne Gel Oily Skin Types',
    description: [],
    points: [
      'رفع انواع جوش های التهابی، سر سفید و سر سیاه صورت، بینی و پیشانی',
      'دارای آلانتوئین و بابونه با خواص ضد التهابی و التیام بخش',
      'پیشگیری از بروز آکنه، کنترل ترشح چربی پوست',
      'جلوگیری از تکثیر باکتری های ایجاد کننده جوش های پوستی',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'assets/images/adelio/anti-acne.png',
    method:
        'روزانه یک الی سه بار ابتدا سطح پوست را به کمک آب ولرم و پاک کننده ملایم تمیز و خشک نموده و سپس از این ژل به میزان کافی بر روی نواحی جوش دار مالیده و به آرامی و به کمک حرکات دورانی ماساژ دهید تا کاملا پخش شود و سپس، بعد از ۱۰ تا ۱۵ دقیقه صورت خود را با آب خنک آبکشی نمایید.',
  ),
  Products(
    id: 1009,
    name: 'لوسیون ترمیم کننده (اسکار کرم)',
    latinName: 'Scar Fade Lotion',
    categoryId: 7,
    brandId: 10,
    fullLatinName: 'Repairing Lotion All Skin Types',
    description: [],
    points: [
      'بازسازی لایه محافظ پوست',
      'کمک به قرار گیری منظم سلول های پوست به منظور بازسازی پوستی',
      'حاوی ترکیبات ضد باکتری برای محافظت از پوست',
      'درمان خارش و احساس خشکی و کشیدگی پوست',
      'مناسب پوست های آسیب دیده، ترک خورده، خشکی های موضعی، پس از لایه برداری و عمل جراحی، ترمیم اثر سوختگی، آکنه و زخم های سطحی',
      'پیشگیری از به جا ماندن اسکار بعد از جراحی و خال برداری',
      'حاوی عصاره های گیاهی التیام بخش و ضد التهاب',
      'کمک به بهبود و ترمیم اسکار در کوتاه ترین مدت زمان',
      'نفوذ به عمق پوست با خواص درمانی',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'روزی چند بار مقداری از این کرم را بر روی بافت اسکار مالیده و سپس به خوبی ماساژ دهید تا کرم به طور کامل جذب گردد.',
  ),
  Products(
    id: 1010,
    name: 'کرم ضد چروک قوی',
    latinName: 'Hypo Allergenic Cream',
    categoryId: 1,
    brandId: 10,
    fullLatinName: 'Anti-Wrinkle Cream All Skin Types',
    description: [],
    points: [
      'پر کننده عمقی چروک های پوست',
      'رطوبت رسان و ترمیم کننده',
      'سرشار از آنتی اکسیدان و ویتامین های A، E و B5',
      'افزایش جریان خون مویرگی',
      'حفظ استحکام پوست، ضد چروک و درخشان کننده',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'assets/images/adelio/anti-wernikle.png',
    method:
        'بعد از تمیز کردن کامل پوست خود، صبح یا عصر روی صورت و گردن مالیده و به آرامی ماساژ دهید.',
  ),
  Products(
    id: 1011,
    name: 'کرم لیفتینگ',
    latinName: 'Lifting Cream',
    categoryId: 1,
    brandId: 10,
    fullLatinName: 'Lifting Cream All Skin Types',
    description: [],
    points: [
      'افزایش استحکام پوست',
      'افزایش حالت کشسانی پوست',
      'حاوی ترکیبات بازسازی کننده',
      'محرک سنتز کلاژن و تسریع روند جوان سازی',
      'حاوی ویتامین های A، B، E، C و عصاره های گیاهی',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'صبح و شب روی پوست تمیز صورت و گردن خود ماساژ دهید تا کاملا جذب پوست شود.',
  ),
  Products(
    id: 1012,
    name: 'کرم آبرسان دست (مرطوب کننده)',
    latinName: 'Moisturizing Cream',
    categoryId: 1,
    brandId: 10,
    fullLatinName: 'Moisturizing Hand Cream All Skin Types',
    description: [],
    points: [
      'مرطوب کننده قوی و محافظت کننده از پوست دست',
      'افزایش نرمی و لطافت پوست',
      'حاوی گلیسیرین، هیالورونیک اسید و ویتامین E',
      'فرمولاسیون سبک با جذب سریع',
      'آبرسانی کامل و ۲۴ ساعته، فاقد چربی',
      'محافظت از پوست در برابر آلودگی های محیطی و رادیکال های آزاد',
      'قابل استفاده برای پوست های اگزمایی',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'هر روز بعد از شستشوی دست ها از این کرم آبرسان (مرطوب کننده) استفاده شود.',
  ),
  Products(
    id: 1013,
    name: 'کرم دور چشم',
    latinName: 'Eye Contoure Cream',
    categoryId: 1,
    brandId: 10,
    fullLatinName: 'Eye Contoure Cream All Skin Types',
    description: [],
    points: [
      'بهبود چروک های گوشه خارجی چشم',
      'جوان شدن پوست از نظر ظاهری',
      'افزایش رطوبت پوست',
      'ضد پف و سیاهی دور چشم',
      'محرک گردش خون مویرگی',
      'ضد چروک و ضد التهاب',
      'حاوی روغن بادام، پروتئین هیدرولیز شده برنج و پروتئین هیدرولیز شده سویا',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method: 'صبح و شب با حرکات ضربه ای ملایم به دور چشم مالیده شود.',
  ),
  Products(
    id: 1014,
    name: 'سرم بوستر ویتامین سی',
    latinName: 'Vitamin C Serum',
    categoryId: 4,
    brandId: 10,
    fullLatinName: 'Anti-Aging & Vitamin C All Skin Types',
    description: [],
    points: [
      'روشن کننده، حاوی ۲۰% ویتامین C، هیالورونیک اسید، پروتئین های گندم و سویا',
      'جوان کننده و تحریک ساخت کلاژن',
      'افزایش قوام و الاستیسیته پوست',
      'روشن کننده پوست و کاهش دهنده لک، مرطوب کننده و آبرسان قوی',
      'آنتی اکسیدان قوی، محافظت کننده در برابر آلودگی های محیطی',
      'ایجاد خاصیت ابریشمی، لطافت و شادابی در پوست',
      'کاهش دهنده چروک های پوستی',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method: 'یک شب در میان بر روی پوست تمیز استفاده گردد.',
  ),
  Products(
    id: 1015,
    name: 'کرم شب مغذی',
    latinName: 'Night Cream',
    categoryId: 1,
    brandId: 10,
    fullLatinName: 'Night Cream All Skin Types',
    description: [],
    points: [
      'سرشار از ویتامین های E و F جهت بازسازی و حفظ پوست در برابر عوامل مخرب محیطی',
      'رفع چروک های سطحی و افزایش قدرت بازسازی پوست در طی شب',
      'ترمیم کننده و بازسازی کننده پوست های خسته، کدر و خشک',
      'تامین کننده رطوبت و درخشان کننده',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'هر شب قبل از خواب مقدار کافی از کرم را روی پوست تمیز صورت و گردن استفاده نمایید.',
  ),
  Products(
    id: 1016,
    name: 'ژل شستشوی صورت پوست خشک',
    latinName: 'Face Wash Gel',
    categoryId: 3,
    brandId: 10,
    fullLatinName: 'Face Wash Gel Normal to Dry Skin',
    description: [],
    points: [
      'کاهش التهابات و ضد خارش',
      'آبرسانی موثر به پوست',
      'موثر بر نرمی و لطافت پوست',
      'ضد عفونی کننده و التیام بخش',
      'جلوگیری از خشکی پوست',
      'پاک کننده و مرطوب کننده',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب پوست خشک و نرمال',
    image: 'image',
    method:
        'صورت را با کمی آب مرطوب نمایید، مقداری از ژل را با حرکات دورانی روی صورت ماساژ دهید، سپس با آب ولرم شستشو دهید.',
  ),
  Products(
    id: 1017,
    name: 'ژل شستشو صورت پوست چرب',
    latinName: 'Face Wash Gel',
    categoryId: 3,
    brandId: 10,
    fullLatinName: 'Face Wash Gel Oily Skin',
    description: [],
    points: [
      'پاک کننده قوی و مرطوب کننده پوست',
      'تنظیم ترشح چربی پوست و جلوگیری از تشکیل جوش',
      'افزایش دهنده آستانه تحمل پذیری پوست',
      'التیام بخش و مات کننده',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب پوست چرب',
    image: 'image',
    method:
        'صورت را با کمی آب مرطوب نمایید، مقداری از ژل را با حرکات دورانی روی صورت ماساژ دهید، سپس با آب ولرم شستشو دهید.',
  ),
  Products(
    id: 1018,
    name: 'ژل بهداشتی بانوان',
    latinName: 'Intimate Gel',
    categoryId: 3,
    brandId: 10,
    fullLatinName: 'Intimate Gel',
    description: [],
    points: [
      'جلوگیری از عفونت های خارجی دستگاه تناسلی',
      'با توجه به ترکیبات موجود در این ژل تمامی باکتری های مضر از بین خواهد رفت',
      'ضد التهاب، سوزش، خارش و حساسیت، با مصرف این ژل باکتری های مفید دستگاه تناسلی حفظ خواهند شد',
      'حاوی اسید لاکتیک با خاصیت حفظ PH طبیعی ناحیه ژنیتال',
      'خاصیت نرم کنندگی، مرطوب کنندگی و ترمیم کنندگی آسیب های پوستی',
    ],
    activeIngredients: [],
    color: [],
    skinType: '',
    image: 'image',
    method:
        'مقداری از ژل را روی ناحیه مورد نظر ریخته و پس از یک دقیقه آبکشی نمایید. از این ژل می توان روزانه به تعداد یک یا دو بار استفاده کرد.',
  ),
  Products(
    id: 1019,
    name: 'میسلار واتر صورت و چشم',
    latinName: 'Micellar Cleansing Water',
    categoryId: 10,
    brandId: 10,
    fullLatinName: 'Micellar Cleansing Water Face & Eye, All Skin Types',
    description: [],
    points: [
      'پاک کننده آرایش و آلودگی صورت و چشم',
      'التیام بخش پوست حساس',
      'موثر روی مواد آرایشی ضد آب',
      'دارای PH سازگار با پوست',
      'متعادل کننده میزان ترشح سبوم',
      'محافظت از پوست در برابر آسیب های محیطی',
      'تسکین دهنده التهابات',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'پنبه را به میسلار واتر آغشته کرده و صورت خود را به آرامی پاک کنید، پس از پاک کردن صورت نیازی به شستشوی مجدد با آب نیست.',
  ),
  Products(
    id: 1020,
    name: 'ماسک پروتئین و مغذی مو',
    latinName: 'Protein Treatment Mask',
    categoryId: 9,
    brandId: 10,
    fullLatinName: 'Protein Treatment Mask, All Hair Types',
    description: [],
    points: [
      'تامین رطوبت و افزایش انعطاف پذیری مو',
      'حاوی بالاترین میزان مواد مغذی و پروتئینی',
      'احیا و افزایش لطافت موها',
      'مناسب موهای ضعیف و آسیب دیده، تقویت ساختار مو',
      'افزایش درخشش مو',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع مو',
    image: 'image',
    method:
        'پس از شامپو کردن، ساقه موها را به ماسک آغشته نمایید و پس از 5 دقیقه موهای خود را آبکشی نمایید.',
  ),
  Products(
    id: 1021,
    name: 'روغن آرگان',
    latinName: 'Argan Oil',
    categoryId: 8,
    brandId: 10,
    fullLatinName: 'Argan Oil, Dry, Colored & Damaged Hair',
    description: [],
    points: [
      'تغذیه کننده و تقویت کننده مو',
      'افزایش شفافیت و درخشندگی مو',
      'مناسب برای انواع مو، به ویژه موهای خشک و آسیب دیده',
      'سبک و با جذب سریع، بدون برجا گذاشتن اثر چربی',
      'ماندگاری نرمی مو تا ۲۴ ساعت',
      'مناسب استفاده روزانه',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب موی خشک، رنگ شده و آسیب دیده',
    image: 'image',
    method:
        'روی ساقه موهای مرطوب اسپری کنید. می توانید بعد از هربار شست و شوی مو و یا هر زمان که مو نیاز به تغذیه و رطوبت داشت، از آن استفاده کنید.',
  ),
  Products(
    id: 1022,
    name: 'شامپو کراتین',
    latinName: 'Keratin Shampoo',
    categoryId: 2,
    brandId: 10,
    fullLatinName: 'Keratin Shampoo, Dry, Colored & Damaged Hair',
    description: [],
    points: [
      'صاف کننده مو، درمان موهای فر و مجعد',
      'ترمیم کننده بافت های مو، براق و درخشان کننده',
      'حاوی کراتین هیدرولیز شده',
      'تثبیت کننده رنگ، رفع کدر بودن مو',
      'ترمیم کامل بافت مو',
      'افزایش دهنده مقاومت مو',
      'تنظیم PH پوست سر',
      'مناسب برای بعد از کراتین کردن مو',
      'فاقد سولفات',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب موی خشک، رنگ شده و آسیب دیده',
    image: 'image',
    method:
        'مقداری از شامپو را به کف سر مالیده و حدود 5 دقیقه ماساژ دهید سپس کاملا آبکشی کنید.',
  ),
  Products(
    id: 1023,
    name: 'شامپو آرگان',
    latinName: 'Argan Shampoo',
    categoryId: 2,
    brandId: 10,
    fullLatinName: 'Argan Shampoo, All Hair Types',
    description: [],
    points: [
      'مناسب برای انواع مو به ویژه موهای خشک، آسیب دیده و رنگ شده',
      'تامین نرمی، لطافت و رطوبت مورد نیاز موها',
      'کمک به رفع موخوره و گره در مو',
      'خوش حالت و درخشان کننده مو',
      'ترمیم موهای آسیب دیده',
      'از بین برنده وز موی سر',
      'مناسب برای استفاده روزانه',
      'فاقد سولفات',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع مو',
    image: 'image',
    method:
        'حداقل سه الهی چهار مرتبه در طول هفته استفاده شود. مقدار مناسبی از شامپو را روی پوست سر ریخته و سه تا پنج دقیقه ماساژ دهید.',
  ),
  Products(
    id: 1024,
    name: 'شامپو ضد شوره',
    latinName: 'Anti Dandruff Shampoo',
    categoryId: 2,
    brandId: 10,
    fullLatinName: 'Anti Dandruff Shampoo, All Hair Types',
    description: [],
    points: [
      'رفع شوره های مقاوم به درمان، دارای خواص ضد باکتری و ضد قارچ و آنتی اکسیدان',
      'حاوی اسید سالیسیلیک و گلیکولیک اسید',
      'بهبود و درمان شوره های چرب و خشک',
      'تقویت مو و افزایش رشد مو',
      'کاهش چربی های پوست',
      'آبرسانی، افزایش نرمی و لطافت',
      'لایه برداری مناسب و پاکسازی کامل پوست سر',
      'کنترل خارش و التهاب پوست سر',
      'فاقد سولفات',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع مو',
    image: 'assets/images/adelio/anti-dandruff-shampoo.png',
    method:
        'دو هفته اول هر روز و از هفته سوم یک شب در میان و در زمان بهبودی شوره ها هفته ای یکبار استفاده گردد.',
  ),
  Products(
    id: 1025,
    name: 'شامپو ضد ریزش و تقویت کننده (حاوی کافئین)',
    latinName: 'Anti-Hair Loss Shampoo',
    categoryId: 2,
    brandId: 10,
    fullLatinName: 'Anti-Hair Loss Shampoo, All Hair Types',
    description: [],
    points: [
      'کنترل ریزش مو، تقویت کننده',
      'حجم دهنده و افزایش دهنده ضخامت تارهای مو',
      'ترمیم ساقه موی آسیب دیده',
      'حاوی ویتامین های E، B، اسید های آمینه و کافئین',
      'تنظیم کننده چربی پوست سر',
      'افزایش خون رسانی به کف سر',
      'تنظیم PH پوست سر',
      'فاقد سولفات',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع مو',
    image: 'image',
    method:
        'ابتدا موها را خیس نموده مقدار مناسبی از شامپو را کف سر ریخته و با نوک انگشتان ماساژ دهید. ۲-۳ دقیقه صبر نموده تا عصاره های گیاهی، عوامل حجم دهنده و حالت دهنده و آنتی اکسیدان اثرات خود را اعمال نمایند سپس اقدام به آبکشی نمایید.',
  ),
  Products(
    id: 1026,
    name: 'شامپو موی چرب',
    latinName: 'Seboregulating Shampoo',
    categoryId: 2,
    brandId: 10,
    fullLatinName: 'Seboregulating Shampoo, Oily Hair',
    description: [],
    points: [
      'تنظیم و کنترل ترشح چربی پوست سر',
      'مناسب مو و پوست سر چرب',
      'دارای خاصیت ضد قارچ قوی',
      'کاهش فعالیت آنزیم ۵ آلفا ردوکتاز',
      'تقویت کننده جریان خون اطراف فولیکول های مو',
      'برطرف کننده التهاب پوست سر',
      'مناسب جهت مصرف روزانه و مستمر',
      'فاقد سولفات',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب موی چرب',
    image: 'image',
    method:
        'حداقل سه الی چهار مرتبه در طول هفته استفاده شود. مقدار مناسب از شامپو را بر روی پوست سر ریخته و سه تا پنج دقیقه ماساژ دهید.',
  ),
  Products(
    id: 1027,
    name: 'شامپو موهای خشک',
    latinName: 'Nourishing Shampoo',
    categoryId: 2,
    brandId: 10,
    fullLatinName: 'Nourishing Shampoo, Dry Hair',
    description: [],
    points: [
      'ترمیم ساقه مو و محافظت از آن را در مقابل شرایط نامطلوب محیطی',
      'محافظ در برابر اشعه فرابنفش، آسیب های فیزیکی، فر و دکلره',
      'ایجاد نرمی و لطافت موها و جلوگیری از پیچ خوردگی',
      'بازگرداندن رطوبت و جلوگیری از تخریب فیبرهای مو',
      'تغذیه و ترمیم موهای خشک و آسیب دیده',
      'فاقد سولفات',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب موی خشک',
    image: 'image',
    method:
        'حداقل سه الی چهار مرتبه در طول هفته استفاده شود. مقدار مناسب از شامپو را بر روی پوست سر ریخته و سه تا پنج دقیقه ماساژ دهید.',
  ),
  Products(
    id: 1028,
    name: 'شامپو روزانه',
    latinName: 'Revitalizing Daily Shampoo',
    categoryId: 2,
    brandId: 10,
    fullLatinName: 'Revitalizing Daily Shampoo, All Hair Types',
    description: [],
    points: [
      'افزایش گردش خون موضعی و کمک به تغذیه بهتر فولیکول های مو',
      'محافظت کننده مو از عوامل محیطی و شیمیایی مخرب',
      'ایجاد حس لطافت و افزایش خاصیت الاستیسیته مو',
      'افزایش ضخامت تارهای مو و بهبود دهنده حالت مو',
      'درخشان کننده و نرم کننده',
      'ضد التهاب پوست سر و رفع الکتریسیته ساکن',
      'فاقد سولفات',
    ],
    activeIngredients: [],
    color: [],
    skinType: 'مناسب انواع مو',
    image: 'image',
    method:
        'حداقل سه الی چهار مرتبه در طول هفته استفاده شود. مقدار مناسب از شامپو را بر روی پوست سر ریخته و سه تا پنج دقیقه ماساژ دهید.',
  ),

//! LaQuinta Products
  Products(
    id: 0501,
    name: 'کرم ضدآفتاب فاقد رنگ SPF50 (حاوی ویتامین C)',
    latinName: 'Sun Screen Cream',
    categoryId: 1,
    brandId: 5,
    fullLatinName: 'Sun Screen Oil Free (Vit C)',
    description: [
      'کرم ضد آفتاب فاقد رنگ لاکویینتا با بافتی سبک و فاقد چربی علاوه بر محافظت حداکثری در برابر UVA و UVB در رفع انواع لک و تیرگی های پوستی نیز موثر می باشد. به دلیل حضور آنتی اکسیدان های قوی مثل ویتامین های C و E در این محصول حداکثر حفاظت در برابر طیف گسترده اشعه های UVA و UVB، استرس اکسیداتیو (عدم تعادل بین رادیکال های آزاد و آنتی اکسیدان ها در بدن)، رادیکال های آزاد و آفتاب سوختگی فراهم شده است.',
      'همچنین موجب رطوبت رسانی، تقویت، ترمیم و بازسازی سلولی می شود. این محصول غیر کومدون زا و حاوی پپتید است و آن را می توان جهت پیشگیری از لک های ناشی از آفتاب در پشت دست ها هم مورد استفاده قرار داد.',
      'این محصول در برابر تعریق مقاوم بوده و مناسب برای استفاده ورزشکاران می باشد.',
    ],
    points: [
      'مناسب انواع پوست به خصوص گروه پوست های چرب، مختلط و آکنه ای',
      'بافت سبک و ابریشمی با قابلیت جذب سریع',
      'دارای فاکتور حفاظتی قوی در برابر اشعه های مضر UVA و UVB',
      'رطوبت رسانی، بهبود و بازسازی سلولی',
      'ضدچروک و به تعویق انداختن روند پیری پوست',
      'حاوی ویتامین های E، B و C و مات کننده پوست',
      'قابل استفاده بعد از لیزر و لایه برداری',
      'آنتی اکسیدان، ضدرادیکال آزاد و روشن کننده پوست',
      'مقاوم در برابر تعریق و شستشو',
    ],
    activeIngredients: [
      {
        'ingredientName': 'Titanium Dioxide',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'UV Chemical filters',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Niacin Amide',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Vitamin B5',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Vitamin E',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Dimeticon',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Amino Acid Lysine',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Tetrapetido',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست چرب، مختلط و آکنه ای',
    image: 'image',
    method:
        '۲۰ دقیقه قبل از قرار گرفتن در معرض آفتاب، استفاده و هر ۴ ساعت یکبار تجدید شود.',
  ),
  Products(
    id: 0502,
    name: 'ضدآفتاب کرم پودری مولتی اکشن فاقد چربی SPF 50',
    latinName: 'Sun Screen Cream',
    categoryId: 1,
    brandId: 5,
    fullLatinName: 'Sun Screen Oil Free Cream SPF 50',
    description: [
      "ضد آفتاب کرم پودری چند منظوره و فاقد چربی لاکوئینتا با SPF50 حاوی فیلتر های قوی و موثر در برابر اشعه های UVA و UVB بوده و حداکثر محافظت را بدون ایجاد حساسیت برای پوست به ارمغان می آورد. این کرم دارای ساختاری سبک و ابریشمی بوده و در عین حال به واسطه وجود ترکیبات رطوبت رسان و ضد چروک، باعث نرمی و لطافت پوست می شود.",
      "این ضد آفتاب به واسطه فاقد چربی بودن (Oil Free) از انسداد منافذ پوستی، تجمع چربی، تکثیر و رشد باکتری های مولد آکنه و در نهایت ایجاد آکنه در پوست جلوگیری می نماید.",
      "این محصول با تنظیم ترشحات چربی غدد سبابه منجر به رفع ظاهر براق پوست شده (Mattifier) و اثر مات کنندگی دارد.",
    ],
    points: [
      "جلوگیری از انسداد منافذ پوستی، تجمع چربی، تکثیر و رشد باکتری های مولد آکنه و ممانعت از ایجاد آکنه های نو ظهور",
      "کنترل و تنظیم ترشحات چربی پوست",
      "حفاظت کامل و طولانی مدت در برابر تابش های مضر UVA و UVB",
      "درمان کمکی آکنه و جوش های صورت",
      "ضد التهاب و دارای اثر مات کنندگی",
      "پایدار در برابر تعریق و شستشو",
      "پوشش دهی مناسب و حاوی ترکیبات رطوبت رسان",
      "فاقد چربی و مناسب گروه پوست های چرب، مختلط و آکنه ای",
    ],
    activeIngredients: [
      {
        'ingredientName': 'BHA',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Sunflower Oil',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Hyaluronic Acid',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Niacinamide',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Vitamin E',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'UV Chemical Filters',
        'ingredientInfo': '',
      },
    ],
    image: 'image',
    method:
        '۲۰ دقیقه قبل از قرار گرفتن در معرض آفتاب، استفاده و هر ۴ ساعت یکبار تجدید شود.',
    color: [
      'بژ متوسط',
      'بژ طلایی',
    ],
    skinType: 'مناسب پوست چرب، مختلط و آکنه ای',
  ),
  Products(
    id: 0503,
    name: 'کرم مرطوب کننده فاقد چربی',
    latinName: 'Face Cream',
    categoryId: 1,
    brandId: 5,
    fullLatinName: 'Moisturizing Face Cream (Oil Free)',
    description: [
      'کمپلکس تخصصی آبرسانی پوست چرب حاوی عصاره جوجوبای هیدرولیز شده، عصاره آلوئه ورا، عصاره پوسته قهوه عربیکا و آسکوربیک اسید می باشد.',
      'کرم مرطوب کننده صورت فاقد چربی لاکویینتا با تنظیم ترشحات چربی پوست و اثر مات کنندگی قطر منافذ باز پوست را کاهش داده و با درخشان و شفاف کردن پوست (حضور آسکوربیک اسید) جلوه جوانی به آن می بخشد. به دلیل وجود ترکیبات رطوبت رسان عمیق (پوسته قهوه عربیکا) این فرآورده ضد چروک و جوانساز بوده و پیری پوست را به تعویق می اندازد. این محصول باعث لطافت پوست می شود و از خشکی و پوسته پوسته شدن آن جلوگیری می کند (به یمن وجود عصاره جوجوبا).',
      'این محصول خاصیت ضد التهابی و تسکین دهندگی دارد (حضور آلوئه ورا) و از پوست در برابر آلودگی های محیطی محافظت می کند.',
    ],
    points: [
      'تنظیم تعادل چربی و آب پوست',
      'تقویت کننده سد دفاعی پوست در برابر عوامل مخرب و ایجاد کننده خشکی',
      'افزایش الاستیسیته، استحکام و قوام پوست',
      'کاهش دفع نامحسوس آب پوست، حفظ رطوبت و الاستیسیته آن',
      'فاقد چربی و غیر کومدوژنیک و مناسب جهت پایه آرایش',
      'ضد التهاب و تسکین دهنده، شفاف و درخشان کننده پوست',
      'افزایش ساخت کلاژن و الاستیسیته پوست',
      'مناسب گروه پوست های چرب، مختلط و مستعد آکنه',
    ],
    activeIngredients: [
      {
        'ingredientName': 'Glycerin',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Zinc PCA',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Aloevera Extract',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Witch Hazel',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Green Tea Extract',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست چرب، مختلط و مستعد آکنه',
    image: 'image',
    method:
        'در دو نوبت صبح و شب بر روی پوست صورت و گردن مالیده، به آرامی ماساژ داده تا کامل جذب گردد.',
  ),
  Products(
    id: 0504,
    name: 'سرم ویتامین C',
    latinName: 'Vitamin C Serum',
    categoryId: 4,
    brandId: 5,
    fullLatinName: 'Vitamin C Serum',
    description: [
      'کمپلکس ترکیبی ویتامین سی لاکویینتا محصولی منحصر به فرد با عملکرد چندگانه جهت جوانسازی پوست است که غنی شده با ویتامین سی، عصاره پرتقال و ترکیبات پپتیدی می باشد که با افزایش سنتز کلاژن و کاهش علائم پیری، باعث درخشان و روشن شدن پوست می شود.',
      'این محصول علاوه بر کم رنگ نمودن لک های قهوه ای و روشن نمودن پوست، مرطوب کننده نیز محسوب می شود. بافت پوست را تقویت و باعث افزایش خاصیت کشسانی پوست می شود. از طرف دیگر ترکیبات این سرم با نفوذ در پوست به تقویت دیواره مویرگ های زیر پوست کمک کرده و رادیکال های آزاد را به بیرون از پوست هدایت می کند.',
      'ترکیبات این سرم روند تولید کلاژن را در پوست تحریک و فرآیند پیری آن را کندتر خواهد کرد.',
    ],
    points: [
      'درمان انواع لک و تیرگی های پوست',
      'محافظت در برابر آلودگی و سایر رادیکال های آزاد',
      'حاوی ۲۰ درصد ویتامین سی پایدار شده',
      'محرک سنتز کلاژن و الاستین',
      'افزایش قوام و الاستیسیته پوست',
      'انرژی رسان، آبرسان و شاداب کننده پوست',
      'افزایش درخشندگی و شفافیت پوست',
      'آنتی اکسیدان، ضد پیری و روشن کننده یکنواخت پوست',
      'افزایش استحکام پوست و مقاومت در برابر نشانه های پیری',
    ],
    activeIngredients: [
      {
        'ingredientName': 'Collagen',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Sodium Ascorbyl Phosphate',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Hydrolyzed Proteins',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Hyaluronic Acid',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Peptides',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Castor Oil',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method: 'صبح و شب بر روی پوست تمیز ماساژ داده شود.',
  ),
  Products(
    id: 0505,
    name: 'سرم لیفتینگ (سرم پپتید میکروژل)',
    latinName: 'Lifting Serum',
    categoryId: 4,
    brandId: 5,
    fullLatinName: 'Lifting Serum',
    description: [
      'سرم پپتید میکروژل یک روش درمانی ضد پیری و منحصر به فرد است که متشکل از جدیدترین ترکیبات ضد پیری فوق فعال توام با سیستم مولتی پپتیدی پریمیوم است. این سرم حاوی غلظت بالایی از ترکیبات جوانساز، لیفتینگ و سیستم بیو اکتیو پپتیدی است که این پپتید ها تقویت کننده عصب سلولی و بهبود دهنده سرعت پیام رسانی سلولی می باشند.',
      'این سرم یک ضد چروک با عملکرد قوی است که قادر است چروک های عمیق پوست را بر طرف نموده و با تقویت پوست بهبود حالت کشسانی، افتادگی پوست صورت را رفع نماید و پایه مناسب آرایش می باشد.',
      'به لطف وجود فناوری میکروژل در این سرم پپتیدهای موجود در آن به لایه های عمیق تر پوست نفوذ کرده، بازسازی سلولی را بهبود بخشیده و فرآیندهایی را جهت ایجاد پوستی کاملا صاف، الاستیک، درخشان و با نشاط آغاز می کند. میکروژل لاکویینتا تولید کلاژن را فعال، حجم بافت نرم پوست را ترمیم و تغییرات مرتبط با افزایش سن (افتادگی پوست، چین و چروک، کاهش کیفیت توناژ و چگالی پوست) را به حداقل می رساند.',
      'محصول اورژانسی لیفتینگ با ترمیم همزمان درم و اپیدرم موجوب افزایش حجم پوست و جوانی پوست می شود.',
    ],
    points: [
      'بازسازی کننده پوست و بهبود کانتورینگ صورت (لیفتینگ قوی)',
      'هیدراسیون فشرده و طولانی مدت به واسطه وجود هیالورونات سدیم',
      'ترمیم حجم بافت نرم و بازسازی ساختار پوست',
      'محرک سنتز کلاژن و الاستین',
      'کند کردن روند پیری بیولوژیکی پوست',
      'تسکین دهنده و ضد التهاب، محافظت در برابر عوامل محیطی',
      'کاهش پتوز (افتادگی پوست)',
    ],
    activeIngredients: [
      {
        'ingredientName': 'Betaine Castor Oil',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Peptide',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Sodium Hyaluronate',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Hydrolyzed Hyaluronic Acid',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Allantoin Acid',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Arginine',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Glycerin',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'بعد از تمیز کردن پوست، سرم پپتید میکروژل را بر روی پوست صورت و گردن بمالید.',
  ),
  Products(
    id: 0506,
    name: 'کرم ضد چروک (لیپوفیلر و بیواکسیژن)',
    latinName: 'Anti Wrinkle Cream',
    categoryId: 1,
    brandId: 5,
    fullLatinName: 'Anti Wrinkle Cream',
    description: [
      'کمپلکس آبرسان و بیواکسیژن لاکویینتا محصولی ارزشمند جهت احیا و جوانسازی پوست است که بر پایه فرمولاسیون نوآورانه بازسازی سلولی (CRC-oriented) فرموله شده است. CRC عملکردی شبیه فیلر تزریقی دارد که برای گونه گذاری، حجم دهی صورت و پر کردن چین و چروک بر روی خطوط عمیق چهره مانند خط اخم، خط خنده، خط اشک و چروک های پنجه کلاغی مورد استفاده قرار می گیرد.',
      'این محصول با تحریک و بهبود رشد سلول های چربی پوست به عنوان یک لیپوفیلر (پر کننده طبیعی) عمل می کند و باعث بازسازی و افزایش استحکام پوست می شود و با درخشان کردن پوست جوانی را به آن باز می گرداند.',
      'این محصول ساختار کرمی ابریشمی و قابلیت جذب فوری دارد و مناسب گروه پوست های نرمال، خشک و حساس می باشد.',
    ],
    points: [
      'محرک افزایش تنفس سلولی و بهبود دهنده فعالیت های حیاتی پوست',
      'رفع لیپوآتروفی (تحلیل چربی های زیر پوست) و بازگرداندن فرم اولیه چهره',
      'بازسازی کننده و تسریع ساخت سلول های لایه اپیدرم پوست',
      'رطوبت و اکسیژن رسان عمیق و تغذیه کننده پوست',
      'محرک ساخت کلاژن و GAG',
      'حجم دهی به گونه ها و بهبود کانتورینگ صورت',
      'پر کننده و رفع چین و چروک ها و خطوط صورت',
      'با اثر لیفتینگ و فرم دهندگی فوری صورت',
    ],
    activeIngredients: [
      {
        'ingredientName': 'Citrus Clementina Fruit Extract',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Fruit Extract',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Citrus Aurantium Bergamiat',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Clycerin',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'روی پوست تمیز صورت و گردن با حرکت دورانی ماساژ دهید (با تمرکز بر روی خطوط).',
  ),
  Products(
    id: 0507,
    name: 'اولترا آبرسان پوست های خشک، حساس و اگزمایی (کرم آتوپیکالم)',
    latinName: 'Moisturizing Cream',
    categoryId: 1,
    brandId: 5,
    fullLatinName: 'Moisturizing Cream for Dry & Sensitive Skin',
    description: [
      'کمپلکس ترکیبی اولترا آبرسان لاکویینتا حاوی عصاره هیدرولیز شده مخمر، روغن هسته زردآلو، هیالورونیک اسید و روغن دانه آفتابگردان می باشد که با فرمولی منحصر به فرد با آبرسانی صحیح، عمیق و طولانی مدت با بازسازی لایه هیدرولیپیدی و تقویت لایه دفاعی پوست، سختی، زبری و خشکی پوست را درمان و پوستی شاداب و با طراوت را به ارمغان می آورد.',
      'اسید هیالورونیک موجود در این محصول در اندازه و ابعادهای مختلف مولکولی بوده که باعث نفوذ عمیق به تمامی لایه های پوست می شود، این محصول با داشتن ساختار کرمی لطیف و ابریشمی و با قابلیت جذب سریع چربی اضافی روی پوست ایجاد نمی کند و مناسب گروه پوست های خشک و حساس می باشد.',
    ],
    points: [
      'با ۲۴ ساعت آبرسانی مغذی و طولانی مدت به پوست',
      'مناسب برای پوست های کم آب، دهیدراته و خشک و حساس',
      'درمان پوسته ریزی، زبری، خشکی و علائم اگزمایی پوست',
      'ضد خارش، ضد سوزش و حالت کشیدگی پوست',
      'درمان خشکی و زبری پوست',
      'ایده آل برای استفاده به عنوان پایه آرایش',
      'مناسب پس از اقداماتی نظیر مزوتراپی، فیلر، بوتاکس و اعمال درماتولوژیک',
      'دارای اثر ضد التهاب و تسکین دهندگی',
    ],
    activeIngredients: [
      {
        'ingredientName': 'Hydrolyzed Yeast Extract',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Acetyl Glucosamine',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Sunflower Seed Oil',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Hazelnut Seed Oil Decyl Esters',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Magnol Oil',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Hydrolyzed Hyaluronic Acid',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Apricot Kernel Oil',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Glyceryl Stearate',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست خشک و حساس',
    image: 'image',
    method: 'صبح و شب بر روی پوست صورت و گردن ماساژ داده شود.',
  ),
  Products(
    id: 0508,
    name: 'کرم ضد لک قوی',
    latinName: 'Brightening Cream',
    categoryId: 1,
    brandId: 5,
    fullLatinName: 'Brightening & Clarifying Cream',
    description: [
      'کمپلکس اختصاصی ضد لک لاکویینتا حاوی گلیکولیک اسید غنی شده همراه با ویتامین سی پایدار جهت کاهش لک ها و تیرگی های پوست طراحی شده است. این محصول حاوی ویتامین ای هست که یک آنتی اکسیدان قوی بوده و با خنثی نمودن اثرات رادیکال های آزاد مانع از عملکرد مخرب آن ها بر روی پوست می شود.',
      'به دلیل فرمولاسیون منحصر به فرد این محصول با برداشتن لایه شاخی و فرسوده پوست و فعال نمودن سنتز رشته های کلاژن و الاستین سبب افزایش استحکام، انعطاف پذیری پوست و کاهش چین و چروک ها و تیرگی های پوست می شود. این محصول رطوبت رسان و مغذی قابل استفاده بر روی پوست صورت، گردن و دکلته می باشد.',
      'این محصول فقط به درمان نمی پردازد بلکه با نفوذ به عمق پوست از ایجاد لک در مبدا نیز جلوگیری می کند.',
    ],
    points: [
      'لایه برداری ملایم و رفع سلول های مرده پوست',
      'رفع لک ها و تیرگی های پوست و لک های مقاوم به درمان',
      'افزایش شفافیت و درخشندگی پوست',
      'روشن کننده و یکنواخت کننده پوست',
      'بافت نرم، سبک و جذب سریع',
      'کمرنگ نمودن لک های قهوه ای پوست و لک های ناشی از جای جوش',
      'تحریک عملکرد نوسازی و بازسازی سلول ها',
    ],
    activeIngredients: [
      {
        'ingredientName': 'Glycolic Acid',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Ascorbic Acid',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Rentinyl Palmitate',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Panthenol',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Bisabolol',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Tocopheryl Acetate',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'صبح و شب بر روی پوست صورت، گردن و دکلته مالیده و به آرامی ماساژ دهید تا جذب شود. استفاده از ضد آفتاب ها و کرم مرطوب کننده لاکویینتا به عنوان محصولات مکمل درمان همراه با این محصول توصیه می گردد.',
  ),
  Products(
    id: 0509,
    name: 'کرم دور چشم سه کاره قوی (ضد پف، ضد تیرگی، ضد پیری)',
    latinName: 'Eye Contour Cream',
    categoryId: 1,
    brandId: 5,
    fullLatinName: 'Eye Contour Cream',
    description: [
      'کمپلکس تخصصی جوانسازی دور چشم حاوی عصاره سنتلا آسیاتیکا و کرنبری',
      'عصاره سنتلا آسیاتیکا به دلیل داشتن ترپوئید و ساپوتین خاصیت ضد التهابی داشته و در درمان جای زخم و سوختگی به کار می رود. این عصاره دارای قابلیت تحریک ساخت کلاژن به میزان قابل توجهی می باشد که در نتیجه این عمل پوست قابلیت ارتجاعی خود را حفظ و از ایجاد چین و چروک جلوگیری می کند.',
      'عصاره سنتلا آسیاتیکا موجب تکثیر سلولی و آبرسانی به پوست شده و ضد التهاب و قرمزی می باشد و همچنین موجب بهبود چین و چروک و تیرگی دور چشم می شود. از طرفی عصاره کرنبری موجود در این فرآورده باعث تقویت عروق، کاهش تیرگی و پف دور چشم می شود و پوست را بازسازی و آبرسانی می کند.',
      'کرنبری سرشار از آنتی اکسیدان هایی است که از طریق تامین الکترون های از دست رفته با رادیکال های آزاد مبارزه کرده و فرآیند پیری پوست را به تعویق می اندازد.',
    ],
    points: [
      'رطوبت رسانی پوست نازک و حساس دور چشم و کاهش خطوط ناشی از دهیدراته شدن پوست',
      'تقویت سلول های پوستی و لیفت ناحیه پوست دور چشم',
      'کاهش حلقه های تیره دور چشم، پف، آثار خستگی و استرس',
      'کاهش چین و چروک های ریز پوستی',
      'ضد التهاب و قرمزی پوست',
      'بهبود گردش خون مویرگی و محو سیاهی دور چشم',
      'طراوت بخش و شاداب کننده پوست با قابلیت روشن کنندگی',
    ],
    activeIngredients: [
      {
        'ingredientName': 'Glycerin',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Butylene Glycol',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Centella Asiatica Leaf Extract',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Crambe Maritima Extract',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'کرم را صبح و شب با حرکات ضربه ای روی پوست اطراف چشم بمالید تا جذب شود.',
  ),

//! Rinkon Products
  Products(
    id: 1301,
    name: 'بالم لب',
    latinName: 'Lip Balm',
    categoryId: 11,
    brandId: 13,
    fullLatinName: 'Lip Balm',
    description: [
      'بالم لب رینکون یک بالم درمانی لب با عملکرد چند منظوره است که کلیه علائم آشکار سنی را مورد هدف قرار می دهند و حاوی مواد مغذی، نرم کننده و محافظت کننده از لب ها است که موجب درخشندگی، بهبود ترک خوردگی و خشکی لب ها نیز می شود.',
      'این محصول حاوی موم طبیعی عسل و ژله رویال بوده که به همراه هم مکانیزم های کلیدی پوست را برای ترمیم خود به خودی تحریک می کند و آن را برای مقابله با بروز اثرات پیری آماده می سازد.',
      'روغن های طبیعی موجود در بالم لب، برای افزایش لطافت و نرمی لب ها موثر است. ویتامین E موجود در آن نیز مزیت های آنتی اکسیدانی و ضد پیری دارد و از پوست ناحیه لب در برابر علائم پیری مراقبت می کند.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'روغن سویا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن دانه آفتابگردان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن دانه کتان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن نارگیل',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن گل رز وحشی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'موم عسل',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'ویتامین E',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گلیسیرین',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: '',
    image: 'image',
    method:
        'ابتدا دست های خود را با یک شوینده مناسب بشویید، سپس بالم لب را با انگشت روی لب ماساژ دهید.',
  ),
  Products(
    id: 1302,
    name: 'کرم مراقبت از پوست ناخن',
    latinName: 'Nail & Cuticle Repair Cream',
    categoryId: 1,
    brandId: 13,
    fullLatinName: 'Nail & Cuticle Repair Cream',
    description: [
      'کرم ناخن رینکون محصولی جهت حفظ سلامتی و استحکام ناخن های آسیب دیده است. مواد موثره طبیعی موجود در کرم موجب براقیت ناخن ها شده و با رطوبت رسانی مناسب از شکنندگی آن ها جلوگیری می کند.',
      'همچنین ویتامین ها و سایر مواد موجود در این محصول می تواند موجب نرمی و شادابی پوست اطراف ناخن ها (کوتیکول) شده و از پوسته پوسته شدن آن ها جلوگیری کند. این محصول غنی از روغن های طبیعی همچون روغن اوکالیپتوس، روغن بادام شیرین و شی باتر با خواص ضد میکروبی، درمان زخم و خراش روی پوست، مرطوب کنندگی و حفاظت از پوست نیز می باشد.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'روغن اوکالیپتوس',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن شی باتر',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن بادام شیرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره گل همیشه بهار کوهی',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره رزماری',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'ویتامین E',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: '',
    image: 'image',
    method:
        'روزی دو یا سه مرتبه روی نواحی اطراف ناخن و کوتیکول ها ماساژ دهید. قبل از لاک ناخن استفاده شود.',
  ),
  Products(
    id: 1303,
    name: 'محلول تقویت ابرو و مژه',
    latinName: 'Eyebrow & Eyelash Booster Lotion',
    categoryId: 7,
    brandId: 13,
    fullLatinName: 'Eyebrow & Eyelash Booster Lotion',
    description: [
      'محلول تقویت ابرو و مژه رینکون در افزایش رشد، استحکام، حجیم شدن و ضخامت ابرو و مژه بسیار موثر است. این تقویت کننده منحصر به فرد غنی از ویتامین ها، پروتئین ها، ترکیبات و مواد موثری است که با اثر بر روی سلول های فولیکولی مژه و ابرو، باعث تقویت پیاز مژه و ابروهای کوتاه و باریک شما خواهد شد و به رشد و تحریک ریشه مو نیز کمک قابل توجهی خواهد کرد.',
    ],
    points: [
      'افزایش رشد و ضخامت موهای ابرو و مژه و جلوگیری از ریزش آن ها',
      'قابل استفاده برای ابروهای رنگ شده',
      'مناسب برای خانم ها و آقایان',
    ],
    activeIngredients: [
      {
        'ingredientName': 'گلیسیرین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره جلبک قرمز',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره رازک',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره جوانه گندم و سویا',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: '',
    image: 'image',
    method:
        'ابتدا مژه ها و ابرو را از هر گونه مواد آرایشی پاک کرده سپس با استفاده از اپلیکاتور، مقدار کمی از محلول را در امتداد خط رویش مژه ها و ابروها به سمت بالا بکشید. برای نتیجه بخشی بهتر به مدت ۳-۱۲ هفته هر روز استفاده شود.',
  ),

//! PharmaLine Products
  Products(
    id: 1101,
    name: 'کرم مغذی لب',
    latinName: 'PharmaLip',
    categoryId: 1,
    brandId: 11,
    fullLatinName: 'Lip Repair Cream',
    description: [
      'کرم فارمالیپ لب را در برابر عوامل محیطی از جمله سردی هوا و یخ زدگی، آفتاب سوختگی و آلودگی مراقبت ویژه نموده و باعث تغذیه و ترمیم آن می گردد. این کرم با خاصیت نرم کنندگی و ترمیم کنندگی فوق العاده، در مدت زمان کوتاه، التهاب، ترک خوردگی و زخم لب را بهبود می بخشد.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'Symcare O',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Symreboot',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Vitamin E',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Fucogel',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Sodium Lactate',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Shea Butter',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Lactic Acid',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: '',
    image: 'image',
    method:
        'کرم فارمالیپ را در دو نوبت صبح و شب بر روی لب ها مالیده و به آرامی ماساژ دهید.',
  ),
  Products(
    id: 1102,
    name: 'کرم ناخن',
    latinName: 'PharmaNail',
    categoryId: 1,
    brandId: 11,
    fullLatinName: 'Nail Repair Cream',
    description: [
      'کرم فارمانیل با خاصیت نرم کنندگی و رطوبت رسانی کوتیکول ناخن، ضمن ترمیم و بازسازی ناخن آسیب دیده، باعث جلوگیری از شکستگی آن می گردد. مصرف مداوم این محصول باعث رفع پوسته پوسته شدن و برطرف شدن عفونت های اطراف ناخن می گردد.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'Symcare O',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Symreboot',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Ciclopirox',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Creatine',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Jojoba Oil',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Salicylic Acid',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Urea',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: '',
    image: 'image',
    method:
        'کرم فارمانیل را حداقل سه بار در طی شبانه روز بر روی ناخن و اطراف آن استفاده نمایید.',
  ),
  Products(
    id: 1103,
    name: 'ژل پوست چرب و جوش دار',
    latinName: 'PharmaCne',
    categoryId: 3,
    brandId: 11,
    fullLatinName: 'Sebum Regulating Gel',
    description: [
      'ژل فارماکنه با قدرت متعادل سازی ترشحات سبوم، از پیدایش کومدون های زیرپوستی و جوش های التهابی و چرکی جلوگیری به عمل می آورد. این ژل کنترل کننده سریع التهاب و عفونت ناشی از باکتری های مولد آکنه بوده و جذب بسیار بالایی دارد.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'Symcontrol',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Symcare O',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Symreboot',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Salicylic Acid',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Niacinamide',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Zinc Gluconate',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Tea Tree Oil',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست دارای جوش و آکنه',
    image: 'image',
    method:
        'پس از شستشوی پوست با شوینده مناسب، ژل فارماکنه را در دو نوبت صبح و شب، بر روی مناطق چرب و جوش دار صورت و بدن مالیده و به آرامی ماساژ دهید.',
  ),
  Products(
    id: 1104,
    name: 'کرم روشن کننده پوست',
    latinName: 'PharmaWhite',
    categoryId: 1,
    brandId: 11,
    fullLatinName: 'Depigmenting Cream Gel',
    description: [
      'کرم ژل فارماوایت دارای خاصیت روشن کنندگی و ضد لک قوی بوده و باعث یکنواختی رنگ پوست می گردد، مواد روشن کننده موجود در این محصول نقش موثری در رفع کامل لک های ناشی از نور خورشید، سن و جای جوش و زخم ها دارد.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'Symwhite Plus',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Symbright',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Symcare O',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Symreboot',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Azelaic Acid',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Niacinamide',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Apple Aha',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست دارای لک',
    image: 'image',
    method:
        'کرم ژل فارماوایت را در دو نوبت صبح و شب بر روی مناطق تیره پوست مالیده و به آرامی ماساژ دهید.',
  ),
  Products(
    id: 1105,
    name: 'کرم مغذی پوست های حساس',
    latinName: 'PharmaTopia',
    categoryId: 1,
    brandId: 11,
    fullLatinName: 'Nourishing Cream',
    description: [
      'کرم فارماتوپیا با خاصیت نرم کنندگی و رطوبت رسانی طولانی مدت، ضمن بازسازی و ترمیم پوست های حساس و مستعد اگزما، باعث تسریع در روند کاهش التهاب، قرمزی و خارش در افراد مبتلا به اگزما، پسوریازیس و ایکتیوز می گردد.',
    ],
    points: [],
    activeIngredients: [
      {
        'ingredientName': 'Symcare O',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Symreboot',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Urea',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Ciclopirox',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Eucerin',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Hierogaline',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'Sodium Lactate',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست خشک و حساس',
    image: 'image',
    method:
        'کرم فارماتوپیا را حداقل سه بار در طی شبانه روز بر روی پوست های حساس و ملتهب مالیده و به آرامی ماساژ دهید.',
  ),

//! TotalDerm Products
  Products(
    id: 0601,
    name: 'کرم ضد آفتاب ضد لک فاقد چربی SPF 50+',
    latinName: 'Sunscreen Cream',
    categoryId: 1,
    brandId: 6,
    fullLatinName: 'Sunscreen Bio-Taches Cream, Oil Free',
    description: [],
    points: [
      'محافظت کننده قوی پوست در برابر پرتوهای مضر آفتاب',
      'دارای فاکتور فوق حفاظتی در برابر اشعه های مضر UVA و UVB',
      'فاقد چربی، مناسب برای استفاده به عنوان پایه آرایش',
      'مقاوم در برابر تعریق و شستشو',
    ],
    activeIngredients: [
      {
        'ingredientName': 'هوموسالات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بنزوفنون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'تیتانیوم دی اکساید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سدیم آسکوربیل فسفات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'توکوفریل استات',
        'ingredientInfo': '',
      },
    ],
    color: [
      'بی رنگ',
      'بژ روشن',
      'بژ متوسط',
    ],
    skinType: 'مناسب انواع پوست',
    image: 'assets/images/total_derm/sun-bio-natural.png',
    method:
        'قبل از قرار گرفتن در معرض تابش نور خورشید مقدار کافی از کرم ضد آفتاب و مرطوب کننده توتال درم را به طور یکنواخت بر روی پوست بمالید و مصرف را هر ۴ ساعت یکبار تجدید فرمایید.',
  ),
  Products(
    id: 0602,
    name: 'کرم ضد لک قوی',
    latinName: 'Intense Whitening Cream',
    categoryId: 1,
    brandId: 6,
    fullLatinName: 'Intense Whitening Cream',
    description: [],
    points: [
      'درمان قوی و سریع انواع لک به واسطه ترکیب موثر',
      'اثر گذاری قابل رویت پس از سه هفته استفاده صحیح از محصول',
      'مناسب جهت از بین بردن لک های مقاوم به درمان',
      'موثر در درمان لک های ناشی از آفتاب، جای جوش، لیزر پیلینگ، افزایش سن و ملاسما',
    ],
    activeIngredients: [
      {
        'ingredientName': 'ویتامین C پایدار',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آلفا آربوتین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گلیکولیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره مرکبات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اورانتیوم',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اسید سالیسیلیک',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'assets/images/total_derm/whitening.png',
    method:
        'شب ها بر روی پوست تمیز به آرامی ماساژ دهید تا جذب شود. استفاده از ضد آفتاب های و کرم آبرسان توتال درم به عنوان محصولات مکمل درمان همراه با این محصول توصیه می گردد.',
  ),
  Products(
    id: 0603,
    name: 'سرم انرژی بوستر ویتامین C (روشن کننده و جوانساز)',
    latinName: 'Vitamin C Serum',
    categoryId: 4,
    brandId: 6,
    fullLatinName: 'Vitamin C Serum',
    description: [],
    points: [
      'انرژی بوستر تخصصی ویتامین سی غنی شده با ۱۵% ویتامین سی خالص و پایدار',
      'انرژی رسان، آبرسان و درخشان کننده پوست',
      'آنتی اکسیدان، جوانساز و یکنواخت کننده پوست',
      'محرک سنتز کلاژن و الاستین',
      'سرم پایه دور چشم، صورت و آرایش',
    ],
    activeIngredients: [
      {
        'ingredientName': '۱۵% ویتامین سی خالص و پایدار',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره پرتقال',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'کلاژن هیدرولیز شده',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره اورانتیوم',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پروتئین جوانه گندم هیدرولیز شده',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پروتئین سویا هیدرولیز شده',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آلانتوئین',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'assets/images/total_derm/vitamin-c.png',
    method:
        'صبح و عصر بر روی پوست تمیز صورت و گردن مالیده و به آرامی ماساژ دهید.',
  ),
  Products(
    id: 0604,
    name: 'کرم دور چشم',
    latinName: 'Eye Contour Cream',
    categoryId: 1,
    brandId: 6,
    fullLatinName: 'Eye Contour Cream',
    description: [],
    points: [
      'کرم دور چشم توتال درم با عملکرد پنج گانه (ضد پف، ضد تیرگی، ضد خستگی، ضد چروک و ضد پیری)',
      'رطوبت رسانی پوست نازک و حساس دور چشم و کاهش خطوط ناشی از دهیدراته شدن پوست',
      'تقویت سلول های پوستی و لیفت ناحیه پوست دور چشم',
      'کاهش حلقه های تیره دور چشم، پف، آثار خستگی و استرس',
      'طراوت بخش و شاداب کننده پوست با قابلیت روشن کنندگی',
    ],
    activeIngredients: [
      {
        'ingredientName': 'توکوفریل استات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سدیم هیالورونات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'دایمتیکون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'پروتئین برنج هیدرولیز شده',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'assets/images/total_derm/eye.png',
    method:
        'بر روی پوست تمیز صبح و شب کرم را با حرکات ضربه ای روی پوست اطراف چشم بمالید تا جذب شود.',
  ),
  Products(
    id: 0605,
    name: 'ژل آنتی آکنه اورژانسی',
    latinName: 'Anti Acne Gel',
    categoryId: 3,
    brandId: 6,
    fullLatinName: 'Anti Acne Gel',
    description: [],
    points: [
      'ژل اورژانسی ضد جوش با اثر گذاری فوری',
      'لایه بردار و درمان انواع جوش های سر سفید، سر سیاه و کومدن ها',
      'کنترل ترشحات سبوم، ممانعت از رشد و تکثیر باکتری های مولد آکنه',
      'آنتی باکتریال، ضد التهاب و ضد عفونی کننده پوست',
      'رفع انواع جوش های دوران بلوغ و جوش های ناشی از اصلاح صورت و بدن (سودوفولیکولیت ها)',
    ],
    activeIngredients: [
      {
        'ingredientName': 'سباسیک اسید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'زینک PCA',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'هیالورونیک اسید هیدرولیز شده',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اسید تانیک',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'بیزابولول',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست چرب، مختلط و آکنه ای',
    image: 'assets/images/total_derm/anti-acne.png',
    method:
        'روزی دو بار صبح و عصر بر روی پوست تمیز به صورت موضعی بر محل مورد نظر مالیده و به آرامی ماساژ دهید.',
  ),
  Products(
    id: 0606,
    name: 'کرم لیفتینگ',
    latinName: 'Lifting Cream',
    categoryId: 1,
    brandId: 6,
    fullLatinName: 'Lifting Cream',
    description: [],
    points: [
      'کاهش چین و چروک های عمیق پوست و خطوط پنجه کلاغی اطراف چشم',
      'ایجاد درخشش چشمگیر و جلوه جوانی به پوست',
      'افزایش تراکم، قوام و استحکام بخش پوست',
      'محرک ساخت کلاژن و الاستین',
    ],
    activeIngredients: [
      {
        'ingredientName': 'رتینول',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'فیتواسفنگوزین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن دانه آفتاب گردان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ کاملیا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'دایمتیکون',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'image',
    method:
        'برای نتیجه گیری بهتر پس از پاکسازی کامل پوست و پاک کردن باقیمانده ذرات آرایشی بر روی نواحی صورت و گردن بمالید و به آرامی ماساژ دهید.',
  ),
  Products(
    id: 0607,
    name: 'ژل شستشوی صورت روزانه پوست خشک',
    latinName: 'Face Wash Gel',
    categoryId: 3,
    brandId: 6,
    fullLatinName: 'Face Wash Gel, Normal, Dry & Sensitive Skin Types',
    description: [],
    points: [
      'پاک کننده آلودگی های سطحی، باقیمانده لواز آرایشی و سلول های مورده پوست',
      'ضد خشکی و حساسیت و هایپوآلرژنیک',
      'روشن و شفاف کننده، رفع خشکی، سوزش و احساس کشیدگی پوست',
    ],
    activeIngredients: [
      {
        'ingredientName': 'عصاره جلبک دریایی هیدرولیز شده',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آلفا آربوتین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اسید لاکتیک',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'کوکو بتائین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سدیم هیدروکساید',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست نرمال، خشک و حساس',
    image: 'assets/images/total_derm/face-wash-dry.png',
    method: 'ژل شستشو را بر روی پوست مرطوب به آرامی مالیده و سپس آبکشی کنید.',
  ),
  Products(
    id: 0608,
    name: 'ژل شستشوی صورت روزانه پوست چرب',
    latinName: 'Face Wash Gel',
    categoryId: 3,
    brandId: 6,
    fullLatinName: 'Face Wash Gel, Oily Skin Types',
    description: [],
    points: [
      'پاکسازی کامل پوست های چرب و مستعد آکنه',
      'حذف سبوم اضافی پوست و دارای اثر مات کنندگی',
      'لایه برداری ملایم و کاهش قطر منافذ باز پوست',
      'دارای اثر روشن و شفاف کنندگی و ایجاد حس شادابی و لطافت به پوست',
    ],
    activeIngredients: [
      {
        'ingredientName': 'عصاره چای سبز',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره برگ کاملیا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'رتینیل پالمیتات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره گیاه آیریس فلورنتینا',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'اسید سالیسیلیک',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست چرب، آکنه ای و مختلط',
    image: 'assets/images/total_derm/face-wash-oily.png',
    method: 'ژل شستشو را بر روی پوست مرطوب به آرامی مالیده و سپس آبکشی کنید.',
  ),
  Products(
    id: 0609,
    name: 'کرم سوپر آبرسان دست و ناخن',
    latinName: 'Hand & Nail Cream',
    categoryId: 1,
    brandId: 6,
    fullLatinName: 'Hand & Nail Cream',
    description: [],
    points: [
      'نرم کننده و مغذی پوست',
      'ترمیم و بازسازی پوست دست و نواحی آسیب دیده اطراف ناخن',
      'دارای اسیدهای ارگانیک و هایپوآلرژنیک',
      'نرم کنندگی، جوانسازی پوست دست و ضد التهاب',
      'رطوبت رسانی، تقویت ناخن و بازگرداندن یکپارچگی بافت آن',
    ],
    activeIngredients: [
      {
        'ingredientName': 'اوره',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سدیم PCA',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'دایمتیکون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن جوانه گندم',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'سدیم هیالورونات',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'آربوتین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'گلیسیرین',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب انواع پوست',
    image: 'assets/images/total_derm/nail&hand.png',
    method: 'بر روی دست های خشک و تمیز در مواقع نیاز استفاده نمایید.',
  ),
  Products(
    id: 0610,
    name: 'کرم سوپر آبرسان',
    latinName: 'Super Moisturizing Cream',
    categoryId: 1,
    brandId: 6,
    fullLatinName: 'Super Moisturizing Cream',
    description: [],
    points: [
      'رطوبت رسان مغذی و طولانی مدت جهت درمان کامل خشکی و زبری موجود در نواحی ضخیم پوست',
      'ایده آل برای استفاده به عنوان پایه آرایش با قابلیت جذب فوری',
      'دارای اثر ضد التهاب و تسکین دهندگی اگزما',
      'بازسازی، ترمیم و محافظت از پوست در برابر آلایندگی های محیطی و رادیکال های آزاد',
    ],
    activeIngredients: [
      {
        'ingredientName': 'هیالورونیک اسید هیدرولیز شده',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن هسته زردآلو',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن دانه فندق',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'روغن آفتابگردان',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'استیل گلوکز آمین',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'عصاره هیدرولیز شده مخمر',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: 'مناسب پوست چرب',
    image: 'assets/images/total_derm/super-hydrat.png',
    method:
        'صبح یا شب بر روی پوست ناحیه مورد نظر ماساژ داده شود. سطحی که برای استفاده از این کرم در نظر دارید باید کاملا تمیز و خشک باشد. مداومت در استفاده شرط اصلی اثر بخشی آن خواهد بود.',
  ),
  Products(
    id: 0611,
    name: 'کرم ژل ترمیم کننده',
    latinName: 'Scar Gel',
    categoryId: 3,
    brandId: 6,
    fullLatinName: 'Rejuvenating & Repairing Gel',
    description: [],
    points: [
      'جهت استفاده موضعی زخم ها، بریدگی ها و سوختگی های سطحی',
      'تسریع در بازسازی بافت ها در مناطق سطحی و جراحات پوست',
      'اثر ترمیم کننده قوی بعد از لیزر، پیلینگ، میکرودرم ابرژن، آفتاب سوختگی و اعمال درماتولوژیک',
      'تسریع بازسازی سلولی بعد از کشیدن بخیه و ترمیم اولیه',
    ],
    activeIngredients: [
      {
        'ingredientName': 'سیلیکون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'تیتانیوم دی اکساید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'دایمتیکون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'زینک اکساید',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'دی فنیل متیل متیکون',
        'ingredientInfo': '',
      },
      {
        'ingredientName': 'دایمتیکونول',
        'ingredientInfo': '',
      },
    ],
    color: [],
    skinType: '',
    image: 'assets/images/total_derm/repair.png',
    method:
        'ابتدا دست ها و موضع زخم را تمیز و خشک کنید. پوشش نازکی از محصول را بر روی ناحیه مورد نظر مالیده و صبر کنید تا جذب و خشک شود، حداقل سه بار در روز تکرار کنید.',
  ),

//! BioReach Products
  Products(
    id: 0801,
    name: 'شامپو ضد ریزش',
    latinName: 'Anti HairLoss Shampoo',
    categoryId: 2,
    brandId: 8,
    fullLatinName: 'Anti HairLoss Shampoo',
    description: [
      'شامپو ضد ریزش بایوریچ بدلیل فرمولاسیون موثر به کاهش ریزش موها و رویش مجدد موها کمک میکند.تحریک کننده ی رشد فولیکول مو و مانع ریزش مو به واسطه ی افزایش گردش خون مویرگی، افزایش هیدراتاسیون و استحکام بخشیدن به مو می باشد. شامپو ضد ریزش بایوریچ یکی از بهترین روش های مقابله با ریزش مو و فرموله شده در کارخانه jojo آلمان است.',
    ],
    points: [
      'جلوگیری از ریزش مو آندروژنیک و غیرآندروژنیک',
      'کمک به درمان ریزش مو',
      'مهار آنزیم موثر در ریزش مو با اثر فوری روی فولیکول مو',
      'محرک رشد مو و افزایش استحکام مو',
      'تقویت کننده و حجم دهنده موثر مو',
    ],
    activeIngredients: [
      {
        'ingredientName': 'کافئین کپسوله',
        'ingredientInfo': 'ضد ریزش، محرک فولیکول مو',
      },
      {
        'ingredientName': 'آمینکسیل',
        'ingredientInfo': 'ضد ریزش،افزایش خون رسانی',
      },
      {
        'ingredientName': 'بیوتین',
        'ingredientInfo': 'ضد ریزش،افزایش استحکام مو',
      },
      {
        'ingredientName': 'مریم گلی',
        'ingredientInfo':
            'درمان ریزش مو،افزایش درخشش مو، تقویت مو،تحریک رشد مو',
      },
      {
        'ingredientName': 'پروتئین هیدرولیز شده گندم',
        'ingredientInfo': '	ضد ریزش، جلوگیری از ریزش مو',
      },
      {
        'ingredientName': 'رزماری',
        'ingredientInfo': '	ضد ریزش، بهبود گردش خون',
      },
      {
        'ingredientName': 'گزنه',
        'ingredientInfo': '	ضد ریزش، کنترل چربی، افزایش درخشش مو',
      },
    ],
    color: [],
    skinType: 'مناسب انواع مو',
    image: 'image',
    method:
        'هفته ای ۲ الی ۳ مرتبه مقداری از شامپو را به موهای خیس زده و به خوبی ماساژ دهید. بعد از ۵ دقیقه موهایتان را آبکشی کنید.',
  ),
  Products(
    id: 0802,
    name: 'شامپو ضد شوره موی خشک',
    latinName: 'Anti Dandruff Shampoo',
    categoryId: 2,
    brandId: 8,
    fullLatinName: 'Anti Dandruff Shampoo, Dry Hair',
    description: [
      'کمک به درمان شوره های خشک مقاوم با فرمولاسیونی اختصاصی، ضد خارش و التهاب و التیام بخش ضد قارچ با خاصیت لایه برداری ملایم و ضد التهاب کاهش قرمزی پوست سر و ضدالتهاب',
    ],
    points: [
      'کمک به درمان شوره های خشک مقاوم با فرمولاسیونی اختصاصی',
      'ضد خارش و التهاب و التیام بخش',
      'ضد قارچ با خاصیت لایه برداری ملایم و ضد التهاب',
      'کاهش قرمزی پوست سر و ضدالتهاب',
    ],
    activeIngredients: [
      {
        'ingredientName': 'پیروکتون اولامین',
        'ingredientInfo': 'کنترل خارش کف سر، رفع پوسته ریزی و شوره',
      },
      {
        'ingredientName': 'کلیمبازول',
        'ingredientInfo': 'ضد قارچ، ضدشوره',
      },
      {
        'ingredientName': 'زینک پریتیون',
        'ingredientInfo': 'درمان شوره و پوسته ریزی و درماتیت سبوره ای سر',
      },
      {
        'ingredientName': 'سالیسیلیک اسید',
        'ingredientInfo': 'درمان شوره های خشک و پوسته ریزی، ضد ریزش مو',
      },
      {
        'ingredientName': 'منتول',
        'ingredientInfo': 'ضد ریزش مو و تقویت کننده مو',
      },
      {
        'ingredientName': 'اوکالیپتوس',
        'ingredientInfo': 'ضدقارچ، ضد عفونی کننده،ضد شوره، درمان خشکی کف سر',
      },
      {
        'ingredientName': 'ویتامین B5',
        'ingredientInfo': 'ضد ریزش و تقویت کننده',
      },
      {
        'ingredientName': 'بید سفید',
        'ingredientInfo': 'ضدالتهاب، ضدشوره',
      },
      {
        'ingredientName': 'گوآر',
        'ingredientInfo': 'مرطوب کننده مو، جلوگیری از شکنندگی مو',
      },
      {
        'ingredientName': 'آلوئورا',
        'ingredientInfo': 'درمان درماتیت سبوروئیک، ضد ریزش',
      },
    ],
    color: [],
    skinType: 'مناسب موی خشک و دارای شوره',
    image: 'image',
    method:
        'هفته ای ۲ الی ۳ مرتبه روی موی خیس ماساژ دهید، ۳ دقیقه بماند و بعد آبکشی نمایید. (از تماس با چشم پرهیز شود)',
  ),
  Products(
    id: 0803,
    name: 'شامپو ضد شوره موی چرب',
    latinName: 'Anti Dandruff Shampoo',
    categoryId: 2,
    brandId: 8,
    fullLatinName: 'Anti Dandruff Shampoo, Oily Hair',
    description: [
      'شامپو ضد شوره مناسب موهای چرب بایوریچ به درمان شوره های مقاوم کمک میکند. باعث لایه برداری سریع برای از بین بردن پوسته ریزی میگردد. به درمان درماتیت سبورئیک کمک کرده و ترشح چربی ها را کنترل می کند. باعث از بین رفتن خارش و قرمزی پوست می شود. ضد قارچ و ضد باکتری بوده در نتیجه از ایجاد شوره جلوگیری می کند.',
    ],
    points: [
      'کمک به درمان شوره های چرب مقاوم',
      'لایه برداری سریع برای از بین بردن پوسته ریزی',
      'کمک به درمان درماتیت سبوروئک و کنترل کننده ترشح چربی ها',
      'کنترل کننده خارش و قرمزی',
      'ضدقارچ و ضد باکتری',
    ],
    activeIngredients: [
      {
        'ingredientName': 'زینک PCA',
        'ingredientInfo': 'ترمیم سریع پوست سر و رفع شوره',
      },
      {
        'ingredientName': 'سیکلوپیروکس',
        'ingredientInfo': 'دارای خاصیت ضد قارچ می باشد',
      },
      {
        'ingredientName': 'پیروکتون اولامین',
        'ingredientInfo': '	کاهنده چربی و دارای خاصیت ضد قارچ می باشد',
      },
      {
        'ingredientName': 'سالیسیلیک اسید',
        'ingredientInfo': '	خاصیت لایه برداری و ضد شوره دارد',
      },
      {
        'ingredientName': 'گزنه',
        'ingredientInfo': 'کاهش دهنده چربی پوست سر',
      },
      {
        'ingredientName': 'مریم گلی',
        'ingredientInfo':
            '	کمک به پیشگیری از ایجاد شوره و تقویت فولیکول های مو',
      },
      {
        'ingredientName': 'بابونه',
        'ingredientInfo': 'رفع خارش پوست سر ناشی از شوره',
      },
      {
        'ingredientName': 'نعناع فلفلی',
        'ingredientInfo': '	خاصیت ضد میکروبی و ضد قارچ دارد',
      },
    ],
    color: [],
    skinType: 'مناسب موی چرب و دارای شوره',
    image: 'image',
    method:
        'هفته ای ۲ الی ۳ مرتبه روی موی خیس ماساژ دهید، ۳ دقیقه بماند و بعد آبکشی نمایید. (از تماس با چشم پرهیز شود)',
  ),
  Products(
    id: 0804,
    name: 'شامپو پروتئینه بعد از کراتین',
    latinName: 'Keratin Shampoo',
    categoryId: 2,
    brandId: 8,
    fullLatinName: 'After Keratin Shampoo, Dry & Damaged Hair',
    description: [
      'شامپو مخصوص موهای کراتینه ، پلاتینه ، ریباندینگ و دکلره شده شامپو ملایم حتی برای پوست سر بازسازی موهای آسیب دیده، خشک و رنگ شده رفع الکتریسیته و افزایش درخشندگی و حالت موی سر رطوبت دهنده مو و التیام بخش. این شامپو فاقد سولفات، نمک، پارابن و سیلیکون می باشد.',
    ],
    points: [
      'شامپو مخصوص موهای کراتینه ، پلاتینه ، ریباندینگ و دکلره شده',
      'شامپو ملایم حتی برای پوست سر',
      'بازسازی موهای آسیب دیده، خشک و رنگ شده',
      'رفع الکتریسیته و افزایش درخشندگی و حالت موی سر',
      'رطوبت دهنده مو و التیام بخش',
      'فاقد سولفات، نمک، پارابن و سیلیکون',
    ],
    activeIngredients: [
      {
        'ingredientName': 'کراتین هیدرولیز شده',
        'ingredientInfo': 'احیای محافظ طبیعی مو',
      },
      {
        'ingredientName': 'ویتامین B5',
        'ingredientInfo': 'ضد ریزش',
      },
      {
        'ingredientName': 'روغن جوجوبا',
        'ingredientInfo': 'ضد خشکی و وز',
      },
      {
        'ingredientName': 'روغن آرگان',
        'ingredientInfo': 'مغذی مو',
      },
      {
        'ingredientName': 'شی باتر',
        'ingredientInfo': 'نرم کننده',
      },
      {
        'ingredientName': 'پروتئین هیدرولیز شده سویا',
        'ingredientInfo': 'محافظ و پوشش دهنده و نگهدارنده رطوبت',
      },
      {
        'ingredientName': 'آلوئه ورا',
        'ingredientInfo': 'ضد التهاب - تقویت ریشه و تار مو',
      },
      {
        'ingredientName': 'آرژنین',
        'ingredientInfo': '	در برابر مواد شیمیایی و حرارت',
      },
      {
        'ingredientName': 'گوآر',
        'ingredientInfo': '	حالت دهنده و آبرسان',
      },
    ],
    color: [],
    skinType: 'مناسب موی کراتین شده',
    image: 'image',
    method:
        'بعد از ماساژ روی موی خیس با آب شسته شود، مناسب استفاده روزانه. (از تماس با چشم پرهیز شود)',
  ),
  Products(
    id: 0805,
    name: 'ژل شستشوی پوست چرب',
    latinName: 'Cleansing Gel',
    categoryId: 3,
    brandId: 8,
    fullLatinName: 'Purifying Cleansing Gel, Oily Skin Types',
    description: [
      'ترکیبات موثر ژل پاک کننده پوست چرب بایوریچ، علاوه بر تنظیم PHپوست، بدون ایجاد تحریک و التهاب بر روی پوست، به راحتی آلودگی ها را از پوست پاک می کند.استفاده از ژل شستشوی سبوریج در دراز مدت از ایجاد جوش و آکنه جلوگیری می کند.',
    ],
    points: [
      'پاک کننده هر گونه آلودگی از روی پوست',
      'حفظ رطوبت طبیعی پوست و تنظیم PH',
      'تسکین دهنده و التیام بخش',
      'تنظیم ترشح سبوم (چربی) پوست و جلوگیری از ایجاد آکنه',
      'پاک کننده بقایای مواد آرایشی و آلودگی های محیطی',
    ],
    activeIngredients: [
      {
        'ingredientName': 'زینک PCA',
        'ingredientInfo': 'تنظیم کننده سبوم پوست، ضد آکنه و جوش، ضد التهاب',
      },
      {
        'ingredientName': 'بیزابولول',
        'ingredientInfo': 'ضد التهاب و یکدست کننده رنگ پوست',
      },
      {
        'ingredientName': 'عصاره مریم گلی',
        'ingredientInfo': 'ضد آکنه و جوش، ضد التهاب و قرمزی',
      },
      {
        'ingredientName': 'عصاره نخل',
        'ingredientInfo': 'ضد التهاب',
      },
      {
        'ingredientName': 'عصاره چای سبز',
        'ingredientInfo': '	آنتی اکسیدان، آنتی باکتریال، ضد آکنه',
      },
      {
        'ingredientName': 'عصاره آلوئه ورا',
        'ingredientInfo': '	مناسب درمان آکنه های التهابی',
      },
    ],
    color: [],
    skinType: 'مناسب پوست چرب',
    image: 'image',
    method:
        'صورت را با کمی آب مرطوب نمایید. مقدار مناسبی از ژل را با حرکات دورانی روی صورت ماساژ دهید و کاملا با آب بشویید.',
  ),
  Products(
    id: 0806,
    name: 'ژل شستشو روشن کننده و ضد لک',
    latinName: 'Cleansing Gel',
    categoryId: 3,
    brandId: 8,
    fullLatinName: 'Whitening Cleansing Gel',
    description: [
      'ژل روشن کننده بایوریچ با فرمولاسیونی ملایم بدون تحریک پوست، محصولی مناسب برای پاکسازی و درخشندگی پوست می باشد.این شوینده غیرصابونی مناسب پوستهای دارای لک و یا مستعد بروز لک می باشد و به درخشش و روشن شدن پوست کمک می کند.',
    ],
    points: [
      'پاک کننده پوست از آلودگی ها',
      'روشن کننده و شفاف کننده پوست',
      'کمک به یکنواخت سازی رنگ پوست و برطرف شدن لک های ناشی از آفتاب سوختگی',
      'ایجاد حس لطافت و شادابی و رفع چروک های سطحی',
      'جوانسازی کننده پوست',
    ],
    activeIngredients: [
      {
        'ingredientName': 'آلفاهیدروکسی اسید',
        'ingredientInfo':
            'لایه بردار طبیعی، کمک به کاهش لک های پوستی، صاف کننده و شفاف کننده پوست',
      },
      {
        'ingredientName': 'شیرین بیان',
        'ingredientInfo':
            'ضد التهاب، آنتی اکسیدان، جوان کننده و روشن کننده پوست',
      },
      {
        'ingredientName': 'کوجیک اسید',
        'ingredientInfo': 'روشن کننده و ضد لک پوست',
      },
      {
        'ingredientName': 'آزلانیک اسید',
        'ingredientInfo':
            'لایه بردار ملایم، کمک به درمان لکه های ناشی از آکنه، ملاسما، ضد التهاب، ضد باکتری',
      },
    ],
    color: [],
    skinType: 'مناسب پوست دارای لک',
    image: 'image',
    method:
        'مقدار کمی از ژل را بر روی پوست مرطوب بزنید و به آرامی ماساژ دهید ،سپس با آب ولرم شستشو دهید.',
  ),
];

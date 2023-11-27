class NewsApi {
  String title, image, subtitle;

  NewsApi({required this.image, required this.title, required this.subtitle});
}

List<NewsApi> news = [
  NewsApi(
      image:
          "https://www.aryatehran.com/wp-content/uploads/2021/12/Framework-benefits.jpg",
      title: "فریم‌ ورک چیست؟ بررسی مزایا و معایب کار با framework",
      subtitle:
          """فریم‌ورک (framework) واژه‌ای آشنا و کاربردی در دنیای برنامه‌نویسی است. احتمالاً در برنامه‌نویسی نامش زیاد به گوشتان خورده است. در این مقاله به سوال فریم‌ ورک چیست؟ پاسخ می‌دهیم و به بررسی مزایا و معایب استفاده از آن می‌پردازیم.

فریم‌ ورک چیست؟
فریم‌ورک یک چهارچوب نرم‌افزاری است که توسعه دهنده (developer) آن را فراخوانی کرده و از آن استفاده می‌کند.

یک اسکلت ساختمان را در نظر بگیرید. اسکلت‌بندی کمک می‌کند که ساختمان در یک نظم مشخص و چهارچوب تعیین شده ساخته شود. فریم‌ورک‌ها هم دقیقاً همین نقش را دارند. آنها باعث می‌شوند که برنامه‌نویس در یک چهارچوب مشخص به‌صورت منظم کدنویسی کند.
همچنین با فراخوانی این چهارچوب دیگر نیازی نیست هربار تمام کدهای موردنیاز و رایج را بنویسید. فقط کافی است روی کارکرد خود پروژه تمرکز کنید. در واقع فریم‌ورک‌ها، کدهای رایجی هستند که در هر پروژه مورد نیاز است. زمانی که به پروژه اضافه می‌شوند از چندباره نویسی بخشی از کدها هم جلوگیری می‌شود.

چرا باید از فریمورک استفاده کنیم؟
حالا که متوجه شدیم فریم‌ ورک چیست؟ باید به دلایل استفاده از آن بپردازیم. مهمترین دلایلی که می‌توان برای استفاده از آن نام برد عبارت‌انداز:

کدها ایمن‌تر می‌شوند
از دوباره نویسی جلوگیری می‌شود
باگ‌های کدنویسی کاهش پیدا می‌کند
تست و اشکال‌زدایی آسان‌تر می‌شود
زمان لازم برای توسعه پروژه کاهش می‌یابد

انواع framework
حال که پاسخ سوال فریم‌ورک چیست؟ را دریافت کرده‌اید بهتر است انواع آن را هم بشناسید.

به دلیل وابسته بودن ماهیت فریمورک‌ها به زبان‌های برنامه‌نویسی، می‌توان گفت آنها را با توجه به زبان‌های برنامه‌نویسی دسته‌بندی می‌کنند. می‌دانید که زبان‌های برنامه‌نویسی در دو گروه front-end و back-end طبقه بندی می‌شوند.

فریم‌ورک‌های front-end برای طراحی ظاهر پروژه و سمت کاربر استفاده می‌شوند.

انواع فریمورک css
انواع فریمورک‌های CSS
برای مثال بوت‌استرپ یک فریم‌ورک رایگان و معروف برای CSS است که کمک می‌کند طراحی ریسپانسیو صفحات سایت به سادگی انجام پذیرد.

CSS چیست؟
بوت‌استرپ چیست؟
ریسپانسیو بودن صفحات سایت چیست؟

فریم‌ورک‌های back-end برای کدنویسی سمت سرور به کمک توسعه‌دهنده می‌آیند. مثل فریم‌ورک Laravel در زبان php.

فریم‌ ورک چیست؟
انواع فریمورک‌های php
برای هر زبان برنامه‌نویسی معروف و پرکاربرد فریمورک‌هایی ساخته شده است که کدنویسی را آسان‌تر می‌کنند. برای انتخاب یک فریمورک مناسب بهتر است ابتدا یک زبان برنامه‌نویسی مناسب انتخاب نمایید. برای این کار می‌توانید به مقاله‌ی بهترین زبان‌های طراحی سایت مراجعه کنید.


مزایا و معایب استفاده از فریم‌ورک چیست؟
استفاده از framework هم مانند هر تکنولوژی دیگر معایب و مزایای مخصوص به خود را دارد که در ادامه به مهم‌ترین آنها می‌پردازیم.

مزایای استفاده از framework
کاهش زمان انجام پروژه: همانطور که گفته شد استفاده از فریم‌ورک موجب صرفه جویی در زمان می‌شود.
استفاده از توابع موجود: می‌توان از توابع و متدهای موجود در فریم‌ورک‌ها استفاده کرد در حالی که نوشتن این توابع ممکن است روز‌ها از ما وقت بگیرند.
کاهش هزینه‌های اجرای پروژه: با توجه به دو علت قبل، می‌توان دریافت که با کمک فریم‌ورک هزینه‌های ساخت نرم‌افزار یا طراحی وب‌سایت کاهش می‌یابد.
استاندارد شدن کدها: با استفاده از توابع و متدهای موجود در فریم‌ورک می توان خاطرجمع بود که از کدهای استاندارد و نرمال استفاده کرده‌ایم. زیرا فریمورک‌ها توسط برنامه‌نویس‌های بزرگ در سطح جهان نوشته شده‌اند.
معایب استفاده از framework
عدم درک عمق مفاهیم کدها: زمانی که از فریمورک استفاده می‌کنید، قطعاً جزییات کدهای توابع مورد استفاده، از دید شما دور می‌مانند. زمانی که شما صفر تا صد پروژه را خودتان کدنویسی کنید، با چالش‌های بیشتری روبه‌رو خواهید بود که هرکدام برای شما درسی جدید محسوب می‌شود.
تحمیل کدهای اضافی: در هر پروژه فقط بخشی از قابلیت‌ها و کدهای فریم‌ورک برای شما مورد استفاده قرار می‌گیرد. در واقع شما کدهایی که استفاده نمی‌کنید هم به پروژه خود اضافه کرده‌اید.
احتیاج به صرف زمان جهت یادگیری: برای استفاده از هر فریمورک باید زمانی جهت یادگیری آن بگذارید تا بتوانید به بهترین نحو از آن استفاده کنید یا آن را شخصی سازی کنید.


نتیجه: فریم‌ورک‌ها مجموعه‌ای از کدها و کتابخانه‌ها هستند که موجب می‌شوند سرعت کدنویسی افزایش یابد و کدها در چهارچوبی مشخص نوشته شوند. مزایای استفاده از آن به گونه‌ای است که می‌توان از معایب آن چشم پوشی کرد. در کل استفاده از فریم‌ورک در برنامه‌نویسی بسیار رایج است و موجب می‌شود چرخ را از ابتدا اختراع نکنید!!

"""),
  NewsApi(
      image:
          "https://blog.codemagic.io/uploads/covers/codemagic-blog-header-Dart-vs-Javascript.png",
      title: "Dart: زبانی اپن‌سورس که زمانی قصد رقابت با JavaScript را داشت",
      subtitle:
          """Dart زبان آپن‌سورس است که در ابتدا به منظور جایگزینی زبان محبوب JavaScript طراحی شد و علیرغم اینکه گوگل تمام تلاش خود را به کار بست تا امکان کامپایل دارت به جاوااسکریپت با سهولت بیشتری صورت گیرد،‌ اما این زبان اختصاصی گوگل آن‌طور که باید و شاید مورد استقبال دولوپرها قرار نگرفت و بیشتر کاربردی درون شرکتی برای این غول فناوری دنیا پیدا کرد.

زمانی که دارت منتشر شد، مورد انتقاد بسیاری از توسعه‌دهندگان قرار گرفت که شاید یکی از دلایل شکل‌گیری انتقاداتی اینچنین، مقایسه‌ای بود که آن‌ها مابین زبان‌های برنامه‌نویسی دارت و جاوااسکریپت انجام می‌دادند. جاوااسکریپت از این ایدوئولوژی پیروی می‌کرد که در همهٔ مرورگرها به خوبی کار کند اما گوگل با انتشار دارت به دنبال توسعهٔ زبانی بود که به خوبی در گوگل کروم اجرا شود و در دیگر مرورگرهای محبوب همچون فایرفاکس، سافاری و غیره چنین عملکرد مثبتی نداشت. Lars Bak و Kasper Lund که طراحان اصلی زبان دارت هستند معتقدند:

برای اینکه بهترین کار رو نه تنها برای مرورگر گوگل کروم بلکه برای همهٔ کاربران و به طور کلی وب انجام بدیم، تلاش‌های خود رو بر روی کامپایل کردن دارت به جاوااسکریپت متمرکز خواهیم کرد و تصمیم گرفته‌ایم تا ماشین مجازی دارت (Dart VM) رو در کروم ادغام نکنیم. استراتژی جدید ما اینه که ویژگی‌های مورد نیاز کاربرانمون برای ساخت اپلیکیشن‌های مبتنی بر وب با استفاده از زبان دارت رو فراهم کنیم.

گرچه در گذشته گوگل بسیاری از پروژه‌های خود را متوقف کرده است، اما به نظر می رسد که این کمپانی در حال حاضر تصمیم به متوقف کردن توسعهٔ این زبان ندارد به طوری که بخش‌هایی از یکی از بزرگ‌ترین سرویس‌های این شرکت، Google Ads، با دارت توسعه یافته است. همچنین طبق سایت رسمی این زبان، دارت زبانی اپن‌سورس و رایگان با سینتکسی تمیز و آشنا برای بسیاری دولوپرها، برخوردار از ابزارهای جانبی قدرتمند و همچنین سریع برای توسعهٔ اپ موبایل و همچنین وب اپلیکیشن است. به عنوان نمونه سورس‌کد نوشته‌شده با این زبان داریم:

import 'dart:async';
import 'dart:math' show Random;

main() async {
  print('Compute π using the Monte Carlo method.');
  await for (var estimate in computePi().take(500)) {
    print('π ≅ \$estimate');
  }
}

/// Generates a stream of increasingly accurate estimates of π.
Stream<double> computePi({int batch: 100000}) async* {
  var total = 0;
  var count = 0;
  while (true) {
    var points = generateRandom().take(batch);
    var inside = points.where((p) => p.isInsideUnitCircle);
    total += batch;
    count += inside.length;
    var ratio = count / total;
    // Area of a circle is A = π⋅r², therefore π = A/r².
    // So, when given random points with x ∈ <0,1>,
    // y ∈ <0,1>, the ratio of those inside a unit circle
    // should approach π / 4. Therefore, the value of π
    // should be:
    yield ratio * 4;
  }
}

Iterable<Point> generateRandom([int seed]) sync* {
  final random = Random(seed);
  while (true) {
    yield Point(random.nextDouble(), random.nextDouble());
  }
}

class Point {
  final double x, y;
  const Point(this.x, this.y);
  bool get isInsideUnitCircle => x * x + y * y <= 1;
}
در یک کلام، این داده‌ها تأکیدی است بر این واقعیت که جاوااسکریپت زبان اصلی وب باقی خواهد ماند.
 """),
  NewsApi(
      image: "https://up.7learn.com/z/s/wp/2019/03/What-is-OOP.jpg",
      title: "شی گرایی یا Object Oriented Programming چیست؟",
      subtitle:
          """برنامه نویسی شی گرایی چیست : OOP یا Object Orient Programming شیوه ای از برنامه نویسی است که موجودیت‌های نرم افزار را به صورت شی یا Object می‌بیند. قبل از ظهور برنامه نویسی شی گرا ، برنامه‌ها اغلب به شکل Procedural یا رویه ای نوشته می‌شد. در برنامه نویسی رویه ای برنامه‌ها به توابع تقسیم می‌شدند. یعنی برنامه از متغیرهایی که اطلاعات را ذخیره و توابعی که عملیات مورد نظر را روی اطلاعات انجام می‌دادند تشکیل می‌شد.

اما با بزرگ شدن نرم افزار برنامه نویسان مجبور به تکرار کدها به صورت مکرر می‌شدند. توابع در قسمت‌های مختلف به صورت نامرتب و تو در تو یکدیگر را صدا می‌زدند و برنامه به اصلاح به یک کد Spagetti تبدیل می‌شد. کد اسپاگتی به کدی اطلاق می‌شود که در آن توابع و قطعات کد مختلف به هم وابسته و در هم ریخته اند و در نتیجه ایجاد تغییر در یک تابع باعث به هم ریختن توابع زیادی می‌شود.

برنامه نویسی شی گرا (oop)
پس از ظهور برنامه نویسی شی گرا توابع و متغیرهای مرتبط در واحد هایی به اسم کلاس (Class) تجمیع شدند. اشیا از روی این کلاس‌ها ساخته می‌شوند. و به این ترتیب صاحب متدها (Method) و ویژگی‌های (Attribute) آن کلاس‌ها می‌شوند. همینطور کلاس‌ها می‌توانند ویژگی‌ها یا توابع را از یکدیگر به ارث ببرند. به این ویژگی ارث بری یا Inheritance می‌گوییم.

به عنوان مثال گوشی خود را در نظر بگیرید. فرض کنید مدل گوشی شما SumsungS10 باشد. کلاس گوشی SumsungS10 از کلاس گوشی به ارث می‌برد. کلاس گوشی دارای ویژگی‌ها یا Attribute‌های زیر است:

رنگ
رزولوشن
رزولوشن دوربین
حافظه
و...
همینطور تابع‌های زیر را دارد:

شارژ شدن
عکس گرفتن
دریافت SMS
و...
کد زیر یک کلاس خالی گوشی تلفن همراه را نمایش می‌دهد:

class Mobile {
    protected \$color;
    protected \$resolution;
    protected \$cameraResolution;
    protected \$memorySize;
    public function charge() {}
    public function takePhoto() {}
    public function getSMS() {}
}
حال با کلمه کلیدی Extends ویژگی‌ها و متدهای کلاس گوشی موبایل توسط کلاس SumsungS10 به ارث برده می‌شود:

class SumsungS10 extends Mobile {
    private \$gadgets = array();
}
کلاس گوشی SumsungS10 با به ارث بردن از کلاس گوشی تمام این ویژگی‌ها و توابع را به ارث می‌برد. علاوه بر آن دارای ویژگی Gadget نیز هست. گوشی SumsungS10 شما یک نمونه یا Instance از کلاس گوشی SumsungS10 است و با ساخت یک Object از کلاس گوشی SumsungS10 به وجود می‌آید.

\$mysSumsungS10 = new SumsungS10();
چگونه کلاس‌ها از هم ارث می‌برند؟

قلمرو متغیر‌ها در شی گرایی
در کدهای بالا مشاهده کردید که در تعریف attribute‌ها و متدها از کلمات public، protected و private استفاده کردیم. ما با استفاده از این کلمات کلیدی قلمرو attribute‌ها و متدهای کلاس را در برنامه نویسی شی گرا تعریف می‌کنیم. به این کلمات کلیدی Access Modifier می‌گوییم. به طور خلاصه:

Public: به متغیرها و متدهایی گفته می‌شود که از خارج کلاس قابل دسترسی هستند.
Protected: به متغیرها و متدهایی گفته می‌شود که فقط از کلاس هایی قابل دسترسی هستند که از کلاس فعلی ارث برده اند.
Private: به متغیرها و متدهایی گفته می‌شود که از خارج کلاس قابل دسترسی نیستند.
متغییر‌ها در شی گرایی

شی گرایی در دنیای واقعی
شاید با خودتان بگویید در دنیای واقعی برنامه نویسی شی گرا کمتر اتفاق می‌افتد که نیاز داشته باشید از کلاس گوشی موبایل شی بسازیم. در دنیای واقعی تمام موجودیت‌های برنامه می‌توانند به صورت شی دیده شوند. حتی می‌توان هر رکورد از جداول پایگاه داده را به صورت شی دید (ORM). مثل کلاس پیام یا Message که انواع مختلف کلاس Message مانند BroadcastMessage و PrivateMessage از آن به ارث می‌برند و...

مزایای استفاده از شی گرایی
هرچند که استفاده از شی گرایی مزایای زیادی دارد اما میزان ضرورت استفاده و اهمیت آن به نوع پروژه و ترجیحات برنامه نویس بستگی دارد. این مفهوم هنوز در حال توسعه است و روزانه تکنولوژی‌ها و ابزارهای زیادی در این راستا منتشر می‌شود. برخی از مزایای شی گرایی عبارتند از:
شی گرایی روند کلی توسعه یک نرم افزار را آسان می‌کند.
شما می‌توانید به جای اینکه مجبور باشید کد را بارها بازنویسی کنید، از همان ابتدا برای برنامه ماژول‌های کاری استاندارد بسازید که با یکدیگر ارتباط برقرار می‌کنند: این منجر به صرفه‌جویی در زمان توسعه و بهره‌وری بالاتر می‌شود.
شی گرایی اجازه می‌دهد تا برنامه را به زیرمسائلی با اندازه کوچکتر تقسیم کنید که به راحتی قابل حل هستند.
فناوری جدید شی گرایی باعث بهره وری بیشتر برنامه نویس، کیفیت بهتر نرم افزار و هزینه نگهداری کمتر می‌شود.
ارث بری در شی گرایی
سیستم‌های OOP را می‌توان به راحتی از سیستم‌های کوچک به بزرگ ارتقا داد.
این امکان وجود دارد که چندین نمونه از اشیاء بدون هیچ گونه تداخلی به صورت همزمان وجود داشته باشند.
پارتیشن بندی کار در یک پروژه بر اساس اشیا بسیار آسان است.
اصل پنهان کردن داده‌ها به برنامه نویس کمک می‌کند که برنامه‌های امنی بسازد تا کدهای دیگر نتوانند به آنها حمله کنند.
با استفاده از وراثت، می‌توان کدهای اضافی را حذف کرده و استفاده از کلاس‌های موجود را گسترش داد.
تکنیک‌های ارسال پیام برای ارتباط بین اشیا استفاده می‌شود که توصیف ارتباط داخل برنامه با سیستم‌های خارجی را بسیار ساده‌تر می‌کند.
رویکرد طراحی داده‌محور شما را قادر می‌سازد تا جزئیات بیشتری از مدل را به شکلی قابل اجرا ثبت کنید.
مفاهیم پایه ای شی گرایی در برنامه نویسی
معایب شی گرایی
جالب است بدانید که استفاده از OOP دارای معایبی نیز می‌باشد. برخی از این معایب به شرح زیر می‌باشند:
روند ایجاد برنامه‌های توسعه یافته با استفاده از شی گرایی بسیار بیشتر از رویکرد عادی و معمول است؛ چراکه بت به کارگیری اصول شی گرایی اندازه برنامه بزرگتر می‌شود، در نتیجه اجرای آن به زمان بیشتری نیاز دارد که این موضوع منجر به اجرای کندتر برنامه می‌شود.
نمی توان شی گرایی را در همه جا اعمال کرد و باید توجه داشت که فقط در صورت لزوم اعمال شود. برنامه نویسان باید مهارت طراحی و برنامه نویسی درخشانی را در کنار برنامه ریزی مناسب داشته باشند زیرا استفاده از شی گرایی کمی مشکل است.
اغلب زمان نیاز است تا برنامه نویسان تازه کار به شی گرایی عادت کنند. فرآیند فکری مورد نیاز در برنامه نویسی شی گرا ممکن است برای برخی افراد سنگین باشد.
همه چیز در OOP به عنوان یک شی در نظر گرفته می‌شود، بنابراین قبل از اعمال آن باید درمورد چگونگی اشیا و ارتباطشان با یکدیگر یک ساختار ذهنی عالی داشته باشید.
""")
];
// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'ar';

  static String m0(durationInMins) => "وقت التوصيل \$${durationInMins}";

  static String m1(quantity) => "الكمية: ${quantity}";

  static String m2(formattedTime) => "تم إسنادها عند ${formattedTime}";

  static String m3(seconds) => "عليك الانتظار ${seconds} ثواني لتغيير حالتك";

  static String m4(Date) => "تم التوصيل في ${Date}";

  static String m5(url) => "لم يتم إيجاد الصفحة المطلوبة ${url}";

  static String m6(orderId) => "الطلب رقم ${orderId}";

  static String m7(quantity) => "الطلبية ${quantity} قد تم توصيلها بنجاح";

  static String m8(ticketId) => "التذكرة رقم ${ticketId}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "DeliveryTimeInX": m0,
        "aboutUs": MessageLookupByLibrary.simpleMessage("حول التطبيق"),
        "accountNotVerifiedErrorMessage":
            MessageLookupByLibrary.simpleMessage("لم يتم التحقق من الحساب"),
        "addTicket": MessageLookupByLibrary.simpleMessage("أضف تذكرة"),
        "alreadyHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("لديك حساب بالفعل ؟ "),
        "amount": m1,
        "apply": MessageLookupByLibrary.simpleMessage("تغيير"),
        "archive": MessageLookupByLibrary.simpleMessage("أرشيف"),
        "assigned": MessageLookupByLibrary.simpleMessage("النشطة"),
        "assignedAt": MessageLookupByLibrary.simpleMessage("تم اسنادها في"),
        "assignedAtX": m2,
        "backToOrders":
            MessageLookupByLibrary.simpleMessage("العودة إلى الطلبات"),
        "badRequest": MessageLookupByLibrary.simpleMessage("إرسال خاطئ"),
        "cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "cancelErrorMessage":
            MessageLookupByLibrary.simpleMessage("تم إلغاء العملية"),
        "changeCurrency": MessageLookupByLibrary.simpleMessage("تغيير العملة"),
        "changeEmail":
            MessageLookupByLibrary.simpleMessage("تغيير البريد الالكتروني"),
        "changeLangMessage": MessageLookupByLibrary.simpleMessage(
            "اختر اللغة، ستتم إعادة تشغيل التطبيق"),
        "changeLanguage": MessageLookupByLibrary.simpleMessage("تغيير اللغة"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("تغيير كلمة السر"),
        "changeStatuesRequest": m3,
        "close": MessageLookupByLibrary.simpleMessage("إغلاق"),
        "closeApp": MessageLookupByLibrary.simpleMessage("إغلاق التطبيق"),
        "confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("اعادة ادخال كلمة السر"),
        "conflictError":
            MessageLookupByLibrary.simpleMessage("حدث خطأ في المعلومات"),
        "connectionErrorMessage": MessageLookupByLibrary.simpleMessage(
            "يرجى التحقق من الاتصال بالإنترنت"),
        "connectionTimeOut":
            MessageLookupByLibrary.simpleMessage("انتهت مدة الجلسة"),
        "contactUs": MessageLookupByLibrary.simpleMessage("اتصل بنا"),
        "continueWithFacebook":
            MessageLookupByLibrary.simpleMessage("التسجبل بواسطة فيسبوك"),
        "continueWithGoogle":
            MessageLookupByLibrary.simpleMessage("لتسجبل بواسطة غوغل"),
        "coupon": MessageLookupByLibrary.simpleMessage("كوبون"),
        "coupons": MessageLookupByLibrary.simpleMessage("الكوبونات"),
        "createWithEasyAndSimpleSteps": MessageLookupByLibrary.simpleMessage(
            "قم بتسجيل حساب جديد بخطوات سهلة وبسيطة"),
        "delivered": MessageLookupByLibrary.simpleMessage("تم التوصيل"),
        "deliveredOn": m4,
        "deliveryCosts": MessageLookupByLibrary.simpleMessage("أجور التوصيل"),
        "deliveryDone": MessageLookupByLibrary.simpleMessage("تم التوصيل"),
        "deliveryTime": MessageLookupByLibrary.simpleMessage("موعد التسليم"),
        "details": MessageLookupByLibrary.simpleMessage("التفاصيل"),
        "doNotHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("ليس لديك حساب ؟ "),
        "email": MessageLookupByLibrary.simpleMessage("البريد الالكتروني"),
        "emailActivation": MessageLookupByLibrary.simpleMessage("تفعيل بريدك"),
        "empty": MessageLookupByLibrary.simpleMessage("لا يوجد معلومات لعرضها"),
        "emptyDelivered": MessageLookupByLibrary.simpleMessage(
            "لم يتم توصيل اي طلبية اليوم حتى اللحظة"),
        "emptyScreen": MessageLookupByLibrary.simpleMessage("هذه الصفحة فارغة"),
        "enterMessage": MessageLookupByLibrary.simpleMessage("أدخل رسالتك"),
        "enterTheCodeSentToYourEmailToActivateTheAccount":
            MessageLookupByLibrary.simpleMessage(
                "قم بادخال الرمز المرسل الى بريدك لتفعيل الحساب"),
        "enterYourAccountDataToLogin": MessageLookupByLibrary.simpleMessage(
            "قم بادخال بيانات حسابك للاستمرار"),
        "enterYourEmailToRetrieveThePassword":
            MessageLookupByLibrary.simpleMessage(
                "قم بادخال بريدك الالكتروني لاستعادة كلمة السر "),
        "errorCancelToken":
            MessageLookupByLibrary.simpleMessage("تمت مفاطعة الاتصال"),
        "errorEmptyField": MessageLookupByLibrary.simpleMessage(
            "لا يمكن لهذا الحقل أن يكون فارغاً"),
        "errorFetchDistance":
            MessageLookupByLibrary.simpleMessage("فشل في تقدير الوقت والمسافة"),
        "errorLocation":
            MessageLookupByLibrary.simpleMessage("الرجاء تفعيل خدمة الموقع"),
        "errorOccurred": MessageLookupByLibrary.simpleMessage("حدث خطأ ما 😢"),
        "errorTxt": MessageLookupByLibrary.simpleMessage(
            "لا يمكن أن يكون هذا الحقل فارغ"),
        "failedRefresher":
            MessageLookupByLibrary.simpleMessage("فشل في جلب البيانات"),
        "firstName": MessageLookupByLibrary.simpleMessage("الاسم الأول"),
        "forbidden":
            MessageLookupByLibrary.simpleMessage("لا يمكن الوصول الآن"),
        "forgetPassword":
            MessageLookupByLibrary.simpleMessage("نسيت كلمة السر ؟ "),
        "generalErrorMessage": MessageLookupByLibrary.simpleMessage(
            "حدث خطأ ما. يرجى المحاولة لاحقاً"),
        "hintDescriptionMyTicket":
            MessageLookupByLibrary.simpleMessage("إضافة وصف للبطاقة"),
        "hintTitleMyTicket":
            MessageLookupByLibrary.simpleMessage("أضف عنوان للبطاقة"),
        "history": MessageLookupByLibrary.simpleMessage("السجل"),
        "internalServerError":
            MessageLookupByLibrary.simpleMessage("حدث خطأ في المخدم"),
        "internalServerErrorMessage": MessageLookupByLibrary.simpleMessage(
            "واجه الخادم خطأ أو تهيئة خاطئة ولم يتمكن من إكمال طلبك سيتم إصلاح المشكلة في أقرب وقت."),
        "invalidConfirmPass": MessageLookupByLibrary.simpleMessage(
            "كلمة السر والتأكيد غير متطابقتان"),
        "invalidConfirmPassword": MessageLookupByLibrary.simpleMessage(
            "كلمة السر وتأكيد كلمة السر غير متطابقتين"),
        "invalidEmail": MessageLookupByLibrary.simpleMessage(
            "الرجاء إدخال بريد الكتروني صالح"),
        "invalidPassword": MessageLookupByLibrary.simpleMessage(
            "يجب أن تكون بطول 5 محارف على الأق"),
        "invalidPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "يرجى إدخال رقم هاتف صالح مثال 09xx-xxx-xxx"),
        "invalidUsername": MessageLookupByLibrary.simpleMessage(
            "يرجى إدخال أسم المستخدم صالح"),
        "lastName": MessageLookupByLibrary.simpleMessage("الأسم الأخير"),
        "latestProducts": MessageLookupByLibrary.simpleMessage("أحدث المنتجات"),
        "latestWinners": MessageLookupByLibrary.simpleMessage("أحدث الفائزين"),
        "logOut": MessageLookupByLibrary.simpleMessage("تسجيل الخروج"),
        "login": MessageLookupByLibrary.simpleMessage("تسجيل الدخول"),
        "loginErrorRequired":
            MessageLookupByLibrary.simpleMessage("التسجيل مطلوب"),
        "mapPathError": MessageLookupByLibrary.simpleMessage(
            "لا نستطع تحديد طريق إلى الطلبية المحددة"),
        "markAsDelivered": MessageLookupByLibrary.simpleMessage("تم التوصيل"),
        "myLocationNotAvailableError": MessageLookupByLibrary.simpleMessage(
            "لم نتمكن من تحديد موقعك، الرجاء إعادة المحاولة"),
        "noDataRefresher":
            MessageLookupByLibrary.simpleMessage("لم يعد يوجد بيانات"),
        "noMessages":
            MessageLookupByLibrary.simpleMessage("لا توجد رسائل حتى الآن ..."),
        "noOrdersAssigned": MessageLookupByLibrary.simpleMessage(
            "لا طلبيات حتى الآن، إبدأ بالتحمية وانتظر ..."),
        "notFound": m5,
        "notifications": MessageLookupByLibrary.simpleMessage("الإشعارات"),
        "number": MessageLookupByLibrary.simpleMessage("رقم"),
        "ok": MessageLookupByLibrary.simpleMessage("موافق"),
        "onTheWay": MessageLookupByLibrary.simpleMessage("على الطريق"),
        "oopsErrorMessage": MessageLookupByLibrary.simpleMessage("أوبس !"),
        "or": MessageLookupByLibrary.simpleMessage("أو"),
        "order": MessageLookupByLibrary.simpleMessage("طلب"),
        "orderWithId": m6,
        "orderXHasBeenDelivered": m7,
        "orderedProducts":
            MessageLookupByLibrary.simpleMessage("محتوى الطلبية"),
        "orders": MessageLookupByLibrary.simpleMessage("الطلبات"),
        "ordersAddresses":
            MessageLookupByLibrary.simpleMessage("عناوين المنتجات"),
        "pageEmpty":
            MessageLookupByLibrary.simpleMessage("لا يوجد محتوى لعرضه .."),
        "password": MessageLookupByLibrary.simpleMessage("كلمة السر"),
        "passwordRecovery":
            MessageLookupByLibrary.simpleMessage("استعادة كلمة السر"),
        "phone": MessageLookupByLibrary.simpleMessage("رقم الهاتف"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("رقم الموبايل"),
        "pleaseWait":
            MessageLookupByLibrary.simpleMessage("الرجاء الانتظار..."),
        "pressTwiceToExit":
            MessageLookupByLibrary.simpleMessage("إضفط مرتين للخروج"),
        "reSend": MessageLookupByLibrary.simpleMessage("اعادة الارسال"),
        "readyToPickOrders": MessageLookupByLibrary.simpleMessage(
            "هل أنت جاهز للقيام بتوصيلاتك؟"),
        "refresh": MessageLookupByLibrary.simpleMessage("تحديث"),
        "register": MessageLookupByLibrary.simpleMessage("تسجيل حساب"),
        "registerNow": MessageLookupByLibrary.simpleMessage("سجل الان ."),
        "report": MessageLookupByLibrary.simpleMessage("إبلاغ"),
        "reportError": MessageLookupByLibrary.simpleMessage(
            "حدث خطأ ما، الرجاء الضغط على إرسال لمساعدتنا بحل المشكلة"),
        "responseError": MessageLookupByLibrary.simpleMessage(
            "حدث خطأ أثناء الاتصال بالخادم ، يرجى المحاولة لاحقًا"),
        "retry": MessageLookupByLibrary.simpleMessage("إعادة المحاولة"),
        "searchByYourFavoriteProduct": MessageLookupByLibrary.simpleMessage(
            "ابحث هنا باسم المنتج المفضل لديك "),
        "selectCurrency": MessageLookupByLibrary.simpleMessage("اختر عملة"),
        "send": MessageLookupByLibrary.simpleMessage("إرسال"),
        "share": MessageLookupByLibrary.simpleMessage("شارك"),
        "signUp": MessageLookupByLibrary.simpleMessage("تسجيل حساب"),
        "startDelivery": MessageLookupByLibrary.simpleMessage("إبدأ التوصيل"),
        "subTotal": MessageLookupByLibrary.simpleMessage("المجموع"),
        "support": MessageLookupByLibrary.simpleMessage("الدعم"),
        "switchTheme":
            MessageLookupByLibrary.simpleMessage("تغيير وضع الالوان"),
        "thankYouForDelivering":
            MessageLookupByLibrary.simpleMessage("شكراً لك على التوصيلو"),
        "thisInputMustntBeEmpty": MessageLookupByLibrary.simpleMessage(
            "هذه الخانة لايجب ان تكون فارغة"),
        "ticketDescription": MessageLookupByLibrary.simpleMessage("الوصف"),
        "ticketTitle": MessageLookupByLibrary.simpleMessage("العنوان"),
        "ticketWithId": m8,
        "tickets": MessageLookupByLibrary.simpleMessage("تذاكر"),
        "todayOrders": MessageLookupByLibrary.simpleMessage("طلبيات اليوم"),
        "total": MessageLookupByLibrary.simpleMessage("المجموع"),
        "unauthorized":
            MessageLookupByLibrary.simpleMessage("غير مخول لك بالوصول"),
        "unknownError": MessageLookupByLibrary.simpleMessage(
            "حدث خطأ غير معروف، الرجاء إعادة المحاولة"),
        "update": MessageLookupByLibrary.simpleMessage("تحديث"),
        "updateMessage": MessageLookupByLibrary.simpleMessage(
            "للحصول على أفضل تجربة ممكنة، يرجى تحديث التطبيق للتمتع بآخر الميزات"),
        "updateTitle": MessageLookupByLibrary.simpleMessage("التحديث مطلوب"),
        "uploaded": MessageLookupByLibrary.simpleMessage("تم تحميله"),
        "userName": MessageLookupByLibrary.simpleMessage("اسم المستخدم"),
        "viewAll": MessageLookupByLibrary.simpleMessage("عرض الكل "),
        "welcome": MessageLookupByLibrary.simpleMessage("أهلاً بك"),
        "winner": MessageLookupByLibrary.simpleMessage("الرابح"),
        "youAreHere": MessageLookupByLibrary.simpleMessage("أنت هنا")
      };
}

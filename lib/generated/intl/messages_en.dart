// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
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
  String get localeName => 'en';

  static String m0(durationInMins) => "Delivery Time in ${durationInMins}";

  static String m1(quantity) => "Amount: ${quantity}";

  static String m2(formattedTime) => "Assigned at ${formattedTime}";

  static String m3(seconds) =>
      "You have to wait ${seconds} seconds to change your state";

  static String m4(Date) => "Delivered at ${Date}";

  static String m5(url) => "${url} not Found";

  static String m6(orderId) => "Order ${orderId}";

  static String m7(quantity) =>
      "order ${quantity} has been successfully delivered";

  static String m8(ticketId) => "Ticket ${ticketId}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "DeliveryTimeInX": m0,
        "aboutUs": MessageLookupByLibrary.simpleMessage("About us"),
        "accountNotVerifiedErrorMessage":
            MessageLookupByLibrary.simpleMessage("Account Not Verified"),
        "addTicket": MessageLookupByLibrary.simpleMessage("Add ticket"),
        "alreadyHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("already have an account ? "),
        "amount": m1,
        "apply": MessageLookupByLibrary.simpleMessage("Apply"),
        "archive": MessageLookupByLibrary.simpleMessage("Archive"),
        "assigned": MessageLookupByLibrary.simpleMessage("Assigned"),
        "assignedAt": MessageLookupByLibrary.simpleMessage("Assigned at"),
        "assignedAtX": m2,
        "backToOrders": MessageLookupByLibrary.simpleMessage("Back to orders"),
        "badRequest": MessageLookupByLibrary.simpleMessage("Bad Request"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cancelErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Operation has been cancelled"),
        "changeCurrency":
            MessageLookupByLibrary.simpleMessage("Change Currency"),
        "changeEmail": MessageLookupByLibrary.simpleMessage("chanege email"),
        "changeLangMessage": MessageLookupByLibrary.simpleMessage(
            "Select a language, the application will restart"),
        "changeLanguage":
            MessageLookupByLibrary.simpleMessage("Change Language"),
        "changePassword":
            MessageLookupByLibrary.simpleMessage("change password"),
        "changeStatuesRequest": m3,
        "close": MessageLookupByLibrary.simpleMessage("Close"),
        "closeApp": MessageLookupByLibrary.simpleMessage("Close App"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "confirmPassword":
            MessageLookupByLibrary.simpleMessage("Confirm password"),
        "conflictError": MessageLookupByLibrary.simpleMessage("Conflict Error"),
        "connectionErrorMessage": MessageLookupByLibrary.simpleMessage(
            "Please check your internet connection"),
        "connectionTimeOut":
            MessageLookupByLibrary.simpleMessage("Connection time out"),
        "contactUs": MessageLookupByLibrary.simpleMessage("Contact us"),
        "continueWithFacebook":
            MessageLookupByLibrary.simpleMessage("Continue with Facebook"),
        "continueWithGoogle":
            MessageLookupByLibrary.simpleMessage("Continue with Google"),
        "coupon": MessageLookupByLibrary.simpleMessage("coupon"),
        "coupons": MessageLookupByLibrary.simpleMessage("coupons"),
        "createWithEasyAndSimpleSteps": MessageLookupByLibrary.simpleMessage(
            "Create new account with easy and simple steps"),
        "delivered": MessageLookupByLibrary.simpleMessage("Delivered"),
        "deliveredOn": m4,
        "deliveryCosts": MessageLookupByLibrary.simpleMessage("Delivery Costs"),
        "deliveryDone": MessageLookupByLibrary.simpleMessage("Delivery done"),
        "deliveryTime": MessageLookupByLibrary.simpleMessage("Delivery time"),
        "details": MessageLookupByLibrary.simpleMessage("Details"),
        "doNotHaveAnAccount":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account ? "),
        "email": MessageLookupByLibrary.simpleMessage("Email"),
        "emailActivation":
            MessageLookupByLibrary.simpleMessage("Email activation"),
        "empty": MessageLookupByLibrary.simpleMessage("Empty"),
        "emptyDelivered": MessageLookupByLibrary.simpleMessage(
            "No deliveries done yet for today"),
        "emptyScreen":
            MessageLookupByLibrary.simpleMessage("This page is empty"),
        "enterMessage":
            MessageLookupByLibrary.simpleMessage("enter your message"),
        "enterTheCodeSentToYourEmailToActivateTheAccount":
            MessageLookupByLibrary.simpleMessage(
                "Enter the code sent to your email to activate the account "),
        "enterYourAccountDataToLogin": MessageLookupByLibrary.simpleMessage(
            "Enter your account data to login"),
        "enterYourEmailToRetrieveThePassword":
            MessageLookupByLibrary.simpleMessage(
                "Enter your email to retrieve the password"),
        "errorCancelToken": MessageLookupByLibrary.simpleMessage(
            "The connection has been interrupted"),
        "errorEmptyField": MessageLookupByLibrary.simpleMessage(
            "This field mustn\'t be empty"),
        "errorFetchDistance":
            MessageLookupByLibrary.simpleMessage("Could not fetch distance"),
        "errorLocation": MessageLookupByLibrary.simpleMessage(
            "Please enable your location, it is required to complete the process"),
        "errorOccurred":
            MessageLookupByLibrary.simpleMessage("Error Occured 😢"),
        "errorTxt":
            MessageLookupByLibrary.simpleMessage("This field can\'t be empty"),
        "failedRefresher":
            MessageLookupByLibrary.simpleMessage("Failed to get data"),
        "firstName": MessageLookupByLibrary.simpleMessage("First Name"),
        "forbidden": MessageLookupByLibrary.simpleMessage("Forbidden"),
        "forgetPassword":
            MessageLookupByLibrary.simpleMessage("Forget password ? "),
        "generalErrorMessage": MessageLookupByLibrary.simpleMessage(
            "An error has occurred. Please try again later"),
        "hintDescriptionMyTicket":
            MessageLookupByLibrary.simpleMessage("Add ticket description"),
        "hintTitleMyTicket":
            MessageLookupByLibrary.simpleMessage("Add ticket title"),
        "history": MessageLookupByLibrary.simpleMessage("History"),
        "internalServerError":
            MessageLookupByLibrary.simpleMessage("Internal server error"),
        "internalServerErrorMessage": MessageLookupByLibrary.simpleMessage(
            "The server encountered an internal error or misconfigurtion and was unable to complete your request."),
        "invalidConfirmPass":
            MessageLookupByLibrary.simpleMessage("Two passwords don\'t match"),
        "invalidConfirmPassword": MessageLookupByLibrary.simpleMessage(
            "Password and confirm password doesn\'t match"),
        "invalidEmail":
            MessageLookupByLibrary.simpleMessage("Please enter a valid email"),
        "invalidPassword": MessageLookupByLibrary.simpleMessage(
            "Must be at least 5 characters long"),
        "invalidPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid phone number ex: 09xx-xxx-xxx"),
        "invalidUsername": MessageLookupByLibrary.simpleMessage(
            "Please enter a valid Username"),
        "lastName": MessageLookupByLibrary.simpleMessage("Last Name"),
        "latestProducts":
            MessageLookupByLibrary.simpleMessage("latest products"),
        "latestWinners": MessageLookupByLibrary.simpleMessage("latest winners"),
        "logOut": MessageLookupByLibrary.simpleMessage("Logout"),
        "login": MessageLookupByLibrary.simpleMessage("Login"),
        "loginErrorRequired":
            MessageLookupByLibrary.simpleMessage("Login required"),
        "mapPathError": MessageLookupByLibrary.simpleMessage(
            "Couldn\'t find path to the order destination"),
        "markAsDelivered":
            MessageLookupByLibrary.simpleMessage("Mark as delivered"),
        "myLocationNotAvailableError": MessageLookupByLibrary.simpleMessage(
            "Couldn\'t know your location, please retry the operation"),
        "noDataRefresher": MessageLookupByLibrary.simpleMessage("No data"),
        "noMessages":
            MessageLookupByLibrary.simpleMessage("No messages here yet ..."),
        "noOrdersAssigned": MessageLookupByLibrary.simpleMessage(
            "No orders until now, warm up and wait ..."),
        "notFound": m5,
        "notifications": MessageLookupByLibrary.simpleMessage("Notifications"),
        "number": MessageLookupByLibrary.simpleMessage("number"),
        "ok": MessageLookupByLibrary.simpleMessage("Ok"),
        "onTheWay": MessageLookupByLibrary.simpleMessage("On the way"),
        "oopsErrorMessage": MessageLookupByLibrary.simpleMessage("OOPS !"),
        "or": MessageLookupByLibrary.simpleMessage("OR"),
        "order": MessageLookupByLibrary.simpleMessage("Order"),
        "orderWithId": m6,
        "orderXHasBeenDelivered": m7,
        "orderedProducts":
            MessageLookupByLibrary.simpleMessage("Ordered products"),
        "orders": MessageLookupByLibrary.simpleMessage("Orders"),
        "ordersAddresses":
            MessageLookupByLibrary.simpleMessage("Orders addresses"),
        "pageEmpty":
            MessageLookupByLibrary.simpleMessage("The page has no content .."),
        "password": MessageLookupByLibrary.simpleMessage("Password"),
        "passwordRecovery":
            MessageLookupByLibrary.simpleMessage("Password Recovery"),
        "phone": MessageLookupByLibrary.simpleMessage("Phone Number"),
        "phoneNumber": MessageLookupByLibrary.simpleMessage("phone number"),
        "pleaseWait": MessageLookupByLibrary.simpleMessage("Please wait..."),
        "pressTwiceToExit":
            MessageLookupByLibrary.simpleMessage("Press twice to exit"),
        "reSend": MessageLookupByLibrary.simpleMessage("resend"),
        "readyToPickOrders":
            MessageLookupByLibrary.simpleMessage("Ready to pick your orders?"),
        "refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "register": MessageLookupByLibrary.simpleMessage("Register"),
        "registerNow": MessageLookupByLibrary.simpleMessage("Register now"),
        "report": MessageLookupByLibrary.simpleMessage("Report"),
        "reportError": MessageLookupByLibrary.simpleMessage(
            "An error has been occurred, please click send to help us fixing the problem"),
        "responseError": MessageLookupByLibrary.simpleMessage(
            "An error happened while connecting to server, please try again later"),
        "retry": MessageLookupByLibrary.simpleMessage("Retry"),
        "searchByYourFavoriteProduct": MessageLookupByLibrary.simpleMessage(
            " search by your favorite product"),
        "selectCurrency":
            MessageLookupByLibrary.simpleMessage("Select Currency"),
        "send": MessageLookupByLibrary.simpleMessage("Send"),
        "share": MessageLookupByLibrary.simpleMessage("Share"),
        "signUp": MessageLookupByLibrary.simpleMessage("Signup"),
        "startDelivery": MessageLookupByLibrary.simpleMessage("Start delivery"),
        "subTotal": MessageLookupByLibrary.simpleMessage("Subtotal"),
        "support": MessageLookupByLibrary.simpleMessage("Support"),
        "switchTheme": MessageLookupByLibrary.simpleMessage("Switch theme"),
        "thankYouForDelivering":
            MessageLookupByLibrary.simpleMessage("Thank you for delivering"),
        "thisInputMustntBeEmpty": MessageLookupByLibrary.simpleMessage(
            "this input mustn\'t be empty"),
        "ticketDescription":
            MessageLookupByLibrary.simpleMessage("Description"),
        "ticketTitle": MessageLookupByLibrary.simpleMessage("Title"),
        "ticketWithId": m8,
        "tickets": MessageLookupByLibrary.simpleMessage("Tickets"),
        "todayOrders": MessageLookupByLibrary.simpleMessage("Today\'s orders"),
        "total": MessageLookupByLibrary.simpleMessage("Total"),
        "unauthorized": MessageLookupByLibrary.simpleMessage("Unauthorized"),
        "unknownError": MessageLookupByLibrary.simpleMessage(
            "Unknown error occurred, please try again"),
        "update": MessageLookupByLibrary.simpleMessage("update"),
        "updateMessage": MessageLookupByLibrary.simpleMessage(
            "For the best experience, update to the latest version to get new features and improvements."),
        "updateTitle": MessageLookupByLibrary.simpleMessage("Update Required"),
        "uploaded": MessageLookupByLibrary.simpleMessage("Uploaded"),
        "userName": MessageLookupByLibrary.simpleMessage("User name"),
        "viewAll": MessageLookupByLibrary.simpleMessage("view all "),
        "welcome": MessageLookupByLibrary.simpleMessage("Welcome"),
        "winner": MessageLookupByLibrary.simpleMessage("winner"),
        "youAreHere": MessageLookupByLibrary.simpleMessage("You are here")
      };
}

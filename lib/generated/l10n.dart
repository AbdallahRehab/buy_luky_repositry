// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Translation {
  Translation();

  static Translation? _current;

  static Translation get current {
    assert(_current != null,
        'No instance of Translation was loaded. Try to initialize the Translation delegate before accessing Translation.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Translation> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Translation();
      Translation._current = instance;

      return instance;
    });
  }

  static Translation of(BuildContext context) {
    final instance = Translation.maybeOf(context);
    assert(instance != null,
        'No instance of Translation present in the widget tree. Did you add Translation.delegate in localizationsDelegates?');
    return instance!;
  }

  static Translation? maybeOf(BuildContext context) {
    return Localizations.of<Translation>(context, Translation);
  }

  /// `Error Occured 😢`
  String get errorOccurred {
    return Intl.message(
      'Error Occured 😢',
      name: 'errorOccurred',
      desc: '',
      args: [],
    );
  }

  /// `An error has been occurred, please click send to help us fixing the problem`
  String get reportError {
    return Intl.message(
      'An error has been occurred, please click send to help us fixing the problem',
      name: 'reportError',
      desc: '',
      args: [],
    );
  }

  /// `The server encountered an internal error or misconfigurtion and was unable to complete your request.`
  String get internalServerErrorMessage {
    return Intl.message(
      'The server encountered an internal error or misconfigurtion and was unable to complete your request.',
      name: 'internalServerErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `The connection has been interrupted`
  String get errorCancelToken {
    return Intl.message(
      'The connection has been interrupted',
      name: 'errorCancelToken',
      desc: '',
      args: [],
    );
  }

  /// `Signup`
  String get signUp {
    return Intl.message(
      'Signup',
      name: 'signUp',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone {
    return Intl.message(
      'Phone Number',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Ok`
  String get ok {
    return Intl.message(
      'Ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Password and confirm password doesn't match`
  String get invalidConfirmPassword {
    return Intl.message(
      'Password and confirm password doesn\'t match',
      name: 'invalidConfirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstName {
    return Intl.message(
      'First Name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastName {
    return Intl.message(
      'Last Name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `This field mustn't be empty`
  String get errorEmptyField {
    return Intl.message(
      'This field mustn\'t be empty',
      name: 'errorEmptyField',
      desc: '',
      args: [],
    );
  }

  /// `Switch theme`
  String get switchTheme {
    return Intl.message(
      'Switch theme',
      name: 'switchTheme',
      desc: '',
      args: [],
    );
  }

  /// `Account Not Verified`
  String get accountNotVerifiedErrorMessage {
    return Intl.message(
      'Account Not Verified',
      name: 'accountNotVerifiedErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Operation has been cancelled`
  String get cancelErrorMessage {
    return Intl.message(
      'Operation has been cancelled',
      name: 'cancelErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `This page is empty`
  String get emptyScreen {
    return Intl.message(
      'This page is empty',
      name: 'emptyScreen',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message(
      'Send',
      name: 'send',
      desc: '',
      args: [],
    );
  }

  /// `Couldn't know your location, please retry the operation`
  String get myLocationNotAvailableError {
    return Intl.message(
      'Couldn\'t know your location, please retry the operation',
      name: 'myLocationNotAvailableError',
      desc: '',
      args: [],
    );
  }

  /// `You are here`
  String get youAreHere {
    return Intl.message(
      'You are here',
      name: 'youAreHere',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Time in {durationInMins}`
  String DeliveryTimeInX(Object durationInMins) {
    return Intl.message(
      'Delivery Time in $durationInMins',
      name: 'DeliveryTimeInX',
      desc: '',
      args: [durationInMins],
    );
  }

  /// `Delivered at {Date}`
  String deliveredOn(Object Date) {
    return Intl.message(
      'Delivered at $Date',
      name: 'deliveredOn',
      desc: '',
      args: [Date],
    );
  }

  /// `Order {orderId}`
  String orderWithId(Object orderId) {
    return Intl.message(
      'Order $orderId',
      name: 'orderWithId',
      desc: '',
      args: [orderId],
    );
  }

  /// `Ticket {ticketId}`
  String ticketWithId(Object ticketId) {
    return Intl.message(
      'Ticket $ticketId',
      name: 'ticketWithId',
      desc: '',
      args: [ticketId],
    );
  }

  /// `Failed to get data`
  String get failedRefresher {
    return Intl.message(
      'Failed to get data',
      name: 'failedRefresher',
      desc: '',
      args: [],
    );
  }

  /// `No data`
  String get noDataRefresher {
    return Intl.message(
      'No data',
      name: 'noDataRefresher',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get ticketDescription {
    return Intl.message(
      'Description',
      name: 'ticketDescription',
      desc: '',
      args: [],
    );
  }

  /// `Add ticket description`
  String get hintDescriptionMyTicket {
    return Intl.message(
      'Add ticket description',
      name: 'hintDescriptionMyTicket',
      desc: '',
      args: [],
    );
  }

  /// `Add ticket title`
  String get hintTitleMyTicket {
    return Intl.message(
      'Add ticket title',
      name: 'hintTitleMyTicket',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get ticketTitle {
    return Intl.message(
      'Title',
      name: 'ticketTitle',
      desc: '',
      args: [],
    );
  }

  /// `This field can't be empty`
  String get errorTxt {
    return Intl.message(
      'This field can\'t be empty',
      name: 'errorTxt',
      desc: '',
      args: [],
    );
  }

  /// `Add ticket`
  String get addTicket {
    return Intl.message(
      'Add ticket',
      name: 'addTicket',
      desc: '',
      args: [],
    );
  }

  /// `Tickets`
  String get tickets {
    return Intl.message(
      'Tickets',
      name: 'tickets',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logOut {
    return Intl.message(
      'Logout',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support {
    return Intl.message(
      'Support',
      name: 'support',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Report`
  String get report {
    return Intl.message(
      'Report',
      name: 'report',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get changeLanguage {
    return Intl.message(
      'Change Language',
      name: 'changeLanguage',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Select a language, the application will restart`
  String get changeLangMessage {
    return Intl.message(
      'Select a language, the application will restart',
      name: 'changeLangMessage',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Welcome`
  String get welcome {
    return Intl.message(
      'Welcome',
      name: 'welcome',
      desc: '',
      args: [],
    );
  }

  /// `Ready to pick your orders?`
  String get readyToPickOrders {
    return Intl.message(
      'Ready to pick your orders?',
      name: 'readyToPickOrders',
      desc: '',
      args: [],
    );
  }

  /// `Press twice to exit`
  String get pressTwiceToExit {
    return Intl.message(
      'Press twice to exit',
      name: 'pressTwiceToExit',
      desc: '',
      args: [],
    );
  }

  /// `User name`
  String get userName {
    return Intl.message(
      'User name',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get details {
    return Intl.message(
      'Details',
      name: 'details',
      desc: '',
      args: [],
    );
  }

  /// `Today's orders`
  String get todayOrders {
    return Intl.message(
      'Today\'s orders',
      name: 'todayOrders',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get delivered {
    return Intl.message(
      'Delivered',
      name: 'delivered',
      desc: '',
      args: [],
    );
  }

  /// `Assigned`
  String get assigned {
    return Intl.message(
      'Assigned',
      name: 'assigned',
      desc: '',
      args: [],
    );
  }

  /// `Start delivery`
  String get startDelivery {
    return Intl.message(
      'Start delivery',
      name: 'startDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Mark as delivered`
  String get markAsDelivered {
    return Intl.message(
      'Mark as delivered',
      name: 'markAsDelivered',
      desc: '',
      args: [],
    );
  }

  /// `Orders addresses`
  String get ordersAddresses {
    return Intl.message(
      'Orders addresses',
      name: 'ordersAddresses',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subTotal {
    return Intl.message(
      'Subtotal',
      name: 'subTotal',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Costs`
  String get deliveryCosts {
    return Intl.message(
      'Delivery Costs',
      name: 'deliveryCosts',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `Amount: {quantity}`
  String amount(Object quantity) {
    return Intl.message(
      'Amount: $quantity',
      name: 'amount',
      desc: '',
      args: [quantity],
    );
  }

  /// `Ordered products`
  String get orderedProducts {
    return Intl.message(
      'Ordered products',
      name: 'orderedProducts',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for delivering`
  String get thankYouForDelivering {
    return Intl.message(
      'Thank you for delivering',
      name: 'thankYouForDelivering',
      desc: '',
      args: [],
    );
  }

  /// `Back to orders`
  String get backToOrders {
    return Intl.message(
      'Back to orders',
      name: 'backToOrders',
      desc: '',
      args: [],
    );
  }

  /// `order {quantity} has been successfully delivered`
  String orderXHasBeenDelivered(Object quantity) {
    return Intl.message(
      'order $quantity has been successfully delivered',
      name: 'orderXHasBeenDelivered',
      desc: '',
      args: [quantity],
    );
  }

  /// `Please enter a valid phone number ex: 09xx-xxx-xxx`
  String get invalidPhoneNumber {
    return Intl.message(
      'Please enter a valid phone number ex: 09xx-xxx-xxx',
      name: 'invalidPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid Username`
  String get invalidUsername {
    return Intl.message(
      'Please enter a valid Username',
      name: 'invalidUsername',
      desc: '',
      args: [],
    );
  }

  /// `Must be at least 5 characters long`
  String get invalidPassword {
    return Intl.message(
      'Must be at least 5 characters long',
      name: 'invalidPassword',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection`
  String get connectionErrorMessage {
    return Intl.message(
      'Please check your internet connection',
      name: 'connectionErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `OOPS !`
  String get oopsErrorMessage {
    return Intl.message(
      'OOPS !',
      name: 'oopsErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Retry`
  String get retry {
    return Intl.message(
      'Retry',
      name: 'retry',
      desc: '',
      args: [],
    );
  }

  /// `Close App`
  String get closeApp {
    return Intl.message(
      'Close App',
      name: 'closeApp',
      desc: '',
      args: [],
    );
  }

  /// `An error has occurred. Please try again later`
  String get generalErrorMessage {
    return Intl.message(
      'An error has occurred. Please try again later',
      name: 'generalErrorMessage',
      desc: '',
      args: [],
    );
  }

  /// `Unauthorized`
  String get unauthorized {
    return Intl.message(
      'Unauthorized',
      name: 'unauthorized',
      desc: '',
      args: [],
    );
  }

  /// `Bad Request`
  String get badRequest {
    return Intl.message(
      'Bad Request',
      name: 'badRequest',
      desc: '',
      args: [],
    );
  }

  /// `Forbidden`
  String get forbidden {
    return Intl.message(
      'Forbidden',
      name: 'forbidden',
      desc: '',
      args: [],
    );
  }

  /// `{url} not Found`
  String notFound(Object url) {
    return Intl.message(
      '$url not Found',
      name: 'notFound',
      desc: '',
      args: [url],
    );
  }

  /// `Conflict Error`
  String get conflictError {
    return Intl.message(
      'Conflict Error',
      name: 'conflictError',
      desc: '',
      args: [],
    );
  }

  /// `Connection time out`
  String get connectionTimeOut {
    return Intl.message(
      'Connection time out',
      name: 'connectionTimeOut',
      desc: '',
      args: [],
    );
  }

  /// `Unknown error occurred, please try again`
  String get unknownError {
    return Intl.message(
      'Unknown error occurred, please try again',
      name: 'unknownError',
      desc: '',
      args: [],
    );
  }

  /// `Internal server error`
  String get internalServerError {
    return Intl.message(
      'Internal server error',
      name: 'internalServerError',
      desc: '',
      args: [],
    );
  }

  /// `Update Required`
  String get updateTitle {
    return Intl.message(
      'Update Required',
      name: 'updateTitle',
      desc: '',
      args: [],
    );
  }

  /// `For the best experience, update to the latest version to get new features and improvements.`
  String get updateMessage {
    return Intl.message(
      'For the best experience, update to the latest version to get new features and improvements.',
      name: 'updateMessage',
      desc: '',
      args: [],
    );
  }

  /// `Empty`
  String get empty {
    return Intl.message(
      'Empty',
      name: 'empty',
      desc: '',
      args: [],
    );
  }

  /// `Close`
  String get close {
    return Intl.message(
      'Close',
      name: 'close',
      desc: '',
      args: [],
    );
  }

  /// `Assigned at {formattedTime}`
  String assignedAtX(Object formattedTime) {
    return Intl.message(
      'Assigned at $formattedTime',
      name: 'assignedAtX',
      desc: '',
      args: [formattedTime],
    );
  }

  /// `The page has no content ..`
  String get pageEmpty {
    return Intl.message(
      'The page has no content ..',
      name: 'pageEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Delivery done`
  String get deliveryDone {
    return Intl.message(
      'Delivery done',
      name: 'deliveryDone',
      desc: '',
      args: [],
    );
  }

  /// `No orders until now, warm up and wait ...`
  String get noOrdersAssigned {
    return Intl.message(
      'No orders until now, warm up and wait ...',
      name: 'noOrdersAssigned',
      desc: '',
      args: [],
    );
  }

  /// `Order`
  String get order {
    return Intl.message(
      'Order',
      name: 'order',
      desc: '',
      args: [],
    );
  }

  /// `On the way`
  String get onTheWay {
    return Intl.message(
      'On the way',
      name: 'onTheWay',
      desc: '',
      args: [],
    );
  }

  /// `Assigned at`
  String get assignedAt {
    return Intl.message(
      'Assigned at',
      name: 'assignedAt',
      desc: '',
      args: [],
    );
  }

  /// `Delivery time`
  String get deliveryTime {
    return Intl.message(
      'Delivery time',
      name: 'deliveryTime',
      desc: '',
      args: [],
    );
  }

  /// `Archive`
  String get archive {
    return Intl.message(
      'Archive',
      name: 'archive',
      desc: '',
      args: [],
    );
  }

  /// `Share`
  String get share {
    return Intl.message(
      'Share',
      name: 'share',
      desc: '',
      args: [],
    );
  }

  /// `Please wait...`
  String get pleaseWait {
    return Intl.message(
      'Please wait...',
      name: 'pleaseWait',
      desc: '',
      args: [],
    );
  }

  /// `enter your message`
  String get enterMessage {
    return Intl.message(
      'enter your message',
      name: 'enterMessage',
      desc: '',
      args: [],
    );
  }

  /// `No messages here yet ...`
  String get noMessages {
    return Intl.message(
      'No messages here yet ...',
      name: 'noMessages',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `No deliveries done yet for today`
  String get emptyDelivered {
    return Intl.message(
      'No deliveries done yet for today',
      name: 'emptyDelivered',
      desc: '',
      args: [],
    );
  }

  /// `Apply`
  String get apply {
    return Intl.message(
      'Apply',
      name: 'apply',
      desc: '',
      args: [],
    );
  }

  /// `Select Currency`
  String get selectCurrency {
    return Intl.message(
      'Select Currency',
      name: 'selectCurrency',
      desc: '',
      args: [],
    );
  }

  /// `Change Currency`
  String get changeCurrency {
    return Intl.message(
      'Change Currency',
      name: 'changeCurrency',
      desc: '',
      args: [],
    );
  }

  /// `Couldn't find path to the order destination`
  String get mapPathError {
    return Intl.message(
      'Couldn\'t find path to the order destination',
      name: 'mapPathError',
      desc: '',
      args: [],
    );
  }

  /// `Could not fetch distance`
  String get errorFetchDistance {
    return Intl.message(
      'Could not fetch distance',
      name: 'errorFetchDistance',
      desc: '',
      args: [],
    );
  }

  /// `Please enable your location, it is required to complete the process`
  String get errorLocation {
    return Intl.message(
      'Please enable your location, it is required to complete the process',
      name: 'errorLocation',
      desc: '',
      args: [],
    );
  }

  /// `You have to wait {seconds} seconds to change your state`
  String changeStatuesRequest(Object seconds) {
    return Intl.message(
      'You have to wait $seconds seconds to change your state',
      name: 'changeStatuesRequest',
      desc: '',
      args: [seconds],
    );
  }

  /// `An error happened while connecting to server, please try again later`
  String get responseError {
    return Intl.message(
      'An error happened while connecting to server, please try again later',
      name: 'responseError',
      desc: '',
      args: [],
    );
  }

  /// `already have an account ? `
  String get alreadyHaveAnAccount {
    return Intl.message(
      'already have an account ? ',
      name: 'alreadyHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create new account with easy and simple steps`
  String get createWithEasyAndSimpleSteps {
    return Intl.message(
      'Create new account with easy and simple steps',
      name: 'createWithEasyAndSimpleSteps',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Confirm password`
  String get confirmPassword {
    return Intl.message(
      'Confirm password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Forget password ? `
  String get forgetPassword {
    return Intl.message(
      'Forget password ? ',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message(
      'OR',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Facebook`
  String get continueWithFacebook {
    return Intl.message(
      'Continue with Facebook',
      name: 'continueWithFacebook',
      desc: '',
      args: [],
    );
  }

  /// `Continue with Google`
  String get continueWithGoogle {
    return Intl.message(
      'Continue with Google',
      name: 'continueWithGoogle',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account ? `
  String get doNotHaveAnAccount {
    return Intl.message(
      'Don\'t have an account ? ',
      name: 'doNotHaveAnAccount',
      desc: '',
      args: [],
    );
  }

  /// `Register now`
  String get registerNow {
    return Intl.message(
      'Register now',
      name: 'registerNow',
      desc: '',
      args: [],
    );
  }

  /// `Enter your account data to login`
  String get enterYourAccountDataToLogin {
    return Intl.message(
      'Enter your account data to login',
      name: 'enterYourAccountDataToLogin',
      desc: '',
      args: [],
    );
  }

  /// `Password Recovery`
  String get passwordRecovery {
    return Intl.message(
      'Password Recovery',
      name: 'passwordRecovery',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email to retrieve the password`
  String get enterYourEmailToRetrieveThePassword {
    return Intl.message(
      'Enter your email to retrieve the password',
      name: 'enterYourEmailToRetrieveThePassword',
      desc: '',
      args: [],
    );
  }

  /// `Email activation`
  String get emailActivation {
    return Intl.message(
      'Email activation',
      name: 'emailActivation',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code sent to your email to activate the account `
  String get enterTheCodeSentToYourEmailToActivateTheAccount {
    return Intl.message(
      'Enter the code sent to your email to activate the account ',
      name: 'enterTheCodeSentToYourEmailToActivateTheAccount',
      desc: '',
      args: [],
    );
  }

  /// `resend`
  String get reSend {
    return Intl.message(
      'resend',
      name: 'reSend',
      desc: '',
      args: [],
    );
  }

  /// ` search by your favorite product`
  String get searchByYourFavoriteProduct {
    return Intl.message(
      ' search by your favorite product',
      name: 'searchByYourFavoriteProduct',
      desc: '',
      args: [],
    );
  }

  /// `view all `
  String get viewAll {
    return Intl.message(
      'view all ',
      name: 'viewAll',
      desc: '',
      args: [],
    );
  }

  /// `latest products`
  String get latestProducts {
    return Intl.message(
      'latest products',
      name: 'latestProducts',
      desc: '',
      args: [],
    );
  }

  /// `latest winners`
  String get latestWinners {
    return Intl.message(
      'latest winners',
      name: 'latestWinners',
      desc: '',
      args: [],
    );
  }

  /// `winner`
  String get winner {
    return Intl.message(
      'winner',
      name: 'winner',
      desc: '',
      args: [],
    );
  }

  /// `coupon`
  String get coupon {
    return Intl.message(
      'coupon',
      name: 'coupon',
      desc: '',
      args: [],
    );
  }

  /// `coupons`
  String get coupons {
    return Intl.message(
      'coupons',
      name: 'coupons',
      desc: '',
      args: [],
    );
  }

  /// `phone number`
  String get phoneNumber {
    return Intl.message(
      'phone number',
      name: 'phoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `change password`
  String get changePassword {
    return Intl.message(
      'change password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `chanege email`
  String get changeEmail {
    return Intl.message(
      'chanege email',
      name: 'changeEmail',
      desc: '',
      args: [],
    );
  }

  /// `update`
  String get update {
    return Intl.message(
      'update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `this input mustn't be empty`
  String get thisInputMustntBeEmpty {
    return Intl.message(
      'this input mustn\'t be empty',
      name: 'thisInputMustntBeEmpty',
      desc: '',
      args: [],
    );
  }

  /// `number`
  String get number {
    return Intl.message(
      'number',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a valid email`
  String get invalidEmail {
    return Intl.message(
      'Please enter a valid email',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Two passwords don't match`
  String get invalidConfirmPass {
    return Intl.message(
      'Two passwords don\'t match',
      name: 'invalidConfirmPass',
      desc: '',
      args: [],
    );
  }

  /// `About us`
  String get aboutUs {
    return Intl.message(
      'About us',
      name: 'aboutUs',
      desc: '',
      args: [],
    );
  }

  /// `Contact us`
  String get contactUs {
    return Intl.message(
      'Contact us',
      name: 'contactUs',
      desc: '',
      args: [],
    );
  }

  /// `Uploaded`
  String get uploaded {
    return Intl.message(
      'Uploaded',
      name: 'uploaded',
      desc: '',
      args: [],
    );
  }

  /// `Login required`
  String get loginErrorRequired {
    return Intl.message(
      'Login required',
      name: 'loginErrorRequired',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Translation> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Translation> load(Locale locale) => Translation.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

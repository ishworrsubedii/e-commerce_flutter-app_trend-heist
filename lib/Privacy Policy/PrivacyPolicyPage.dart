// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import "package:flutter/material.dart";
import 'package:th/Homepage/Homepage.dart';
import 'package:th/Profile/Profile.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key, });

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 6, 13, 217),
        child: Container(
          height: 30,
          width: 30,

          // color: Color.fromARGB(255, 255, 255, 255),
          child: Image.asset(
            'assets/images/shopping-bag.png',
          ),
        ),
        onPressed: () {
          // Add item event handler
        },
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                minWidth: 10,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Homepage()));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      height: 20,
                      width: 20,
                      child: Image.asset('assets/images/home_1.png'),
                    ),
                    // const Icon(Icons.dashboard,
                    //     color: Color.fromARGB(255, 6, 13, 217) // : Colors.grey,
                    //     ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 10,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      child: Image.asset('assets/images/wishlist_1.png'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 0,
              ),
              MaterialButton(
                minWidth: 10,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        'assets/images/privacy_1.png',
                        color: Color.fromARGB(255, 6, 13, 217),
                      ),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ProfilePage( )));
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      child: Image.asset(
                        'assets/images/user_1.png',
                        // color: Color.fromARGB(255, 6, 13, 217),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // return MaterialApp(

      appBar: AppBar(
        actions: <Widget>[
          // Container(
          //   height: 20,
          //   width: 120,
          //   padding: EdgeInsets.only(right: 40),

          //   // alignment: Alignment.,
          //   child: Image.asset('assets/images/Logoblue.png'),
          // ),
          //IconButton
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Homepage()));
            },
            child: Container(
              height: 20,
              width: 15,
              alignment: Alignment.center,

              // padding: const EdgeInsets.only(right: 60),
              child: Image.asset('assets/images/homepage.png'),
            ),
          ),
          SizedBox(
            width: 100,
          ),
          InkWell(
              onTap: () {},
              child: Container(
                height: 10,
                width: 140,
                alignment: Alignment.center,
                child: Image.asset('assets/images/Logoblue.png'),
              )),
          SizedBox(
            width: 80,
          ),
          // SizedBox(
          //   width: 300,
          // ),

          IconButton(
            // alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(right: 0),

            icon: const Icon(Icons.search),
            tooltip: 'Search Icon',
            color: Colors.black,
            onPressed: () {},
          ), //IconButton
        ],
        titleSpacing: 00.0,
        centerTitle: true,
        toolbarHeight: 60.2,
        toolbarOpacity: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(25),
              bottomLeft: Radius.circular(25)),
        ),
        elevation: 0.00,
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
      ),

      //AppBar

      body: const Privacypolicypage(),
      // ignore: prefer_const_constructors
      backgroundColor: Color.fromARGB(255, 243, 243, 255),
    );
    // );
  }
}

class Privacypolicypage extends StatefulWidget {
  const Privacypolicypage({super.key});

  @override
  State<Privacypolicypage> createState() => _PrivacypolicypageState();
}

class _PrivacypolicypageState extends State<Privacypolicypage> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Column(
        children: [
          Container(
            height: 15,
          ),
          Container(
            child: Text('Privacy Policy',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    fontSize: 18)),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: 350,
            child: Text(
              '''This Privacy Policy explains how Trend Heist(“trendheist” or “we” or “us”) collects, uses, discloses and otherwise manages personal information when you use the website https://trendheist.com.np/ (the “Website”) to shop with us or otherwise share your sensitive personal information and data with us. We value our customers’ privacy and appreciate your confidence that we will respect your privacy in a careful and sensible manner. 

By visiting the Website and/or using our products and services, you are agreeing to the terms of this Privacy Policy. Please read this policy carefully. Our business is constantly evolving and our Privacy Policy, the Website and our Terms & Conditions will also evolve in conformity with the latest regulations. We may email periodic reminders of our notices and terms of business, unless you have instructed us not to, but you should check our website frequently to see recent changes. Unless stated otherwise, our current Privacy Policy applies to all information that we have about you and your account including sensitive personal information and data. Your visit to the Website and any dispute over privacy is subject to this Privacy Policy and the Website’s Terms & Conditions. Personal information as contemplated under our Policy may include sensitive personal data or information as identified under the prevailing applicable laws and shall include the following:-  

       Password. 
       Addresses, Phone numbers, and emails.
       Any detail relating to the above clauses as provided to us for providing service.
       Any of the information received under the above clauses by us for processing, stored, or processed by us; and
       Any such additional information that you may voluntarily disclose to us for the purposes of improving, enhancing and customize your shopping experience.   
        Please remember we do not store any payment information on our servers. All the payments are processed using E-sewa. Khalti IMEPay.
 

CONTROLLERS OF PERSONAL INFORMATION 

Any personal information provided to or gathered by the Website under this Privacy Policy/terms of use will be stored and controlled by Trend Heist.

WHAT PERSONAL INFORMATION ABOUT THE CUSTOMER DOES TREND HEIST GATHER AND FOR WHAT PURPOSE? 

All personal information that we collect about you will be recorded, used, and protected by us in accordance with applicable data protection legislations and this privacy policy. We may supplement the information you provide with other information that we obtain from our dealings with you or from other organizations, such as our sponsors and partners. In broad terms, we use your data for the following purposes:

       To administer and provide products and services you purchase, request or have expressed an interest in.
       Processing of payments when you place an order on our Website. 
       To enable us to administer any competitions or other offers/promotions which you enter into.
       For fraud screening and prevention purposes.
       For crime prevention and detection purposes.
       For marketing purposes of our products.
       For record-keeping purposes. 
       To carry out market research so that we can improve the products and services we offer. 
       To create an individual profile for you so that we can understand and respect your preferences and offer products of your interest.
Feedback provided by you as part of customer survey either in writing or on call including voice recordings for quality and training purposes.

For data anonymization

When we provide you with products or services, we may collect and store any personal information that you provide to us. We may, for example, keep a secure record of your name, address, date of birth (if necessary), delivery address, email address, telephone number and such other personal information including sensitive personal data that you provide.

CONSENT TO CONTACT OVER SMS/CALL: –

If you have provided Trend heist with your phone number, you acknowledge and accept that Trend heist may call you and/or send SMS to inform you about your order and/or any offers. By providing the contact number, you expressly consent to Trend heist contacting you for the said purposes even if your number is registered with the National Do Not Call Registry / registered for DND. 

INFORMATION THAT IS COLLECTED:- 

Here are the types of information Trend heist gathers:  

Information You Give Us: 

The Website receives and stores any information you enter on our website or give us in any other way including personal information. You can choose not to provide certain information but then you might not be able to take advantage of many of our features and the shopping experience may not be optimized for you. Trend heist uses the information that you provide for purposes such as responding to your requests, customizing future shopping for you, improving our platform, and communicating with you.

Automatic Information: 

Trend heist receives and stores certain types of information whenever you interact with us. For example, like many websites, we use “cookies” and we obtain certain types of information when your Web browser accesses the Website or advertisements and other content served by or on behalf of the Website on other Web sites. Trend heist may also receive/store information about your location and your mobile device, including a unique identifier for your device. We may use this information for internal analysis and to provide you with location-based services, such as advertising, search results, and other personalized content.

Email Communications: 

To help Trend heist make emails more useful and interesting, we often receive a confirmation when you open email from Trend heist if your computer supports such capabilities. In case you do not want to receive the emails, you may unsubscribe from the mailing list anytime. 

Information from Other Sources: 

By using or continuing to use the site you agree to Trend heist’s use of your information (including sensitive personal information) in accordance with this Privacy Policy, as may be amended from time to time by the Website in its discretion. You also agree and consent to collecting, storing, processing, transferring and sharing information (including sensitive personal information) related to you with third parties or service providers for the purposes as set out in this Privacy Policy. We may be required to share the aforesaid information with government authorities and agencies to verify identity or for prevention, detection, or investigation, including cyber incidents, prosecution, and punishment of offences. You agree and consent for the Website to disclose your information, if so required, under applicable laws.

Additionally, Trend heist collects personal customer information which is shared with Facebook in an effort to serve more relevant ads and improve our customer experience.

COOKIES

Cookies are alphanumeric identifiers that we transfer to your computer’s hard drive through your Web browser to enable our systems to recognize your browser and provide features such as Recommended for You, Personalized Advertisements, etc. on other websites and storage of items in your Shopping Cart between visits. 

We also use cookies to allow you to enter your password less frequently during a session.

The Help menu on the menu bar of most browsers will tell you how to prevent your browser from accepting new cookies, how to have the browser notify you when you receive a new cookie and how to disable cookies altogether. Additionally, you can disable or delete similar data used by browser add-ons, such as Flash cookies, by changing the add-on’s settings or visiting its manufacturer’s website. However, because cookies allow you to take advantage of some of the Website’s essential features, we recommend that you leave them turned on. For instance, if you block or otherwise reject our cookies, you will not be able to add items to your Shopping Cart, proceed to Checkout, or use any Website products and services that require you to Sign in. We do not control the use of cookies by third parties. We use cookies from third-party partners for marketing and analytical purposes.

If you do leave cookies turned on, be sure to sign off when you finish using a shared computer.

 

HOW DOES TREND HEISTUSE THE PERSONAL INFORMATION IT COLLECTS ABOUT CUSTOMERS?

Trend heist uses information about our customers for the specific purpose for which it was collected. For example, we may use information:

        To create and manage your online account.
       To facilitate your purchase, return or exchange either online or at one of our retail stores.
     To facilitate your participation in contests or promotions.
     To provide you with information about products or services that you request from us or which we feel may be of interest to you, by email, text message, or postal mail.
        To operate, evaluate and improve our business (including developing new products and services, analyzing, and enhancing our products, services, and Site).
   To understand our customers and to perform data analyses and other processing (including market and consumer research, trend analysis, and anonymization).
        To respond to your comments or questions.  As otherwise required or permitted by law.
Trend heist does not collect or share any information except for the purpose consented to or which is incidental to or connected with such purpose as disclosed in this privacy policy for which consent is taken from the customers.  In addition, if you supply us with your postal address online and request to receive postal mail from Trend heist, we may send you periodic mailings with information regarding a new collection, new products, new store locations, or upcoming promotional offers or events. Sometimes we also send offers to selected groups of Trend heist customers on behalf of other businesses/affiliates. When we do this, we do not give that business your name and address. If you do not wish to receive such mailings and email updates please click unsubscribe given at the bottom of our emails.

HOW DOES TREND HEISTDISCLOSE THE PERSONAL INFORMATION IT COLLECTS ABOUT CUSTOMERS?

Information about our customers is an important part of our business. We are not in the business of selling, renting, sharing or otherwise disclosing it to any third party except as set out in this privacy policy. Our Platform may provide external links to other websites or applications that may collect personal information about you. We are not responsible for the privacy practices or the content of those linked websites.

We share information on a limited basis with our parent company and affiliates who provide services on our behalf. We also share it on a limited basis with service providers we use from time to time to provide services on our behalf, such as sending postal mail and email, removing repetitive information from customer lists, analyzing data, providing marketing assistance, and providing customer service.

Your information may be maintained and processed by our parent company or other jurisdictions. While in these jurisdictions, your information may be accessed by the courts, law enforcement and national security authorities in accordance with applicable laws. 

We may disclose personal information when we believe it is appropriate to enforce or apply our Website’s Terms & Conditions, and/or other agreements; protect the rights, property, or safety of the Website, our users, or others; or as otherwise required or permitted by applicable law. This includes exchanging information with other companies and organizations for fraud protection and credit risk reduction. However, this does not include selling, renting, sharing, or otherwise disclosing personal information from customers for commercial purposes in violation of the commitments outlined this Privacy Policy.

In case Trend heist, or substantially all of its assets are acquired or proposed to be acquired by one or more third parties as a result of a merger, sale, consolidation or liquidation, customer information may be disclosed in connection therewith.

HOW SECURE IS THE INFORMATION ABOUT YOU?

We work to protect the security of your information during transmission by using Secure Sockets Layer (SSL) software, which encrypts information you input in addition to maintaining security of your information as per the International Standard IS/ISO/IEC 27001 on “Information Technology Security Techniques Information Security Management System Requirements”.  We maintain physical, electronic and procedural safeguards connected with collection, storage and disclosure of personal information (including sensitive personal information). Our security procedures mean that we may occasionally request proof of identity before we disclose personal information to you.  It is important for you to protect against unauthorized access to your password and to your computer. Be sure to sign off when you finish using a shared computer.

CHILDREN INFORMATION 

We do not knowingly solicit or collect personal information from children under the age of 18 and use of our Platform is available only to persons who can form a legally binding contract under the Indian Contract Act, 1872. If you are under the age of 18 years then you must use the Platform, or services under the supervision of your parent, legal guardian, or any responsible adult.

 

LINKS TO THIRD-PARTY WEBSITES

Certain activities through the Website, such as special promotions, may be linked with those from other unrelated third-party companies that offer you the option to share your personal information with a third party. We will not share your personal information with those third-party companies; only you can if you make that choice.

Links provided on the Website to third party websites are provided as a convenience to you, and we do not control those sites or their privacy practices, which may differ from ours. We do not endorse or make any representations about any third-party sites that may be accessible through the sites. We encourage you to review the privacy policy of any company before submitting your personal information. The personal data you choose to give to unrelated third parties is covered by

their privacy policies, not this Privacy Policy. We also may use the information in other ways for which we provide specific notice at the time of collection.

NOTICES OF REVISION

Unless stated otherwise, our current Privacy Policy applies to all information we have about you and your account. We stand behind the promises we make and will never materially change our policies and practices to make them less protective of customer information collected in the past without the consent of affected customers.  If you have any concerns about privacy or grievances at the Website, please contact us with a thorough description and we will try to resolve the issue for you.

RIGHT TO BE FORGOTTEN

Trend heist has the utmost regard for your privacy and in case you want to exercise ‘right to be forgotten’, please contact us at support@trendheist.com

CONTACT US 

If you have any questions regarding our Privacy Policy, please contact us at support@trendheist.com or by mail at the following address:

Jorpati, Gokarneshwor-08, Kathmandu Nepal.''',
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      )
    ]);
  }
}

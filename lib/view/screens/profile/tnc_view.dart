import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shipload_app/utils/colors.dart';

class TermsAndConditionsView extends StatefulWidget {
  const TermsAndConditionsView({super.key});

  @override
  State<TermsAndConditionsView> createState() => _TermsAndConditionsViewState();
}

class _TermsAndConditionsViewState extends State<TermsAndConditionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 85,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kWhite,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        backgroundColor: primaryDarkColor,
        automaticallyImplyLeading: false,
        title: const Text(
          "Terms & Conditions",
          style: TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: primaryLightColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 20),
              Text(
                "Terms & Condition",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "Effective Date: 5/5/2023",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "1. Acceptance of Terms and Conditions",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Welcome to Ship, a brokerless load-board platform for the trucking industry. These Terms and Conditions govern your use of our mobile application and services. By accessing or using Ship, you agree to abide by these terms. If you do not agree with these terms, please refrain from using our services.",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "2. Definitions",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Ship: Refers to the mobile application and services provided by Ship, a start-up focused on the trucking industry.\nUser: Anyone accessing or using Ship's mobile application and services.",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "3. Use of Our Services",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "3.1. Eligibility",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "To use Ship, you must be at least 18 years old and capable of forming a binding contract. By accessing or using Ship, you represent and warrant that you meet these requirements.",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "3.2. Account Creation",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "You may be required to create an account to use certain features of Ship. You are responsible for maintaining the confidentiality of your account information and are liable for all activities associated with your account.",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "3.3. User Content",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "When using Ship, you agree not to:\n\nPost false, misleading, or fraudulent information.\nEngage in any illegal or unethical activities.\nInfringe upon the intellectual property rights of others.\nUpload, share, or transmit harmful or malicious code.\nViolate any applicable laws or regulations.",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "4. Content and Intellectual Property",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "4.1. Ownership",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "All content and materials provided on Ship, including text, images, logos, trademarks, and software, are the property of Ship and are protected by intellectual property laws.",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "4.2. License",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Subject to compliance with these Terms and Conditions, Ship grants you a limited, non-exclusive, non-transferable, revocable license to use our services for personal and non-commercial purposes.",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "5. Privacy",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Your use of Ship is governed by our Privacy Policy, which outlines how we collect, use, and protect your personal information. By using Ship, you consent to the terms of our Privacy Policy.",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "6. Termination",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "We reserve the right to terminate or suspend your access to Ship at our discretion, with or without notice, for any reason, including violation of these Terms and Conditions.",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "7. Disclaimer of Warranties",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Ship is provided "as is" and "as available" without any warranties, express or implied. We make no representations or warranties regarding the accuracy, reliability, or suitability of our services for any purpose.',
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "8. Limitation of Liability",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "In no event shall Ship, its officers, employees, or affiliates be liable for any indirect, incidental, special, consequential, or punitive damages, or any loss of profits or revenues, arising out of or related to your use of Ship.",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "9. Governing Law and Dispute Resolution",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "These Terms and Conditions are governed by and construed in accordance with the laws of the US. Any disputes arising from or related to these terms shall be resolved through arbitration in accordance with the rules of the Country, with the arbitration taking place in the US. The language of arbitration shall be English.",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "10. Changes to Terms and Conditions",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "We may update these Terms and Conditions to reflect changes in our services or legal requirements. Updates will be posted on Ship, and your continued use of our services after any changes will constitute your acceptance of the updated terms.",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "11. Contact Us",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "If you have any questions, concerns, or requests regarding these Terms and Conditions, please contact us at hello@shipload.app",
                style: TextStyle(
                  color: kBlack,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}

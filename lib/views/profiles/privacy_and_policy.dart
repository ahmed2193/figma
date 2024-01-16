import 'package:figma/widgets/texts.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivPolic extends StatelessWidget {
  const PrivPolic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const TextLato(
              "Privacy & Policy",
              fontWeight: FontWeight.w900,
              color: Colors.black,
              fontSize: 18,
            ),
            expandedHeight: MediaQuery.of(context).size.width * 0.2,
            pinned: true,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios,
                  color: Color(0xff109D10), size: 30),
              onPressed: () {
                context.pop();
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: Colors.white,
              width: double.infinity,
          //    height: MediaQuery.of(context).size.width * 12,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "How we use your information",
                        style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.bodyLarge,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "We use the information we collect in various ways, including to:",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 14),
                    ),
                    const SizedBox(height: 7),
                    Text(
                      "   - Provide, operate, and maintain our website/app.",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 14),
                    ),
                    Text(
                      "- Improve, personalize, and expand our website/ app. Understand and analyze how you use our website/ app. ",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Text(
                      "- Develop new products, services, features, and functionality. ",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Text(
                      "- Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website/app, and for marketing and promotional purposes. ",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Text(
                      "- Send you emails. ",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Text(
                      "- Find and prevent fraud",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Log Files",
                        style: GoogleFonts.lato(
                            textStyle: Theme.of(context).textTheme.bodyLarge,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 27),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Planty Homes follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users' movement on the website, and gathering demographic information.",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "Cookies and Web Beacons",
                          style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.bodyLarge,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 27),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Like any other website, Planty Homes uses cookies. These cookies are used to store information including visitors' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users' experience by customizing our web page content based on visitors' browser type and/or other information.",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "Advertising Partners Privacy Policies",
                          style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.bodyLarge,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 27),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      "You may consult this list to find the Privacy Policy for each of the advertising partners of Planty Homes. Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on Planty Homes, which are sent directly to users' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit. Note that Planty Homes has no access to or control over these cookies that are used by third-party advertisers.",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "Third Party Privacy Policies",
                          style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.bodyLarge,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 27),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Planty Homes's Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies ofthese third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options. You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers' respective websites.",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "CCPA Privacy Rights (Do Not Sell My Personal Information)",
                          style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.bodyLarge,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 27),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      "- Request that a business that collects a consumer's personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Text(
                      "- Request that a business delete any personal data about the consumer that a business has collected.  ",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Text(
                      "- Request that a business that sells a consumer's personal data, not sell the consumer's personal data.  ",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Text(
                      "- Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website/app, and for marketing and promotional purposes. ",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      "If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "GDPR Data Protection Rights",
                          style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.bodyLarge,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 27),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      "- The right to access: You have the right to request copies of your personal data. We may charge you a small fee for this service. ",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Text(
                      "- The right to rectification: You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.  ",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Text(
                      "- The right to erasure: You have the right to request that we erase your personal data, under certain conditions. ",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Text(
                      "- The right to restrict processing: You have the right to request that we restrict the processing of your personal data, under certain conditions. ",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Text(
                      "- The right to object to processing: You have the right to object to our processing of your personal data, under certain conditions. ",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Text(
                      "- The right to data portability: You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions. ",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 9,
                    ),
                    Text(
                      "If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "Children's Information",
                          style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.bodyLarge,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 27),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      "Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity. Planty Homes does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "Changes to This Privacy Policy",
                          style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.bodyLarge,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 27),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      "We may update our Privacy Policy from time to time. Thus, we advise you to review this page periodically for any changes. We will notify you of any changes by posting the new Privacy Policy on this page. These changes are effective immediately, after they are posted on this page. Our Privacy Policy was created with the help of the Privacy Policy Generator.",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Text(
                          "Contact Us",
                          style: GoogleFonts.lato(
                              textStyle: Theme.of(context).textTheme.bodyLarge,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 27),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    Text(
                      "If you have any questions or suggestions about our Privacy Policy, do not hesitate to contact us.",
                      style: GoogleFonts.lato(
                          textStyle: Theme.of(context).textTheme.bodyLarge,
                          color: Colors.black,
                          fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'dart:convert';
import 'package:get/get.dart';
import 'package:khaledsawan/utils/AppConstants.dart';
import 'package:http/http.dart' as http;
import '../service/model/profile_data_model.dart';
import 'package:flutter/services.dart' show rootBundle;

class BaseRepo extends GetxController {
  late Response response;
  bool isLoading = false;
  late ProfileData profileData;
  BaseRepo() {
    fetchData();
  }

  var fileasd = '''
{
    "title": "Hey I'm Khaled",
    "supTitle": "Full Stack Developer | Flutter Developer",
    "thirdTitle": "third title",
    "body": "I am a skilled Full Stack Developer with a passion for creating dynamic and user-friendly applications. My expertise includes Mobile development using Flutter and Android native Java, and back-end development with PHP framework Laravel and Firebase. I excel at translating business requirements into technical solutions and have a strong background in design, collaboration, and agile development. My proficiency in various programming languages and the ability to deploy applications to production environments make me a valuable asset to any team.",
    "target": "target",
    "skills": "• Backend Developer. ,• Android Developer. ,• Fultter. ,• Knowledge in Software Engineering and Project Managemnt (SDLC). ,• Agile Methodologies.,• Version Control & CI/CD.,• Dart - Java - Kotlin - PHP - JS - HTML - CSS.",
    "softSkills": "COMMUNICATIONS _ OPEN MINDEDNESS _ PROBLEM SOLVING _ CRITICAL THINKING _ ACCOUNTABILITY _ ADAPTABILITY",
    "activies": "Travel _ Learn&Teach _ Gaming",
    "interests": "chatGpt",
    "c": "2023 c",
    "email": "khaled963sawan@gmail.com",
    "linkedin": "https://www.linkedin.com/in/khaled-sawan-66681b279/",
    "github": "https://github.com/khaledsawan",
    "telegram": "https://t.me/KHALEDSAWAN",
    "phone": "967184204",
    "images": [
      "https://i.ibb.co/BTvdDJw/Screenshot.jpg",
      "https://i.ibb.co/XtVcxf8/Screenshot.jpg",
      "https://i.ibb.co/tHbNJLf/Screenshot.jpg",
      "https://i.ibb.co/zHPqfTg/Screenshot.jpg",
      "https://i.ibb.co/NpMmVFb/Screenshot.jpg",
      "https://i.ibb.co/S737pKJ/Screenshot.jpg",
      "https://i.ibb.co/BqmRs00/Screenshot.jpg",
      "https://i.ibb.co/37JC5pX/Screenshot.jpg",
      "https://i.ibb.co/FwKPVZk/Screenshot.jpg",
      "https://i.ibb.co/MkHp0Rd/Screenshot.jpg",
      "https://i.ibb.co/3S81H4P/logoname.png",
      "https://i.ibb.co/L5dBLcT/Screenshot-2022-08-31-175545.png",
      "https://i.ibb.co/SP7nqtL/Screenshot-2022-09-14-224934.png",
      "https://i.ibb.co/rGfmRW6/Screenshot-2022-09-14-224947.png",
      "https://i.ibb.co/pRGx7F4/Screenshot-2022-09-14-224957.png",
      "https://i.ibb.co/PQqcjRz/Screenshot-20220615-152644.png",
      "https://i.ibb.co/19NStKZ/Screenshot-2022-09-01-022920.png",
      "https://i.ibb.co/2710QTY/Screenshot-2022-09-01-023034.png",
      "https://i.ibb.co/Zgn294r/Screenshot-2022-09-01-023046.png",
      "https://i.ibb.co/1dNCC6z/Screenshot-20220615-152720.png",
      "https://i.ibb.co/Ld94t1L/Screenshot-20220615-152743.png",
      "https://i.ibb.co/51685n7/Screenshot-20220615-152754.png",
      "https://i.ibb.co/hFfxCKb/Screenshot-20220615-152958.png",
      "https://i.ibb.co/6vRsCD3/Screenshot-20220615-153005.png",
      "https://i.ibb.co/G3vkB5H/Screenshot-20220615-153013.png",
      "https://i.ibb.co/6HdQspz/Screenshot-20220615-153023.png",
      "https://i.ibb.co/zZ2BGt7/Screenshot-20220615-152808.png",
      "https://i.ibb.co/B2nVsSr/Screenshot-20220615-152827.png",
      "https://i.ibb.co/gM5PWx9/Screenshot-20220615-152912.png",
      "https://i.ibb.co/wcGzRBm/Screenshot-20220615-153033.png",
      "https://i.ibb.co/p4dqmN9/photo-2022-09-14-23-57-13.jpg",
      "https://i.ibb.co/jfZ6RLg/Screenshot.jpg",
      "https://i.ibb.co/TYZGK8t/Screenshot-1661120019.png",
      "https://i.ibb.co/fGkJZNt/Screenshot.jpg",
      "https://i.ibb.co/Jsvhr5T/Screenshot-1661120026.png",
      "https://i.ibb.co/N7QwsdD/Screenshot-1661119936.png"
    ],
    "projects": [
      {
        "img": "https://media.licdn.com/dms/image/D4E03AQFPRf1dFQmFgg/profile-displayphoto-shrink_800_800/0/1681820082635?e=1703116800&v=beta&t=nYn3qsLvk0fr21maBRc-2kMVBSICgPjRrbBu8pIF9Q0",
        "name": "Focus Trading",
        "body": "Focus company provides effective and cost-efficient systems and solutions. Our goal is to become a leader in software development globally. Customer success is our priority as it determines our own success.",
        "link": "https://www.focustradingcompany.com/"
      },
      {
        "img": "https://play-lh.googleusercontent.com/ZnXkEsgMsr5a7Tip2miV3wjFWP-Nxk0eTOEkd6vBPqn6O_7UgTfoyGYJDC_Cz-ntnRQ=w240-h480-rw",
        "name": "Mashawiri",
        "body": "Mashawiri is a transportation company that provides an app for riders to request rides and for drivers to charge fares and receive payments. It operates within the sharing economy, connecting independent contractors as drivers with passengers in need of transportation services.",
        "link": "https://www.mashawiri.com/"
      },
      {
        "img": "https://play-lh.googleusercontent.com/ey2flV5KjJb1goIGv5cStSxCB_Qnj9hzo55dha1YDqXKqs2hM4K-88_cfbHdlUGHZvk=w240-h480-rw",
        "name": "Mashawiri Driver",
        "body": "Mashawiri Driver is an application designed for drivers participating in the Mashawiri transportation system. It enables drivers to accept trip requests from customers using the customer application, facilitating the process of picking up and transporting passengers.",
        "link": "https://play.google.com/store/apps/details?id=com.ma.ma_app_driver"
      },
      {
        "img": "https://play-lh.googleusercontent.com/keuFbu-KmFESDu9u4iRcq0c8AP1BnQoPCxEjmUenDJ7Dh3s_i_gn9zU50DQkPs4ixVI=w240-h480-rw",
        "name": "SellanyAd",
        "body": "next-level influencers marketing platform designed to connect people and business owners with influencers and celebrities’ application",
        "link": "https://play.google.com/store/apps/details?id=com.sellanyad.app"
      },
      {
        "img": "https://raw.githubusercontent.com/khaledsawan/myWebSite/main/mysitev1/image/electronic%20school.png",
        "name": "Online Course",
        "body": "Project Description: Online Courses Platform\\n\\nWelcome to our Online Courses platform, your gateway to a world of knowledge and skill development. Our mobile application is designed for those who are eager to enhance their expertise through a wide range of educational courses. We offer a diverse selection of educational paths and flexible subscription plans, ensuring a tailored learning experience for every user.\\n\\nKey Features:\\n\\n📚 Educational Pathways: Embark on your learning journey with curated educational paths that guide you through a structured series of courses, enabling you to master a specific subject or skill.\\n\\n🌟 Subscription Plans: Choose from our Pro, Plus, and Free plans, each offering varying levels of access to our extensive library of courses, ensuring affordability and flexibility.\\n\\n🎥 Video Courses: Dive into the world of learning with video-based courses. Explore a vast collection of instructional videos covering a wide range of topics.\\n\\n🔍 Search and Discover: Seamlessly search for specific courses or videos of interest. Our robust search functionality makes it easy to find the content you're looking for.\\n\\n📜 Create Playlists: Personalize your learning experience by creating custom playlists. Add your favorite videos to playlists for easy access and organization.\\n\\n💬 Engage and Collaborate: Interact with other learners by commenting on videos. Foster a community of knowledge-sharing where users can answer each other's questions.\\n\\n👤 Teacher Profiles: Explore the profiles of our experienced teachers. Follow your favorite instructors and receive notifications when they add new courses or videos.\\n\\n🔔 Notifications: Stay informed about course updates, new video releases, and messages from your instructors through our notification system.\\n\\n⚙️ Video Configuration: Take control of your video experience with fully configurable settings, including playback quality and subtitles.\\n\\nJoin our Online Courses platform today and embark on a journey of continuous learning and personal growth. Whether you're a professional looking to enhance your skills or a lifelong learner seeking knowledge, our platform offers a world of educational opportunities at your fingertips. Get started now and unlock the doors to unlimited learning.",
        "link": "https://raw.githubusercontent.com/khaledsawan/onLine-school/main/app-arm64-v8a-release.apk"
      },
      {
        "img": "https://raw.githubusercontent.com/khaledsawan/myWebSite/main/mysitev1/image/food.png",
        "name": "Hungry!",
        "body": "Welcome to Hungry, With our user-friendly and featur e-rich app, you can [briefly describe the main functionality or benefits of the app].\\n📦 Extensive Selection: Explore a vast array of [content or services offered by the app] right at your fingertips. We offer an extensive collection of [app's offerings] to cater to your every need.\\n🌐 Seamless Connectivity: Hungry ensures seamless connectivity, allowing you to access [features or content] from anywhere, anytime. Stay connected to the things that matter most to you.\\n📱 User-Friendly Interface: Our app boasts an intuitive and user-friendly interface, making it effortless for users of all ages to navigate and utilize its features with ease.\\n🚀 Fast and Efficient: We understand the value of your time. Hungry is optimized for speed and efficiency, ensuring quick loading times and smooth performance.\\n🛒 Convenient Shopping: Shop for [products or services] with confidence. Our app provides a convenient shopping experience, allowing you to browse, select, and purchase with just a few taps.\\n🗺️ Location-Based Services: Benefit from location-based services, making it easy to find [relevant content or services] in your vicinity. Discover nearby [locations or businesses] effortlessly.\\n🔒 Security and Privacy: We prioritize your security and privacy. Rest assured that your personal information and transactions are safeguarded with the highest level of encryption and security measures.\\n🌟 Personalized Experience: Tailor your experience with Hungry to suit your preferences. Customize [settings or features] to make the app truly yours.\\n📈 Real-time Updates: Stay informed with real-time updates on [relevant information or events]. Hungry ensures you never miss out on important news or updates.\\n📧 Support and Assistance: Our dedicated support team is available around the clock to assist you with any questions, concerns, or issues you may encounter.",
        "link": "https://github.com/khaledsawan/Hungry-"
      },
      {
        "img": "https://raw.githubusercontent.com/khaledsawan/myWebSite/main/mysitev1/image/test.jpg",
        "name": "Homii",
        "body": "Project Description: Homii - Revolutionizing Student Housing\\n\\nIn an era defined by rapid technological advancements, our daily lives are intricately intertwined with technology. With the proliferation of diverse service programs and their ever-evolving mechanisms, we find ourselves in a world of constant change and innovation. To thrive in this dynamic landscape, we must continuously develop software solutions that enhance human life, address challenges, and elevate our quality of life.\\n\\nAt the heart of our society's future lies the burden of its students. The future of our students, in turn, hinges on their comfort and the continuity of their educational journeys. With this vision in mind, we introduce our groundbreaking project, Homii.\\n\\nKey Features:\\n\\n🏠 Affordable Student Housing: Homii is dedicated to helping students secure comfortable and affordable housing to support them throughout their educational endeavors. We believe that a conducive living environment is essential for academic success.\\n🤝 Community Support: We foster a community of support by collecting donations and offering discounts on rent prices exclusively to students. Our goal is to alleviate the financial burden on students, allowing them to focus on their studies.\\n🌐 Technology-Powered Platform: The backbone of Homii is a robust backend built with PHP framework Laravel, ensuring efficient management and secure transactions. On the frontend, we leverage the power of Flutter for mobile accessibility, and HTML/CSS for the web interface.\\n📊 Admin Panel: For streamlined management and oversight, we provide an intuitive admin panel, where administrators can efficiently oversee operations and make data-driven decisions.\\nHomii is not just a project; it's a commitment to empowering the future leaders of our nation by providing them with a stable and comfortable living environment. We recognize that students are the architects of our nation's reconstruction, and their well-being is paramount.\\nJoin us on this journey of reshaping student housing and creating a brighter future. With Homii, we strive to make educational continuity and comfort accessible to every student, ensuring that their dreams and aspirations are within reach.\\nHomii - Where Student Comfort Meets Educational Excellence.",
        "link": "https://github.com/khaledsawan/Homii-"
      }
    ]
  }

''';

  fetchData() {
    final Map<String, dynamic> data = json.decode(fileasd);
    profileData = ProfileData.fromJson(data);
    print('profileData.title');
    print(profileData.title);
    update();
  }

  Future<void> getImages() async {
    var request = http.Request('GET', Uri.parse(AppConstants.profileData));
    http.StreamedResponse response = await request.send();
    if (response.statusCode == 200) {
      profileData = ProfileData.fromJson(
          jsonDecode(await response.stream.bytesToString()));
    }
    isLoading = false;
    update();
  }
}

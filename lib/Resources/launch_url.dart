import 'package:url_launcher/url_launcher.dart';

void launch_url(Uri url) async{

  await canLaunchUrl(url) ? await launchUrl(url) : throw "Can not launch url";
}

// void _launchURL(_url) async =>
//     await canLaunchUrl(_url) ? await launchUrl(_url) : throw 'Could not launch $_url';
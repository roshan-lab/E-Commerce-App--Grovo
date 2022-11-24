import 'dart:convert';

List<AdBanner>adBannerListFromJson(String val)=>List<AdBanner>.from(
    json.decode(val)['data'].map((banner)=>AdBanner.fromjson(banner)));

class AdBanner{
  final int? id;
  final String? image;

 AdBanner({
    required this.id, required this.image
});

 factory AdBanner.fromjson(Map<String, dynamic> data)=>AdBanner(
     id:data['id'],
     image:data['attributes']['image']['data']['attributes']['url']
 );

}


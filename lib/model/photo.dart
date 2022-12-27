/// id : 2295434
/// pageURL : "https://pixabay.com/photos/spring-bird-bird-tit-spring-blue-2295434/"
/// type : "photo"
/// tags : "spring bird, bird, tit"
/// previewURL : "https://cdn.pixabay.com/photo/2017/05/08/13/15/spring-bird-2295434_150.jpg"
/// previewWidth : 150
/// previewHeight : 99
/// webformatURL : "https://pixabay.com/get/ga7ce7117b33d044fa16d92e04ea00c9a3034db936d91ca6929e83bc384afab9010e57ef891db0bcaffeedb03aaf75a0bf0ae442031743e084f3651cd27efc208_640.jpg"
/// webformatWidth : 640
/// webformatHeight : 426
/// largeImageURL : "https://pixabay.com/get/g9c2c0a528fbc02b0a6911cfc74a63986dc1c0c0e8e6d92fb5d6711e24f570dd8d10537cf80534855f8b0e5cb838ec4cc8efe29475f7ed340b9fb995c132fb72a_1280.jpg"
/// imageWidth : 5363
/// imageHeight : 3575
/// imageSize : 2938651
/// views : 598042
/// downloads : 340836
/// collections : 2017
/// likes : 1957
/// comments : 244
/// user_id : 334088
/// user : "JillWellington"
/// userImageURL : "https://cdn.pixabay.com/user/2018/06/27/01-23-02-27_250x250.jpg"

class Photo {
  Photo({
      num? id, 
      String? pageURL, 
      String? type, 
      String? tags, 
      String? previewURL, 
      num? previewWidth, 
      num? previewHeight, 
      String? webformatURL, 
      num? webformatWidth, 
      num? webformatHeight, 
      String? largeImageURL, 
      num? imageWidth, 
      num? imageHeight, 
      num? imageSize, 
      num? views, 
      num? downloads, 
      num? collections, 
      num? likes, 
      num? comments, 
      num? userId, 
      String? user, 
      String? userImageURL,}){
    _id = id;
    _pageURL = pageURL;
    _type = type;
    _tags = tags;
    _previewURL = previewURL;
    _previewWidth = previewWidth;
    _previewHeight = previewHeight;
    _webformatURL = webformatURL;
    _webformatWidth = webformatWidth;
    _webformatHeight = webformatHeight;
    _largeImageURL = largeImageURL;
    _imageWidth = imageWidth;
    _imageHeight = imageHeight;
    _imageSize = imageSize;
    _views = views;
    _downloads = downloads;
    _collections = collections;
    _likes = likes;
    _comments = comments;
    _userId = userId;
    _user = user;
    _userImageURL = userImageURL;
}

  Photo.fromJson(dynamic json) {
    _id = json['id'];
    _pageURL = json['pageURL'];
    _type = json['type'];
    _tags = json['tags'];
    _previewURL = json['previewURL'];
    _previewWidth = json['previewWidth'];
    _previewHeight = json['previewHeight'];
    _webformatURL = json['webformatURL'];
    _webformatWidth = json['webformatWidth'];
    _webformatHeight = json['webformatHeight'];
    _largeImageURL = json['largeImageURL'];
    _imageWidth = json['imageWidth'];
    _imageHeight = json['imageHeight'];
    _imageSize = json['imageSize'];
    _views = json['views'];
    _downloads = json['downloads'];
    _collections = json['collections'];
    _likes = json['likes'];
    _comments = json['comments'];
    _userId = json['user_id'];
    _user = json['user'];
    _userImageURL = json['userImageURL'];
  }
  num? _id;
  String? _pageURL;
  String? _type;
  String? _tags;
  String? _previewURL;
  num? _previewWidth;
  num? _previewHeight;
  String? _webformatURL;
  num? _webformatWidth;
  num? _webformatHeight;
  String? _largeImageURL;
  num? _imageWidth;
  num? _imageHeight;
  num? _imageSize;
  num? _views;
  num? _downloads;
  num? _collections;
  num? _likes;
  num? _comments;
  num? _userId;
  String? _user;
  String? _userImageURL;
Photo copyWith({  num? id,
  String? pageURL,
  String? type,
  String? tags,
  String? previewURL,
  num? previewWidth,
  num? previewHeight,
  String? webformatURL,
  num? webformatWidth,
  num? webformatHeight,
  String? largeImageURL,
  num? imageWidth,
  num? imageHeight,
  num? imageSize,
  num? views,
  num? downloads,
  num? collections,
  num? likes,
  num? comments,
  num? userId,
  String? user,
  String? userImageURL,
}) => Photo(  id: id ?? _id,
  pageURL: pageURL ?? _pageURL,
  type: type ?? _type,
  tags: tags ?? _tags,
  previewURL: previewURL ?? _previewURL,
  previewWidth: previewWidth ?? _previewWidth,
  previewHeight: previewHeight ?? _previewHeight,
  webformatURL: webformatURL ?? _webformatURL,
  webformatWidth: webformatWidth ?? _webformatWidth,
  webformatHeight: webformatHeight ?? _webformatHeight,
  largeImageURL: largeImageURL ?? _largeImageURL,
  imageWidth: imageWidth ?? _imageWidth,
  imageHeight: imageHeight ?? _imageHeight,
  imageSize: imageSize ?? _imageSize,
  views: views ?? _views,
  downloads: downloads ?? _downloads,
  collections: collections ?? _collections,
  likes: likes ?? _likes,
  comments: comments ?? _comments,
  userId: userId ?? _userId,
  user: user ?? _user,
  userImageURL: userImageURL ?? _userImageURL,
);
  num? get id => _id;
  String? get pageURL => _pageURL;
  String? get type => _type;
  String? get tags => _tags;
  String? get previewURL => _previewURL;
  num? get previewWidth => _previewWidth;
  num? get previewHeight => _previewHeight;
  String? get webformatURL => _webformatURL;
  num? get webformatWidth => _webformatWidth;
  num? get webformatHeight => _webformatHeight;
  String? get largeImageURL => _largeImageURL;
  num? get imageWidth => _imageWidth;
  num? get imageHeight => _imageHeight;
  num? get imageSize => _imageSize;
  num? get views => _views;
  num? get downloads => _downloads;
  num? get collections => _collections;
  num? get likes => _likes;
  num? get comments => _comments;
  num? get userId => _userId;
  String? get user => _user;
  String? get userImageURL => _userImageURL;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['pageURL'] = _pageURL;
    map['type'] = _type;
    map['tags'] = _tags;
    map['previewURL'] = _previewURL;
    map['previewWidth'] = _previewWidth;
    map['previewHeight'] = _previewHeight;
    map['webformatURL'] = _webformatURL;
    map['webformatWidth'] = _webformatWidth;
    map['webformatHeight'] = _webformatHeight;
    map['largeImageURL'] = _largeImageURL;
    map['imageWidth'] = _imageWidth;
    map['imageHeight'] = _imageHeight;
    map['imageSize'] = _imageSize;
    map['views'] = _views;
    map['downloads'] = _downloads;
    map['collections'] = _collections;
    map['likes'] = _likes;
    map['comments'] = _comments;
    map['user_id'] = _userId;
    map['user'] = _user;
    map['userImageURL'] = _userImageURL;
    return map;
  }

}
import 'package:flutter/cupertino.dart';

class Article {
  final String name;
  final String overview;


  final String body;
  Article(
      {@required this.name,
      @required this.overview,
 
      @required this.body,
    });
}

List<Article> articleList = [
  Article(name: "rtghtgh", overview: "dfgdfg", body: "hn.fng ,fgm,m", ),
  Article(name: "fghfdghndfgbn", overview: "fgbbbbbbfbdb",  body: "fhg.fngm,fhg,l", ),
  Article(name: "fgnghjkhil,h", overview: "dfhsfhbsgdbsdfbgthsdfhbt",  body: "f,f,.", ),
  Article(name: "dfhdfg", overview: "rhtmjkryfukjrejundcfmkgnfgh",  body: "s", ),
  Article(name: "dfghfb", overview: "fglm,gfbn ,f.",  body: "s", ),
  Article(name: "dfhsrths", overview: "a",  body: "s", ),
  Article(name: "fghfhs", overview: "a",  body: "s", ),
  Article(name: "fghfbbcc", overview: "a",  body: "s", ),
];

class Guide {
  final String name;
  final String overview;
  final String picture;
  final String body;
  Guide(
      {@required this.name,
      @required this.overview,
      @required this.body,
      @required this.picture});
}

List<Guide> guideList = [
  Guide(name: "Введение", overview: "Что такое двор и для кого он нужен", body: """Привет, пользователь. Если ты мечтаешь благоустроить свой двор, но не знаешь, как начать и на что опираться в этом нелёгком деле, то скорее погружайся в этот гайд. Он создан для каждого, кто хочет сделать из своего двора привлекательное и полезное для жителей пространство.

Для начала давай определим: что такое двор?

Итак, двор представляет из себя участок жилой застройки, граничащий с одним или несколькими многоквартирными домами. Через дворы люди ходят или подъезжают к себе домой. Обычно в дворах отдыхают, играют дети, используют для разных бытовых нужд взрослые. Двор часто служит местом встречи.
 
Чтобы на протяжении всего гайда определять дворовое пространство как точку взаимодействия и притяжения людей будет неплохо держать в голове следующее:
 
● двор - это местные сообщества: обычные жильцы, пожилые люди, мамы с колясками, дети и т.д. 

● двор - это городское пространство: двор встраивается в ткань городской территории и не может быть закрытым полностью

● двор - это объединение интеллектуальных, трудовых и финансовых ресурсов: любое благоустройство требует идей, рук и денег

● двор - это функциональные зоны: входная зона, парковка, зона тихого и активного отдыха, хозяйственная зона и т.д.

● двор - это собственность жильцов: двор принадлежит жильцам, и они должны постоянно следить за ним

Усвоив эти простые пункты, можем переходить к следующей части.""", picture: "https://sun9-51.userapi.com/c854424/v854424252/18d8f2/tvK2uVqTvDs.jpg"),
  Guide(name: "SDFCC", overview: "Fvdfgrtgbhrthnrtmhmmhmfhgnfghfn", body: "s", picture: "https://sun9-29.userapi.com/c854424/v854424252/18d8fd/oLlEZt-PhkY.jpg"),
  Guide(name: "sFDF", overview: "fghnfhgnfghnfghnfghnfh nfhsre", body: "s", picture: "https://sun9-41.userapi.com/c854424/v854424252/18d907/jsg6QntEslw.jpg"),
  Guide(name: "SCVSDFSDF", overview: "u,yfhsfn tnhggfbsdfnnst", body: "s", picture: "https://sun9-55.userapi.com/c854424/v854424252/18d911/54W6Gqm5hh4.jpg"),
  Guide(name: "SDFCVVCV", overview: "hmhfgb rsdgstrbnfgtnhe6rne6n", body: "s", picture: "https://sun9-61.userapi.com/c854424/v854424252/18d91b/7K5j9_MOwzw.jpg"),
  Guide(name: "sdfdfDF", overview: "a", body: "s", picture: "https://sun9-8.userapi.com/c854424/v854424252/18d925/rsSYF1wRd-I.jpg"),
  Guide(name: "EFFFVS", overview: "a", body: "s", picture: "https://sun9-3.userapi.com/c854424/v854424252/18d92f/cm_wH7YzXUM.jpg"),
  Guide(name: "SFDVV", overview: "a", body: "s", picture: "https://sun9-33.userapi.com/c854424/v854424252/18d937/ntVWNEOg5oY.jpg"),
];

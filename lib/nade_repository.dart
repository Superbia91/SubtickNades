import 'package:cs2/nade.dart';
class NadeRepository{
  static List<Nade> getSmokesForMap(String mapName){
    //TODO добавить смоки на другие карты и оформить красиво(dust2, inferno, nuke, vertigo, ancient, anubis)
    switch(mapName){
      case "Mirage":
        return const [
          Nade(
              title: "Smokes mid ",
              description: "smoke from t spawn to mid",
              imageUrl: "images/smoke_mid_mirage.png",
              videoUrl: "videos/mirage_smoke_window.mp4"),



          Nade(
              title: "Smoke connector",
               description: "smoke from t spawn to connector", 
               imageUrl: "images/smoke_con.jpg",
                videoUrl: "videos/mirage_smoke_con.mp4"),


          Nade(
                title: "Smoke plant A",
                 description: "smoke Plant A", 
                 imageUrl: "images/smoke_plant_A.jpg", 
                 videoUrl: "videos/mirage_smoke_A.mp4"),



          Nade(title: "Smoke plant B",
               description: "smoke Plant B", 
               imageUrl: "images/smoke_plant_B.jpg", 
               videoUrl: "videos/mirage_smoke_B.mp4"),

          
        ];
      
      default:
        return [];
    }
  }

}
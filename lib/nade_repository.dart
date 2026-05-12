import 'package:cs2/nade.dart';

class NadeRepository {
  static List<Nade> getSmokesForMap(String mapName) {
    //TODO добавить смоки на другие карты и оформить красиво(dust2, inferno, nuke, vertigo, ancient, anubis)
    switch (mapName) {
      case "Mirage":
        return const [
          Nade(
              title: "Mid Window",
              description: "Базовый jump-throw с Т-спавна, закрывающий окно. Идеально для безопасного занятия мида.",
              imageUrl: "images/smoke_mid_mirage.png",
              videoUrl: "https://storage.yandexcloud.net/cs2-nades-storage/mirage_smoke_window.mp4"),

          Nade(
              title: "Top Connector",
              description: "Закрывает обзор из коннектора на топ-мид. Важнейший смок для сплита Б через шорт.",
              imageUrl: "images/smoke_con.jpg",
              videoUrl: "https://storage.yandexcloud.net/cs2-nades-storage/mirage_smoke_con.mp4"),

          Nade(
              title: "A Site Execute",
              description: "Стандартная раскидка (CT, Stairs, Jungle) для полной изоляции плента А и установки бомбы.",
              imageUrl: "images/smoke_plant_A.jpg",
              videoUrl: "https://storage.yandexcloud.net/cs2-nades-storage/mirage_smoke_A.mp4"),

          Nade(
              title: "B Site Execute",
              description: "Смоки на окно, шорт и дверь маркета. Кидаются из апартаментов для быстрого выхода на Б плент.",
              imageUrl: "images/smoke_plant_B.jpg",
              videoUrl: "https://storage.yandexcloud.net/cs2-nades-storage/mirage_smoke_B.mp4"),
        ];

      default:
        return [];
    }
  }
}
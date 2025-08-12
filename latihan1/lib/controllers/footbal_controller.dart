import 'package:get/get.dart';
import 'package:latihan1/models/player.dart';

class FootballController extends GetxController {
  var players = <Player>[
    Player(
      profileImage:
          'https://vignette.wikia.nocookie.net/captaintsubasa/images/4/40/Tsubasa_Japan_(DT).png/revision/latest?cb=20180813011141',
      nama: "Tsubasa Ozora",
      position: "CMF",
      nomorPunggung: 10,
    ),
    Player(
      profileImage:
          'https://tse2.mm.bing.net/th/id/OIP.D0D-khjNuImMMGa-lrWxLwHaE3?pid=Api&P=0&h=180',
      nama: "Genzo Wakabayashi",
      position: "GK",
      nomorPunggung: 1,
    ),
    Player(
      profileImage:
          'https://tse3.mm.bing.net/th/id/OIP.5dSrfgTfOFIaccUV6_HmIQHaEK?pid=Api&P=0&h=180',
      nama: "Jun Misugi",
      position: "CB",
      nomorPunggung: 6,
    ),
    Player(
      profileImage:
          'https://tse4.mm.bing.net/th/id/OIP.eb_lJhkoH0wpuVBX5dGd_AHaEm?pid=Api&P=0&h=180',
      nama: "Taro Misaki",
      position: "AMF",
      nomorPunggung: 11,
    ),
    Player(
      profileImage:
          'https://tse2.mm.bing.net/th/id/OIP.YXqbKBHKVc66or65bOiwBAHaFg?pid=Api&P=0&h=180',
      nama: "Kojiro Hyuga",
      position: "CF",
      nomorPunggung: 9,
    ),
    Player(
      profileImage:
          'https://tse3.mm.bing.net/th/id/OIP.yVFDKktz8EQCOzcvWRVEZAHaH2?pid=Api&P=0&h=180',
      nama: "Hikaru Matsuyama",
      position: "DMF",
      nomorPunggung: 5,
    ),
    Player(
      profileImage:
          'https://tse1.mm.bing.net/th/id/OIP.p6K7SuLsBwAbzRzoKTW2awHaHa?pid=Api&P=0&h=180',
      nama: "Shingo Aoi",
      position: "RMF",
      nomorPunggung: 7,
    ),
    Player(
      profileImage:
          'https://tse3.mm.bing.net/th/id/OIP.bmNvzaaNdOyEDz7n_leyRgHaE3?pid=Api&P=0&h=180',
      nama: "Ryo Ishizaki",
      position: "CB",
      nomorPunggung: 2,
    ),
  ].obs;

  void updatePlayer(int index, Player newPlayer) {
    players[index] = newPlayer;
  }
}

class AnimaatiotUtils {
  final String image;
  final String title;
  final String subtitle2p;
  final String subtitle1p;
  final String subtitle0p;
  final String? image2;
  final String? point2A;
  final String? point2B;
  final String? point1A;
  final String? point1B;
  final String? point0A;
  final String? point0B;
  final String? point0C;
  final String? point0D;
  final String? luokka;

  AnimaatiotUtils({
    required this.image,
    required this.title,
    required this.subtitle2p,
    required this.subtitle1p,
    required this.subtitle0p,
    this.image2,
    this.point2A,
    this.point2B,
    this.point1A,
    this.point1B,
    this.point0A,
    this.point0B,
    this.point0C,
    this.point0D,
    this.luokka,
  });
}

List<AnimaatiotUtils> animaatiotUtils1 = [
  AnimaatiotUtils(
    image: 'assets/esteet/A-este alo3D.glb',
    image2: 'assets/esteet/A-este avo3D.glb',  
    title: 'A-este Alokas- ja Avoinluokka', 
    subtitle2p: 'Kissa kiipeää esteelle ja laskeutuu toista sivua pitkin.\nKissa kiipeää askeltamalla esteen sivua pitkin esteen ylös ja laskeutuu toista sivua pitkin alas. 2 p',
    subtitle1p: 'Kissa askeltaen kiipeää esteelle tai laskeutuu alas esteeltä askeltaen,\nmutta hyppää esteelle menon tai alastulon. 1p',
    subtitle0p: 'Kissa hyppää pöydältä esteen ylös,\n askeltamatta sivua ja hyppää esteeltä suoraan alas,\nlaskeutumatta toista sivua pitkin tai ohittaa esteen. 0 p',
    point2B: 'assets/Animaatiot/A-ESTKissaJuokseeA-esteAlo2pistettä.glb',
    point1B: 'assets/Animaatiot/A-ESTKissaJuokseeA-esteAlo1pistettähyppäätoisenpuolen.glb',
    point0A: 'assets/Animaatiot/A-ESTKissaJuokseeA-esteAvo0pistettähyppää.glb',
    point0B: 'assets/Animaatiot/A-ESTKissaJuokseeA-esteAlo0pistettähyppää.glb',
    point0C: 'assets/Animaatiot/A-ESTKissaJuokseeA-esteAvo0pistettäOHI.glb',
    point0D: 'assets/Animaatiot/A-ESTKissaJuokseeA-esteAlo0pistettäOHI.glb',
  ),
  AnimaatiotUtils(
    image: 'assets/esteet/Hyppyeste3D.glb',
    title: 'Hyppyeste', 
    subtitle2p: 'Kissa hyppää esteen yli koskematta esteeseen. 2 p',
    subtitle1p: 'Kissa kiipeää esteen yli koskemalla esteeseen. 1 p',
    subtitle0p: 'Kissa menee esteen välistä tai kissa kiertää esteen. 0 p',
    point2A: 'assets/Animaatiot/HyppyKissaHyppaaYli2Pistettä.glb',
    point1A: 'assets/Animaatiot/HyppyesteKissaOsuu1Pisteglb.glb',
    point0A: 'assets/Animaatiot/HyppyKissaJuokseeOHI.glb',
  ),
  AnimaatiotUtils(
    image: 'assets/esteet/Lapimeno3D.glb',
    title: 'Läpimenoeste',  
    subtitle2p: 'Kissa menee esteessä olevan reiän läpi.\nKissa suorittaa esteen menemällä läpimeno esteen aukosta läpi,\nastumatta esteen päälle. 2 p',
    subtitle1p: 'Kissa astuu läpimenoesteen aukon reunojen päälle suorittaessaan estettä. 1 p',
    subtitle0p: 'Kissa hyppää esteen yli tai kiertää esteen. 0 p',
  ),
  AnimaatiotUtils(
    image: 'assets/esteet/Pujottelu Alo3D.glb',
    image2: 'assets/esteet/Pujottelu Avo3D.glb',
    title: 'Pujottelueste Alokas- ja Avoinluokka', 
    subtitle2p: 'Kissa pujottelee kaikki keppien välit. 2 p',
    subtitle1p: 'Kissa pujottelee vähintään 2 keppien väliä. 1 p',
    subtitle0p: 'Kissa ohittaa esteen tai pujottelee vain yhdestä välistä. 0p',
    luokka: 'Pujottelu estettä voidaan helpottaa enemmän kujan malliseksi.\nAvoin luokka: Pujottelu on täyssuora.',

  ),
  AnimaatiotUtils(
    image: 'assets/esteet/Putkieste3D.glb',
    title: 'Putkieste', 
    subtitle2p: 'Kissa suorittaa esteen menemällä putken läpi 2 p',
    subtitle1p: 'Kissa menee putken puoleen väliin,\nmutta palaa takaisin 1 p',
    subtitle0p: 'Kissa kiertää esteen tai hyppää sen yli. 0 p,',
    point2A: 'assets/Animaatiot/KissaJuokseePutkenläpi.glb',
    point0A: 'assets/Animaatiot/KissaJuokseePutkenOHI.glb',
    point0B: 'assets/Animaatiot/KissaHyppääPutkenYli.glb',
  ),
  AnimaatiotUtils(
    image: 'assets/esteet/Tikaseste3D.glb',
    title: 'Tikaseste', 
    subtitle2p: 'Kissa suorittaa tikasesteen kävelemällä esteen läpi niin,\nettä tassut menevät jokaisen pinnan välistä. 2 p',
    subtitle1p: 'Kissa kävelee/ylittää esteen niin,\nettä kävelee tikkaiden päältä. 1 p',
    subtitle0p: 'Kissa hyppää esteen yli kiertää sen tai\nvain yksi tassu osuu tikkaiden väliin tai päälle. 0 p.',
  ),
  AnimaatiotUtils(
    image: 'assets/esteet/Yliali3d.glb',
    title: 'Yli-Ali-este', 
    subtitle2p: 'Kissa joko ylittää tai alittaa esteen.\nKissa ylittää tai alittaa esteen U-kourujen kohdalta,\nastumatta esteelle. 2 p',
    subtitle1p: 'Kissa ylittää esteen astumalla esteen päälle.\nAvoimessa luokassa kissa suorittaa esteen tuomarin asettaman tavan vastaisesti 1 p',
    subtitle0p: 'Kissa kiertää esteen. 0 p',
    luokka: 'Kissa voi suorittaa esteen ylittämällä tai alittamalla yllä olevien ohjeiden mukaisesti.\nAvoin luokka: Tuomari määrittää rataan tutustumisvaiheessa,\ntuleeko kissan ylittää vai alittaa este suorituksen aikana.',
    ),
];

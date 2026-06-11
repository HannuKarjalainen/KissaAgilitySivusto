class EsteetUtils {
  final String image;
  final String title;
  final String subtitle;

  EsteetUtils({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

//Group Projects
List<EsteetUtils> esteetUtils1 = [
  EsteetUtils(
    image: 'assets/esteet/A-este alo3D.glb',
    title: 'A-este Alokasluokka', 
    subtitle: 'Esteen suoritus\n● Kissa kiipeää esteelle ja laskeutuu toista sivua pitkin.\nKissa kiipeää askeltamalla esteen sivua pitkin esteen ylös ja laskeutuu toista sivua pitkin alas. 2 p\n● Kissa askeltaen kiipeää esteelle tai laskeutuu alas esteeltä askeltaen, mutta hyppää esteelle menon tai alastulon. 1p\n● Kissa hyppää pöydältä esteen ylös, askeltamatta sivua ja hyppää esteeltä suoraan alas, laskeutumatta toista sivua pitkin tai ohittaa esteen. 0 p',
  ),
  EsteetUtils(
    image: 'assets/esteet/A-este avo3D.glb',
    title: 'A-este Avo-luokka', 
    subtitle: 'Esteen suoritus\n● Kissa kiipeää esteelle ja laskeutuu toista sivua pitkin.\nKissa kiipeää askeltamalla esteen sivua pitkin esteen ylös ja laskeutuu toista sivua pitkin alas. 2 p\n● Kissa askeltaen kiipeää esteelle tai laskeutuu alas esteeltä askeltaen, mutta hyppää esteelle menon tai alastulon. 1p\n● Kissa hyppää pöydältä esteen ylös, askeltamatta sivua ja hyppää esteeltä suoraan alas, laskeutumatta toista sivua pitkin tai ohittaa esteen. 0 p',
  ),
  EsteetUtils(
    image: 'assets/esteet/Hyppyeste3D.glb',
    title: 'Hyppyeste', 
    subtitle: 'Esteen suoritus\n● Kissa hyppää esteen yli koskematta esteeseen. 2 p\n● Kissa kiipeää esteen yli koskemalla esteeseen. 1 p\n● Kissa menee esteen välistä tai kissa kiertää esteen. 0 p',
  ),
  EsteetUtils(
    image: 'assets/esteet/Lapimeno3D.glb',
    title: 'Läpimenoeste',  
    subtitle: 'Esteen suoritus\nKissa menee esteessä olevan reiän läpi.\n● Kissa suorittaa esteen menemällä läpimeno esteen aukosta läpi, astumatta esteen päälle. 2 p\n● Kissa astuu läpimenoesteen aukon reunojen päälle suorittaessaan estettä. 1 p\n● Kissa hyppää esteen yli tai kiertää esteen. 0 p',
  ),
  EsteetUtils(
    image: 'assets/esteet/Pujottelu Alo3D.glb',
    title: 'Pujottelueste Alokasluokka', 
    subtitle: 'Esteen suoritus\n● Kissa pujottelee kaikki keppien välit. 2 p\n● Kissa pujottelee vähintään 2 keppien väliä. 1 p\n● Kissa ohittaa esteen tai pujottelee vain yhdestä välistä. 0p\nAlokasluokka: Pujottelu estettä voidaan helpottaa enemmän kujan malliseksi.\nAvoin luokka: Pujottelu on täyssuora.',
  ),
  EsteetUtils(
    image: 'assets/esteet/Pujottelu Avo3D.glb',
    title: 'Pujottelueste Avo-luokka', 
    subtitle: 'Esteen suoritus\n● Kissa pujottelee kaikki keppien välit. 2 p\n● Kissa pujottelee vähintään 2 keppien väliä. 1 p\n● Kissa ohittaa esteen tai pujottelee vain yhdestä välistä. 0p\nAlokasluokka: Pujottelu estettä voidaan helpottaa enemmän kujan malliseksi.\nAvoin luokka: Pujottelu on täyssuora.',
  ),
  EsteetUtils(
    image: 'assets/esteet/Putkieste3D.glb',
    title: 'Putkieste', 
    subtitle: 'Esteen suoritus\n● Kissa suorittaa esteen menemällä putken läpi 2 p\n● Kissa menee putken puoleen väliin, mutta palaa takaisin 1 p\n● Kissa kiertää esteen tai hyppää sen yli. 0 p,'
    
  ),
  EsteetUtils(
    image: 'assets/esteet/Tikaseste3D.glb',
    title: 'Tikaseste', 
    subtitle: 'Esteen suoritus\n● Kissa suorittaa tikasesteen kävelemällä esteen läpi niin, että tassut menevät jokaisen pinnan välistä. 2 p\n● Kissa kävelee/ylittää esteen niin, että kävelee tikkaiden päältä. 1 p\n● Kissa hyppää esteen yli kiertää sen tai vain yksi tassu osuu tikkaiden väliin tai päälle. 0 p.',
  ),
  EsteetUtils(
    image: 'assets/esteet/Yliali3d.glb',
    title: 'Yli-Ali-este', 
    subtitle: 'Esteen suoritus\nKissa joko ylittää tai alittaa esteen.\n● Kissa ylittää tai alittaa esteen U-kourujen kohdalta, astumatta esteelle. 2 p\n● Kissa ylittää esteen astumalla esteen päälle.\nAvoimessa luokassa kissa suorittaa esteen tuomarin asettaman tavan vastaisesti 1 p\n● Kissa kiertää esteen. 0 p\nAlokasluokka: Kissa voi suorittaa esteen ylittämällä tai alittamalla yllä olevien ohjeiden mukaisesti.\nAvoin luokka: Tuomari määrittää rataan tutustumisvaiheessa, tuleeko kissan ylittää vai alittaa este suorituksen aikana.',
    ),
];

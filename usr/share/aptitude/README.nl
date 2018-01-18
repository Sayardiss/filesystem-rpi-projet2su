                      Gebruikershandleiding voor aptitude

Versie 0.8.7

  Daniel Burrows

   Hoofdauteur van het document. <dburrows@debian.org>

  Manuel A. Fernandez Montecelo

   Belangrijkste onderhouder na Daniel Burrows, documentatie over nieuwe
   functionaliteit, correcties en opmaak. <mafm@debian.org>

   Copyright © 2004-2011, 2012-2016 Daniel Burrows, Manuel A. Fernandez
   Montecelo

   Deze handleiding is vrije software. U kunt ze verder verspreiden en/of ze
   aanpassen volgens de bepalingen van de licentie GNU General Public License
   die door de Free Software Foundation gepubliceerd werd. Versie 2 of een
   meer recente versie (zo u dat verkiest) van deze licentie is van
   toepassing.

   Deze handleiding wordt verspreid in de hoop dat ze van nut zal zijn, maar
   ZONDER ENIGE GARANTIE, zelfs zonder de impliciete garantie van
   VERKOOPBAARHEID of GESCHIKTHEID VOOR EEN SPECIFIEK DOEL. Zie de GNU
   General Public License voor meer details.

   Samen met dit programma zou u een kopie van de GNU General Public License
   ontvangen moeten hebben. Is dat niet het geval, schrijf dan naar the Free
   Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
   02110-1301 USA

   --------------------------------------------------------------------------

   Inhoudsopgave

   Inleiding

                Overigens, wat is aptitude voor iets?

                Wat is een pakketbeheerder?

                Wat houdt het apt-systeem in?

                Waar kan ik aptitude vinden?

                             Vooraf gebouwde pakketten met aptitude, of “wat
                             99% van de gebruikers zouden moeten doen”

                             Vanuit de broncode aptitude bouwen

                             De ontwikkeling van aptitude opvolgen en eraan
                             deelnemen

   1. Aan de slag

                aptitude gebruiken

                             Grondbeginselen van aptitude

                             Door de pakketlijst van aptitude navigeren

                             Pakketten op naam zoeken

                             Pakketten beheren

                             De pakketlijst bijwerken en pakketten
                             installeren

                Aan de commandoregel aptitude gebruiken

   2. De aptitude referentiegids

                De terminal-gebruikersinterface van aptitude

                             De menu's gebruiken

                             Menu-commando's

                             Met verschillende weergaven werken

                             Systeembeheerder (root) worden

                Pakketten beheren

                             De pakketlijst beheren

                             Informatie over pakketten opzoeken

                             De toestand van een pakket wijzigen

                             Pakketten ophalen, installeren en verwijderen

                             De betrouwbaarheid van pakketten begrijpen en
                             ermee omgaan

                             Automatisch geïnstalleerde pakketten beheren

                Vereisten van pakketten oplossen

                             Het oplossen van vereisten in aptitude

                             Onmiddellijke vereistenoplossing

                             Vereisten interactief oplossen

                             Kosten van de interactieve vereistenoplosser

                             De interactieve vereistenoplosser configureren

                Zoekpatronen

                             Naar tekenreeksen zoeken

                             Verkorte notatie voor zoektermen

                             Zoekopdrachten en versies

                             Expliciete zoekdoelen

                             Referentiegids voor zoektermen

                Aanpassingen maken aan aptitude

                             De pakketlijst aanpassen

                             Sneltoetsen aanpassen

                             De kleur en de vormgeving van tekst aanpassen

                             De schermopmaak aanpassen

                             Referentiegids voor het configuratiebestand

                             Thema's

                Mijnenveger spelen

   3. Veel gestelde vragen bij aptitude

   4. Credits

   I. Referentiegids voor de commandoregel

                aptitude — hoogwaardige interface voor de pakketmanager

                aptitude-create-state-bundle — de huidige toestand van
                aptitude samenbundelen

                aptitude-run-state-bundle — pak een statusbundel van aptitude
                uit en gebruik dit om er aptitude op uit te voeren.

   Lijst van afbeeldingen

   2.1. Beschikbare commando's in het menu Acties

   2.2. Beschikbare commando's in het menu Ongedaan maken

   2.3. Beschikbare commando's in het menu Pakket

   2.4. Beschikbare commando's in het menu Oplosser

   2.5. Beschikbare commando's in het menu Zoeken

   2.6. Beschikbare commando's in het menu Opties

   2.7. Beschikbare commando's in het menu Weergaven

   2.8. Beschikbare commando's in het menu Hulp

   2.9. Waarden voor de vlag “huidige toestand”

   2.10. Waarden voor de vlag “actie”

   2.11. Syntaxis van samengestelde kostencomponenten

   2.12. Niveaus van veiligheidskosten

   2.13. Syntaxis van de term ?for

   2.14. Stijlen die in aptitude aangepast kunnen worden

   Lijst van tabellen

   2.1. Basale kostencomponenten

   2.2. Standaard niveaus van veiligheidskosten

   2.3. Beknopte handleiding bij zoektermen

   Lijst van voorbeelden

   2.1. Kostenvoorbeelden van de oplosser

   2.2. Het gebruik van de term ?=

   2.3. Het gebruik van de term ?bind

   2.4. Het gebruik van de term ?exact-name

   2.5. Het gebruik van de term ?for

   2.6. Het gebruik van de term ?term-prefix

   2.7. Groeperingsrichtlijn firstchar of firstchar(binary)

   2.8. Groeperingsrichtlijn firstchar(source)

   2.9. Het gebruik van patroon om pakketten volgens pakketbeheerder te
   groeperen

   2.10. Het gebruik van pattern met enkele pakketten die op het bovenste
   niveau geplaatst worden.

   2.11. Het gebruik van een groeperingsbeleid met sub-richtlijnen op basis
   van een patroon

   12. Gebruik van --show-summary

                                   Inleiding

   Inhoudsopgave

   Overigens, wat is aptitude voor iets?

   Wat is een pakketbeheerder?

   Wat houdt het apt-systeem in?

   Waar kan ik aptitude vinden?

                Vooraf gebouwde pakketten met aptitude, of “wat 99% van de
                gebruikers zouden moeten doen”

                Vanuit de broncode aptitude bouwen

                De ontwikkeling van aptitude opvolgen en eraan deelnemen

     “Meester, bezit Emacs de Boeddha-zijnswjize?” vroeg de novice.          

     “Ik zie niet in waarom niet,” antwoordde de meester. “Het is toch ook
     in al de rest verdomd goed.” Vele jaren later zag de novice plots het
     licht.
                                                                -- John Fouhy

   Dag en welkom bij de gebruikershandleiding van aptitude! Dit inleidende
   deel legt uit wat aptitude is en hoe u het kunt verkrijgen. Voor
   informatie over het eigenlijke gebruik gaat u naar Hoofdstuk 1, Aan de
   slag.

Overigens, wat is aptitude voor iets?

   aptitude is een pakketbeheerder voor Debian GNU/Linux systemen met veel
   mogelijkheden, gebaseerd op de gerenommeerde
   pakketbeheerdersinfrastructuur apt. aptitude biedt de functionaliteit van
   dselect en apt-get met nog veel extra mogelijkheden die in geen van beide
   programma's aanwezig zijn.

Wat is een pakketbeheerder?

   Een pakketbeheerder houdt bij welke software op uw computer geïnstalleerd
   is, en laat u toe om op een eenvoudige wijze nieuwe software te
   installeren, software naar nieuwere versies op te waarderen, of software
   te verwijderen die u eerder installeerde. Zoals de naam suggereert,
   behandelen pakketbeheerders pakketten: een geheel van bestanden dat
   gebundeld wordt en als geheel geïnstalleerd en verwijderd kan worden.

   Dikwijls is een pakket gewoon een bepaald programma. Het clientprogramma
   voor instantberichten gaim is bijvoorbeeld te vinden in het Debian pakket
   met dezelfde naam. Anderzijds komt het ook geregeld voor dat een programma
   uit meerdere samenhangende pakketten bestaat. Het beeldbewerkingsprogramma
   gimp bijvoorbeeld, bestaat niet enkel uit het pakket gimp, maar ook uit
   het pakket gimp-data. Daarenboven zijn nog meerdere optionele
   uitbreidingspakketten beschikbaar (met elementen voor gevorderden,
   documentatie, enz.). Het gebeurt ook dat verschillende kleine
   samenhangende programma's samen in één pakket zitten: het pakket fileutils
   bijvoorbeeld, bevat verschillende gebruikelijke Unix-commando's, zoals ls,
   cp, enz.

   Sommige pakketten hebben andere pakketten nodig om te kunnen functioneren.
   In Debian kunnen pakketten andere pakketten vereisen , aanbevelen,
   suggereren, defect maken, of ermee conflicteren.

     * Indien een pakket A van een ander pakket B afhangt, dan is B vereist
       opdat A behoorlijk zou functioneren. Het pakket gimp bijvoorbeeld, is
       afhankelijk van het pakket gimp-data om het beeldbewerkingsprogramma
       GIMP toegang te laten hebben tot voor het programma cruciale
       gegevensbestanden.

     * Indien een pakket A een ander pakket B aanbeveelt, dan brengt B voor A
       belangrijke bijkomende functionaliteit aan waarover men in de meeste
       omstandigheden zal willen beschikken. Het pakket mozilla-browser
       bijvoorbeeld, beveelt het pakket mozilla-psm aan, dat in de
       webbrowserMozilla ondersteuning voor veilige gegevensoverdracht
       inbouwt. Hoewel mozilla-psm niet strikt noodzakelijk is opdat Mozilla
       zou kunnen functioneren, willen de meeste gebruikers wel dat Mozilla
       de veilige overdracht van confidentiële informatie (zoals
       kredietkaartnummers) ondersteunt.

     * Indien een pakket A een ander pakket B suggereert, dan biedt pakket B
       functionaliteit die de mogelijkheden van A uitbreidt, hoewel men die
       in de meeste gevallenniet nodig zal hebben. Het pakket kmail
       bijvoorbeeld, suggereert het pakket gnupg, dat encryptiesoftware bevat
       die door KMail gebruikt kan worden.

     * Indien een pakket A met een ander pakket B conflicteert, dan kunnen
       beide pakketten niet gelijktijdig geïnstalleerd zijn. Zo conflicteert
       bijvoorbeeldfb-music-hi met fb-music-low, omdat zij elk een
       alternatief geheel van muziekbestanden voor het spel Frozen Bubble
       aanbieden.

   De taak van een pakketbeheerder is de gebruiker een interface te bieden
   die hem/haar bijstaat bij het beheer van het geheel van pakketten dat op
   zijn/haar systeem geïnstalleerd is. aptitude biedt zo'n interface door
   voort te bouwen op het pakketbeheersysteem apt.

Wat houdt het apt-systeem in?

   In staat zijn pakketten te installeren en te verwijderen is een geweldige
   functionaliteit en het is exact dat wat de daarvoor ontwikkelde
   basissoftware (bekend als dpkg) doet, maar ze doet ook niets meer. Dit is
   oké als u één of twee pakketten handmatig downloadt, maar het wordt al
   vlug onhandig als u een groot aantal pakketten tracht te beheren.
   Bovendien, als uw fonkelnieuw pakket software nodig heeft die u nog niet
   geïnstalleerd heeft, zult u die nieuwe vereiste software handmatig moeten
   downloaden. En indien u later beslist dat niet meer zo fonkelnieuw pakket
   te verwijderen, zullen die extra pakketten op uw systeem blijven
   rondslingeren en opslagruimte gebruiken, tenzij u ze handmatig verwijdert.

   Al dit handmatig werk wordt overduidelijk een vervelend karwei, en daarom
   bevatten de meeste systemen voor pakketbeheer software die dit geheel of
   gedeeltelijk in uw plaats opknapt. apt is de gemeenschappelijke basis
   waarop deze programma's voortbouwen. Naast aptitude maken ook programma's
   zoals synaptic enapt-watch gebruik van apt.

   apt functioneert door een lijst bij te houden van pakketten die het bij
   Debian kan ophalen voor uw computer. Deze lijst wordt gebruikt om
   pakketten te vinden die opgewaardeerd moeten worden en om nieuwe pakketten
   te installeren. apt is ook in staat om veel vereistenproblemen automatisch
   op te lossen: als u bijvoorbeeld kiest om een pakket te installeren, zal
   het ook alle eventuele noodzakelijke bijkomende pakketten opzoeken en
   installeren.

   Als u werkt met een op apt gebaseerde pakketbeheerder, zoals aptitude,
   zult u gewoonlijk drie basistaken uitvoeren: u zult de lijst van
   beschikbare pakketten bijwerken door nieuwe lijsten op te halen bij de
   Debian servers, u zult de pakketten die geïnstalleerd, opgewaardeerd of
   verwijderd moeten worden selecteren en tenslotte zult u uw selecties
   toepassen door het installeren, verwijderen, enz. effectief uit te voeren.

   Op apt gebaseerde pakketbeheerders halen de lijst van “pakketbronnen” --
   opslagplaatsen met Debian pakketten -- uit het bestand
   /etc/apt/sources.list. De indeling en de inhoud van dit bestand vallen
   buiten het bereik van dit document, maar worden beschreven in de
   man-pagina sources.list(5).

Waar kan ik aptitude vinden?

   Mocht u deze handleiding lezen zonder dat aptitude reeds geïnstalleerd is
   op uw systeem, dan wordt in dit deel uitgelegd hoe u aan deze ongelukkige
   situatie kunt verhelpen. De meeste mensen kunnen echter onmiddellijk
   verder gaan naar het onderdeel over binaire pakketten.

  Vooraf gebouwde pakketten met aptitude, of “wat 99% van de gebruikers zouden
  moeten doen”

   Vooraf gebouwde of “binaire” pakketten zijn de makkelijkste en meest
   gebruikelijke manier om aptitude te installeren. U zou enkel een
   installatie op basis van de broncode moeten proberen uitvoeren als om de
   een of andere reden geen binair pakket beschikbaar is, of indien u
   specifieke behoeften heeft waaraan niet tegemoet gekomen wordt door
   binaire pakketten.

   Indien u een Debian systeem gebruikt, voer dan als root (systeembeheerder)
   het volgende commando uit: apt-get install aptitude. Indien u geen Debian
   systeem gebruikt, heeft uw leverancier wellicht een vooraf gebouwd pakket
   van aptitude aangemaakt. Indien u onzeker bent, kunt u hem contacteren
   voor bijkomende suggesties.

  Vanuit de broncode aptitude bouwen

   U kunt aptitude ook bouwen vertrekkend van de broncode. Dit is evenwel
   wellicht geen zinvolle bezigheid tenzij apt reeds op uw systeem staat.
   Indien dit het geval is, kunt u vanuit de broncode aptitude installeren
   met de volgende stappen:

    1. Installeer de volgende stukken software:

          * Een C++ compiler, zoals g++.

          * De ontwikkelaarsbestanden voor apt, die meestal te vinden zijn in
            een pakket met een naam zoals libapt-pkg-dev.

          * De bibliotheek libsigc++-2.0, te vinden in het pakket
            libsigc++-2.0-dev of op http://libsigc.sourceforge.net.

          * De bibliotheek cwidget, te vinden in het pakket libcwidget-dev of
            op http://cwidget.alioth.debian.org.

          * Het programma gettext dat met uw Linuxdistributie meegeleverd zou
            moeten zijn.

          * Een exemplaar van het gereedschap make, zoals GNU make.

    2. En tenslotte moet u de meest recente broncode van aptitude downloaden,
       die te vinden is ophttp://packages.debian.org/unstable/admin/aptitude.
       (scrol tot onderaan de pagina en download het bestand “.orig.tar.gz”)

   Als alle vereiste componenten beschikbaar zijn, kunt u een terminalvenster
   openen en de opdracht tar zxf aptitude-0.8.7.tar.gz uitvoeren om de
   broncode uit te pakken. Als dat gebeurd is, typ dan cd aptitude-0.8.7 &&
   ./configure && make om aptitude te compileren. Als dat succesvol beëindigd
   wordt, moet u systeembeheerder (root user) worden (bijvoorbeeld door su te
   gebruiken) en vervolgens make install typen om aptitude op uw computer te
   installeren. Nadat aptitude succesvol geïnstalleerd werd, kunt u het
   programma starten door aan de commandoregel aptitude te typen.

  De ontwikkeling van aptitude opvolgen en eraan deelnemen

    De broncodeboom met de ontwikkelingsversie van aptitude ophalen

   Indien u de allernieuwste broncode van aptitude wenst uit te testen, kunt
   u de broncode van een nog niet uitgebrachte aptitude downloaden via Git.
   Installeer Git (te vinden op http://git-scm.com/) en voer de opdracht git
   clone git://anonscm.debian.org/aptitude/aptitude.git uit om de meest
   recente broncode op te halen.

   [Waarschuwing] Waarschuwing
                  De broncode van aptitude in de Git softwarebron is een
                  ontwikkelingsversie waaraan actief gewerkt wordt. Ze
                  verandert naarmate er bugs gerepareerd worden en nieuwe
                  functionaliteit toegevoegd wordt en er is geen enkele
                  garantie dat ze zelfs maar gecompileerd kan worden, laat
                  staan behoorlijk zal functioneren! Bugrapporten zijn
                  welkom, maar blijf er u van bewust dat u broncode die
                  actief ontwikkeld wordt, volledig op eigen risico gebruikt!
                  ^[1]

    Mailinglijst

   De belangrijkste mailinglijst over het ontwikkelen van aptitude is
   <aptitude-devel@lists.alioth.debian.org>. Archieven van de lijst zijn te
   vinden op http://lists.alioth.debian.org/pipermail/aptitude-devel/. Om u
   opde lijst in te schrijven, moet u naar de webpagina
   http://lists.alioth.debian.org/mailman/listinfo/aptitude-devel gaan.

    Patches aanleveren

   Het beste is om patches aan te leveren via de mailinglijst van aptitude,
   <aptitude-devel@lists.alioth.debian.org>. Maar indien u er de voorkeur aan
   geeft om ze via private e-mail op te sturen, dan kunt u ze naar
   <aptitude@packages.debian.org> of <dburrows@debian.org> zenden. Het wordt
   op prijs gesteld als u in het kort de achterliggende motivatie bij uw
   patch beschrijft en een verklaring bij de werking ervan.

    Wijzigingen in de broncodeboom van aptitude opvolgen

   Regelmatig wordt de broncodeboom van aptitude bijgewerkt met nieuwe
   functionaliteit, bugreparaties en nieuwe bugs. Nadat u de broncode naar uw
   computer gekopieerd heeft (zie het voorgaande onderdeel), kunt u er met
   het commando cd naartoe gaan en daar de opdracht git pull intypen om uw
   kopie in overeenstemming te brengen met eventuele wijzigingen aan de
   hoofdsoftwarebron.

   Om automatisch een bericht te ontvangen bij een aangebrachte wijziging aan
   de broncode van aptitude, kunt u zich inschrijven op de Atom webfeed op
   http://anonscm.debian.org/gitweb/?p=aptitude/aptitude.git;a=atom of op de
   RSS webfeed op
   http://anonscm.debian.org/gitweb/?p=aptitude/aptitude.git;a=rss.

    aptitude bouwen vanuit de broncode van de ontwikkelingsversie

   Om aptitude te kunnen bouwen vanuit de softwarebron in Git, moeten de
   programma's autoconf en automake geïnstalleerd zijn. Typ sh ./autogen.sh
   && ./configure om de bestanden te genereren die nodig zijn om aptitude te
   compileren. Voer vervolgens de opdrachten make en make install uit.

   --------------------------------------------------------------------------

   ^[1] Voor alle vrije software geldt dat u ze op eigen risico gebruikt,
   maar bij het gebruik van een ontwikkelingsversie is dat risico natuurlijk
   veel groter.

                            Hoofdstuk 1. Aan de slag

   Inhoudsopgave

   aptitude gebruiken

                Grondbeginselen van aptitude

                Door de pakketlijst van aptitude navigeren

                Pakketten op naam zoeken

                Pakketten beheren

                De pakketlijst bijwerken en pakketten installeren

   Aan de commandoregel aptitude gebruiken

           Een duizend mijlen verre reis begint met één stap.          
                                                                   -- Lao Tsu

   aptitude is een tamelijk uitgebreid programma met veel mogelijkheden en
   nieuwe gebruikers kunnen er enigszins door overweldigd worden als ze het
   leren kennen. Dit hoofdstuk geeft geen exhaustieve beschrijving van alle
   functionaliteit van aptitude (zie daarvoor Hoofdstuk 2, De aptitude
   referentiegids),maar het overloopt de basale en meest gebruikte
   functionaliteit van het programma.

aptitude gebruiken

   Dit onderdeel beschrijft hoe u de visuele interface van aptitude gebruikt.
   Zie voor informatie over het gebruik van de commandoregelinterface van
   aptitude de paragraaf met de naam “Aan de commandoregel aptitude
   gebruiken”.

  Grondbeginselen van aptitude

   Om aptitude uit te voeren, opent u uw favoriete terminalvenster en typt u
   aan de commandoregel:

 foobar$ aptitude

   Na het laden van de cache (wat op tragere computers enige tijd in beslag
   kan nemen), wordt het hoofdscherm van aptitude zichtbaar:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.2.14.1
 --- Geïnstalleerde pakketten
 --- Niet-geïnstalleerde pakketten
 --- Verouderde en lokaal aangemaakte pakketten
 --- Virtuele pakketten
 --- Taken






 Deze pakketten zijn op dit moment geïnstalleerd op uw computer.









   Zoals u kunt zien is het hoofdscherm van aptitude onderverdeeld in
   verschillende gebieden. De blauwe regel bovenaan de terminal is de
   menuregel en de blauwe regels daaronder zijn informatieve mededelingen die
   een aantal belangrijke commando's beschrijven. De zwarte ruimte die
   daaronder volgt is de lijst van alle beschikbare pakketten, waarin een
   aantal pakketgroepen weergegeven worden. De momenteel geselecteerde groep
   (“Geïnstalleerde pakketten”) wordt geaccentueerd, en de beschrijving ervan
   wordt getoond in de onderste zwarte ruimte.

   Zoals de bovenste regel van het scherm suggereert, krijgt u toegang tot de
   menu's van aptitude met de toetsencombinatie Control+t (ook geldig zijn:
   Control+Spatie en F10); indien uw systeem dit ondersteunt kunt u ook met
   de muis op een menutitel klikken. Door Control+t in te drukken opent u het
   menu Acties:

  Acties  Ongedaan maken  Pakket  Zoeken Opties  Weergaven  Hulp
 +-------------------------+  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 |Installeer/verwijder pakketten g|
 |Werk pakketlijst bij      u|
 |Vergeet nieuwe pakketten f|
 |Schoon pakketcache op |akketten
 |Schoon verouderde bestanden op|
 |Markeer als opwaardeerbaar U|
 |Mijnenveger spelen       |
 |Beheerder worden     |
 +-------------------------+
 |Afsluiten               Q|
 +-------------------------+
 Deze pakketten zijn op dit moment geïnstalleerd op uw computer.









 Doe alle uit te voeren installaties en verwijderingen

   Maak gebruik van de pijltjestoetsen en Enter om menu-items te selecteren
   (of, indien uw systeem dat ondersteunt, klik erop met de muis). Om het
   menu te sluiten zonder iets te selecteren, drukt u opnieuw op Control+t.
   Het momenteel geaccentueerde menu-item, wordt onderaan het scherm
   toegelicht. Indien een menu-item met een sneltoets geactiveerd kan worden,
   wordt die in het menu getoond: bijvoorbeeld het commando “Werk pakketlijst
   bij” kan geactiveerd worden door op u te drukken.

   Op ieder ogenblik kunt u op ? drukken om een online overzicht van de
   beschikbare sneltoetsen te bekomen.

  Door de pakketlijst van aptitude navigeren

   De pakketlijst is de belangrijkste interface naar aptitude. Als aptitude
   opstart, wordt de lijst opgedeeld in een aantal groepen, zoals te zien is
   in de volgende schermafbeelding:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.2.14.1
 --- Geïnstalleerde pakketten
 --- Niet-geïnstalleerde pakketten
 --- Verouderde en lokaal aangemaakte pakketten
 --- Virtuele pakketten
 --- Taken






 Deze pakketten zijn op dit moment geïnstalleerd op uw computer.









   [Opmerking] Opmerking
               Lege pakketgroepen worden door aptitude automatisch verborgen.
               Zelf krijgt u dus misschien meer of minder groepen te zien dan
               op deze schermafbeelding getoond wordt.

   Op de bovenstaande schermafbeelding wordt de eerste groep (“Geïnstalleerde
   pakketten”) geaccentueerd om aan te geven dat die momenteel geselecteerd
   is, U kunt met de pijltjestoetsen de keuzebalk naar boven en beneden
   verplaatsen. Merk op dat ook de beschrijving onderaan de pakketlijst
   wijzigt als u dat doet. Om een groep “uit te vouwen”, drukt u op Enter
   terwijl de groep geselecteerd is:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.2.14.1
 --\ Geïnstalleerde pakketten
   --- beheer - Administratieve middelen (software installeren, gebruikersbeheer, enz)
   --- basis - Het Debian basissysteem
   --- ontwikkeling - Hulpmiddelen en programma's voor softwareontwikkeling
   --- doc - Documentatie en gespecialiseerde programma's om documentatie te bekijken
   --- editors - Teksteditors en tekstverwerkers
   --- elektronica - Programma's om met schakelingen en elektronica te werken
   --- spelen - Spelen, spelletjes en leuke programma's
   --- gnome - Het bureaubladsysteem GNOME
   --- illustraties - Middelen om grafische bestanden te maken, te bekijken en te bewerken

 Deze pakketten zijn op dit moment geïnstalleerd op uw computer.









   Zoals u kunt zien, werd de groep “Geïnstalleerde pakketten” uitgevouwen om
   zijn inhoud te laten zien: hij bevat een aantal subgroepen, min of meer
   gedefinieerd aan de hand van de software die ze bevatten. Als we de sectie
   “beheer” uitvouwen door ze te selecteren en op Enter te drukken, zien we:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.2.14.1
 --\ Geïnstalleerde pakketten
   -- beheer - Administratieve middelen (software installeren, gebruikersbeheer, enz)
     --- main - Het hoofdarchief van Debian
   --- basis - Het Debian basissysteem
   --- ontwikkeling - Hulpmiddelen en programma's voor softwareontwikkeling
   --- doc - Documentatie en gespecialiseerde programma's om documentatie te bekijken
   --- editors - Teksteditors en tekstverwerkers
   --- elektronica - Programma's om met schakelingen en elektronica te werken
   --- spelen - Spelen, spelletjes en leuke programma's
   --- gnome - Het bureaubladsysteem GNOME

 Pakketten uit de sectie 'beheer' laten u toe administratieve taken uit te voeren
 zoals software installeren, gebruikersbeheer, uw systeem configureren en monitoren,
 netwerktrafiek onderzoeken, enzovoort.







   De groep “beheer” bevat een enkele subgroep, “main”, het hoofdarchief van
   Debian. Als deze groep uitgevouwen wordt, worden enkele pakketten
   zichtbaar!

   [Tip] Tip
         Om tijd te sparen kunt u de [-toets gebruiken om alle subgroepen van
         een groep in een keer uit te vouwen. Als u “Geïnstalleerde
         pakketten” had geselecteerd en op [ gedrukt, had u onmiddellijk de
         pakketten uit de onderstaande schermafdruk te zien gekregen.

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.2.14.1
 --\ Geïnstalleerde pakketten
   --\ beheer - Administratieve middelen (software installeren, gebruikersbeheer, enz.)
     --\ main - Het hoofdarchief van Debian
 i     acpid                                                1.0.3-19   1.0.3-19
 i     alien                                                8.44       8.44
 i     anacron                                              2.3-9      2.3-9
 i     apt-show-versions                                    0.07       0.07
 i A   apt-utils                                            0.5.25     0.5.25
 i     apt-watch                                            0.3.2-2    0.3.2-2
 i     aptitude                                             0.2.14.1-2 0.2.14.1-2

 De Debian distributie bestaat uit pakketten uit de sectie 'main'. Elk
 pakket uit 'main' is Vrije Software.

 Voor meer informatie over wat Debian als Vrije Software beschouwt, zie
 http://www.debian.org/social_contract#guidelines





   Behalve met de pijltjestoetsen kunt u de keuzebalk ook met een ganse
   pagina tegelijk door de pakketlijst verplaatsen met behulp van de toetsen
   Page Up en Page Down.

   [Tip] Tip
         Indien er meer informatie is dan in de onderste helft van het scherm
         past, kunnen de toetsen a en z gebruikt worden om door de informatie
         te scrollen.

  Pakketten op naam zoeken

   Om snel een pakket te vinden waarvan u de naam kent, drukt u op / om een
   zoekdialoogvenster te openen:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.2.14.1
 i     frozen-bubble                                        1.0.0-5    1.0.0-5
 i A   frozen-bubble-data                                   1.0.0-5    1.0.0-5
 i     geekcode                                             1.7.3-1    1.7.3-1
 i     gfpoken                                              0.25-3     0.25-3
 i     ggz-gnome-client                                     0.0.7-2    0.0.7-2
 i     ggz-gtk-client                                       0.0.7-1    0.0.7-1
 i     ggz-gtk-game-data                                    0.0.7-2    0.0.7-2
 i +--------------------------------------------------------------------------+
 i |Zoeken naar:                                                               |
 i |froz                                                                      |
 Po|                             [ Ok ]                             [ Cancel ]|
 Fr+--------------------------------------------------------------------------+
 probeert bellen naar groepen van gelijke kleur te schieten om ze te doen ploffen. Het
 heeft 100 niveau's in de een-speler modus, een twee-spelers modus, muziek en een
 frappante grafische vormgeving.

 Volgens een hardnekkig gerucht lag dit spel aan de basis van het uitstel van de release van Woody.

 URL: http://www.frozen-bubble.org/


   Zoals u op de bovenstaande schermafdruk kunt zien, levert een zoekopdracht
   froz het pakket frozen-bubble als resultaat op. Met de krachtige zoektaal
   van aptitude, die in de paragraaf met de naam “Zoekpatronen” beschreven
   wordt, kunt u pakketten opzoeken aan de hand van vele complexe criteria.

   [Tip] Tip
         U kunt achterwaarts zoeken in de pakketlijst door op \ te drukken en
         u kunt de laatste zoekopdracht herhalen door na het sluiten van het
         zoekvenster op n te drukken.

   Soms kan het nuttig zijn om alle pakketten te verbergen, behalve die welke
   beantwoorden aan een specifiek criterium. Om dit te doen moet u op l
   drukken:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.2.14.1
 --- Geïnstalleerde pakketten
 --- Niet-geïnstalleerde pakketten
 --- Verouderde en lokaal aangemaakte pakketten
 --- Virtuele pakketten
 --- Taken


   +--------------------------------------------------------------------------+
   |Voer de nieuwe beperking voor de pakketboom in:                                         |
   |apti                                                                      |
   |                             [ Ok ]                           [ Annuleren ]|
 De+--------------------------------------------------------------------------+ a









   Dit dialoogvenster werkt op exact dezelfde manier als het zoekvenster,
   behalve dat het alle pakketten verbergt die niet aan de zoekopdracht
   beantwoorden, in plaats van het volgende pakket dat aan de zoekopdracht
   beantwoordt te accentueren. Door bijvoorbeeld apti in het dialoogvenster
   in te typen en op Enter te drukken zullen alle pakketten verborgen worden,
   uitgezonderd die welke “apti” in hun naam hebben:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.2.14.1
 --\ Geïnstalleerde pakketten
   --\ beheer - Administratieve middelen (software installeren, gebruikersbeheer, enz.)
     --\ main - Het hoofdarchief van Debian
 i     aptitude                                             0.2.14.1-2 0.2.14.1-2
 i A   synaptic                                             0.51-1     0.51-1
   --\ x11 - Het X-windowsysteem en aanverwante software
     --\ main - Het hoofdarchief van Debian
 i     xfree86-driver-synaptics                             0.13.3-1   0.13.3-1
 --- Niet-geïnstalleerde pakketten
 --- Virtuele Pakketten

 Deze pakketten zijn op dit moment geïnstalleerd op uw computer.









  Pakketten beheren

   Nu u door de lijst met pakketten kunt bewegen, wordt het tijd om aptitude
   te beginnen gebruiken voor het installeren en verwijderen van pakketten.
   In dit onderdeel zult u leren hoe u pakketten moet markeren om
   geïnstalleerd, verwijderd of opgewaardeerd te worden.

   [Tip] Tip
         U kunt de installatie van uw systeem enkel wijzigen als u de root
         gebruiker (systeembeheerder) bent. Indien u met aptitude wilt
         experimenteren, kunt u het veilig uitvoeren als een andere gebruiker
         dan root, waardoor het gevaar dat u het systeem beschadigt,
         uitgesloten wordt. aptitude zal u verwittigen als u iets tracht te
         doen dat enkel door root kan gedaan worden en als u wilt doorgaan
         zult u het wachtwoord van root moeten intypen.

   Het doorvoeren van een wijziging aan een pakket begint bij het markeren
   ervan in de pakketlijst, waarna een toets ingedrukt wordt die overeenkomt
   met de actie die uitgevoerd moet worden. De basale actietoetsen ^[2] zijn
   + om een pakket te installeren of op te waarderen, - om een pakket te
   verwijderen en = om te voorkomen dat een pakket automatisch opgewaardeerd
   wordt (dit staat bekend onder de term een pakket handhaven). Deze acties
   worden niet onmiddellijk uitgevoerd. aptitude zal enkel de pakketlijst
   bijwerken om de aangevraagde wijziging zichtbaar te maken.

   De volgende schermafdruk is een voorbeeld waarbij het pakket
   kaffeine-mozilla geselecteerd was en + ingedrukt werd. Het pakket wordt nu
   in het groen geaccentueerd en de letter “i” is links van zijn naam
   zichtbaar geworden om aan te geven dat het geïnstalleerd zal worden.
   Daarenboven wordt een schatting getoond van de hoeveelheid schijfruimte
   die door het pakket ingenomen zal worden.

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.2.14.1                  Zal 2925kB schijfruimte gebruiken  DL-grootte: 1375kB
   --\ kde - Het bureaubladsysteem KDE
     --\ main - Het hoofdarchief van Debian
 p     bibletime-i18n                                        <geen>     1.4.1-1
 p     education-desktop-kde                                 <geen>     0.771
 p     junior-kde                                            <geen>     1.4
 piA   kaffeine                                      +2843kB <geen>     0.4.3-1
 pi    kaffeine-mozilla                              +81.9kB <geen>     0.4.3-1
 p     karamba                                               <geen>     0.17-5
 p     kde-devel                                             <geen>     4:3.1.2
 p     kde-devel-extras                                      <geen>     4:3.1.2
 De KDE bureaubladomgeving (ontwikkelaarsbestanden)
 Een meta-pakket met vereisten voor de basisontwikkelaarssuite van KDE
 met kdesdk, qt3-designer, en alle kernpakketten van KDE-dev.








   [Tip] Tip
         Op elk moment kunt u Ongedaan maken → Ongedaan maken (Control+u)
         gebruiken om gelijk welke verandering aan één of meer pakketten
         “ongedaan te maken”. Dit is erg handig in het geval een actie
         onvoorziene gevolgen heeft en u ze wenst te “herroepen”.

   Naast acties die betrekking hebben op individuele pakketten, staat er nog
   een andere belangrijke actie ter beschikking: U typen heeft tot gevolg dat
   geprobeerd zal worden om alle pakketten op te waarderen waarvoor dat
   mogelijk is. U zou dit commando geregeld moeten gebruiken om uw systeem
   up-to-date te houden.

    Het beheer van defecte pakketten

   Soms gebeurt het dat het veranderen van de toestand van een pakket ertoe
   leidt dat er onvoldane vereisten ontstaan. Van pakketten met onvoldane
   vereisten wordt gezegd dat ze defect of gebroken zijn. aptitude zal u
   verwittigen wanneer dat het geval is en uitleggen waarom zich dit
   voordeed. Dit is bijvoorbeeld wat er gebeurt als men sound-juicer tracht
   te verwijderen:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.3.3       #Defect: 1   Er zal 48.6MB schijfruimte vrijkomen
 i A   nautilus                                             2.10.1-4   2.10.1-4
 i     nautilus-cd-burner                                   2.10.2-1.1 2.10.2-1.1
 i A   nautilus-data                                        2.10.1-4   2.10.1-4
 i     netspeed                                             0.12.1-1   0.12.1-1
 i A   oaf                                                  0.6.10-3   0.6.10-3
 i     pybliographer                                        1.2.6.2-1  1.2.6.2-1
 i     rhythmbox                                            0.8.8-13   0.8.8-13
 i     shermans-aquarium                                    3.0.1-1    3.0.1-1
 idA   sound-juicer                                 -1733kB 2.10.1-3   2.10.1-3
 GNOME 2 CD Ripper
 sound-juicer zal verwijderd worden.


 De volgende pakketten hangen af van sound-juicer en zullen defect raken door het
 te verwijderen:


   * gnome-desktop-environment hangt af van sound-juicer

 [1(1)/...] Suggereert 2 te behouden
 e: Onderzoeken  !: Toepassen  .: Volgende  ,: Vorige

   Zoals u kunt zien, geeft aptitude met drie indicatoren weer dat er iets
   fout gelopen is: ten eerste wordt het aantal defecte pakketten weergegeven
   in het bovenste blauwe gebied; ten tweede is de onderste helft van het
   scherm veranderd en beschrijft die de defecte pakketten die verband houden
   met het momenteel gemarkeerde pakket; ten derde verschijnt er onderaan het
   scherm een regel met een suggestie over hoe het probleem opgelost kan
   worden. Om in de pakketlijst snel defecte pakketten te vinden, kunt u op b
   drukken of zoeken naar ?broken.

   [Opmerking] Opmerking
               De tekst [1(1)/...] geeft de voortgang weer van de
               vereistenoplosser van aptitude. Het eerste cijfer is de
               oplossing die u momenteel geselecteerd heeft en het tweede is
               het aantal oplossingen dat aptitude reeds uitgewerkt heeft. De
               aanwezigheid van de tekst “...” geeft aan dat er buiten de
               uitgewerkte oplossingen mogelijk nog andere zijn. Indien
               aptitude zeker was dat de uitgewerkte oplossing de enig
               mogelijke was, zou deze indicator er zo uitzien: [1/1].

   Om bijkomende informatie te zien over hoe aptitude denkt dat u dit
   probleem kunt oplossen, drukt u op e. Er zal dan een scherm verschijnen
   dat op het volgende gelijkt:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
                 Pakketten                          Oplossen van vereisten
   --\ Behoud de volgende pakketten op hun huidige versie:
     gstreamer0.8-cdparanoia                           [0.8.10-1 (unstable, nu)]
     sound-juicer                                                [2.10.1-2 (nu)]
















 [1(1)/...] Suggereert 2 te behouden
 e: Onderzoeken  !: Toepassen  .: Volgende  ,: Vorige

   Van hieruit kunt u meer oplossingen te zien krijgen door op . te drukken
   of terugkeren naar oplossingen die u eerder onderzocht, door op , te
   drukken. Om de huidige oplossing toe te passen en naar de pakketlijst
   terug te keren, moet u op ! drukken. Op . drukken terwijl het bovenstaande
   scherm zichtbaar is, resulteert bijvoorbeeld in het voorstellen van de
   volgende oplossing:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
                 Pakketten                          Oplossen van vereisten
   --\ Behoud de volgende pakketten op hun huidige versie:
     sound-juicer                                      [2.10.1-3 (unstable, nu)]
   --\ Degradeer de volgende pakketten:
     gstreamer0.8-cdparanoia          [0.8.11-1 unstable, nu -> 0.8.8-3 testing]















 [2(2)/...] Suggereert 1 te behouden,1 te degraderen
 e: Onderzoeken  !: Toepassen  .: Volgende  ,: Vorige

   Naast de basale commando's om door oplossingen te navigeren, kunt u op r
   drukken om acties te “verwerpen” die u afwijst. De eerste oplossing zal
   bijvoorbeeld het verwijderen van sound-juicer annuleren -- net de actie
   die we trachtten uit te voeren! Door op het item dat met die actie
   overeenkomt op r te drukken, kunnen we aptitude vertellen dat het de
   verwijdering van sound-juicer niet op die manier zou mogen annuleren.

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
                 Pakketten                          Oplossen van vereisten
   --\ Behoud de volgende pakketten op hun huidige versie:
     gstreamer0.8-cdparanoia                           [0.8.11-1 (unstable, nu)]
 R   sound-juicer                                      [2.10.1-3 (unstable, nu)]






 GNOME 2 CD Ripper
 gnome-desktop-environment is afhankelijk van sound-juicer
 --\ De volgende acties zullen deze vereiste oplossen:
   -> Verwijder gnome-desktop-environment [1:2.10.2.3 (unstable, testing, nu)]
 R -> Annuleer de verwijdering van sound-juicer
   -> Degradeer sound-juicer [2.10.1-3 (unstable, nu) -> 0.6.1-2 (testing)]




 [1(1)/...] Suggereert 2 te behouden
 e: Onderzoeken  !: Toepassen  .: Volgende  ,: Vorige

   Zoals u kunt zien, is het item uit de lijst dat overeenkomt met het
   behouden van sound-juicer op zijn huidige versie, rood geworden en
   gemarkeerd met een “R”, wat aangeeft dat dit verworpen werd. Toekomstige
   oplossingen die u genereert (wat elke oplossing is die u nog niet gezien
   heeft) zullen deze actie niet bevatten, al blijven oplossingen met deze
   actie die eerder al gegenereerd werden, wel beschikbaar.

   [Opmerking] Opmerking
               In de bovenstaande schermweergave wordt een beschrijving van
               sound-juicer weergegeven in het midden van het scherm.
               Daaronder ziet u de vereiste die er voor zorgde dat
               sound-juicer behouden moest blijven op zijn huidige versie,
               samen met alle manieren om deze vereiste op te lossen die
               bekend zijn aan aptitude.

   Bijvoorbeeld, indien deze afwijzing gebeurt onmiddellijk na de poging om
   sound-juicer te verwijderen, zal drukken op . de volgende oplossing
   ophalen en de oplossing overslaan die de installatie van sound-juicer
   annuleert en gstreamer0.8-cdparanoia degradeert.

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
                 Pakketten                          Oplossen van vereisten
   --\ Verwijder de volgende pakketten:
     gnome-desktop-environment              [1:2.10.2.3 (unstable, testing, nu)]

















 [2(2)/...] Suggereert 1 te verwijderen
 e: Onderzoeken  !: Toepassen  .: Volgende  ,: Vorige

   Afwijzingen worden enkel toegepast op nieuw gegenereerde oplossingen. Dat
   zijn oplossingen die gegenereerd worden als u op . drukt terwijl u de
   laatst gegenereerde oplossing bekijkt. Eerder gegenereerde oplossingen
   kunnen die afgewezen elementen nog steeds bevatten. U kunt op elk ogenblik
   een afwijzing herroepen door de afgewezen actie nog eens te selecteren en
   op r te drukken. Dit zal toelaten dat opnieuw oplossingen gegenereerd
   worden die deze actie bevatten, met inbegrip van eventuele oplossingen die
   vroeger “overgeslagen” werden.

   Het tegengestelde van een actie verwerpen is ze goedkeuren. Om een actie
   goed te keuren, moet u ze selecteren en op a drukken. Dit dwingt de
   probleemoplosser ertoe om voor die actie te kiezen telkens wanneer dat
   mogelijk is^[3]. Goedgekeurde acties krijgen een groene kleur en worden
   met de letter “A” aangeduid, zoals in de volgende schermweergave:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
                 Pakketten                          Oplossen van vereisten
   --\ Verwijder de volgende pakketten:
 A   gnome-desktop-environment              [1:2.10.2.3 (unstable, testing, nu)]

















 [2(2)/...] Suggereert 1 te verwijderen
 e: Onderzoeken  !: Toepassen  .: Volgende  ,: Vorige

   [Belangrijk] Belangrijk
                Indien u geen enkele defecte vereiste oplost, zal aptitude
                automatisch zijn huidige suggestie toepassen op het ogenblik
                dat u uw selecties effectief toepast door op g te drukken.
                Automatisch vereistenproblemen oplossen is echter een
                moeilijke klus en het is dus mogelijk dat u niet gelukkig
                bent met het resultaat. In het algemeen is het daarom beter
                te bekijken wat aptitude van plan is te doen, vooraleer u uw
                selecties toepast.

  De pakketlijst bijwerken en pakketten installeren

   Vanaf nu weet u voldoende over aptitude om daadwerkelijk veranderingen aan
   uw systeem aan te brengen.

   Geregeld moet u uw lijst van de op de Debian servers beschikbare pakketten
   bijwerken om op de hoogte te blijven van nieuwe pakketten en nieuwe
   pakketversies. Om dat te doen, drukt u op u. Op gelijk welk moment tijdens
   het downloaden, kunt u op q drukken om het proces af te breken.

   Als u een ververste pakketlijst heeft, kunt u de pakketten kiezen die u
   wilt opwaarderen, installeren of verwijderen, zoals in het vorige
   onderdeel beschreven werd. Om na te kijken welke acties u aangevraagd
   heeft, drukt u eenmaal op g. Bij het installeren van het pakket
   kaffeine-mozilla (uit het vorige voorbeeld), verschijnt het volgende
   scherm:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.2.14.1                  Zal 2925kB schijfruimte gebruiken  DL grootte: 1375kB
 --\ Automatisch te installeren pakketten om aan een vereiste te voldoen
 piA kaffeine                                        +2843kB <none>     0.4.3-1
 --\ Te installeren pakketten
 pi  kaffeine-mozilla                                +81.9kB <none>     0.4.3-1







 Deze pakketten worden geïnstalleerd omdat ze vereist zijn door een ander
 pakket dat u wilt installeren.

 Als u een pakket selecteert, komt in deze ruimte
 uitleg over zijn huidige toestand.





   Zoals u kunt zien, besliste aptitude automatisch om voor mij kaffeine te
   installeren, omdat kaffeine-mozilla het vereist. Op dit punt heb ik de
   keuze om ofwel voort te gaan met de installatie door op g te drukken, of
   ze af te breken door op q te drukken.

Aan de commandoregel aptitude gebruiken

   Behalve via zijn “visuele” interface, beschreven in het vorige onderdeel,
   kunt u aptitude rechtstreeks aan de commandoregel gebruiken om pakketten
   te beheren op dezelfde manier als u apt-get zou gebruiken. Dit deel
   behandelt de meest gebruikelijke acties van aptitude aan de commandoregel.
   Raadpleeg voor meer informatie de aptitude commandoregel referentiegids.

   Over het algemeen ziet het gebruik van aptitude aan de commandoregel er
   als volgt uit:

   aptitude actie [argumenten...]

   actie zegt aptitude welke actie er ondernomen moet worden. De overige
   argumenten worden op een optiespecifieke wijze gebruikt. Meestal bestaan
   ze uit pakketnamen en schakelopties voor de commandoregel^[4].

   De belangrijkste acties zijn:

   aptitude update

           Dit commando werkt de pakketlijst bij, zoals wanneer u bij de
           visuele interface op u zou drukken.

   aptitude safe-upgrade

           Dit commando zal zoveel mogelijk pakketten opwaarderen zonder
           evenwel pakketten te verwijderen.

           Soms is het nodig dat een pakket verwijderd wordt om een ander op
           te waarderen. Dit commando kan in dergelijke omstandigheden het
           pakket niet opwaarderen. Gebruik het commando full-upgrade om ook
           deze pakketten op te waarderen.

   aptitude full-upgrade

           Net zoals safe-upgrade zal dit commando proberen pakketten op te
           waarderen, maar op het gebied van het oplossen van
           vereistenproblemen gaat het agressiever te werk: het zal pakketten
           installeren en verwijderen totdat aan alle vereisten voldaan werd.
           Gezien de aard van dit commando is het mogelijk dat het ongewenste
           zaken doet en dus zou u het omzichtig moeten gebruiken.

           [Opmerking] Opmerking
                       Om historische redenen werd dit commando
                       oorspronkelijk dist-upgrade genoemd en ook die
                       benaming wordt nog steeds door aptitude herkend.

   aptitude [ install | remove | purge ] pkkt1 [pkkt2...]

           Deze opdrachten installeren, verwijderen of wissen^[5] de
           opgegeven pakketten. Het “installeren” van een pakket dat al
           geïnstalleerd is, maar wel opgewaardeerd kan worden, zal als
           effect hebben dat dit pakket opgewaardeerd wordt.

   aptitude search patroon1 [patroon2...]

           Dit commando zoekt naar pakketten waarvan de naam het (een van de)
           opgegeven patro(o)n(en) bevat en geeft het resultaat weer in de
           terminal. Behalve een gewoon stukje tekst, kan elk patroon een
           zoekpatroon zijn, zoals beschreven in de paragraaf met de naam
           “Zoekpatronen”. ^[6] Bijvoorbeeld, “aptitude search gnome kde” zal
           alle pakketten weergeven waarvan de naam ofwel “gnome” ofwel “kde”
           bevat.

   aptitude show pkkt1 [pkkt2...]

           Toont in de terminal informatie over elk pkkt.

   Alle commando's die pakketten installeren, opwaarderen of verwijderen
   aanvaarden de parameter -s, die staat voor “simuleren”. Als -s opgegeven
   werd aan de commandoregel, voert het programma al de acties uit die het
   normaal zou uitvoeren, maar downloadt of installeert/verwijdert het de
   bestanden niet effectief.

   aptitude zal soms reageren met een prompt zoals deze:

 De volgende NIEUWE pakketten zullen automatisch worden geïnstalleerd:
   space-orbit-common
 De volgende NIEUWE pakketten zullen worden geïnstalleerd:
   space-orbit space-orbit-common
 0 pakketten opwaarderen, 2 nieuwe installeren, 0 verwijderen en 0 niet opwaarderen.
 Heb 3200kB archieven nodig. Na uitpakken zal 8413kB worden gebruikt.
 Wilt u verdergaan? [Y/n/?]

   Naast de vanzelfsprekende opties “Yes” en “No”, staan er nog een aantal
   commando's ter beschikking die gebruikt kunnen worden om de informatie die
   aan de prompt getoond wordt te wijzigen of om verdere acties op te geven.
   Bijvoorbeeld op s drukken zal informatie tonen/verbergen over hoeveel
   ruimte door elk pakket ingenomen zal worden:

 Wilt u verdergaan? [Y/n/?]  s

 Verschillen in grootte worden getoond.

 De volgende NIEUWE pakketten zullen automatisch worden geïnstalleerd:
   space-orbit-common <+8020kB>
 De volgende NIEUWE pakketten zullen worden geïnstalleerd:
   space-orbit <+393kB> space-orbit-common <+8020kB>
 0 pakketten opwaarderen, 2 nieuwe installeren, 0 verwijderen en 0 niet opwaarderen.
 Heb 3200kB archieven nodig. Na uitpakken zal 8413kB worden gebruikt.
 Wilt u verdergaan? [Y/n/?]

   Analoog daarmee zal op d drukken informatie oproepen over automatisch
   geïnstalleerde of verwijderde pakketten:

 De volgende NIEUWE pakketten zullen automatisch worden geïnstalleerd:
   space-orbit-common (D: space-orbit)
 De volgende NIEUWE pakketten zullen worden geïnstalleerd:
   space-orbit space-orbit-common
 0 pakketten opwaarderen, 2 nieuwe installeren, 0 verwijderen en 0 niet opwaarderen.
 Heb 3200kB archieven nodig. Na uitpakken zal 8413kB worden gebruikt.

   Dit laat zien dat space-orbit-common wordt geïnstalleerd omdat space-orbit
   dit vereist. U kunt de volledige lijst van wat u kunt invoeren zien door
   aan de prompt ? in te voeren.

   Indien uw verzoek vereisten geweld aandoet op een manier die geen
   eenvoudige oplossing meer toelaat, zal aptitude u vragen wat het moet
   doen:

 De volgende pakketten zijn DEFECT:
   libsdl1.2debian
 De volgende pakketten zullen worden VERWIJDERD:
   libsdl1.2debian-alsa
 .
 .
 .
 De volgende acties zullen deze vereisten oplossen:

 Installeer de volgende pakketten:
 libsdl1.2debian-all [1.2.12-1 (unstable)]

 Score is 41

 Deze oplossing aanvaarden? [Y/n/q/?]

   Op y drukken (of gewoon enter indrukken) zal de voorgestelde oplossing
   aanvaarden, Op n drukken zal de “beste eropvolgende” oplossing weergeven:

 Deze oplossing aanvaarden? [Y/n/q/?] n
 De volgende acties zullen deze vereisten oplossen:

 Installeer de volgende pakketten:
 libsdl1.2debian-esd [1.2.12-1 (unstable)]

 Score is 19

 Deze oplossing aanvaarden? [Y/n/q/?]

   Zoals dat bij de hoofdprompt aan de commandoregel het geval is, kunt u aan
   de prompt van de vereistenoplosser een aantal bijkomende acties uitvoeren,
   met inbegrip van het manueel veranderen van de toestand van pakketten. Typ
   ? om een volledige lijst te zien te krijgen.

   Als u q typt, zal de automatische oplosser afgebroken worden en krijgt u
   de kans de vereistenproblemen manueel op te lossen:

 Deze oplossing aanvaarden? [Y/n/q/?] q
 aptitude slaagde niet in het vinden van een oplossing voor deze vereisten. U kunt ze zelf handmatig oplossen ofwel 'n' typen om te stoppen.
 De volgende pakketten hebben niet-voldane vereisten:
   libsdl1.2debian: Hangt af van: libsdl1.2debian-alsa (= 1.2.12-1) maar het kan niet geïnstalleerd worden, of
                             libsdl1.2debian-all (= 1.2.12-1) maar het kan niet geïnstalleerd worden, of
                             libsdl1.2debian-esd (= 1.2.12-1) maar het kan niet geïnstalleerd worden, of
                             libsdl1.2debian-arts (= 1.2.12-1) maar het kan niet geïnstalleerd worden, of
                             libsdl1.2debian-oss (= 1.2.12-1) maar het kan niet geïnstalleerd worden, of
                             libsdl1.2debian-nas (= 1.2.12-1) maar het kan niet geïnstalleerd worden, of
                             libsdl1.2debian-pulseaudio (= 1.2.12-1) maar het kan niet geïnstalleerd worden
 Deze vereisten handmatig oplossen? [N/+/-/_/:/?]

   Om de defecte vereisten op te lossen kunt u gebruik maken van alle
   commando's voor het manipuleren van pakketten (typ ? voor een volledige
   lijst van beschikbare commando's). Typ n of druk enter om aptitude te
   beëindigen:

 Deze vereisten handmatig oplossen? [N/+/-/_/:/?] n
 Afbreken.

   Raadpleeg Referentiegids voor de commandoregel voor een volledige
   documentatie bij de functies van aptitude aan de commandoregel.

   --------------------------------------------------------------------------

   ^[2] U kunt ook veranderingen aan pakketten doorvoeren via het menu
   Pakket; zie de paragraaf met de naam “Het menu Pakket” voor de details.

   ^[3] Een actie goedkeuren is niet helemaal hetzelfde als eisen dat alle
   oplossingen die actie bevatten. De betekenis is eerder dat als er een
   keuze is tussen een goedgekeurde actie en een niet-goedgekeurde, de
   oplosser steeds voor de goedgekeurde actie zal kiezen. Indien er meerdere
   mogelijke goedgekeurde acties zijn, zijn ze allemaal kandidaat om in de
   oplossing opgenomen te worden.

   ^[4] Een “schakeloptie” is een letter voorafgegaan door een
   verbindingsstreepje: bijvoorbeeld, “-a”, “-v”, enz.

   ^[5] Het wissen (purge) van een pakket verwijdert het pakket en ook zijn
   configuratiebestanden.

   ^[6] Hetzelfde geldt in feite voor de commando's die pakketten als
   argument hebben, zoals install of show.

                    Hoofdstuk 2. De aptitude referentiegids

   Inhoudsopgave

   De terminal-gebruikersinterface van aptitude

                De menu's gebruiken

                Menu-commando's

                Met verschillende weergaven werken

                Systeembeheerder (root) worden

   Pakketten beheren

                De pakketlijst beheren

                Informatie over pakketten opzoeken

                De toestand van een pakket wijzigen

                Pakketten ophalen, installeren en verwijderen

                De betrouwbaarheid van pakketten begrijpen en ermee omgaan

                Automatisch geïnstalleerde pakketten beheren

   Vereisten van pakketten oplossen

                Het oplossen van vereisten in aptitude

                Onmiddellijke vereistenoplossing

                Vereisten interactief oplossen

                Kosten van de interactieve vereistenoplosser

                De interactieve vereistenoplosser configureren

   Zoekpatronen

                Naar tekenreeksen zoeken

                Verkorte notatie voor zoektermen

                Zoekopdrachten en versies

                Expliciete zoekdoelen

                Referentiegids voor zoektermen

   Aanpassingen maken aan aptitude

                De pakketlijst aanpassen

                Sneltoetsen aanpassen

                De kleur en de vormgeving van tekst aanpassen

                De schermopmaak aanpassen

                Referentiegids voor het configuratiebestand

                Thema's

   Mijnenveger spelen

     Het Witte Konijn zette zijn bril op. 'Alstublieft, uwe majesteit, waar  
     zal ik beginnen?' vroeg hij.

     'Begin bij het begin,' sprak de Koning ernstig, 'en ga verder tot u
     aan het einde komt: stop daar.'
                                         -- Lewis Carrol, Alice in Wonderland

   aptitude is een uitgebreid programma met veel mogelijkheden en soms is het
   moeilijk om zich te herinneren hoe iets gedaan moet worden, of zelfs of
   iets hoe dan ook wel mogelijk is. De auteur krijgt inderdaad veel vragen
   om functies toe te voegen die eigenlijk al bestaan maar moeilijk te vinden
   zijn. ^[7]

   In een poging om deze onduidelijkheid tegen te gaan, beschrijft deze
   referentiegids alle functionaliteit en elke configuratieparameter van
   aptitude. Voor een toegankelijke gids bij de belangrijke functies van
   aptitude, zie Hoofdstuk 1, Aan de slag.

   [Opmerking] Opmerking
               Het gedrag en het voorkomen van aptitude kan op een aantal
               manieren geconfigureerd worden. Deze handleiding beschrijft
               hoe het programma werkt met de standaardinstellingen. Een
               beschrijving van hoe verschillende instellingen het gedrag
               beïnvloeden wordt gegeven in de paragraaf met de naam
               “Aanpassingen maken aan aptitude”.

De terminal-gebruikersinterface van aptitude

   Dit gedeelte beschrijft de onderdelen van de terminal-gebonden
   gebruikersinterface van aptitude die geen verband houden met het beheer
   van pakketten.

  De menu's gebruiken

   De menubalk bovenaan het scherm toont de belangrijkste commando's van
   aptitude. Om de menubalk te activeren, drukt u op Control+t (ook geldig
   zijn: Control+Spatie en F10). U kunt er dan in navigeren met de
   pijltjestoetsen en een menu-item selecteren met de Enter-toets.

   Sommige menu-items hebben ook een “sneltoets”: een letter of cijfer dat
   gebruikt kan worden om het item te selecteren terwijl het menu geactiveerd
   is. Deze sneltoetsen worden weergegeven in een helderder wit dan de rest
   van het menu.

   Daarenboven hebben sommige menu-items een “snelkoppeling”: een
   toetsencombinatie die dezelfde actie als het menu-item uitlokt als het
   menu niet geactiveerd is. Deze snelkoppelingen worden weergegeven aan de
   rechterkant van het menu.

   In het vervolg van de handleiding zullen menu-commando's op deze manier
   geschreven worden: Menu → Item (toets). Dit geeft aan dat u Item moet
   kiezen in het menu Menu en dat toets de sneltoets is voor dat commando.

  Menu-commando's

    Het menu Acties

   Afbeelding 2.1. Beschikbare commando's in het menu Acties

   +------------------------------------------------------------------------+
   |           Commando           |              Omschrijving               |
   |------------------------------+-----------------------------------------|
   |                              | Indien er nog geen voorafbeelding van   |
   |                              | de installatie zichtbaar is, geef er    |
   | Acties →                     | dan een weer; voer anders een           |
   | Installeer/verwijder         | installatieoperatie uit, zoals          |
   | pakketten (g)                | beschreven in de paragraaf met de naam  |
   |                              | “Pakketten ophalen, installeren en      |
   |                              | verwijderen”.                           |
   |------------------------------+-----------------------------------------|
   | Acties → Werk pakketlijst    | Maak de pakketlijst up-to-date.         |
   | bij (u)                      |                                         |
   |------------------------------+-----------------------------------------|
   |                              | Markeer alle opwaardeerbare pakketten   |
   | Acties → Markeer als         | om opgewaardeerd te worden, behalve die |
   | opwaardeerbaar (U)           | welke gehandhaafd werden of waarvan de  |
   |                              | opwaardering verboden werd.             |
   |------------------------------+-----------------------------------------|
   | Acties → Vergeet nieuwe      | Verwijder alle informatie over welke    |
   | pakketten (f)                | pakketten “nieuw” zijn (maak de boom    |
   |                              | van “Nieuwe Pakketten” leeg).           |
   |------------------------------+-----------------------------------------|
   |                              | Annuleer alle aanhangige acties uit     |
   |                              | deze sessie (waaronder installaties,    |
   | Acties → Annuleer aanhangige | verwijderingen, opwaarderingen,         |
   | acties                       | handhavingen, markeringen als           |
   |                              | automatisch geïnstalleerd...). Dit is   |
   |                              | ongeveer equivalent aan het programma   |
   |                              | opnieuw starten.                        |
   |------------------------------+-----------------------------------------|
   | Acties → Schoon pakketcache  | Verwijder alle gecomprimeerde pakketten |
   | op                           | die gedownload werden door aptitude     |
   |                              | ^[a].                                   |
   |------------------------------+-----------------------------------------|
   |                              | Verwijder alle gecomprimeerde pakketten |
   |                              | die gedownload werden door aptitude     |
   |                              | ^[a] en die niet langer beschikbaar     |
   |                              | zijn. Dit zijn pakketten waarvan        |
   | Acties → Schoon verouderde   | verondersteld kan worden dat ze         |
   | bestanden op                 | verouderd zijn en verwijderd kunnen     |
   |                              | worden om schijfruimte vrij te maken,   |
   |                              | zonder dat later nog een anders         |
   |                              | onnodige download ervan vereist zal     |
   |                              | zijn.                                   |
   |------------------------------+-----------------------------------------|
   |                              | Speel een spelletje Mijnenveger, zoals  |
   | Acties → Mijnenveger spelen  | beschreven in de paragraaf met de naam  |
   |                              | “Mijnenveger spelen”.                   |
   |------------------------------+-----------------------------------------|
   | Acties → Beheerder (root)    | Werk verder als de systeembeheerder     |
   | worden                       | (root user). Zie de paragraaf met de    |
   |                              | naam “Systeembeheerder (root) worden”.  |
   |------------------------------+-----------------------------------------|
   |                              | Sluit aptitude af en sla alle gemaakte  |
   | Acties → Afsluiten (Q)       | veranderingen aan de toestand van       |
   |                              | pakketten op.                           |
   |------------------------------------------------------------------------|
   | ^[a] Of gelijk welk ander apt-gereedschap.                             |
   +------------------------------------------------------------------------+

    Het menu Ongedaan maken

   Afbeelding 2.2. Beschikbare commando's in het menu Ongedaan maken

   +------------------------------------------------------------------------+
   |     Commando     |                    Omschrijving                     |
   |------------------+-----------------------------------------------------|
   |                  | Annuleer het effect van de laatste verandering aan  |
   | Ongedaan maken → | de toestand van een pakket, en ga maximaal terug    |
   | Ongedaan maken   | tot het moment waarop aptitude voor het laatst      |
   | (Control+u)      | opstart werd, de pakketlijst bijgewerkt werd of een |
   |                  | installatieoperatie uitgevoerd werd.                |
   +------------------------------------------------------------------------+

    Het menu Pakket

   Afbeelding 2.3. Beschikbare commando's in het menu Pakket

   +------------------------------------------------------------------------+
   |         Commando         |                Omschrijving                 |
   |--------------------------+---------------------------------------------|
   | Pakket → Installeren (+) | Markeer het momenteel geselecteerde pakket  |
   |                          | om geïnstalleerd te worden.                 |
   |--------------------------+---------------------------------------------|
   | Pakket → Herinstalleren  | Markeer het momenteel geselecteerde pakket  |
   | (L)                      | om opnieuw geïnstalleerd te worden.         |
   |--------------------------+---------------------------------------------|
   | Pakket → Verwijderen (-) | Markeer het momenteel geselecteerde pakket  |
   |                          | om verwijderd te worden.                    |
   |--------------------------+---------------------------------------------|
   | Pakket → Wissen (purge)  | Markeer het momenteel geselecteerde pakket  |
   | (_)                      | om gewist te worden.                        |
   |--------------------------+---------------------------------------------|
   |                          | Annuleer een eventueel aanhangig zijnde     |
   |                          | installatie, opwaardering of verwijdering   |
   | Pakket → Behouden (:)    | van het momenteel geselecteerde pakket en   |
   |                          | verwijder een eventuele toestand van        |
   |                          | handhaving waarin het pakket geplaatst      |
   |                          | werd.                                       |
   |--------------------------+---------------------------------------------|
   | Pakket → Handhaven (=)   | Bevries het momenteel geselecteerde pakket. |
   |--------------------------+---------------------------------------------|
   |                          | Markeer het momenteel geselecteerde pakket  |
   |                          | als een “automatisch geïnstalleerd” pakket. |
   | Pakket → Markeer als     | Voor meer informatie over handmatig en      |
   | Automatisch (M)          | automatisch geïnstalleerde pakketten, zie   |
   |                          | de paragraaf met de naam “Automatisch       |
   |                          | geïnstalleerde pakketten beheren”.          |
   |--------------------------+---------------------------------------------|
   |                          | Markeer het momenteel geselecteerde pakket  |
   |                          | als een “handmatig geïnstalleerd” pakket.   |
   | Pakket → Markeer als     | Voor meer informatie over handmatig en      |
   | Handmatig (m)            | automatisch geïnstalleerde pakketten, zie   |
   |                          | de paragraaf met de naam “Automatisch       |
   |                          | geïnstalleerde pakketten beheren”.          |
   |--------------------------+---------------------------------------------|
   |                          | Indien een pakket geselecteerd is, dat      |
   |                          | opgewaardeerd kan worden, verbied dan dat   |
   | Pakket → Verbied Versie  | het opgewaardeerd wordt naar de huidige     |
   | (F)                      | beschikbare versie. Indien een versie van   |
   |                          | een pakket geselecteerd is, verbied dan dat |
   |                          | het pakket naar deze versie opgewaardeerd   |
   |                          | wordt.                                      |
   |--------------------------+---------------------------------------------|
   |                          | Geef een scherm weer dat informatie bevat   |
   | Pakket → Informatie      | over het momenteel geselecteerde pakket,    |
   | (enter)                  | zoals de pakketten waarvan het afhankelijk  |
   |                          | is, de pakketten die dit pakket vereisen en |
   |                          | de beschikbare versies ervan.               |
   |--------------------------+---------------------------------------------|
   |                          | Loop bij het bladeren in de pakketlijst     |
   |                          | door de informatie die weergegeven kan      |
   |                          | worden in het informatiegebied (de onderste |
   |                          | helft van het scherm). Het informatiegebied |
   | Pakket → Wissel          | kan de uitgebreide beschrijving van het     |
   | pakketinformatie (i)     | geselecteerde pakket weergeven (het normale |
   |                          | gedrag), een samenvatting van de vereisten  |
   |                          | die met het pakket verband houden of een    |
   |                          | analyse van welke andere pakketten het      |
   |                          | geselecteerde pakket vereisen of            |
   |                          | suggereren.                                 |
   |--------------------------+---------------------------------------------|
   |                          | Geef over het momenteel geselecteerde       |
   |                          | pakket de Debian changelog (log van de      |
   | pakket → Log van         | eraan gemaakte wijzigingen) weer. Om de     |
   | wijzigingen (C)          | changelog over een specifieke versie te     |
   |                          | zien, moet u die versie selecteren en dit   |
   |                          | commando uitvoeren.                         |
   +------------------------------------------------------------------------+

    Het menu Oplosser

   Afbeelding 2.4. Beschikbare commando's in het menu Oplosser

   +------------------------------------------------------------------------+
   |     Commando      |                    Omschrijving                    |
   |-------------------+----------------------------------------------------|
   | Oplosser →        | Geef een gedetailleerde beschrijving weer van de   |
   | Bestudeer         | huidige suggestie van de probleemoplosser (zie de  |
   | Oplossing (e)     | paragraaf met de naam “Vereisten interactief       |
   |                   | oplossen”).                                        |
   |-------------------+----------------------------------------------------|
   | Oplosser →        | Voer de acties uit die de probleemoplosser         |
   | Aanvaard          | momenteel suggereert.                              |
   | Oplossing (!)     |                                                    |
   |-------------------+----------------------------------------------------|
   | Oplosser →        | Selecteer de volgende suggestie van de             |
   | Volgende          | probleemoplosser.                                  |
   | Oplossing (.)     |                                                    |
   |-------------------+----------------------------------------------------|
   | Oplosser → Vorige | Selecteer de vorige suggestie van de               |
   | Oplossing (,)     | probleemoplosser.                                  |
   |-------------------+----------------------------------------------------|
   | Oplosser → Eerste | Selecteer de eerste suggestie van de               |
   | Oplossing (<)     | probleemoplosser.                                  |
   |-------------------+----------------------------------------------------|
   | Oplosser →        | Selecteer de oplossing die de probleemoplosser     |
   | Laatste Oplossing | laatst genereerde (zie de paragraaf met de naam    |
   | (>)               | “Vereisten interactief oplossen”).                 |
   |-------------------+----------------------------------------------------|
   |                   | Zet bij het onderzoeken van een oplossing aan/uit  |
   | Oplosser →        | of de momenteel geselecteerde actie verworpen      |
   | Verworpen         | wordt en ga verder naar de volgende actie (zie de  |
   | aan-/uitzetten    | paragraaf met de naam “Vereisten interactief       |
   | (r)               | oplossen”). Indien de actie momenteel een          |
   |                   | goedkeuring heeft, dan wordt die goedkeuring       |
   |                   | geannuleerd.                                       |
   |-------------------+----------------------------------------------------|
   |                   | Zet bij het onderzoeken van een oplossing aan/uit  |
   | Oplosser →        | of de momenteel geselecteerde actie goedgekeurd    |
   | Goedgekeurd       | wordt en ga verder naar de volgende actie (zie de  |
   | aan-/uitzetten    | paragraaf met de naam “Vereisten interactief       |
   | (a)               | oplossen”). Indien de actie momenteel als          |
   |                   | afgekeurd aangegeven staat, dan wordt die          |
   |                   | afkeuring geannuleerd.                             |
   |-------------------+----------------------------------------------------|
   |                   | Bij het onderzoeken van een oplossing              |
   | Oplosser → Bekijk | gedetailleerde informatie bekijken over het pakket |
   | doel (Enter)      | dat door de momenteel geselecteerde actie          |
   |                   | getroffen wordt (zie de paragraaf met de naam      |
   |                   | “Vereisten interactief oplossen”).                 |
   |-------------------+----------------------------------------------------|
   |                   | Verwerp (zoals bij Oplosser → Verworpen            |
   |                   | aan-/uitzetten (r)) alle acties die een handhaving |
   | Oplosser → Te     | van een pakket zouden verbreken of een verboden    |
   | handhaven         | versie zouden installeren. Deze acties worden      |
   | pakketten niet    | standaard verworpen, tenzij                        |
   | breken            | Aptitude::ProblemResolver::Allow-Break-Holds       |
   |                   | ingesteld staat op true, maar dit menu-item laat u |
   |                   | toe ze op elk moment handmatig te verwerpen.       |
   +------------------------------------------------------------------------+

    Het menu Zoeken

   Afbeelding 2.5. Beschikbare commando's in het menu Zoeken

   +------------------------------------------------------------------------+
   |         Commando          |                Omschrijving                |
   |---------------------------+--------------------------------------------|
   |                           | Zoek in de pakketlijst naar het volgende   |
   | Zoeken → Zoeken (/)       | pakket dat aan het zoekpatroon beantwoordt |
   |                           | (zie de paragraaf met de naam              |
   |                           | “Zoekpatronen”).                           |
   |---------------------------+--------------------------------------------|
   |                           | Zoek in de pakketlijst naar het vorige     |
   | Zoeken → Zoek             | pakket dat aan het zoekpatroon beantwoordt |
   | Achterwaarts (\)          | (zie de paragraaf met de naam              |
   |                           | “Zoekpatronen”).                           |
   |---------------------------+--------------------------------------------|
   | Zoeken → Zoek Opnieuw (n) | Herhaal de laatste zoekopdracht.           |
   |---------------------------+--------------------------------------------|
   |                           | Herhaal de laatste zoekopdracht, maar in   |
   | Zoeken → Zoek Opnieuw     | de tegengestelde richting. Indien de       |
   | Achterwaarts (N)          | laatste zoekopdracht een achterwaartse     |
   |                           | zoekopdracht was, zal dit een voorwaartse  |
   |                           | zoekopdracht uitvoeren en vice versa.      |
   |---------------------------+--------------------------------------------|
   |                           | Filter de huidige pakketlijst door elk     |
   | Zoeken → Beperk Weergave  | pakket eruit te verwijderen dat niet aan   |
   | (l)                       | het zoekpatroon beantwoordt (zie de        |
   |                           | paragraaf met de naam “Zoekpatronen”).     |
   |---------------------------+--------------------------------------------|
   | Zoeken → Annuleer         | Pas op de huidige pakketlijst niet langer  |
   | Beperking Weergave        | een filter toe (alle pakketten zullen      |
   |                           | weergegeven worden).                       |
   |---------------------------+--------------------------------------------|
   | Zoeken → Zoek Defecte (b) | Zoek het volgende defecte pakket. Dit is   |
   |                           | een equivalent van zoeken naar ?broken.    |
   +------------------------------------------------------------------------+

    Het menu Opties

   Afbeelding 2.6. Beschikbare commando's in het menu Opties

   +------------------------------------------------------------------------+
   |        Commando         |                 Omschrijving                 |
   |-------------------------+----------------------------------------------|
   |                         | Open in de bovenhelft een nieuwe weergave    |
   |                         | waarin u de instellingen van aptitude kunt   |
   |                         | wijzigen. De configuratieopties worden in    |
   | Opties →                | een boomstructuur weergegeven, vergelijkbaar |
   | Voorkeursinstellingen   | met de pakketboom. Om een optie aan/uit te   |
   |                         | zetten, selecteert u die en drukt dan op de  |
   |                         | Spatie- of Enter-toets. Configuratieopties   |
   |                         | worden opgeslagen in ~/.aptitude/config      |
   |                         | onmiddellijk nadat ze geselecteerd werden.   |
   |-------------------------+----------------------------------------------|
   | Opties → Herstel Opties | Stel alle opties terug in op hun             |
   |                         | standaardwaarden.                            |
   +------------------------------------------------------------------------+

    Het menu Weergaven

   [Opmerking] Opmerking
               Voor een overzicht over hoe weergaven werken, zie de paragraaf
               met de naam “Met verschillende weergaven werken”.

   Afbeelding 2.7. Beschikbare commando's in het menu Weergaven

   +------------------------------------------------------------------------+
   |         Commando          |                Omschrijving                |
   |---------------------------+--------------------------------------------|
   | Weergaven → Volgende (F6) | Schakel over naar de volgende actieve      |
   |                           | weergave.                                  |
   |---------------------------+--------------------------------------------|
   | Weergaven → Vorige (F7)   | Schakel over naar de vorige actieve        |
   |                           | weergave.                                  |
   |---------------------------+--------------------------------------------|
   | Weergaven → Sluiten (q)   | Sluit de huidige weergave.                 |
   |---------------------------+--------------------------------------------|
   | Weergaven → Nieuwe        | Maak een nieuwe weergave van de            |
   | Pakketweergave            | pakketlijst.                               |
   |---------------------------+--------------------------------------------|
   |                           | Maak een weergave die pakketten toont die  |
   | Weergaven → Onderzoek     | niet geïnstalleerd zijn en die aanbevolen  |
   | Aanbevelingen             | worden door een pakket dat op uw systeem   |
   |                           | geïnstalleerd is.                          |
   |---------------------------+--------------------------------------------|
   | Weergaven → Nieuwe Vlakke | Maak een nieuwe weergave van de            |
   | Pakketlijst               | pakketlijst waarbij de pakketten niet in   |
   |                           | categorieën ingedeeld worden.              |
   |---------------------------+--------------------------------------------|
   |                           | Maak een nieuwe weergave van de            |
   | Weergaven → Nieuwe        | pakketlijst waarbij de pakketten ingedeeld |
   | Debtags-Bladeraar         | worden in categorieën volgens hun          |
   |                           | debtags-specificaties.                     |
   |---------------------------+--------------------------------------------|
   |                           | Een aantal bijkomende menu-items worden    |
   |                           | zichtbaar, afhankelijk van de weergaven    |
   | Overige items             | die op dat moment actief zijn. Om          |
   |                           | rechtstreeks naar een weergave over te     |
   |                           | schakelen, moet u het in het menu          |
   |                           | selecteren.                                |
   +------------------------------------------------------------------------+

    Het menu Hulp

   Afbeelding 2.8. Beschikbare commando's in het menu Hulp

   +------------------------------------------------------------------------+
   |           Commando           |              Omschrijving               |
   |------------------------------+-----------------------------------------|
   | Hulp → Over                  | Geef copyright informatie weer.         |
   |------------------------------+-----------------------------------------|
   | Hulp → Hulp (?)              | Geef de online hulppagina weer.         |
   |------------------------------+-----------------------------------------|
   | Hulp → Gebruikershandleiding | Geef de Gebruikershandleiding weer (dit |
   |                              | document).                              |
   |------------------------------+-----------------------------------------|
   | Hulp → FAQ                   | Geef de aptitude FAQ weer.              |
   |------------------------------+-----------------------------------------|
   | Hulp → Log van wijzigingen   | Geef de geschiedenis weer van de        |
   |                              | belangrijkste wijzigingen aan aptitude. |
   |------------------------------+-----------------------------------------|
   |                              | Geef weer onder welke voorwaarden u     |
   | Hulp → Licentie              | aptitude mag kopiëren, wijzigen en      |
   |                              | verdelen.                               |
   +------------------------------------------------------------------------+

  Met verschillende weergaven werken

   aptitude laat u toe om tegelijk met verschillende “weergaven” te werken.
   Een “weergave” (soms ook een “scherm” genoemd) is gewoon iets dat
   zichtbaar kan worden in het schermgebied onder de menubalk. De meest
   gangbare weergave is de pakketlijst, maar ook downloadweergaven zijn
   courant.

   Wanneer gelijktijdig meerdere weergaven geopend zijn, verschijnt er
   bovenaan het scherm een balk die al de actieve weergaven vermeldt. Als ik
   bijvoorbeeld apt nakijk door op Enter te drukken en nadien libc6, zal het
   scherm er ongeveer zo uitzien:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
          Pakketten                  apt info                  libc6 info
 aptitude 0.3.1
 i A  --\ libc6                                             2.3.2.ds1- 2.3.2.ds1-
   Beschrijving: GNU C Bibliotheek: Gedeelde bibliotheken en Tijdzonegegevens
     Bevat de gemeenschappelijke bibliotheken die worden gebruikt door
      vrijwel alle programma's op de computer. Zo bevat dit pakket de
      gedeelde versie van de standaard C bibliotheek, de standaard
      rekenfuncties en vele andere. Ze bevat ook tijdzonegegevens.
   Prioriteit: noodzakelijk
   Sectie: base
   Beheerder: GNU Libc Maintainers <debian-glibc@lists.debian.org>
   Gecomprimeerde grootte: 4901k
   Ongecomprimeerde grootte: 15.9M
   Bronpakket: glibc
   --\ Vereist
     --- libdb1-compat
   --\ Suggereert
     --- locales
     --- glibc-doc
   --\ Conflicteert met
 GNU C Bibliotheek: Gedeelde bibliotheken en Tijdzonegegevens

   U kunt de huidige weergave sluiten met Weergaven → Sluiten (q). Om naar de
   volgende of vorige weergave over te schakelen, gebruikt u Weergaven →
   Volgende (F6) en Weergaven → Vorige (F7), of u kunt klikken op de naam van
   de weergave bovenaan het scherm. U kunt ook een lijst vinden met alle
   actieve weergaven in het menu Weergaven.

   Zoals hierboven te zien is, maken sommige commando's (bijvoorbeeld het
   bekijken van informatie over een pakket) automatisch een nieuwe weergave
   aan. U kunt ook expliciet een nieuwe weergave aanmaken met Weergaven →
   Nieuwe Pakketweergave.

  Systeembeheerder (root) worden

   Sommige acties, zoals het bijwerken van de pakketlijst, kunnen enkel in de
   hoedanigheid van systeembeheerder (root) uitgevoerd worden. Indien u root
   niet bent en u tracht de pakketlijst bij te werken, dan zal aptitude u
   vragen of u root wilt worden:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.2.14.1
 --- Geïnstalleerde pakketten
 --- Niet-geïnstalleerde pakketten
 --- Verouderde en lokaal aangemaakte pakketten
 --- Virtuele pakketten
 --- Taken

   +-------------------------------------------------------------------------+
   |Bijwerken van pakketlijsten vereist beheerdersrechten die u momenteel      |
   |niet heeft. Wenst u over te schakelen naar het beheerdersaccount?|
   |                                                                         |
   |         [ Beheerder worden ]                  [ Geen beheerder worden ]          |
 Th+-------------------------------------------------------------------------+









   Indien u “Beheerder worden” selecteert, dan zal aptitude u om het
   wachtwoord van de beheerder (root) vragen. Als u het correct invoert, zal
   aptitude de actie uitvoeren waarvoor de voorrechten van root vereist zijn.
   Nadat de actie beëindigd werd, zult u nog steeds root zijn.

   Op elk moment kunt u overschakelen naar het account van root met het
   commando Acties → Beheerder (root) worden. Elke wijziging die u aan de
   toestand van pakketten aangebracht heeft, zal behouden blijven (maar niet
   opgeslagen zolang u aptitude niet afsluit).

   Standaard gebruikt aptitude het commando su om de bevoegdheden van root te
   verwerven. Indien u een ander commando zou wensen te gebruiken (zoals
   sudo), dan moet u de configuratieoptie Aptitude::Get-Root-Command in die
   zin instellen.

Pakketten beheren

   Dit onderdeel beschrijft hoe u kunt omgaan met de pakketlijst, hoe u
   nieuwe pakketten kunt installeren op uw systeem en hoe u oude pakketten
   kunt verwijderen.

  De pakketlijst beheren

   Om de lijst van pakketten up-to-date te houden, is het aangewezen om hem
   regelmatig bij te werken. U kunt dit doen met behulp van het commando
   Acties → Werk pakketlijst bij (u).

  Informatie over pakketten opzoeken

   In aptitude wordt op verschillende plaatsen informatie over pakketten
   weergegeven: de pakketlijst biedt een snel overzicht van de toestand van
   ieder pakket en ook bijkomende weergaven met gedetailleerde informatie
   over een pakket staan ter beschikking.

    De pakketlijst

   Met de pakketlijst krijgt u “in een oogopslag” een overzicht van de
   toestand van een pakket. Van het pakket webmin zou u bijvoorbeeld het
   volgende overzicht kunnen krijgen:

 piAU  webmin                                        +5837kB <none>     1.160-2

   De vier lettertekens aan de linkerkant van het overzicht laten zien dat
   het pakket niet geïnstalleerd is (“p”), dat het geïnstalleerd zal worden
   (“i”), dat het automatisch uitgekozen werd om geïnstalleerd te worden
   (“A”) en dat het niet betrouwbaar is (“U”). Aan de rechterkant van het
   overzicht worden de huidige versie en de meest recente beschikbare versie
   getoond samen met een aanduiding van de schijfruimte die door de
   opwaardering gebruikt zal worden.

   [Tip] Tip
         U kunt zelf instellen hoe een pakketoverzicht eruit moet zien; zie
         de paragraaf met de naam “Aanpassen hoe pakketten weergegeven
         worden” voor details.

   De vier statusvlaggen aan de linkerkant van het scherm geven de
   basisinformatie over de toestand van een pakket. Het eerste letterteken
   geeft de huidige toestand van het pakket weer. Het tweede letterteken
   beschrijft de actie die op het pakket uitgevoerd zal worden. Het derde
   letterteken geeft aan of het pakket automatisch geïnstalleerd werd (zie de
   paragraaf met de naam “Automatisch geïnstalleerde pakketten beheren”) en
   het vierde letterteken geeft aan of het pakket betrouwbaar is (zie de
   paragraaf met de naam “De betrouwbaarheid van pakketten begrijpen en ermee
   omgaan”).

   De mogelijke waarden voor de vlag “huidige toestand” worden vermeld in
   Afbeelding 2.9, “Waarden voor de vlag “huidige toestand”” en de mogelijke
   waarden voor de vlag “actie” worden in Afbeelding 2.10, “Waarden voor de
   vlag “actie”” vermeld.

   Afbeelding 2.9. Waarden voor de vlag “huidige toestand”

   i - het pakket is geïnstalleerd en aan alle vereisten werd voldaan.
   c - het pakket werd verwijderd, maar de configuratiebestanden ervan staan
       nog steeds op het systeem.
   p - het pakket en al zijn configuratiebestanden werden verwijderd of het
       pakket werd nooit geïnstalleerd.
   v - het betreft een virtueel pakket.
   B - het pakket heeft defecte vereisten.
   u - het pakket werd uitgepakt maar niet geconfigureerd.
   C - haf-geconfigureerd: de configuratie van het pakket werd onderbroken.
   H - half-geïnstalleerd: de installatie van het pakket werd onderbroken.
   W - wachten op triggers: het pakket wacht het afhandelen van triggers door
       een ander pakket af.
   T - triggers in behandeling: het pakket kreeg een update die uitgelokt
       werd door veranderingen in een ander pakket.

   Afbeelding 2.10. Waarden voor de vlag “actie”

   i - het pakket zal geïnstalleerd worden.
   u - het pakket zal opgewaardeerd worden.
   w - het pakket zal gedegradeerd worden.
       het pakket zal verwijderd worden: het pakket zelf wordt verwijderd,
   d - maar de configuratiebestanden ervan zullen op het systeem behouden
       blijven.
   p - het pakket zal gewist worden: het pakket zelf en de
       configuratiebestanden ervan zullen verwijderd worden.
       het pakket zal gehenadhaafd worden: het zal op zijn huidige versie
   h - behouden blijven, zelfs als er een nieuwere versie beschikbaar wordt
       en dit totdat het handhaven geannuleerd wordt.
   F - Een opwaardering van het pakket werd verboden.
   r - het pakket zal opnieuw geïnstalleerd worden.
       het pakket is “defect”: aan sommige van zijn vereisten zal niet
   B - voldaan worden. aptitude zal u niet toestaan om iets te installeren,
       verwijderen of opwaarderen zolang er defecte pakketten op uw systeem
       zijn.

   Als uw terminal dat ondersteunt, zal aptitude bovendien gebruik maken van
   kleuren om de toestand van pakketten aan te geven. De onderscheiden
   toestanden worden hoofdzakelijk aangegeven met behulp van een
   achtergrondkleur:

   Zwart

           Het pakket kan niet opgewaardeerd worden (of zal niet
           geïnstalleerd worden) en het heeft geen vereistenproblemen. Indien
           het pakket geïnstalleerd is, zal zijn naam geaccentueerd worden.

   Groen

           Het pakket zal geïnstalleerd worden.

   Blauw

           Het pakket is momenteel geïnstalleerd en het zal opgewaardeerd
           worden.

   Bruin

           Het pakket is momenteel geïnstalleerd en het zal gedegradeerd
           worden.

   Magenta

           Het pakket is momenteel geïnstalleerd, maar het zal verwijderd
           worden.

   Wit

           Het pakket is momenteel geïnstalleerd en het is “gehandhaafd” op
           zijn huidige versie: automatische opwaarderingen zullen het
           negeren.

   Rood

           Dit pakket is defect: aan sommige van zijn vereisten zal niet
           voldaan worden.

   Tenslotte geeft de onderste helft van het scherm de uitgebreide
   beschrijving weer. aptitude zal trachten te achterhalen of het pakket
   betrokken is bij een vereistenprobleem. Indien dat het geval is, zal hier
   informatie over het vereistenprobleem weergegeven worden. Om te wisselen
   tussen vereisteninformatie en de pakketbeschrijving drukt u op i.

    Gedetailleerde pakketinformatie

   Op Enter drukken terwijl een pakket geaccentueerd wordt, zal het
   informatiescherm over dat pakket weergeven:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.2.14.1
 i A --\ apt                                                0.5.25     0.5.25
   Beschrijving: Geavanceerd frontend voor dpkg
     Dit is het Debian frontend van de volgende generatie voor de pakketbeheerder dpkg. Het
     voorziet in het gereedschap apt-get en de dselect-methode van APT die een eenvoudiger,
     en veiliger manier biedt om pakketten te installeren en op te waarderen.

     APT kan een volledige installatievolgorde uitwerken, kan met meerdere pakketbronnen
     werken en heeft nog vele andere unieke functies. Zie de Gebruikershandleiding in apt-doc.
   Essentieel: ja
   Prioriteit: belangrijk
   Sectie: base
   Beheerder: APT Development Team <deity@lists.debian.org>
   Gecomprimeerde grootte: 970k
   Ongecomprimeerde grootte: 2961k
   Bronpakket: apt
   --\ Vereist
     --- libc6 (>= 2.3.2.ds1-4)
     --- libgcc1 (>= 1:3.3.3-1)
     --- libstdc++5 (>= 1:3.3.3-1)
   --\ Suggereert
     --- aptitude | synaptic | gnome-apt | wajig
     --- dpkg-dev
     --\ apt-doc (NIET VOLDAAN)
 p     0.6.25
 p     0.5.25
   --\ Vervangt
     --- libapt-pkg-doc (< 0.3.7)
     --- libapt-pkg-dev (< 0.3.7)
   --- Pakketnamen waarin door apt voorzien wordt
   --- Pakketten die afhangen van apt
   --\ Versies
 p A 0.6.25
 i A 0.5.25


   U kunt door dit scherm navigeren op een gelijkaardige manier als bij de
   pakketlijst. In de bovenstaande schermweergave bijvoorbeeld, vouwde ik de
   vereistenrelatie met apt-doc uit, hetgeen de beschikbare versies van
   apt-doc laat zien die aan die vereiste kunnen voldoen. Met deze versies
   kunt u op dezelfde manier omgaan als met pakketten: om bijvoorbeeld versie
   0.5.25 van apt-doc te installeren, moet u het accentueren en dan op +
   drukken.

   [Tip] Tip
         Om snel aan een vereiste te voldoen, moet u de vereiste selecteren
         en drukken op +; aptitude zal trachten er automatisch aan te
         voldoen.

   Naast de vereisten van een pakket kunt u ook de pakketnamen zien waarin
   het voorziet, de pakketten die ervan afhankelijk zijn en de beschikbare
   versies van het pakket (met inbegrip van eventuele andere pakketten die
   erin voorzien).

   Zoals gewoonlijk kunt u dit scherm laten verdwijnen en naar de
   hoofdweergave terugkeren door op q te drukken. Voor het gemak beschikt u
   nog over enkele andere informatieschermen (die enkel de vaak gebruikte
   informatie weergeven en de rest verbergen): druk op v om de versies van
   een pakket te zien, op d om de vereisten van een pakket te zien en op r om
   de “achterwaartse afhankelijkheden” van een pakket te zien (pakketten die
   ervan afhankelijk zijn).

  De toestand van een pakket wijzigen

   U heeft de volgende commando's ter beschikking om de toestand van een
   pakket te wijzigen. Die commando's treden in werking wanneer u de volgende
   keer een installatieoperatie uitvoert. Tot dan kunnen al deze commando's
   ongedaan gemaakt worden met Ongedaan maken → Ongedaan maken (Control+u).

   Om een commando op een pakket toe te passen, moet u gewoon dat pakket in
   een pakketlijst selecteren en het commando geven. Deze commando's kunnen
   ook op groepen van pakketten toegepast worden door de hoofding van de
   groep te selecteren (bijvoorbeeld “Opwaardeerbare pakketten”) en het
   commando te geven.

   +------------------------------------------------------------------------+
   |         Commando         |                Omschrijving                 |
   |--------------------------+---------------------------------------------|
   |                          | Markeer het huidige pakket om geïnstalleerd |
   |                          | te worden.                                  |
   |                          |                                             |
   |                          | Indien het pakket niet geïnstalleerd is,    |
   | Installeren: Pakket →    | zal het geïnstalleerd worden. Indien het    |
   | Installeren (+)          | reeds geïnstalleerd is, zal het zo mogelijk |
   |                          | opgewaardeerd worden en als er eventueel    |
   |                          | een vorm van opwaarderingsbelemmering       |
   |                          | (bijv. een handhaving) actief is, zal die   |
   |                          | geannuleerd worden.                         |
   |--------------------------+---------------------------------------------|
   |                          | Markeer het huidige pakket om verwijderd te |
   | Verwijderen: Pakket →    | worden.                                     |
   | Verwijderen (-)          |                                             |
   |                          | Als het pakket geïnstalleerd is, zal het    |
   |                          | verwijderd worden.                          |
   |--------------------------+---------------------------------------------|
   |                          | Markeer het huidige pakket om gewist te     |
   |                          | worden.                                     |
   |                          |                                             |
   |                          | Indien het pakket geïnstalleerd is, zal het |
   | Wissen (purge): Pakket → | verwijderd worden. Daarenboven, zullen      |
   | Wissen (purge) (_)       | achtergebleven bestanden (zoals             |
   |                          | configuratiebestanden) die verband houden   |
   |                          | met het pakket, van het systeem verwijderd  |
   |                          | worden, zelfs als het pakket reeds          |
   |                          | verwijderd is.                              |
   |--------------------------+---------------------------------------------|
   |                          | Markeer het huidige pakket om het op zijn   |
   |                          | huidige versie te behouden.                 |
   |                          |                                             |
   | Behouden: Pakket →       | Elke actie die uitgevoerd ging worden op    |
   | Behouden (:)             | het pakket -- installeren, verwijderen of   |
   |                          | opwaarderen -- wordt geannuleerd en mocht   |
   |                          | het pakket op te handhaven ingesteld staan, |
   |                          | dan wordt die handhaving verwijderd.        |
   |--------------------------+---------------------------------------------|
   |                          | Stel een blijvende handhaving van het       |
   |                          | pakket in.                                  |
   |                          |                                             |
   |                          | Net zoals dat bij 'Behouden' gebeurt, wordt |
   | Handhaven: Pakket →      | elke actie die op het pakket uitgevoerd     |
   | Handhaven (=)            | ging worden, geannuleerd. Daarenboven zal   |
   |                          | het pakket niet automatisch opgewaardeerd   |
   |                          | ^[a] worden totdat de handhaving verwijderd |
   |                          | wordt. U kunt een handhaving annuleren door |
   |                          | er de opdracht 'Installeren' aan te geven.  |
   |--------------------------+---------------------------------------------|
   |                          | Het pakket zal niet automatisch             |
   |                          | opgewaardeerd^[a] worden naar de versie     |
   |                          | waarnaar het momenteel opgewaardeerd zou    |
   |                          | worden. Indien het opgewaardeerd ging       |
   |                          | worden, wordt de opwaardering geannuleerd.  |
   |                          |                                             |
   |                          | Indien u deze opdracht voor een specifieke  |
   | Pakket → Verbied Versie  | versie van een pakket geeft, zal het pakket |
   | (F)                      | niet naar de geselecteerde versie           |
   |                          | opgewaardeerd worden. Merk op dat slechts   |
   |                          | één versie ineens verboden kan worden.      |
   |                          |                                             |
   |                          | Deze functionaliteit wordt hoofdzakelijk    |
   |                          | geboden voor het gemak van gebruikers van   |
   |                          | de distributie “unstable”, zodat ze         |
   |                          | pakketversies waarvan geweten is dat ze     |
   |                          | slecht zijn, kunnen vermijden.              |
   |--------------------------+---------------------------------------------|
   |                          | Markeer het huidige pakket om opnieuw       |
   |                          | geïnstalleerd te worden.                    |
   |                          |                                             |
   |                          | Merk op dat de herinstallatie niet          |
   |                          | opgeslagen zal worden als u aptitude        |
   | Herinstalleren: Pakket → | verlaat of een installatieoperatie          |
   | Herinstalleren (L)       | uitvoert. De reden hiervoor is van          |
   |                          | technische aard (vooral het feit dat de     |
   |                          | onderliggende softwareniveaus (dpkg en apt) |
   |                          | geen enkele manier voorzien om uit te maken |
   |                          | of een herinstallatie succesvol was of      |
   |                          | niet).                                      |
   |--------------------------+---------------------------------------------|
   |                          | Dit stelt in of het pakket behandeld wordt  |
   | Pakket → Markeer als     | als automatisch geïnstalleerd. Automatisch  |
   | Automatisch (M), Pakket  | geïnstalleerde pakketten worden verwijderd  |
   | → Markeer als Handmatig  | als geen enkel ander pakket ze vereist. Zie |
   | (m)                      | voor bijkomende informatie de paragraaf met |
   |                          | de naam “Automatisch geïnstalleerde         |
   |                          | pakketten beheren”.                         |
   |------------------------------------------------------------------------|
   | ^[a] Dit houdt in dat Acties → Markeer als opwaardeerbaar (U) er geen  |
   | invloed op zal hebben, evenmin als de acties full-upgrade en           |
   | safe-upgrade aan de commandoregel.                                     |
   +------------------------------------------------------------------------+

   Naast deze commando's die van invloed zijn op het geselecteerde pakket,
   zijn er nog twee commando's die een invloed hebben op een groot aantal
   pakketten ongeacht wat geselecteerd werd. Acties → Vergeet nieuwe
   pakketten (f) wist bij alle pakketten uit de pakketlijst de status van
   “nieuw” pakket en Acties → Markeer als opwaardeerbaar (U) markeert elk
   pakket dat kan opgewaardeerd worden als op te waarderen, met uitzondering
   van de gehandhaafde pakketten en de pakketten die naar een verboden versie
   opgewaardeerd zouden worden.

   [Opmerking] Opmerking
               Alle wijzigingen aan de toestand van een pakket worden
               opgeslagen als u aptitude verlaat, de pakketlijst bijwerkt of
               een installatieoperatie uitvoert. Indien u de wijzigingen niet
               wenst op te slaan, kunt u aptitude steeds afbreken door Ctrl-C
               in te drukken.

  Pakketten ophalen, installeren en verwijderen

   Wijzigingen aanbrengen aan de toestand van pakketten, zoals in het vorige
   onderdeel beschreven werd, beïnvloedt niet wat op uw systeem geïnstalleerd
   staat. Dit betekent dat u de toestand van pakketten kunt bijstellen zonder
   dat er iets aan uw systeem verandert, totdat u tevreden bent met wat u
   ziet. Als dat het geval is, kunt u de wijzigingen “toepassen” door het
   installeren en verwijderen van pakketten effectief uit te voeren.^[8]

   Om uw wijzigingen toe te passen, gebruikt u het commando Acties →
   Installeer/verwijder pakketten (g). Dit commando selecteren zal tot gevolg
   hebben dat u een scherm met een voorafbeelding te zien krijgt met de
   beschrijving van de veranderingen die uitgevoerd zullen worden. Dit scherm
   is niet meer dan een pakketlijst en u kunt de pakketten manipuleren
   (bijvoorbeeld ongewenste verwijderingen annuleren) op dezelfde wijze als
   dit bij de centrale lijst het geval was.

   Als u klaar bent, kunt u Weergaven → Sluiten (q) gebruiken om de
   installatie te annuleren of Acties → Installeer/verwijder pakketten (g) om
   voort te gaan. aptitude zal alle bestanden die opgehaald moeten worden
   downloaden en u dan vragen of de installatie voortgezet moet worden.
   Indien u “Doorgaan” selecteert, zal begonnen worden met de installaties en
   de verwijderingen.

   Pakketten die door aptitude opgehaald worden, worden in een cache-map
   geplaatst (gewoonlijk /var/cache/apt/archives). Normaal gezien worden ze
   voor altijd in die map achtergelaten. Om alle bestanden uit die map te
   wissen, gebruikt u Acties → Schoon pakketcache op. Om enkel die bestanden
   te verwijderen die niet langer gedownload kunnen worden (d.w.z. verouderde
   pakketten), moet u Acties → Schoon verouderde bestanden op gebruiken.

  De betrouwbaarheid van pakketten begrijpen en ermee omgaan

   De capaciteit van apt om verschillende pakketbronnen te benaderen, houdt
   een potentiële kwetsbaarheid in. Veronderstel dat u aan uw bestand
   sources.list een pakketarchief toevoegt dat door Joe Random Hacker
   publiekelijk aangeboden wordt omdat u Joe's pakket gargleblast wenst te
   installeren. Het is evenwel mogelijk dat zonder dat u het weet, Joe's
   archief ook een door hem “aangepaste” versie bevat van pakketten zoals
   libc6 en ssh, ...versies die vertrouwelijke informatie van u stelen of op
   uw systeem achterpoorten openzetten! Indien deze pakketten een hoger
   versienummer hebben dan de echte Debian-pakketten, dan zal apt ze zonder
   zich zorgen te maken bij de volgende upgrade op uw systeem installeren en
   op die manier Joe in staat stellen om ongemerkt zijn vieze zaakjes op te
   knappen. Joe zou ook in uw spiegelserver met Debian-archieven kunnen
   inbreken en er de geldige software vervangen door een versie waarmee hij
   zitten knoeien heeft.

   Recente versies van apt en aptitude, zoals de versie die in deze
   handleiding beschreven wordt, hebben gelukkig ingebouwde beveiligingen om
   dit soort aanvallen tegen te gaan. apt maakt gebruik van strikte
   veiligheidsmechanismes die steunen op de populaire encryptiesoftware GPG
   om na te gaan of de pakketten die door de officiële Debian-spiegelservers
   verdeeld worden dezelfde zijn als die welke door de ontwikkelaars van
   Debian geüpload werden. aptitude zal u een waarschuwing geven als u een
   pakket tracht te installeren dat niet afkomstig is van een
   Debian-pakketbron, of als u een pakket dat afkomstig is van een
   Debian-pakketbron probeert op te waarderen met een versie die niet van een
   Debian-pakketbron afkomstig is.

   [Waarschuwing] Waarschuwing
                  De veiligheidsmechanismes van apt bieden een haast perfecte
                  garantie dat de inhoud van uw archiefspiegelserver identiek
                  is aan de inhoud van het hoofdarchief van Debian. Toch is
                  dit geen wondermiddel: er zijn bijvoorbeeld meerdere
                  manieren denkbaar waarop in theorie een vervalst pakket het
                  hoofdarchief van Debian zou kunnen binnendringen.

                  Als u ervoor zorgt dat u enkel software installeert die van
                  een betrouwbare bron afkomstig is, zal dit een grote mate
                  van bescherming bieden tegen schadelijke pakketten, maar
                  het kan niet elk risico uitschakelen dat inherent is aan
                  het installeren van software.

    Betrouwbaarheid begrijpen

   apt laat de beheerder van een archief toe om de index van het archief van
   een ondertekening te voorzien. Deze ondertekening die (bij gewoon gebruik
   in de praktijk) niet vervalst kan worden, geeft aan dat de pakketbestanden
   die in de index opgenomen zijn, dezelfde zijn als die welke de beheerder
   effectief in het archief wilde hebben, m.a.w. dat er niet werd geknoeid
   met de inhoud van het archief nadat het aangemaakt werd.^[9] De
   ondertekening kan gevalideerd worden door na te gaan of ze overeenkomt met
   de publieke sleutel van de beheerder. De publieke sleutel van het
   Debian-archief wordt samen met apt verdeeld, gewoonlijk op uw Debian CD.

   Als aptitude een archiefindex ophaalt, zal het controleren of die index
   behoorlijk ondertekend is. Indien er geen ondertekening is, zal aptitude
   pakketbestanden die van dat archief afkomstig zijn, niet vertrouwen (zie
   verder voor informatie over wat dat precies betekent). Indien het
   indexbestand wel een handtekening bevat, maar een die niet correct is of
   niet gecontroleerd kan worden, dan zal een waarschuwing gegeven worden en
   zal aptitude weigeren de pakketten uit dat archief te vertrouwen.

   Later, als u een installatieoperatie zult uitvoeren, zal aptitude nagaan
   of de pakketten afkomstig zijn van betrouwbare bronnen. Indien een
   onbetrouwbaar pakket geïnstalleerd wordt of een pakket opgewaardeerd wordt
   van een betrouwbare naar een onbetrouwbare versie, zal een waarschuwing
   getoond worden en zult u de mogelijkheid hebben de download af te breken:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.3.0                    Zal 831kB schijfruimte gebruiken   DL-grootte: 30.4MB
 --\ Op te waarderen pakketten
 iu U wesnoth                                       -98.3kB 0.8.7-1    0.8.8-1.0w
 iuAU wesnoth-data                                  +930kB  0.8.7-1    0.8.8-1.0w
 +------------------------------------------------------------------------------+
 |WAARSCHUWING: Van de volgende pakketten zullen niet-vertrouwde versies
               worden geïnstalleerd!#|
 |                                                                             #|
 |Niet-vertrouwde pakketten kunnen de veiligheid van uw systeem aantasten. #|
 |Ga alleen verder met de installatie als u zeker weet dat het dat is wat u wilt. #|
 |                                                                             #|
 |  * wesnoth [version 0.8.8-1.0wesnoth.org]                                   #|
 |  * wesnoth-data [version 0.8.8-1.0wesnoth.org]                              #|
 |  * wesnoth-music [version 0.8.8-1.0wesnoth.org]                             #|
 |         [ Werkelijk verdergaan ]                  [ Installatie afbreken ]          |
 +------------------------------------------------------------------------------+
                                                                                #
                                                                                #
                                                                                #
                                                                                #
                                                                                #
                                                                                #

    Extra sleutels vertrouwen

   U kunt het nuttig vinden om apt ook andere archieven naast het
   Debian-hoofdarchief te laten vertrouwen. Voor elk archief dat u wenst te
   vertrouwen, moet u de publieke sleutel verkrijgen waarmee de pakketindex
   van het archief ondertekend wordt. Dit is gewoonlijk een tekstbestand
   waarvan de naam eindigt op .asc. De beheerder van de site kan hem u ter
   beschikking stellen of hij kan af te halen zijn van een server voor
   publieke sleutels. Zie de GPG webpagina voor meer informatie over wat een
   publieke sleutel is en hoe u eraan kunt geraken.

   De lijst met sleutels die apt vertrouwt, wordt opgeslagen in het
   sleutelbosbestand /etc/apt/trusted.gpg. Als u de GPG-sleutel in uw bezit
   gekregen heeft, kunt u hem aan deze lijst toevoegen met het commando gpg
   --no-default-keyring --keyring /etc/apt/trusted.gpg --import
   nieuwe-sleutel.asc. Elk archief dat ondertekend is met de sleutel uit
   nieuwe-sleutel.asc zal dan door aptitude vertrouwd worden.

   [Waarschuwing] Waarschuwing
                  Als de sleutel van een archief toegevoegd werd aan de
                  sleutelbos van APT, zal dat archief evenveel vertrouwd
                  worden als de spiegelservers van het hoofdarchief van
                  Debian zelf. U zou dit enkel mogen doen als u er erg zeker
                  van bent dat de sleutel die u toevoegt correct is en dat de
                  persoon aan wie de sleutel toebehoort betrouwbaar en
                  competent is.

  Automatisch geïnstalleerde pakketten beheren

   Om een pakket te kunnen installeren is het vaak nodig dat ook meerdere
   andere pakketten geïnstalleerd worden (om te voldoen aan zijn vereisten).
   Indien u bijvoorbeeld het pakket clanbomber wenst te installeren, moet u
   ook het pakket libclanlib2 installeren. Als u clanbomber terug verwijdert,
   heeft u wellicht het pakket libclanlib2 niet langer nodig. aptitude zal
   dit trachten op te merken en automatisch het pakket libclanlib2
   verwijderen.

   Dit werkt op de volgende manier: indien u een pakket installeert, zal
   aptitude automatisch alle pakketten installeren waarvan het afhankelijk
   is. Die pakketten worden als “automatisch geïnstalleerd” gemarkeerd.
   aptitude zal ze opvolgen en ze verwijderen als er geen enkel handmatig
   geïnstalleerd parket meer van afhankelijk is ^[10] . In de voorafbeelding
   zullen ze te zien zijn als “pakketten die verwijderd worden omdat ze niet
   langer gebruikt worden.”

   Zoals bij elk geautomatiseerd proces is er een kans dat dingen in de war
   geraken. Bijvoorbeeld kan het zijn dat een pakket dat oorspronkelijk
   automatisch geïnstalleerd werd, later ook op zichzelf nuttig blijkt te
   zijn. U kunt de markering “automatisch” op ieder ogenblik annuleren door
   op m te drukken. Indien het pakket reeds verwijderd wordt, kunt u Pakket →
   Installeren (+) gebruiken om het verwijderen te annuleren en de markering
   “automatisch” te verwijderen.

Vereisten van pakketten oplossen

  Het oplossen van vereisten in aptitude

   aptitude heeft twee belangrijke algoritmes voor het oplossen van
   vereisten.

   Het eerste is een algoritme dat ook gebruikt wordt door programma's zoals
   apt-get en synaptic. Ik zal het de “onmiddellijke oplossing” noemen. Ze
   wordt gebruikt telkens u interactief een pakket selecteert om
   geïnstalleerd te worden en onmiddellijk nadat aan de commandoregel een of
   meer pakketten voor installatie gemarkeerd worden. De onmiddellijke
   oplossing is snel en lost de meeste afhankelijkheidsvereisten op, maar is
   soms niet in staat om een oplossing te vinden.

   Het tweede algoritme, dat ik de “interactieve oplossing” zal noemen, wordt
   ingeschakeld als pakketten ook na de onmiddellijke oplossing nog defecte
   vereisten hebben^[11]. Het is in staat om meer vereisten op te lossen, het
   laat u toe om een oplossing te inspecteren vooraleer ze doorgevoerd wordt
   en het laat u toe om feedback te geven aan de oplosser en hem zo naar een
   betere oplossing te leiden.

  Onmiddellijke vereistenoplossing

   Telkens u in aptitudekiest om een pakket te installeren of op te
   waarderen, doet aptitude onmiddellijk een poging om alle niet-voldane
   vereisten ervan op te lossen. Voor elke niet-voldane vereiste (dit kan
   ofwel een “Depends” (vereiste), een “ Recommends” (aanbeveling) of een
   “Conflicts” (conflict) zijn), voert het de volgende stappen uit:

    1. Als de vereiste een aanbeveling is, tracht aptitude te gissen of het
       een “nieuwe” aanbeveling betreft of een “eerder voldane” aanbeveling.
       aptitude beschouwt een aanbeveling als “nieuw” als het pakket dat de
       aanbeveling doet momenteel niet geïnstalleerd is of als zijn
       geïnstalleerde versie geen pakket met dezelfde naam aanbeveelt.
       Daarentegen werd “eerder voldaan” aan een aanbeveling als het pakket
       dat de aanbeveling doet, geïnstalleerd is, de momenteel geïnstalleerde
       versie een pakket met dezelfde naam aanbeveelt en er momenteel aan die
       aanbeveling voldaan wordt.

       Veronderstel bijvoorbeeld dat versie 1.0 van prog versie 4.0 van
       libcool1 aanbeveelt, maar dat versie 2.0 van prog versie 5.0 van
       libcool1 aanbeveelt evenals apache. Als u ervoor kiest om prog van
       versie 1.0 naar versie2.0 op te waarderen, zal het aanbevelen van
       apache als “nieuw” beschouwd worden, omdat versie 1.0 van prog apache
       niet aanbeval. Daarentegen is het aanbevelen van libcool1 niet
       “nieuw”, omdat versie 1.0 van prog libcool1 reeds aanbeval, ook al
       beval het een andere versie aan. Niettemin zal die aanbeveling als
       “eerder voldaan” beschouwd worden, als libcool1 geïnstalleerd is.

       Indien de configuratieoptie APT::Install-Recommends ingesteld staat op
       true, zal aptitude steeds proberen te voldoen aan “nieuwe” en “eerder
       voldane” aanbevelingen. Alle andere zullen door de onmiddellijke
       oplosser genegeerd worden. Indien die optie op false ingesteld staat,
       zal de onmiddellijke vereistenoplosser alle aanbevelingen negeren.

    2. Indien de vereiste slaat op meerdere pakketten gecombineerd met een
       logische OR, wordt elk van de alternatieven in de opgegeven volgorde
       onderzocht. Indien een pakket bijvoorbeeld “exim |
       mail-transport-agent” vereist, zal aptitude eerst exim afhandelen en
       dan mail-transport-agent.

    3. Tracht dit voor elk alternatief op te lossen. Indien de
       afhankelijkheid een conflict betreft, verwijder dan het huidige
       alternatief als het geïnstalleerd is (en verwijder bij een versieloos
       conflict ook elk pakket dat voorziet in het doel dat het conflict
       uitlokte). Installeer anders de kandidaatversie van het huidige
       alternatief als het aan de vereiste tegemoet komt. Is dit niet het
       geval of indien er geen kandidaatversie is (bijvoorbeeld omdat het
       huidige alternatief een virtueel pakket is) en het een versieloze
       afhankelijkheid betreft, probeer dan over te gaan tot de installatie
       van het pakket met de hoogste prioriteit^[12] waarvan de
       kandidaatversie voorziet in het doel van het huidige alternatief.

       Laten we bijvoorbeeld stellen dat we het volgende proberen op te
       lossen: “Depends: exim | mail-transport-agent”. aptitude zal dan eerst
       proberen het pakket exim te installeren. Als exim niet beschikbaar is,
       zal aptitude vervolgens proberen het pakket met de hoogste prioriteit
       te installeren waarvan de kandidaatversie voorziet in exim. Als er
       geen dergelijk pakket is, zal aptitude het pakket met de hoogste
       prioriteit installeren waarvan de kandidaatversie het virtueel pakket
       mail-transport-agent levert. Laten we daarentegen nu veronderstellen
       dat het gaat om de vereiste “Depends: exim (>= 2.0.0) |
       mail-transport-agent”, maar dat enkel versie 1.0 van exim beschikbaar
       is. In dat geval zal aptitude exim niet installeren (omdat de versie
       niet beantwoordt) en het zal ook niet proberen pakketten te
       installeren die voorzien in exim (omdat virtuele pakketten niet
       tegemoet kunnen komen aan een vereiste met een versierestrictie). En
       dus zal aptitude terugvallen op het installeren van het pakket met de
       hoogste prioriteit waarvan de kandidaatversie voorziet in
       mail-transport-agent.

    4. Indien bij de vorige stap een pakket geïnstalleerd werd, los dan met
       dit algoritme zijn vereisten op en stop vervolgens.

   Hoewel deze techniek heel vaak alle onvoldane vereisten van pakketten
   oplost, kan ze toch in een aantal gewone omstandigheden tekortschieten.

     * Conflicten worden opgelost door het doelpakket dat het conflict
       uitlokte,te verwijderen. Maar in dat geval krijgen pakketten die van
       dat pakket afhankelijk waren, te maken met onvoldane vereisten. En de
       onmiddellijke oplosser zal geen poging doen om die te repareren.

     * Soms kan niet aan een vereiste voldaan worden ten gevolge van
       versierestricties en ten gevolge van de beperking dat enkel
       kandidaatversies in overweging genomen worden. Veronderstel
       bijvoorbeeld dat van fileutils de versies 1.0 en 2.0 beschikbaar zijn,
       dat de kandidaatversie versie 1.0 is en dat het pakket octopus de
       volgende vereiste stelt: “Depends: fileutils (>= 2.0)”. De
       onmiddellijke oplosser is in een dergelijk geval niet in staat de
       vereiste op te lossen: hij zal nooit versie 2.0 van het pakket in
       overweging nemen, aangezien dat niet de kandidaatversie is.

   De interactieve vereistenoplosser kan deze situaties en nog andere wel
   oplossen. Indien er onvoldane vereisten achterblijven of indien de
   onmiddellijke vereistenoplossing uitgeschakeld is, zal de interactieve
   oplosser automatisch beginnen zoeken naar een oplossing. Het volgende
   onderdeel beschrijft hoe men de interactieve vereistenoplosser moet
   gebruiken.

  Vereisten interactief oplossen

   Indien er een vereistenprobleem opduikt dat niet met de onmiddellijke
   vereistenoplosser aangepakt kan worden, kan aptitude u bijstaan bij het
   oplossen ervan. Van zodra er een probleem opduikt, zal onderaan het scherm
   een rode balk zichtbaar worden met een suggestie van aptitude voor de
   oplossing ervan. In de volgende schermafdruk geeft aptitude bijvoorbeeld
   aan dat het de situatie kan oplossen door twee pakketten op hun huidige
   versie te behouden.

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.3.3       #Defect: 1   Er zal 48.6MB schijfruimte vrijkomen
 i A   nautilus                                             2.10.1-4   2.10.1-4
 i     nautilus-cd-burner                                   2.10.2-1.1 2.10.2-1.1
 i A   nautilus-data                                        2.10.1-4   2.10.1-4
 i     netspeed                                             0.12.1-1   0.12.1-1
 i A   oaf                                                  0.6.10-3   0.6.10-3
 i     pybliographer                                        1.2.6.2-1  1.2.6.2-1
 i     rhythmbox                                            0.8.8-13   0.8.8-13
 i     shermans-aquarium                                    3.0.1-1    3.0.1-1
 idA   sound-juicer                                 -1733kB 2.10.1-3   2.10.1-3
 GNOME 2 CD Ripper
 sound-juicer zal verwijderd worden.


 De volgende pakketten hangen af van sound-juicer en zullen defect raken door het
 te verwijderen:


   * gnome-desktop-environment hangt af van sound-juicer

 [1(1)/...] Suggereert 2 te behouden
 e: Onderzoeken  !: Toepassen  .: Volgende  ,: Vorige

   Zoals onderaan het scherm aangegeven wordt, kunt u bijkomende
   oplossingsmogelijkheden onderzoeken door op . en , te drukken, de huidige
   oplossing toepassen door op ! te drukken en de oplossing meer in detail
   onderzoeken door op e te drukken. Bij het onderzoeken van de huidige
   oplossing, krijgt u een scherm dat vergelijkbaar is met het volgende:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
                 Pakketten                          Oplossen van vereisten
   --\ Behoud de volgende pakketten op hun huidige versie:
     gstreamer0.8-cdparanoia                           [0.8.10-1 (unstable, nu)]
     sound-juicer                                                [2.10.1-2 (nu)]
















 [1(1)/...] Suggereert 2 te behouden
 e: Onderzoeken  !: Toepassen  .: Volgende  ,: Vorige

   U kunt informatie bekijken over het pakket waarop een actie uitgevoerd
   wordt door gewoon op Enter te drukken terwijl het pakket geaccentueerd
   wordt. Om een meer gedetailleerde uitleg te bekomen over waarom aptitude
   een specifieke beslissing nam, kunt u dat element uit de lijst
   accentueren. Als u dat doet, zal in de onderste helft van het scherm
   getoond worden welke vereiste opgelost werd door de keuze die aptitude
   maakte, samen met alle manieren waarop aan die vereiste voldaan kon
   worden.

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
                 Pakketten                          Vereisten oplossen
   --\ Behoud de volgende pakketten op hun huidige versie:
     gstreamer0.8-cdparanoia                           [0.8.11-1 (unstable, nu)]
     sound-juicer                                      [2.10.1-3 (unstable, nu)]






 cdparanoia plug-in voor GStreamer
 sound-juicer hangt af van gstreamer0.8-cdparanoia
 --\ De volgende acties zullen deze vereiste oplossen:
   -> Degradeer sound-juicer [2.10.1-3 (unstable, nu) -> 0.6.1-2 (testing)]
   -> Verwijder sound-juicer [2.10.1-3 (unstable, nu)]
   -> Annuleer het verwijderen van gstreamer0.8-cdparanoia
   -> Degradeer gstreamer0.8-cdparanoia [0.8.11-1 (unstable, nu) -> 0.8.8-3 (tes



 [1(1)/...] Suggereert 2 te behouden
 e: Onderzoeken  !: Toepassen  .: Volgende  ,: Vorige

   U kunt de vereistenoplosser begeleiden naar een oplossing die uw
   goedkeuring wegdraagt door een goedkeuring of een afkeuring te geven aan
   de afzonderlijke acties van een oplossing. Indien u een actie goedkeurt,
   dan zal de oplosser er waar mogelijk voor kiezen en mogelijke
   alternatieven negeren (indien er meerdere goedgekeurde alternatieven zijn,
   kan elk van hen gekozen worden). Als u daarentegen een actie afwijst, zal
   de oplosser nooit voor die actie kiezen.

   Om een actie af te wijzen, moet u ze accentueren en op r drukken. De
   afwijzing kan ongedaan gemaakt worden door opnieuw op r te drukken. Op
   dezelfde manier kunt u een actie selecteren en op a drukken om ze goed te
   keuren. Door opnieuw op a te drukken herstelt u ze in haar oorspronkelijke
   toestand. U kunt elke actie ongedaan maken door Ongedaan maken → Ongedaan
   maken (Control+u) te gebruiken terwijl het scherm met de oplosser actief
   is. Indien u een afwijzing of een goedkeuring annuleert, zullen alle
   oplossingen die genegeerd werden terug beschikbaar zijn wanneer u de
   volgende keer een nieuwe oplossing genereert.

   [Opmerking] Opmerking
               Standaard wijst de oplosser acties af die de toestand van
               gehandhaafde pakketten wijzigen of die verboden versies van
               pakketten installeren. U kunt die afwijzingen overstemmen en
               dus toestaan dat de handhaving of het verbod automatisch
               omzeild worden, op dezelfde manier als waarop u iedere andere
               afkeuring zou opheffen. Door de configuratieoptie
               Aptitude::ProblemResolver::Allow-Break-Holds op truein te
               stellen, schakelt u dit gedrag uit, wat betekent dat de
               oplosser altijd handhavingen zal verbreken (weliswaar niet
               ongestraft, zie Aptitude::ProblemResolver::BreakHoldScore).

   Afgewezen acties staan in rode kleur en zijn gemarkeerd met een “R”,
   terwijl goedgekeurde acties een groene kleur hebben en met een “A”
   gemarkeerd worden. U kunt dit in de volgende schermweergave zien, waar de
   actie “behoud gstreamer0.8-cdparanoia op zijn huidige versie” afgewezen
   werd en de actie “behoud sound-juicer op zijn huidige versie” goedgekeurd
   werd.

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
                 Pakketten                          Vereisten oplossen
   --\ Behoud de volgende pakketten op hun huidige versie:
 R   gstreamer0.8-cdparanoia                           [0.8.11-1 (unstable, nu)]
 A   sound-juicer                                      [2.10.1-3 (unstable, nu)]
















 [1(1)/...] Suggereert 2 te behouden
 e: Onderzoeken  !: Toepassen  .: Volgende  ,: Vorige

   Afwijzingen en goedkeuringen hebben enkel invloed op nieuw gegenereerde
   oplossingen. U kunt weten of een nieuwe oplossing gegenereerd zal worden
   door de indicator in de linkerbenedenhoek van het scherm te bekijken:
   indien er een getal tussen haakjes staat, duidt dit op het aantal
   oplossingen dat gegenereerd werd. Dus, indien het getal binnen en buiten
   de haakjes gelijk is (zoals hierboven), zal op . drukken een nieuwe
   oplossing genereren. Indien er geen getal tussen haakjes staat (als de
   indicator er bijvoorbeeld zo uitziet: [1/5]), dan kunnen er geen
   oplossingen meer gegenereerd worden. Op ieder ogenblik kunt u de laatst
   gegenereerde oplossing selecteren door op > te drukken, en de eerst
   gegenereerde oplossing door op < te drukken.

   [Belangrijk] Belangrijk
                De probleemoplosser wordt opnieuw geïnitialiseerd van zodra u
                de toestand van een pakket wijzigt. Indien u een pakket
                markeert om geïnstalleerd, opgewaardeerd of verwijderd, enz.
                te worden, zal de oplosser al uw eerdere afwijzingen en
                goedkeuringen vergeten evenals alle oplossingen die tot dan
                toe gegenereerd werden.

   Behalve acties selecteren in de lijst bovenaan het scherm, kunt u ook uit
   de lijst in de onderste schermhelft acties selecteren. Om bij die lijst te
   geraken, moet u er ofwel met de muis in klikken, of op Tab drukken.
   Tenslotte, om een ordelijke weergave te krijgen van de beslissingen die
   door de probleemoplosser genomen werden, moet u op o. Dit zal een lijst
   produceren van de vereisten die opgelost werden en de actie die ondernomen
   werd om ze op te lossen, zoals in de volgende schermafdruk.

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
                 Pakketten                          Vereisten oplossen
   --\ gnome-desktop-environment hangt af van sound-juicer
     -> Annuleer het verwijderen van sound-juicer
   --\ sound-juicer hangt af van gstreamer0.8-cdparanoia
     -> Annuleer het verwijderen van gstreamer0.8-cdparanoia





 GNOME 2 CD Ripper
 gnome-desktop-environment hangt af van sound-juicer
 --\ De volgende acties zullen deze vereiste oplossen:
   -> Verwijder gnome-desktop-environment [1:2.10.2.3 (unstable, testing, nu)]
   -> Annuleer het verwijderen van sound-juicer
   -> Degradeer sound-juicer [2.10.1-3 (unstable, nu) -> 0.6.1-2 (testing)]




 [1(1)/...] Suggereert 2 te behouden
 e: Onderzoeken  !: Toepassen  .: Volgende  ,: Vorige

   U kunt deze weergavemodus verlaten door nogmaals op o te drukken.

  Kosten van de interactieve vereistenoplosser

    Kosten en kostencomponenten

   De kost van een oplossing die door de interactieve vereistenoplosser
   geproduceerd wordt, is een waarde die door aptitude gebruikt wordt om te
   bepalen hoe “slecht” die oplossing is. Oplossingen die “beter” zijn,
   worden steeds weergegeven voor oplossingen die “slechter” zijn. De kost
   van oplossingen wordt gedefinieerd in de configuratieoptie
   Aptitude::ProblemResolver::SolutionCost.

   Enkele kenmerkende kosten worden getoond in Voorbeeld 2.1,
   “Kostenvoorbeelden van de oplosser”.

   Voorbeeld 2.1. Kostenvoorbeelden van de oplosser

   De standaardkost, waarbij oplossingen geordend worden volgens hun
   veiligheidskost en vervolgens volgens hun pinprioriteit voor apt:

 safety, priority

   Verwijder zo weinig mogelijk pakketten en annuleer vervolgens zo weinig
   mogelijk acties:

 removals, canceled-actions

   Sorteer oplossingen volgens het aantal pakketten dat zij verwijderen plus
   tweemaal het aantal acties dat zij annuleren.

 removals + 2 * canceled-actions

   Zoals u in de bovenstaande voorbeelden kunt zien, is een kost niet
   noodzakelijk een enkel getal. In feite bestaat een kost uit een of meer
   kostencomponenten, waarbij elk van hen een getal is dat verbonden is met
   de oplossing. Bij het rangschikken van oplossingen, onderzoekt de oplosser
   kostencomponenten volgens volgorde en gaat enkel voort naareen volgende
   component als de vorige gelijk zijn. Bijvoorbeeld zullen voor de kost
   “removals, canceled-actions” oplossingen met minder verwijderingen steeds
   voorafgaan aan oplossingen met meer verwijderingen, ongeacht het aantal
   geannuleerde acties dat ze met zich meebrengen. Oplossingen met een gelijk
   aantal verwijderingen worden van hun kant zodanig geordend dat de
   oplossing met het minste aantal geannuleerde acties op de eerste plaats
   komt.

   Kostencomponenten komen voor in twee verschijningsvormen: basale
   kostencomponenten en samengestelde kostencomponenten.

   Basale componenten benoemen gewoon een kenmerk van de oplossing,
   zoals“upgrades” (opwaarderingen) of “removals” (verwijderingen). Een lijst
   met ingebouwde basiscomponenten van aptitude kunt u vinden in Tabel 2.1,
   “Basale kostencomponenten”. U kunt ook uw eigen kostencomponenten maken
   met de hints add-to-cost-component en raise-cost-component. Zie voor de
   details de paragraaf met de naam “Hints voor de oplosser configureren”.

   Elke basiscomponent is ofwel een teller of een niveau. Tellers tellen
   hoeveel acties van een oplossing aan een bepaalde voorwaarde voldoen
   (zoals pakketten verwijderen of nieuwe pakketten installeren), terwijl
   niveaus een getal koppelen aan iedere actie en berekenen wat het hoogste
   getal is dat aan een actie uit de oplossing gekoppeld is.

   Tabel 2.1. Basale kostencomponenten

+---------------------------------------------------------------------------------+
|        Naam        | Type |                    Omschrijving                     |
|--------------------+------+-----------------------------------------------------|
|                    |      |Telt het aantal handhavingen dat de oplossing        |
|broken-holds        |Teller|verbreekt als de oplosser de toelating heeft om dat  |
|                    |      |te doen                                              |
|                    |      |(Aptitude::ProblemResolver::Allow-Break-Holds).      |
|--------------------+------+-----------------------------------------------------|
|                    |      |Telt het aantal aanhangige acties dat door de        |
|canceled-actions    |Teller|oplossing geannuleerd wordt (zodat pakketten op hun  |
|                    |      |huidige versie behouden blijven).                    |
|--------------------+------+-----------------------------------------------------|
|installs            |Teller|Telt het aantal pakketten dat door de oplossing      |
|                    |      |geïnstalleerd wordt.                                 |
|--------------------+------+-----------------------------------------------------|
|non-default-versions|Teller|Telt het aantal versies dat de oplossing installeert |
|                    |      |of opwaardeert vanuit niet-standaard pakketbronnen.  |
|--------------------+------+-----------------------------------------------------|
|                    |      |Een waarde die toeneemt naarmate de pinprioriteit    |
|                    |      |voor apt van een versie afneemt. Meer bepaald wordt  |
|priority            |Niveau|dit berekend door de pinprioriteit negatief te maken |
|                    |      |(als bijvoorbeeld de pinprioriteit 500 is, zal deze  |
|                    |      |component de waarde -500 krijgen).                   |
|--------------------+------+-----------------------------------------------------|
|removals            |Teller|Telt het aantal pakketten dat door de oplossing      |
|                    |      |verwijderd wordt.                                    |
|--------------------+------+-----------------------------------------------------|
|removals-of-manual  |Teller|Telt het aantal handmatig geïnstalleerde pakketten   |
|                    |      |dat door de oplossing verwijderd wordt.              |
|--------------------+------+-----------------------------------------------------|
|                    |      |Een algemene heuristische waarde die toeneemt        |
|safety              |Niveau|naarmate acties minder “veilig” worden. Zie voor     |
|                    |      |details de paragraaf met de naam “Veiligheidskosten”.|
|--------------------+------+-----------------------------------------------------|
|upgrades            |Teller|Telt het aantal pakketten dat door de oplossing      |
|                    |      |opgewaardeerd wordt.                                 |
+---------------------------------------------------------------------------------+

   Samengestelde componenten worden opgebouwd door de waarden van basale
   componenten te combineren. Bijvoorbeeld, removals + canceled-actions telt
   de componenten removal en canceled-actions bij elkaar op en het resultaat
   is een component die het aantal verwijderingen en geannuleerde acties
   telt. Samengestelde componenten combineren tellers door ze bij elkaar op
   te tellen en niveaus door hun maximale waarde te nemen, zoals
   gedemonstreerd in Afbeelding 2.11, “Syntaxis van samengestelde
   kostencomponenten”.

   [Opmerking] Opmerking
               Twee niveaus samenvoegen is foutief, en dat geldt ook voor het
               gebruiken van de maximumwaarde van twee tellers en voor het op
               een af andere manier combineren van niveaus en tellers.
               Bijvoorbeeld zullen de kosten removals + safety en
               max(upgrades, installs) als fouten behandeld worden en door de
               oplosser genegeerd.^[13]

   Afbeelding 2.11. Syntaxis van samengestelde kostencomponenten

   Twee of meer basale kosten optellen:

                 [schaalfactor1]*kost1 + [schaalfactor2]*kost2 + ...


   De maximumwaarde van twee of meer basale kosten gebruiken:

                 max([schaalfactor1]*kost1, [schaalfactor2]*kost2, ...)


   Merk op dat elke individuele basale component vermenigvuldigd kan worden
   met een schaalfactor vooraleer hij gecombineerd wordt met andere
   componenten. Dit kan gebruikt worden om de afwegingen die de oplosser
   tussen kosten maakt, te sturen. Een kost van 2*removals + 3*upgrades zegt
   dat drie verwijderingen exact even “slecht” zijn als twee opwaarderingen.
   Oplossingen met vier verwijderingen en één opwaardering zullen gezien
   worden als gelijkwaardig aan oplossingen met één verwijdering en drie
   opwaarderingen, aangezien beide een kost van elf hebben.

    Veiligheidskosten

   Afbeelding 2.12. Niveaus van veiligheidskosten

   Niveaus van veiligheidskosten
   [Diagram met niveaus van veiligheidskosten]

   De kostencomponent veiligheid is een heuristische schatting van hoe
   “veilig” of “onveilig” een oplossing is. Veiligheidskosten kunnen gezien
   worden als een manier van onderverdelen van oplossingen in verschillende
   genummerde “niveaus”, waarbij “minder veilige” niveaus een hoger nummer
   opgeplakt krijgen. Afbeelding 2.12, “Niveaus van veiligheidskosten” toont
   hoe dit werkt met de standaardinstellingen van aptitude.

   [Tip] Tip
         Niveaus van veiligheidskosten zijn enkel een manier om de volgorde
         te sturen waarin vereistenoplossingen geproduceerd worden. Zie de
         paragraaf met de naam “Kosten van de interactieve vereistenoplosser”
         voor een volledige beschrijving van hoe u de volgorde waarin
         aptitude oplossingen rangschikt, kunt wijzigen.

   Standaard start aptitude de oplosser op met een “redelijk” aantal niveaus
   van veiligheidskosten. Die zijn:

   Tabel 2.2. Standaard niveaus van veiligheidskosten

+-------------------------------------------------------------------------------------------------------------+
|Kostenniveau|                 Omschrijving                 |                Configuratieoptie                |
|------------+----------------------------------------------+-------------------------------------------------|
|            |Oplossingen die enkel “veilige” acties        |                                                 |
|            |inhouden (het installeren van een pakket op   |Aptitude::ProblemResolver::Safe-Level,           |
|10.000      |zijn standaardversie of het behouden van een  |Aptitude::ProblemResolver::Remove-Level          |
|            |pakket op zijn huidige versie) en het         |                                                 |
|            |verwijderen van pakketten.                    |                                                 |
|------------+----------------------------------------------+-------------------------------------------------|
|            |De oplossing die alle acties van de gebruiker |                                                 |
|            |annuleert. De waarde ervan was vroeger hoger  |                                                 |
|10.000      |dan Aptitude::ProblemResolver::Remove-Level,  |Aptitude::ProblemResolver::Keep-All-Level        |
|            |maar pakketten verwijderen werd hoger         |                                                 |
|            |gerangschikt dan diezelfde pakketten behouden,|                                                 |
|            |zelfs als het pakket zou opgewaardeerd worden.|                                                 |
|------------+----------------------------------------------+-------------------------------------------------|
|            |Oplossingen die door de gebruiker ingestelde  |                                                 |
|40.000      |handhavingen verbreken of verboden versies    |Aptitude::ProblemResolver::Break-Hold-Level      |
|            |installeren.                                  |                                                 |
|------------+----------------------------------------------+-------------------------------------------------|
|            |Oplossingen die pakketten installeren op een  |                                                 |
|50.000      |versie die niet de standaardversie is (zoals  |Aptitude::ProblemResolver::Non-Default-Level     |
|            |bijvoorbeeld die uit “experimental”).         |                                                 |
|------------+----------------------------------------------+-------------------------------------------------|
|60.000      |Oplossingen die essentiële pakketten          |Aptitude::ProblemResolver::Remove-Essential-Level|
|            |verwijderen.                                  |                                                 |
+-------------------------------------------------------------------------------------------------------------+

   Indien een oplossing thuis hoort onder meerdere niveaus van
   veiligheidskosten, zal het onder het hoogste geplaatst worden, dat is
   datgene dat zich het laatst aandient. Een oplossing die bijvoorbeeld een
   pakket opwaardeert naar zijn standaardversie en een handhaving van een
   ander pakket verbreekt, zal op niveau 40.000 geplaatst worden. U kunt de
   niveaus van individuele versies aanpassen met behulp van hints voor de
   oplosser. Zie voor details de paragraaf met de naam “Hints voor de
   oplosser configureren”. De standaardniveaus worden geïllustreerd in
   Afbeelding 2.12, “Niveaus van veiligheidskosten”.

  De interactieve vereistenoplosser configureren

    Hints voor de oplosser configureren

   Om de kwaliteit te verbeteren van de oplossingen voor vereistenproblemen
   die u krijgt, kunt u de interactieve vereistenoplosser aanwijzingen geven.
   Deze aanwijzingen kunnen de prioriteiten van de oplosser wijzigen en hem
   sterker doen neigen naar een bepaalde pakketversie, of ze kunnen gebruikt
   worden om de oplosser “vooraf” afwijzingen en goedkeuringen “mee te geven”
   alsof u zelf oplosser zou spelen en manueel verschillende versies zou
   aanvaarden of verwerpen.

   Aanwijzingen worden opgeslagen in de configuratiegroep
   “Aptitude::ProblemResolver::Hints” van het configuratiebestand van apt,
   /etc/apt/apt.conf (zie de paragraaf met de naam “Referentiegids voor het
   configuratiebestand” voor details over het configuratiebestand).

   Elke aanwijzing voor de oplosser bestaat uit een actie, een doel en
   optioneel een versie. Een aanwijzing wordt op de volgende wijze
   geschreven:"actie doel [versie]". Om een aanwijzing voor de oplosser toe
   te passen, zoekt aptitude op basis van de waarde van doel een of meer
   pakketten op, kiest een of meer versies van die pakketten op basis van de
   waarde van versie en voert ten slotte de opgegeven actie uit.

   In de aanwijzing voor de oplosser mag het veld actie een van de volgende
   waarden hebben:

    1. “approve”: Keur de versie goed, alsof het commando Oplosser →
       Goedgekeurd aan-/uitzetten (a) erop uitgevoerd werd.

    2. “reject”: Wijs de versie af, alsof het commando Oplosser → Verworpen
       aan-/uitzetten (r) erop uitgevoerd werd.

    3. “discard”: Verwerp elke oplossing die de versie bevat. Is verschillend
       van “reject” in die zin dat dit voor de gebruiker niet zichtbaar is en
       niet interactief veranderd kan worden.

    4. “increase-safety-cost-to getal”: verhoog de veiligheidskost van elke
       oplossing die de versie bevat tot getal; als de veiligheidskost reeds
       groter is dan getal, zal deze aanwijzing zonder effect blijven. De
       veiligheidskost kan gebruikt worden (en wordt standaard gebruikt) om
       de volgorde waarin oplossingen aan bod komen, te sturen. Zie de
       paragraaf met de naam “Kosten en kostencomponenten” en de paragraaf
       met de naam “Veiligheidskosten” voor details.

       Verschillende bijzondere kostenniveaus kunnen op naam gekozen worden:

         a. conflict, discard: in plaats van de veiligheidskost aan te
            passen, worden oplossingen die de versie bevatten, verworpen
            alsof de aanwijzing “discard” erop werd toegepast.

         b. maximum: de hoogste veiligheidskost.

         c. minimum: de laagste veiligheidskost. Alle zoekbewerkingen
            beginnen op het niveau van die kost, waardoor het “optrekken” van
            van de kost van een versie naar dat niveau, geen effect heeft.
            Toch kan die waarde ook gebruikt worden bij het aanpassen van de
            vooraf gedefinieerde kostenniveaus: het instellen van
            Aptitude::ProblemResolver::Remove-Level op “minimum” zal
            bijvoorbeeld ertoe leiden dat het verwijderen van pakketten geen
            invloed zal hebben op de veiligheidskost van een oplossing.

       [Opmerking] Opmerking
                   De aanwijzing increase-safety-cost-to wordt toegepast
                   bovenop elke standaard veiligheidskost die verbonden is
                   met de gekozen actie. Een aanwijzing die bijvoorbeeld de
                   veiligheidskost van “installeer hal uit experimental”
                   verhoogt naar 15.000 zal geen effect hebben, omdat die
                   actie reeds een veiligheidskost van 50.000 heeft (in de
                   veronderstelling dat die versie van hal niet de standaard
                   kandidaatversie is).

    5. “getal”: tel het opgegeven getal op bij de score van de versie en doe
       de oplosser ernaartoe of (bij een negatief getal) ervan weg neigen.
       Bijvoorbeeld, de aanwijzing 200 emacs telt 200 op bij de score van
       emacs, terwijl de aanwijzing -10 emacs 10 aftrekt van zijn score.

   Indien het veld doel van de oplosser een vraagteken bevat (“?”) of een
   tilde (“~”), wordt dit als een zoekpatroon aanzien en alle eraan
   beantwoordende pakketversies worden in overweging genomen. In het andere
   geval wordt het beschouwd als de naam van het te selecteren pakket. Het
   doel “g++” zal dus enkel het pakket g++ selecteren, maar het doel
   “?section(non-free)” zal elk pakket in de sectie non-free selecteren. Zie
   de paragraaf met de naam “Zoekpatronen” voor meer informatie over
   zoekpatronen.

   Indien het veld versie niet aanwezig is, dan slaat de aanwijzing op alle
   versies van het pakket. In het andere geval kan het een van de volgende
   vormen aannemen:

    1. “/archief”: de aanwijzing heeft enkel betrekking op versies die in het
       opgegeven archief aanwezig zijn.

    2. “<versie”: de aanwijzing heeft enkel betrekking op versies waarvan het
       versienummer kleiner is dan versie.

    3. “<=versie”: de aanwijzing slaat enkel op versies waarvan het
       versienummer kleiner is dan of gelijk aan versie.

    4. “=versie”: de aanwijzing slaat enkel op versies waarvan het
       versienummer versie is.

    5. “<>versie”: de aanwijzing heeft enkel betrekking op versies waarvan
       het versienummer niet versie is.

    6. “>=versie”: de aanwijzing slaat enkel op versies waarvan het
       versienummer groter dan of gelijk aan versie is.

    7. “>versie”: de aanwijzing slaat enkel op versies waarvan het
       versienummer groter danversie is.

    8. “:UNINST”: in plaats van op enigeversie van doel te slaan, beïnvloedt
       de aanwijzinghet besluit om doel te verwijderen. Bijvoorbeeld, “reject
       aptitude :UNINST” zal de oplosser verhinderen om te proberen aptitude
       te verwijderen.

    9. “versie”: de aanwijzing betreft enkel versies waarvan het versienummer
       versie is.

Zoekpatronen

   Indien u in aptitude naar een pakket zoekt of een weergavelimiet instelt,
   wordt de tekenreeks die u ingeeft een “zoekpatroon” genoemd. Het meest
   basale gebruik van zoekpatronen is zoeken naar een pakket op naam, maar
   aptitude laat u ook toe om veel complexere zoekopdrachten aan te maken.
   Naast de visuele interface kunnen ook een aantal operaties aan de
   commandoregel gebruik maken van zoekpatronen. Zie Referentiegids voor de
   commandoregel voor details.

   Een zoekpatroon bestaat uit een of meer voorwaarden (soms “termen”
   genoemd). Pakketten beantwoorden aan het patroon als ze aan alle termen
   ervan beantwoorden. Termen beginnen meestal met een vraagteken (“?”),
   gevolgd door de naam van de term die aangeeft waarop de term zoekt: de
   term ?name zoekt bijvoorbeeld naar eraan beantwoordende pakketnamen,
   terwijl de term ?version op zoek gaat naar eraan beantwoordende
   pakketversies. Tenslotte worden eventuele bijkomende parameters voor de
   zoekterm tussen haakjes geplaatst (zie de documentatie over de individuele
   termen voor de details over wat de betekenis is van de parameters van elke
   term).

   [Opmerking] Opmerking
               Tekst waaraan geen “?” voorafgaat, geeft ook een zoekpatroon
               aan: aptitude zal elk woord (of tekenreeks tussen
               aanhalingstekens) beschouwen als het argument voor een
               ?name-patroon, dat op zoek gaat naar een pakket waarvan de
               naam beantwoordt aan de tekst als men de tekst interpreteert
               als een reguliere expressie.

   [Waarschuwing] Waarschuwing
                  In dit gedrag van aptitude wanneer het een zoekpatroon
                  zonder voorafgaand “?” (of “~”) opgegeven krijgt, wordt
                  voorzien om interactieve opzoekingen comfortabeler te maken
                  en zal in latere uitgaven veranderingen ondergaan. Scripts
                  die aptitude gebruiken moeten de zoekstrategie die ze
                  willen gebruiken expliciet benoemen. Dit wil zeggen dat
                  scripts moeten zoeken naar “?name(coq)” eerder dan naar
                  “coq”).

  Naar tekenreeksen zoeken

   Veel zoektermen krijgen een tekenreeks mee als parameter en vergelijken
   die met een of meer pakketvelden. Tekenreeksen kunnen zowel met als zonder
   aanhalingstekens (“"”) opgegeven worden, zodat“?name(scorch)” en
   “?name("scorch")” eenzelfde zoekbewerking zullen uitvoeren. Indien u een
   zoekterm opgeeft met dubbele aanhalingstekens, kunt u in de zoekterm zelf
   een dubbel aanhalingsteken opnemen door vlak ervoor een backslash (“\”) te
   plaatsen: bijvoorbeeld, het resultaat van “?description("\"easy\"")” zal
   zijn: alle pakketten waarvan de beschrijving de tekenreeks “"easy"” bevat.

   Indien u een “kale” tekenreeks opgeeft, een waarrond geen dubbele
   aanhalingstekens staan, dan zal aptitude de tekenreeks als “beëindigd”
   beschouwen als het bij het afsluitende haakje aankomt of aan de komma die
   voorafgaat aan het tweede argument bij de zoekterm. ^[14] Om de bijzondere
   betekenis van die tekens te neutraliseren, moet u vlak ervoor een tilde
   (“~”) plaatsen. Bijvoorbeeld, “?description(etc))” is een fout tegen de
   syntaxis, omdat het eerste “)” de term van het type ?description afsluit
   en het tweede “)” geen enkel corresponderend “(” heeft. Daarentegen levert
   “?description(etc~))” een overeenkomst op met elk pakket waarvan de
   beschrijving de tekst “etc)” bevat. U moet extra zorgvuldig zijn als u de
   verkorte notatie voor een term gebruikt. Zie de paragraaf met de naam
   “Verkorte notatie voor zoektermen” voor details.

   De meeste tekstuele zoekopdrachten (naar pakketnamen, beschrijvingen enz.)
   gebeuren aan de hand van hoofdletterongevoelige reguliere expressies. Er
   is een overeenkomst tussen de reguliere expressie en een veld als een
   gedeelte van dat veld beantwoordt aan de reguliere expressie.
   Bijvoorbeeld, “ogg[0-9]” komt overeen met “libogg5”, “ogg123” en
   “theogg4u”. Sommige lettertekens hebben binnen een reguliere expressie een
   speciale betekenis ^[15]. Dus, indien u ze wilt gebruiken in
   zoekopdrachten moet u een backslash als stuurcode (escape) gebruiken.
   Bijvoorbeeld, om te zoeken naar “g++”, moet u het patroon “g\+\+”
   gebruiken.

   De tekens “!” en “|” hebben in zoekpatronen een speciale betekenis. Om
   deze tekens te gebruiken in een tekenreeks die niet door aanhalingstekens
   begrensd wordt, kunt u vlak ervoor een tilde (“~”) plaatsen. Bijvoorbeeld,
   om pakketten te vinden waarvan de beschrijving ofwel “groot” of “schuin”
   bevat, moet u het patroon “?description(groot~|schuin)” gebruiken. Maar
   wellicht zult u het comfortabeler vinden om in dergelijke gevallen gewoon
   een tekenreeks tussen aanhalingstekens te gebruiken:
   “?description("groot|schuin")”.

  Verkorte notatie voor zoektermen

   Sommige zoektermen kunnen in “verkorte” vorm gebruikt worden. Die bestaat
   uit een tilde (“~”) gevolgd door een enkel teken dat de term voorstelt en
   tenslotte de eventuele argumenten bij de term. Bijvoorbeeld, de verkorte
   vorm van ?name(aptitude) is ~n aptitude.

   Indien u een term gebruikt in zijn verkorte notatie, wordt de term
   afgesloten en een nieuwe term begonnen door een tilde of door “witruimte”
   - dat zijn spaties, tabs, enz. - te gebruiken. Bijvoorbeeld, “~mDaniel
   Burrows” zal elk pakket vinden waarvan het pakketbeheerdersveld “Daniel”
   bevat en waar “Burrows” voorkomt in de pakketnaam, terwijl “~i~napt”
   geïnstalleerde pakketten oplevert waarvan de naam apt bevat. Om in de
   zoekexpressie witruimte op te nemen, kunt u er ofwel een tilde voor
   plaatsen (zoals in Daniel~ Burrows) of er aanhalingstekens rond plaatsen
   (zoals in "Debian Project" of zelfs Debian" "Project). In een tekenreeks
   tussen aanhalingstekens, gebruikt u de backslash (“\”) om de bijzondere
   betekenis van het aanhalingsteken te annuleren: bijvoorbeeld, ~d"\"email"
   zal als resultaat alle pakketten opleveren waarvan de beschrijving een
   aanhalingsteken bevat, onmiddellijk gevolgd door email. ^[16]

   [Opmerking] Opmerking
               Vraagtekens (“?”) sluiten de verkorte vorm van een term niet
               af, zelfs niet als daarop de naam van een zoekterm volgt.
               Bijvoorbeeld, “~napt?priority(required)” heeft als resultaat
               alle pakketten waarvan de naam beantwoordt aan de reguliere
               expressie “apt?priority(required)”. Om een verkorte zoekterm
               te combineren met een zoekterm die bij naam genoemd wordt,
               moet u een of meer spaties plaatsen tussen de twee termen,
               zoals bij “~napt ?priority(required)”, of moet u
               aanhalingstekens plaatsen rond de (eventuele) tekst die op de
               verkorte vorm van een term volgt, zoals bij
               “~n"apt"?priority(required)”.

   Tabel 2.3, “Beknopte handleiding bij zoektermen” geeft een lijst weer met
   de verkorte vorm van elke zoekterm.

  Zoekopdrachten en versies

   Standaard levert een patroon een pakket op, indien er een versie van dat
   pakket bestaat die aan het patroon beantwoordt. Nochtans kunnen sommige
   patronen aan hun subpatronen de restrictie opleggen om enkel de
   overeenkomst met sommige versies van een pakket te honoreren.
   Bijvoorbeeld, de zoekterm ?depends(patroon) zal alle pakketten opleveren
   die afhankelijk zijn van een pakket dat beantwoordt aan patroon. Nochtans
   zal patroon enkel getoetst worden aan die pakketversies die effectief aan
   een vereiste tegemoet komen. Dit houdt in dat indien foo afhankelijk is
   van bar (>= 3.0) en versies 2.0, 3.0, en 4.0 van bar beschikbaar zijn, er
   bij het zoekpatroon ?depends(?version(2\.0)) enkel bij versies 3.0 en 4.0
   zal getoetst worden op ?version(2\.0), met als gevolg dat deze
   zoekopdracht foo niet zal vinden.

   Het doet ertoe welke versies getoetst worden, omdat zoals in het
   voorgaande voorbeeld, sommige versies wel en andere niet kunnen
   beantwoorden aan het patroon. Bijvoorbeeld het patroon ?installed zal
   enkel een overeenkomst opleveren met de pakketversie die geïnstalleerd is
   (als het geïnstalleerd is). Evenzo zal het patroon
   ?maintainer(pakketbeheerder) enkel een overeenkomst opleveren met versies
   die door de opgegeven pakketbeheerder onderhouden worden. Gewoonlijk
   hebben alle versies van een pakket dezelfde pakketbeheerder, maar dat is
   niet altijd het geval. In feite zal elk zoekpatroon dat de velden van een
   pakket (behalve de naam ervan natuurlijk) doorzoekt, zich op die manier
   gedragen, omdat bij verschillende pakketversies alle velden van een pakket
   onderling kunnen verschillen.

   Om een patroon aan alle versies van een pakket te toetsen, ook al zou dat
   normaal maar aan een aantal versies getoetst worden, moet u de term ?widen
   gebruiken. Bijvoorbeeld, ?depends(?widen(?version(2\.0))) zal een
   overeenkomst opleveren met elk pakket A dat een pakket B vereist, waarbij
   B een versie heeft die beantwoordt aan 2.0, ongeacht of die versie
   effectief aan de vereiste van A tegemoetkomt. Aan de andere kant beperkt
   de term ?narrow de versies waarmee zijn subpatroon vergeleken wordt:
   ?narrow(?installed, ?depends(?version(ubuntu))) zal een overeenkomst
   opleveren met elk pakket waarvan de geïnstalleerde versie een vereiste
   heeft waaraan voldaan kan worden door een pakket waarvan de
   versietekenreeks “ubuntu” bevat.

   [Opmerking] Opmerking
               Er is een subtiel maar belangrijk verschil tussen een patroon
               vergelijken met een pakket en het vergelijken met alle versies
               van dat pakket. Als een patroon met een pakket vergeleken
               wordt, wordt iedere term ervan met dat pakket vergeleken, en
               zo zal elk van de termen een overeenkomst opleveren als om het
               even welke versie van dat pakket eraan beantwoordt. Als een
               patroon daarentegen vergeleken wordt met elke versie van een
               pakket, zal er een succesvolle overeenkomst zijn als elk van
               zijn termen overeenkomt met dezelfde versie van dat pakket.

               Bijvoorbeeld: veronderstel dat versie 3.0-1 van het pakket
               aardvark geïnstalleerd is, maar dat versie 4.0-1 beschikbaar
               is. Dan zal de zoekexpressie?version(4\.0-1)?installed een
               overeenkomst met aardvark opleveren, omdat ?version(4\.0-1)
               overeenkomt met versie 4.0-1 van aardvark, terwijl ?installed
               een overeenkomst met versie 3.0-1 oplevert. Anderzijds levert
               deze expressie niet voor alle versies van aardvark een
               overeenkomst op, omdat er geen enkele versie geïnstalleerd is
               die ook nog het versienummer 4.0-1 heeft.

  Expliciete zoekdoelen

   Sommige bijzonder complexe zoekopdrachten kunnen in aptitude geformuleerd
   worden met behulp van expliciete doelen. In normale zoekexpressies bestaat
   er geen manier om te verwijzen naar het pakket of de versie die momenteel
   getoetst wordt. Bijvoorbeeld, veronderstel dat u wenst te zoeken naar alle
   pakketten P die van een tweede pakket Q afhangen op zo een manier dat Q P
   aanbeveelt. Het is duidelijk dat u op weg moet gaan met de term
   ?depends(...). Maar de term die in de plaats van de ... komt, moet op een
   of andere manier pakketten selecteren die identiek zijn aan dat waaraan
   ?depends getoetst wordt. Toen ik hierboven de bedoeling beschreef, loste
   ik dit op door de pakketten een naam te geven en ze P en Q te noemen.
   Termen met expliciete doelen doen exact hetzelfde. ^[17]

   Een expliciet doel wordt met de term ?for ingevoerd:

   Afbeelding 2.13. Syntaxis van de term ?for

 ?for variabele: patroon

   Dit werkt exact gelijk patroon, maar variabele kan binnenin patroon
   gebruikt worden om te verwijzen naar het pakket of de versie waarmee
   patroon vergeleken wordt. U kunt variabele op twee manieren gebruiken:

    1. De term ?= zoekt een exacte overeenkomst met het in de opgegeven
       variabele vermelde pakket of versie. Specifiek: indien de
       overeenkomstige ?for-term zich tot een specifieke versie beperkt, dan
       zal ?= ofwel met die versie (als ?= beperkt werd) ofwel met het hele
       pakket een overeenkomst opleveren. Anders zal het een overeenkomst
       opleveren met om het even welke versie van het pakket.

       Zie Voorbeeld 2.2, “ Het gebruik van de term ?= ” voor een voorbeeld
       van het gebruik van ?=.

    2. De term ?bind(variabele, patroon) levert een overeenkomst op met
       gelijk welk pakket of versie als de waarde van variabele beantwoordt
       aan patroon.

       Voor termen in een ?-stijl is een verkorte vorm beschikbaar. De
       expressie ?bind(variabele, ?term[(argumenten)]) kan vervangen worden
       door ?variabele:term(argumenten).

       Zie Voorbeeld 2.3, “Het gebruik van de term ?bind” voor een voorbeeld
       van het gebruik van ?bind.

  Referentiegids voor zoektermen

   Tabel 2.3, “Beknopte handleiding bij zoektermen” bevat een korte
   samenvatting van alle zoektermen die in aptitude beschikbaar zijn. Een
   volledige beschrijving van iedere term vindt u hieronder.

   Tabel 2.3. Beknopte handleiding bij zoektermen

+--------------------------------------------------------------------------------------------------+
|              Lange vorm              |            Korte vorm             |     Omschrijving      |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer het pakket   |
|                                      |                                   |dat aansluit bij       |
|?=variabele                           |                                   |variabele. Zie de      |
|                                      |                                   |paragraaf met de naam  |
|                                      |                                   |“Expliciete            |
|                                      |                                   |zoekdoelen”.           |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer elk pakket   |
|?not(patroon)                         |!patroon                           |dat niet beantwoordt   |
|                                      |                                   |aan patroon.           |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten die|
|                                      |                                   |voor de opgegeven actie|
|?action(actie)                        |~aactie                            |(bijv. “install” of    |
|                                      |                                   |“upgrade”) gemarkeerd  |
|                                      |                                   |werden.                |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten    |
|?all-versions(patroon)                |                                   |waarvan alle versies   |
|                                      |                                   |beantwoorden aan       |
|                                      |                                   |patroon.               |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer elk pakket   |
|?and(patroon1, patroon2)              |patroon1 patroon2                  |dat zowel aan patroon1 |
|                                      |                                   |als aan patroon2       |
|                                      |                                   |beantwoordt.           |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten    |
|?any-version(patroon)                 |                                   |waarvan minstens een   |
|                                      |                                   |versie beantwoordt aan |
|                                      |                                   |patroon.               |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten    |
|                                      |                                   |voor de opgegeven      |
|?architecture(architectuur)           |~rarchitectuur                     |architectuur (zoals    |
|                                      |                                   |“amd64” of “all”).     |
|                                      |                                   |Speciale waarden:      |
|                                      |                                   |native en foreign.     |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten uit|
|?archive(archief)                     |~Aarchief                          |het opgegeven archief  |
|                                      |                                   |(zoals “unstable”).    |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten die|
|?automatic                            |~M                                 |automatisch            |
|                                      |                                   |geïnstalleerd werden.  |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteert alles       |
|                                      |                                   |waarbij variabele      |
|                                      |                                   |beantwoordt aan        |
|?bind(variabele, patroon)             |?variabele:term-naam[(argumenten)] |patroon. Zie de        |
|                                      |                                   |paragraaf met de naam  |
|                                      |                                   |“Expliciete            |
|                                      |                                   |zoekdoelen”.           |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten met|
|?broken                               |~b                                 |een niet-voldane       |
|                                      |                                   |vereiste.              |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten met|
|                                      |                                   |een niet-voldane       |
|?broken-vereistenType                 |~BvereistenType                    |vereiste van het       |
|                                      |                                   |opgegeven              |
|                                      |                                   |vereistenType.         |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten met|
|                                      |                                   |een niet-voldane       |
|?broken-vereistenType(patroon)        |~DB[vereistenType:]patroon         |vereiste van het       |
|                                      |                                   |opgegeven vereistenType|
|                                      |                                   |en die beantwoorden aan|
|                                      |                                   |patroon.               |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten    |
|                                      |                                   |waaraan een pakket dat |
|                                      |                                   |beantwoordt aan patroon|
|?broken-reverse-vereistenType(patroon)|~RBvereistenType:patroon           |een vereiste van het   |
|                                      |                                   |type vereistenType     |
|                                      |                                   |stelt waaraan niet     |
|                                      |                                   |voldaan is.            |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten die|
|?conflicts(patroon)                   |~Cpatroon                          |conflicteren met een   |
|                                      |                                   |pakket dat beantwoordt |
|                                      |                                   |aan patroon.           |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten die|
|?config-files                         |~c                                 |werden verwijderd maar |
|                                      |                                   |niet gewist.           |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Zoek pakketten die een |
|                                      |                                   |vereiste van het type  |
|?vereistenType(patroon)               |~D[vereistenType:]patroon          |vereistenType stellen  |
|                                      |                                   |aan een pakket dat     |
|                                      |                                   |beantwoordt aan        |
|                                      |                                   |patroon.               |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten van|
|?description(beschrijving)            |~dbeschrijving                     |wie de beschrijving    |
|                                      |                                   |beantwoordt aan        |
|                                      |                                   |beschrijving.          |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer essentiële   |
|?essential                            |~E                                 |pakketten, die met     |
|                                      |                                   |Essential: yes in hun  |
|                                      |                                   |controlebestand.       |
|--------------------------------------+-----------------------------------+-----------------------|
|?exact-name(naam)                     |                                   |Selecteer pakketten die|
|                                      |                                   |naam genoemd worden.   |
|--------------------------------------+-----------------------------------+-----------------------|
|?false                                |~F                                 |Selecteer geen         |
|                                      |                                   |pakketten.             |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten die|
|                                      |                                   |beantwoorden aan       |
|                                      |                                   |patroon en waarbij     |
|?for variabele: patroon               |                                   |variabele aansluit bij |
|                                      |                                   |het gevonden pakket.   |
|                                      |                                   |Zie de paragraaf met de|
|                                      |                                   |naam “Expliciete       |
|                                      |                                   |zoekdoelen”.           |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten die|
|?garbage                              |~g                                 |niet vereist worden    |
|                                      |                                   |door een handmatig     |
|                                      |                                   |geïnstalleerd pakket.  |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer              |
|?installed                            |~i                                 |geïnstalleerde         |
|                                      |                                   |pakketten.             |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten die|
|?maintainer(pakketbeheerder)          |~mpakketbeheerder                  |door pakketbeheerder   |
|                                      |                                   |onderhouden worden.    |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten die|
|                                      |                                   |een geschiktheid voor  |
|                                      |                                   |meerdere architecturen |
|                                      |                                   |hebben van het type    |
|?multiarch(multi-architectuur)        |                                   |multi-architectuur     |
|                                      |                                   |(hetgeen ofwel         |
|                                      |                                   |“foreign”, “same”,     |
|                                      |                                   |“allowed” of “none” kan|
|                                      |                                   |zijn).                 |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten    |
|                                      |                                   |waarvan dezelfde versie|
|?narrow(filter, patroon)              |~S filter patroon                  |zowel aan filter als   |
|                                      |                                   |aan patroon            |
|                                      |                                   |beantwoordt.           |
|--------------------------------------+-----------------------------------+-----------------------|
|?name(naam)                           |~nnaam, naam                       |Selecteer pakketten met|
|                                      |                                   |de opgegeven naam.     |
|--------------------------------------+-----------------------------------+-----------------------|
|?new                                  |~N                                 |Selecteer nieuwe       |
|                                      |                                   |pakketten.             |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Zoek geïnstalleerde    |
|?obsolete                             |~o                                 |pakketten die niet     |
|                                      |                                   |gedownload kunnen      |
|                                      |                                   |worden.                |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten die|
|?or(patroon1, patroon2)               |patroon1 | patroon2                |beantwoorden aan       |
|                                      |                                   |patroon1, patroon2 of  |
|                                      |                                   |aan beide.             |
|--------------------------------------+-----------------------------------+-----------------------|
|?origin(origine)                      |~Oorigine                          |Selecteer pakketten met|
|                                      |                                   |de opgegeven origine.  |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten die|
|?provides(patroon)                    |~Ppatroon                          |voorzien in een pakket |
|                                      |                                   |dat beantwoordt aan    |
|                                      |                                   |patroon.               |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten met|
|?priority(prioriteit)                 |~pprioriteit                       |de opgegeven           |
|                                      |                                   |prioriteit.            |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten die|
|                                      |                                   |het doel zijn van een  |
|                                      |                                   |vereiste van het type  |
|?reverse-vereistenType(patroon)       |~R[vereistenType:]patroon          |vereistenType die      |
|                                      |                                   |gesteld wordt door een |
|                                      |                                   |pakket dat beantwoordt |
|                                      |                                   |aan patroon.           |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten die|
|                                      |                                   |het doel zijn van een  |
|                                      |                                   |niet-voldane vereiste  |
|?reverse-broken-vereistenType(patroon)|~RBvereistenType:patroon           |van het type           |
|                                      |                                   |vereistenType die      |
|                                      |                                   |gesteld wordt door een |
|                                      |                                   |pakket dat beantwoordt |
|                                      |                                   |aan patroon.           |
|--------------------------------------+-----------------------------------+-----------------------|
|?section(sectie)                      |~ssectie                           |Selecteer pakketten uit|
|                                      |                                   |de opgegeven sectie.   |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten    |
|                                      |                                   |waarvan de naam van het|
|?source-package(naam)                 |~enaam                             |bronpakket beantwoordt |
|                                      |                                   |aan de reguliere       |
|                                      |                                   |expressie naam.        |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten    |
|                                      |                                   |waarvan de versie van  |
|?source-version(versie)               |                                   |het bronpakket         |
|                                      |                                   |beantwoordt aan de     |
|                                      |                                   |reguliere expressie    |
|                                      |                                   |versie.                |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten die|
|?tag(categorie)                       |~Gcategorie                        |tot de opgegeven       |
|                                      |                                   |debtags-categorie      |
|                                      |                                   |behoren.               |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Zoeken naar pakketten  |
|                                      |                                   |waarvan de             |
|?term(trefwoord)                      |                                   |pakketinformatie het   |
|                                      |                                   |opgegeven trefwoord    |
|                                      |                                   |bevat.                 |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Zoeken naar pakketten  |
|                                      |                                   |waarvan de             |
|?term-prefix(trefwoord)               |                                   |pakketinformatie een   |
|                                      |                                   |trefwoord bevat dat    |
|                                      |                                   |begint met het         |
|                                      |                                   |opgegeven trefwoord.   |
|--------------------------------------+-----------------------------------+-----------------------|
|?true                                 |~T                                 |Selecteer alle         |
|                                      |                                   |pakketten.             |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten die|
|?task(taak)                           |~ttaak                             |deel uitmaken van de   |
|                                      |                                   |opgegeven taak.        |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer              |
|                                      |                                   |geïnstalleerde         |
|?upgradable                           |~U                                 |pakketten die          |
|                                      |                                   |opgewaardeerd kunnen   |
|                                      |                                   |worden.                |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten die|
|                                      |                                   |gemarkeerd werden met  |
|                                      |                                   |een user-tag           |
|?user-tag                             |                                   |(gebruikerslabel) dat  |
|                                      |                                   |beantwoordt aan de     |
|                                      |                                   |reguliere expressie    |
|                                      |                                   |gebruikerslabel.       |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer pakketten    |
|                                      |                                   |waarvan de versie      |
|?version(versie)                      |~Vversie                           |beantwoordt aan versie |
|                                      |                                   |(bijzondere waarden:   |
|                                      |                                   |CURRENT, CANDIDATE en  |
|                                      |                                   |TARGET).               |
|--------------------------------------+-----------------------------------+-----------------------|
|?virtual                              |~v                                 |Selecteer virtuele     |
|                                      |                                   |pakketten.             |
|--------------------------------------+-----------------------------------+-----------------------|
|                                      |                                   |Selecteer versies      |
|                                      |                                   |waarbij patroon        |
|                                      |                                   |overeenkomt met om het |
|?widen(patroon)                       |~Wpatroon                          |even welke versie van  |
|                                      |                                   |het overeenkomstige    |
|                                      |                                   |pakket zonder rekening |
|                                      |                                   |te houden met lokale   |
|                                      |                                   |versierestricties.     |
+--------------------------------------------------------------------------------------------------+

   naam

           Vindt pakketten waarvan de naam beantwoordt aan de reguliere
           expressie naam. Dit is de “standaard” zoekmodus en wordt gebruikt
           voor patronen die niet met ~ beginnen.

           [Opmerking] Opmerking
                       Om pakketten te vinden waarvan de naam meerdere
                       deel-tekenreeksen bevat, moet u de term ?name (wordt
                       hierna behandeld) gebruiken. Bijvoorbeeld,
                       “?name(apti)?name(tude)” zal een overeenkomst
                       opleveren met elk pakket waarvan de naam zowel “apti”
                       als “tude” bevat.

   ?=variabele

           Vindt pakketten die overeenkomen met de waarde van variabele,
           welke gekoppeld moet zijn aan een begrenzende ?for. Bijvoorbeeld,
           ?for x: ?depends( ?recommends( ?=x ) ) zal een overeenkomst
           opleveren met elk pakket x dat een pakket vereist dat x
           aanbeveelt.

           De volgende zoekexpressie levert bijvoorbeeld een overeenkomst op
           met pakketten die met zichzelf conflicteren:

           Voorbeeld 2.2. Het gebruik van de term ?=

           ?for x: ?conflicts(?=x)

           Zie de paragraaf met de naam “Expliciete zoekdoelen” voor meer
           informatie.

   ?not(patroon), !patroon

           Vindt pakketten die niet beantwoorden aan het patroon patroon.
           Bijvoorbeeld, “?not(?broken)” selecteert pakketten die niet
           “defect” zijn.

           [Opmerking] Opmerking
                       Om in een zoektekenreeks een“!” op te nemen, moet u
                       als “stuurcode (escape)” er een tilde (“~”) voor
                       plaatsen. Anders zal aptitude ervan uitgaan dat het
                       deel uitmaakt van een ?not-term. Bijvoorbeeld, om
                       pakketten te selecteren waarvan de beschrijving
                       “extra!” bevat, moet u “?description(extra~!)”
                       gebruiken.

   ?and(patroon1, patroon2), patroon1 patroon2

           Levert pakketten op die zowel aan patroon1 als aan patroon2
           beantwoorden.

   ?or(patroon1, patroon2), patroon1 | patroon2

           Levert pakketten op die ofwel aan patroon1 of aan patroon2
           beantwoorden.

           [Opmerking] Opmerking
                       Om in een reguliere expressie het teken “|” te
                       gebruiken, moet u een “stuurcode (escape)” gebruiken
                       om te voorkomen dat aptitude er een OR-term mee maakt:
                       “~|”.

   (patroon)

           Zoekt een overeenkomst met patroon. Bijvoorbeeld, “opengl
           (perl|python)” zal een overeenkomst opleveren met elk pakket
           waarvan de naam opengl bevat samen met ofwel perl of python.

   ?action(actie), ~aactie

           Levert pakketten op waarop de opgegeven actie uitgevoerd zal
           worden. actie kan zijn: “install”, “upgrade”, “downgrade”,
           “remove”, “purge”, “hold” (gaat na of een pakket gehandhaafd
           werd), of “keep” (gaat na of een pakket in een ongewijzigde
           toestand behouden zal worden).

           [Opmerking] Opmerking
                       Merk op dat dit enkel nagaat of een actie in de
                       wachtrij staat om op een pakket uitgevoerd te worden,
                       niet of die actie ook uitgevoerd kan worden. Dus,
                       bijvoorbeeld, ?action(upgrade) levert precies die
                       pakketten op waarvoor u reeds de keuze maakte om ze op
                       te waarderen, niet pakketten die zouden kunnen
                       opgewaardeerd worden in de toekomst (daarvoor moet u
                       ?upgradable gebruiken).

   ?all-versions(patroon)

           Levert pakketten op waarvan alle versies beantwoorden aan de
           opgegeven expressie. Elke versie van een pakket zal apart worden
           getoetst aan patroon en het pakket zal eraan beantwoorden als al
           zijn versies eraan beantwoorden. Pakketten zonder versies, zoals
           virtuele pakketten, zullen steeds aan deze zoekterm beantwoorden.

           Deze term mag niet gebruikt worden in een context waarin er reeds
           een beperking ingesteld is op de versies die getoetst zullen
           worden, zoals binnen ?depends of ?narrow. Maar hij mag wel steeds
           gebruikt worden binnen ?widen.

   ?any-version(patroon)

           Vindt een pakket als een van zijn versies beantwoordt aan het
           ingesloten patroon. Dit is het duale van ?all-versions.

           Deze term mag niet gebruikt worden in een context waarin er reeds
           een beperking ingesteld is op de versies die getoetst zullen
           worden, zoals binnen ?depends of ?narrow. Maar hij mag wel steeds
           gebruikt worden binnen ?widen.

           [Opmerking] Opmerking
                       Deze term is nauw verwant met ?narrow. In feite is
                       ?any-version(patroon1 patroon2) exact hetzelfde als
                       ?narrow(patroon1, patroon2).

           [Opmerking] Opmerking
                       Ter verduidelijking: zoals dit bij elk ander patroon
                       ok het geval is, worden geen pakketten vergeleken,
                       maar de versies van die pakketten. Voor “aptitude
                       search” en andere toepassingen maakt dit weinig uit,
                       maar “aptitude versions” zal enkel de versies tonen
                       die een overeenkomst opleveren en niet alle versies
                       van een pakket waarvan een bepaalde versie een
                       overeenkomst oplevert. Gebruik een omsluitende ?widen
                       om dat te bereiken.

   ?architecture(architectuur-spec), ~rarchitectuur-spec

           Levert pakketversies voor de opgegeven architectuur-spec op.
           Bijvoorbeeld, “?architecture(amd64)” levert amd64-pakketten op,
           terwijl “?architecture(all)” architectuuronafhankelijke pakketten
           oplevert.

           Ook de bijzondere waarden native en foreign kunnen gebruikt
           worden, en ook jokertekens voor architecturen (bijv. linux-any of
           any-amd64), zoals aangegeven in het Beleidshandboek (“11.1
           Tekenreeksen om architecturen aan te geven”).

   ?archive(archief), ~Aarchief

           Levert pakketversies op die te vinden zijn in een archief dat
           beantwoordt aan de reguliere expressie archief. Bijvoorbeeld,
           “?archive(testing)” levert elk pakket op dat in het archief
           testing te vinden is.

   ?automatic, ~M

           Vindt de pakketten die automatisch geïnstalleerd werden.

   ?bind(variabele, patroon), ?variabele:term-naam[(argumenten)]

           Levert elk pakket of versie op waarbij het opgegeven patroon
           overeenkomt met het pakket of de versie die gekoppeld is aan
           variabele, die in een omsluitende ?for gedefinieerd moet worden.

           Voorbeeld 2.3. Het gebruik van de term ?bind

           ?for x: ?depends(?depends(?for z: ?bind(x, ?depends(?=z))))

           ?for x: ?depends(?depends(?for z: ?x:depends(?=z)))

           De twee zoekpatronen uit het bovenstaande voorbeeld leveren
           allebei elk pakket x op waarbij x een pakket y vereist dat op zijn
           beurt afhankelijk is van een pakket z zodat x ook rechtstreeks
           afhankelijk is van z. Het eerste patroon maakt rechtstreeks
           gebruik van ?bind, terwijl het tweede het equivalent in verkorte
           syntaxis gebruikt.

           Zie de paragraaf met de naam “Expliciete zoekdoelen” voor meer
           informatie.

   ?broken, ~b

           Levert pakketten op die “defect” zijn: ze hebben een niet-voldane
           vereiste of voorvereiste of er werd geen rekening gehouden met het
           feit dat ze een ander pakket defect maken of ermee conflicteren.

   ?broken-vereistenType, ~BvereistenType

           Levert pakketten op die een niet-beantwoorde (“defecte”)
           afhankelijkheidsrelatie hebben van het opgegeven vereistenType.
           vereistenType kan zijn: “depends”, “predepends”, “recommends”,
           “suggests”, “breaks”, “conflicts” of “replaces”.

   ?broken-vereistenType(patroon), ~DB[vereistenType:]patroon

           Levert pakketten op met een niet-voldane afhankelijkheidsrelatie
           van het type vereistenType met een pakket dat aan patroon
           beantwoordt. vereistenType kan om het even welk type
           afhankelijkheidsrelatie zijn dat vermeld wordt in de documentatie
           over ?broken-vereistenType.

   ?conflicts(patroon), ~Cpatroon

           Levert pakketten op die conflicteren met een pakket dat
           beantwoordt aan het opgegeven patroon. Bijvoorbeeld,
           “?conflicts(?maintainer(dburrows@debian.org))” levert elk pakket
           op dat conflicteert met een pakket dat ik onderhoud.

   ?config-files, ~c

           Levert pakketten op die verwijderd werden, maar waarvan de
           configuratiebestanden nog op het systeem staan (d.w.z. ze werden
           verwijderd, maar niet gewist (purged)).

   ?vereistenType(patroon), ~D[vereistenType:]patroon

           vereistenType kan elk van de types afhankelijkheidsrelatie zijn
           die vermeld worden in de documentatie bij ?broken-vereistenType en
           ook provides: bijvoorbeeld, ?depends(libpng3) zal elk pakket
           opleveren dat libpng3 vereist. Indien de verkorte vorm (~D)
           gebruikt wordt en er werd geen vereistenType opgegeven, dan wordt
           standaard depends gebruikt.

           Indien het vereistenType “provides” is, worden pakketten gevonden
           die voorzien in een pakket dat beantwoordt aan patroon (het
           equivalent van ?provides). Anders worden pakketten gevonden die
           een afhankelijkheidsrelatie van het type vereistenType hebben met
           een pakketversie die beantwoordt aan patroon.

   ?description(beschrijving), ~dbeschrijving

           Levert pakketten op waarvan de beschrijving beantwoordt aan de
           reguliere expressie beschrijving.

   ?essential, ~E

           Vindt de essentiële pakketten.

   ?exact-name(naam)

           Vindt pakketten die naam als naam hebben. Dit is gelijkaardig aan
           ?name, maar de naam moet exact overeenkomen. Het volgende patroon
           zal bijvoorbeeld enkel een overeenkomst opleveren met het pakket
           apt. Met ?name zouden ook aptitude, uvccapture, enz. eraan
           beantwoorden.

           Voorbeeld 2.4. Het gebruik van de term ?exact-name

           ?exact-name(apt)

   ?false, ~F

           Geen enkel pakket beantwoordt aan deze term. ^[18]

   ?for variabele: patroon

           Vindt pakketten die beantwoorden aan patroon, maar de opgegeven
           variabele kan binnenin patroon gebruikt worden om naar het pakket
           of de pakketversie te verwijzen.

           U kunt variabele op twee manieren gebruiken. Om een term van het
           type ? toe te passen op de variabele, gebruikt u
           ?variabele:term-naam(argumenten). Bijvoorbeeld, ?x:depends(apt).
           Daarnaast zal de term ?=variabele elk pakket of versie selecteren
           dat beantwoordt aan de waarde van de opgegeven variabele.

           Bijvoorbeeld, de volgende term zal elk pakket x vinden dat een
           tweede pakket y aanbeveelt en er tegelijk van afhankelijk is.

           Voorbeeld 2.5. Het gebruik van de term ?for

           ?for x: ?depends( ?for y: ?x:recommends( ?=y ) )

           Zie de paragraaf met de naam “Expliciete zoekdoelen” voor meer
           informatie.

   ?garbage, ~g

           Beantwoordt aan pakketten die niet geïnstalleerd zijn of die
           automatisch geïnstalleerd werden en waarvan geen enkel
           geïnstalleerd pakket afhankelijk is.

   ?installed, ~i

           Komt overeen met pakketversies die momenteel geïnstalleerd zijn.

           Vermits standaard alle versies getoetst worden, levert dit normaal
           pakketten op die momenteel geïnstalleerd zijn.

   ?maintainer(pakketbeheerder), ~mpakketbeheerder

           Levert pakketten op waarvan het veld Maintainer beantwoordt aan de
           reguliere expressiepakketbeheerder. Bijvoorbeeld,
           “?maintainer(joeyh)” zal de pakketten vinden die onderhouden
           worden door Joey Hess.

   ?multiarch(multi-architectuur)

           Vindt pakketten die een geschiktheid voor meerdere architecturen
           hebben van het type, opgegeven met multiarch. Bijvoorbeeld,
           “?multiarch(foreign)” zal alle pakketten vinden die tegemoet
           kunnen komen aan een vereiste van pakketten voor een andere
           architectuur. “?multiarch(none)” zal pakketten vinden die niet
           geschikt zijn om op meerdere architecturen gebruikt te worden.

   ?narrow(filter, patroon), ~S filter patroon

           Deze term “beperkt” de zoekopdracht tot pakketversies die
           beantwoorden aan filter. Meer in het bijzonder vindt het elke
           pakketversie die zowel aan filter als aan patroon beantwoordt. De
           tekenreekswaarde waarmee vergeleken wordt, is de tekenreekswaarde
           van patroon.

   ?name(naam), ~nnaam

           Levert pakketten op waarvan de naam beantwoordt aan de reguliere
           expressie naam. Bijvoorbeeld, het merendeel van de pakketten die
           beantwoorden aan “?name(^lib)” zijn op een of andere manier
           bibliotheken.

   ?new, ~N

           Vindt de pakketten die “nieuw” zijn: dit betekent dat zij aan het
           archief toegevoegd werden sinds de laatste keer dat de pakketlijst
           uitgezuiverd werd met Acties → Vergeet nieuwe pakketten (f) of met
           de commandoregelactie forget-new.

   ?obsolete, ~o

           Met deze term worden geïnstalleerde pakketten gevonden die in geen
           enkele versie nog in enig archief te vinden zijn. In de visuele
           interface verschijnen deze pakketten onder “Verouderde of lokaal
           geïnstalleerde pakketten”.

   ?origin(origine), ~Oorigine

           Levert pakketten op waarvan de oorsprong beantwoordt aan de
           reguliere expressie origine. Bijvoorbeeld, “!?origin(debian)” zal
           op uw systeem alle niet-officiële pakketten vinden (pakketten die
           niet van het Debian-archief afkomstig zijn).

   ?provides(patroon), ~Ppatroon

           Vindt pakketversies die voorzien in een pakket dat beantwoordt aan
           patroon. Bijvoorbeeld, “?provides(mail-transport-agent)” zal alle
           pakketten opleveren die voorzien in “mail-transport-agent”.

   ?priority(prioriteit), ~pprioriteit

           Levert pakketten op waarvan de prioriteit overeenkomt met
           prioriteit. De waarde van prioriteit moet een van de volgende
           zijn: extra, important, optional, required of standard.
           Bijvoorbeeld, “?priority(required)” vindt pakketten die een
           prioriteit “required” hebben.

   ?reverse-vereistenType(patroon), ~R[vereistenType:]patroon

           vereistenType mag ofwel “provides” zijn of een van types
           afhankelijkheidsrelatie, vermeld in de documentatie over
           ?broken-vereistenType. Indien er geen vereistenType vermeld werd,
           wordt standaard aangenomen dat het depends betreft.

           Indien vereistenType “provides” is, dan levert het de pakketten op
           waarvan de naam geleverd wordt door een pakketversie die
           beantwoordt aan patroon. Anders toont het de pakketten waarmee een
           pakketversie die aan patroon beantwoordt een
           afhankelijkheidsrelatie van het type vereistenType heeft.

   ?reverse-broken-vereistenType(patroon),
   ?broken-reverse-vereistenType(patroon), ~RB[vereistenType:]patroon

           vereistenType mag ofwel “provides” zijn of een van types
           afhankelijkheidsrelatie, vermeld in de documentatie over
           ?broken-vereistenType. Indien er geen vereistenType vermeld werd,
           wordt standaard aangenomen dat het depends betreft.

           Levert de pakketten op waarmee een pakketversie die beantwoordt
           aan patroon een afhankelijkheidsrelatie van het type vereistenType
           heeft, waaraan evenwel niet voldaan wordt.

   ?section(sectie), ~ssectie

           Vindt de pakketten uit de sectie die beantwoordt aan de reguliere
           expressie sectie.

   ?source-package(naam), ~enaam

           Vindt pakketten waarvan de naam van het bronpakket beantwoordt aan
           de reguliere expressie naam.

   ?source-version(versie)

           Levert pakketten op waarvan de versie van het bronpakket
           beantwoordt aan de reguliere expressie versie.

   ?tag(categorie), ~Gcategorie

           Vindt pakketten waarvan het veld Tag beantwoordt aan de reguliere
           expressie categorie. Het patroon ?tag(game::strategy) zou
           bijvoorbeeld strategiespelen als resultaat geven.

           Zie voor meer informatie over tags (categorieën) en debtags
           http://debtags.alioth.debian.org.

   ?task(taak), ~ttaak

           Toont de pakketten die voorkomen in de taak die beantwoordt aan de
           reguliere expressie taak.

   ?term(trefwoord)

           Met deze term wordt de volledige tekst van de pakketcache van apt
           doorzocht op trefwoord. Als men deze term gebruikt bij “aptitude
           search”, Zoeken → Beperk Weergave (l) in het curses-frontend of
           als men hem in het pakketzoekvenster van het GTK+ frontend typt,
           stelt dit aptitude in staat om het zoeken te versnellen met behulp
           van een Xapian-index.

   ?term-prefix(trefwoord)

           Met deze term wordt de volledige tekst van de pakketcache van apt
           doorzocht naar alle trefwoorden die beginnen met trefwoord. Als
           men deze term gebruikt bij “aptitude search”, Zoeken → Beperk
           Weergave (l) in het curses-frontend of als men hem in het
           pakketzoekvenster van het GTK+ frontend typt, stelt dit aptitude
           in staat om het zoeken te versnellen met behulp van een
           Xapian-index.

           Dit is vergelijkbaar met ?term, maar het levert ook overeenkomsten
           met uitbreidingen van het trefwoord op. Bijvoorbeeld, het volgende
           zoekpatroon zal alle pakketten vinden die geïndexeerd werden onder
           de trefwoorden hour, hourglass, hourly, enzovoort:

           Voorbeeld 2.6. Het gebruik van de term ?term-prefix

           ?term-prefix(hour)

   ?true, ~T

           Deze term komt overeen met elk pakket. Bijvoorbeeld,
           “?installed?provides(?true)” levert de geïnstalleerde pakketten op
           die in een pakket voorzien.

   ?upgradable, ~U

           Deze term vindt alle geïnstalleerde pakketten die opgewaardeerd
           kunnen worden.

           [Opmerking] Opmerking
                       Merk op dat dit enkel nagaat of er opwaarderingen
                       beschikbaar zijn voor een pakket, niet of een
                       opwaardering uitgevoerd zou kunnen worden (met acties
                       zoals safe-upgrade of full-upgrade).

                       Er kunnen bijvoorbeeld opwaarderingen beschikbaar zijn
                       voor verschillende pakketten, maar misschien zijn de
                       opgewaardeerde versies van enkele pakketten met elkaar
                       in tegenstrijd, waardoor ze niet samen geïnstalleerd
                       kunnen worden of niet allemaal gelijktijdig
                       opgewaardeerd kunnen worden.

   ?user-tag(merkteken)

           Deze term levert een overeenkomst op met alle pakketten die
           gemarkeerd werden met een user-tag (gebruikerslabel) dat
           beantwoordt aan de reguliere expressie merkteken.

   ?version(versie), ~Vversie

           Vindt alle pakketversies waarvan het versienummer beantwoordt aan
           de reguliere expressie versie, behalve de hieronder vermelde
           uitzonderingen. Bijvoorbeeld, “?version(debian)” levert pakketten
           op waarvan het versienummer “debian” bevat.

           De volgende waarden van versie worden op een speciale manier
           behandeld. Om naar versienummers te zoeken waarin deze waarden
           voorkomen, moet u de waarde laten voorafgaan door een backslash.
           Om bijvoorbeeld pakketten te vinden waarvan het versienummer
           CURRENT bevat, moet u zoeken naar \CURRENT.

              * CURRENT komt overeen met de momenteel geïnstalleerde versie
                van een pakket, indien het geïnstalleerd is.

              * CANDIDATE geeft de eventuele versie weer van het pakket dat
                geïnstalleerd zal worden mocht u op + drukken terwijl u het
                geselecteerd heeft of mocht u er de opdracht aptitude install
                op uitvoeren.

              * TARGET levert de eventuele versie van een pakket op waarvan
                de installatie beoogd wordt.

   ?virtual, ~v

           Komt overeen met alle pakketten die zuiver virtueel zijn: dat
           betekent dat in zijn naam voorzien wordt door een pakket, maar dat
           er geen enkel pakket met die naam bestaat. Bijvoorbeeld,
           “?virtual?reverse-provides(?installed)” levert de virtuele
           pakketten op waarin door de geïnstalleerde pakketten voorzien
           wordt.

   ?widen(patroon), ~Wpatroon

           “Verruimt” de vergelijking: indien er met een begrenzende term
           (zoals ?depends) een beperking ingesteld werd op de getoetste
           versies, dan vervallen die beperkingen. Dus, ?widen(patroon)
           levert een pakketversie op indien patroon overeenkomt met om het
           even welke versie van dat pakket.

Aanpassingen maken aan aptitude

  De pakketlijst aanpassen

   De pakketlijst kan grondig aangepast worden: hoe pakketten weergegeven
   worden, hoe de pakkethiërarchie opgebouwd wordt, hoe pakketten geordend
   worden en zelfs de manier waarop het scherm georganiseerd wordt, zijn
   allemaal elementen die kunnen veranderd worden.

    Aanpassen hoe pakketten weergegeven worden

   Dit onderdeel beschrijft hoe u de inhoud en de indeling van de pakketlijst
   kunt configureren, evenals de statusregel, de kopregel en de uitvoer van
   aptitude search.

   De indeling van elk van deze plekken wordt gedefinieerd door een
   “indelingstekenreeks”. Een indelingstekenreeks is een tekstfragment met
   %-stuurcodes, zoals %p, %S, enzovoort. De uitvoer die er het resultaat van
   is, wordt aangemaakt door de tekst te nemen en er de %-stuurcodes mee te
   vervangen naargelang hun betekenis (die hieronder gegeven wordt).

   Een %-stuurcode kan ofwel een vaste lengte hebben of “uitrekbaar” zijn.
   Bij een vaste lengte wordt ze steeds vervangen door een even grote
   hoeveelheid tekst (die als dat nodig is met extra spaties uitgevuld
   wordt). Een uitrekbare stuurcode neemt de ruimte in die niet door kolommen
   met een vaste grootte opgeëist wordt. Als er meerdere zijn die uitrekbaar
   zijn, dan wordt de beschikbare ruimte gelijkmatig onder hen verdeeld.

   Alle %-stuurcodes hebben een standaardwaarde voor grootte of
   uitrekbaarheid. De grootte van een %-stuurcode kan aangepast worden door
   ze in te schrijven tussen het %-teken en het letterteken dat de identiteit
   van de stuurcode aangeeft. Bijvoorbeeld, %20V gebruikt een ruimte van 20
   lettertekens voor de weergave van de kandidaatversie van het pakket. Een
   vraagteken (?) tussen het %-teken en het letterteken dat de identiteit van
   de stuurcode aangeeft, heeft tot gevolg dat de “basale” breedte van de
   kolom varieert afhankelijk van zijn inhoud. Merk op dat dan de
   resulterende kolommen niet mooi verticaal uitgelijnd zullen zijn.

   Indien u wenst dat een bepaalde %-stuurcode uitrekbaar is, ook al heeft
   die normaal een vaste breedte, dan moet u onmiddellijk erachter een hekje
   (“#”) plaatsen. Om bijvoorbeeld de kandidaatversie van een pakket weer te
   geven, ongeacht de lengte ervan, gebruikt u de indelingstekenreeks %V#. U
   kunt # ook plaatsen na iets dat geen %-stuurcode is. Dan zal aptitude de
   aan het #-teken voorafgaande tekst “uitrekken” door er achteraan extra
   spaties aan toe te voegen.

   Samengevat is de syntaxis van een %-stuurcode:

 %[breedte][?]code[#]

   De configuratievariabelen Aptitude::UI::Package-Display-Format,
   Aptitude::UI::Package-Header-Format en Aptitude::UI::Package-Status-Format
   definiëren de standaardindeling van respectievelijk de pakketlijst, de
   kopregel bovenaan de pakketlijst en de statusregel onderaan de
   pakketlijst. Gebruik de optie -F om aan te passen hoe het resultaat van
   het commando aptitude search weergegeven wordt.

   De volgende %-stuurcodes kunt u gebruiken in een indelingstekenreeks:

   [Opmerking] Opmerking
               In sommige van de onderstaande beschrijvingen wordt verwezen
               naar “het pakket”. In de GUI gaat het dan ofwel over het
               pakket dat weergegeven wordt, ofwel over het pakket dat
               momenteel geselecteerd is. In een zoekopdracht aan de
               commandoregel betreft het dan het weergegeven pakket.

Stuurcode          Naam          Standaardgrootte Uitrekbaar    Omschrijving
                                                             Dit is geen echte
                                                             stuurcode. Het
                                                             voegt in de uitvoer
%%        Letterlijke %          1                Neen       gewoon een
                                                             percentteken in op
                                                             de plaats waar het
                                                             voorkomt.
                                                             In sommige
                                                             omstandigheden zal
                                                             de tekenreeks die
                                                             de indeling van de
                                                             weergave bepaalt,
                                                             “parameters”
                                                             bevatten: bij een
                                                             zoekopdracht aan de
                                                             commandoregel
                                                             bijvoorbeeld,
%#getal   Parametersubstitutie   Variabele        Neen       zullen de groepen
                                                             die beantwoorden
                                                             aan de zoekopdracht
                                                             gebruikt worden als
                                                             parameters bij de
                                                             weergave van het
                                                             resultaat. Deze
                                                             indelingscode zal
                                                             vervangen worden
                                                             door de parameter
                                                             die met getal
                                                             aangegeven wordt.
                                                             Een enkel
                                                             letterteken dat de
                                                             actie aangeeft die
                                                             op het pakket
%a        Actieteken             1                Neen       uitgevoerd moet
                                                             worden en
                                                             beschreven wordt in
                                                             Afbeelding 2.10,
                                                             “Waarden voor de
                                                             vlag “actie””.
                                                             Een iets
                                                             uitgebreidere
%A        Actie                  10               Neen       beschrijving van de
                                                             actie die op het
                                                             pakket uitgevoerd
                                                             moet worden.
                                                             Produceert niets
                                                             als er geen defecte
                                                             pakketten zijn.
                                                             Anders produceert
%B        Aantal defecte         12               Neen       het een tekenreeks
                                                             die het aantal
                                                             defecte pakketten
                                                             beschrijft, zoals
                                                             “Defect: 10”.
                                                             Een uit een letter
                                                             bestaand teken dat
                                                             de huidige toestand
                                                             van het pakket
%c        Vlag voor de huidige   1                Neen       samenvat, zoals
          toestand                                           beschreven in
                                                             Afbeelding 2.9,
                                                             “Waarden voor de
                                                             vlag “huidige
                                                             toestand””.
                                                             Een meer
                                                             uitgebreide
%C        Huidige toestand       11               Neen       beschrijving van de
                                                             huidige toestand
                                                             van het pakket.
%d        Omschrijving           40               Ja         Een korte
                                                             pakketbeschrijving.
                                                             De grootte van het
%D        Pakketgrootte          8                Neen       pakketbestand dat
                                                             het pakket bevat.
                                                             Geeft de tekenreeks
                                                             weer die verwijst
%E        Architectuur           10               Neen       naar de
                                                             architectuur,
                                                             bijvoorbeeld
                                                             “amd64”.
                                                             Geeft weer wat het
                                                             broncodepakket is,
%e        Broncode               30               Neen       bijvoorbeeld,
                                                             “aptitude” voor
                                                             “aptitude-doc-nl”.
                                                             De naam van de
%H        Computernaam           15               Neen       computer waarop
                                                             aptitude uitgevoerd
                                                             wordt.
                                                             Geeft de hoogste
                                                             prioriteit weer die
                                                             aan een
                                                             pakketversie
                                                             toegekend wordt.
%i        Pinprioriteit          4                Neen       Toont van pakketten
                                                             de prioriteit van
                                                             de versie waarvan
                                                             de installatie
                                                             afgedwongen zal
                                                             worden (in
                                                             voorkomend geval).
                                                             De (geschatte)
                                                             hoeveelheid
%I        Grootte na installatie 8                Neen       schijfruimte die
                                                             het pakket zal
                                                             innemen.
                                                             De pakketbeheerder
%m        Pakketbeheerder        30               Ja         die het pakket
                                                             onderhoudt.
                                                             Toon de letter “A”
                                                             als het pakket
%M        Kenteken automatisch   1                Neen       automatisch
                                                             geïnstalleerd werd.
                                                             Geef anders niets
                                                             weer.
                                                             Toont de versie van
%n        Programmaversie        De lengte van    Neen       aptitude die
                                 “0.8.7”.                    uitgevoerd wordt,
                                                             momenteel “0.8.7”.
                                                             Toont de naam van
%N        Programmanaam          De lengte van de Neen       het programma,
                                 naam.                       gewoonlijk
                                                             “aptitude”.
                                                             Geen uitvoer als er
                                                             geen pakketten
                                                             geïnstalleerd
                                                             zullen worden.
                                                             Geeft anders een
                                                             tekenreeks weer die
                                                             de totale grootte
                                                             aangeeft van alle
%o        Ophaalgrootte          17               Neen       pakketbestanden die
                                                             geïnstalleerd
                                                             zullen worden (een
                                                             schatting van
                                                             hoeveel er
                                                             opgehaald moet
                                                             worden).
                                                             Bijvoorbeeld,
                                                             “DL-grootte:
                                                             1000B”.
                                                             Geeft een
                                                             tekenreeks weer die
                                                             de origine van het
%O        Origine                30               Neen       pakket aanduidt,
                                                             bijvoorbeeld
                                                             “Debian:unstable
                                                             [amd64]”.
                                                             Geeft de naam van
                                                             het pakket weer.
                                                             Als een pakket
                                                             weergegeven wordt
                                                             in de context van
%p        Pakketnaam             30               Ja         een boomstructuur,
                                                             dan zal de naam van
                                                             het pakket zo
                                                             mogelijk inspringen
                                                             overeenkomstig zijn
                                                             niveau in de
                                                             boomstructuur.
                                                             Geeft de prioriteit
%P        Prioriteit             9                Neen       van het pakket
                                                             weer.
                                                             Toont bij
                                                             benadering het
          Aantal achterwaartse                               aantal
%r        afhankelijkheden       2                Neen       geïnstalleerde
                                                             pakketten dat van
                                                             het pakket
                                                             afhankelijk is.
                                                             Geeft een verkorte
                                                             beschrijving van de
          Verkorte weergave van                              prioriteit van het
%R        de prioriteit          3                Neen       pakket:
                                                             bijvoorbeeld,
                                                             “Important” wordt
                                                             “Imp”.
%s        Sectie                 10               Neen       Geeft de sectie van
                                                             het pakket weer.
                                                             Toont de letter "U"
%S        Betrouwbaarheidsstatus 1                Neen       als het pakket niet
                                                             vertrouwd wordt.
                                                             Het archief waarin
%t        Archief                10               Ja         het pakket te
                                                             vinden is.
                                                             Geeft met een “*”
                                                             weer dat een pakket
                                                             gecategoriseerd
                                                             werd en geeft
%T        Gemerkt (en            30               Neen       anders niets
          gebruikerslabels)                                  weer.^[19]

                                                             Dit veld bevat ook
                                                             gebruikerslabels
                                                             (user-tags).
                                                             Indien de geplande
                                                             acties tot gevolg
                                                             hebben dat er een
                                                             verschil zal zijn
                                                             op het vlak van
          Verschil in                                        gebruikte
%u        schijfgebruik          30               Neen       schijfruimte ,
                                                             beschrijft het dat
                                                             verschil.
                                                             Bijvoorbeeld,
                                                             “100MB schijfruimte
                                                             zal worden
                                                             gebruikt.”
                                                             Geeft de huidige
                                                             geïnstalleerde
                                                             versie van het
%v        Huidige versie         14               Neen       pakket weer, of
                                                             <geen> als het
                                                             pakket momenteel
                                                             niet geïnstalleerd
                                                             is.
                                                             Geeft de versie van
                                                             het pakket weer die
                                                             zou geïnstalleerd
                                                             worden mocht men er
                                                             de opdracht Pakket
%V        Kandidaatversie        14               Neen       → Installeren (+)
                                                             voor uitvoeren of
                                                             <geen> als het
                                                             pakket momenteel
                                                             niet beschikbaar
                                                             is.
                                                             Geeft weer hoeveel
                                                             bijkomende ruimte
                                                             gebruikt zal worden
                                                             of hoeveel ruimte
%Z        Verschil in grootte    9                Neen       er vrijgemaakt zal
                                                             worden bij het
                                                             installeren,
                                                             opwaarderen of
                                                             verwijderen van een
                                                             pakket.

    De pakkethiërarchie aanpassen

   De hiërarchie wordt opgebouwd aan de hand van een groeperingsbeleid:
   regels die aangeven hoe de hiërarchie opgebouwd moet worden. Het
   groeperingsbeleid beschrijft een “opeenvolging” van regels. Elke regel kan
   pakketten weglaten, sub-hiërarchieën van pakketten maken of de
   boomstructuur op een andere manier bewerken. De configuratie-items
   Aptitude::UI::Default-Grouping en Aptitude::UI::Default-Preview-Grouping
   stellen het groeperingsbeleid in voor respectievelijk nieuw aangemaakte
   pakketlijsten en voorafbeeldingen. U kunt het groeperingsbeleid voor de
   huidige pakketlijst instellen door op G te drukken.

   Het groeperingsbeleid wordt omschreven in een lijst met door komma's
   gescheiden regels: regel1,regel2,.... Elke regel bestaat uit de naam van
   de regel, eventueel gevolgd door argumenten: bijvoorbeeld, versions of
   section(subdir). Of argumenten nodig zijn en hoeveel er nodig (of
   toegelaten) zijn, hangt af van het type regel.

   Een regel kan de slotregel of niet de slotregel zijn. Een regel die niet
   de slotregel is, zal een pakket verwerken door een deel van de hiërarchie
   te genereren en het pakket dan overdragen aan een volgende regel. Een
   regel die de slotregel is daarentegen, zal ook een deel van de
   boomstructuur genereren (doorgaans items die bij het pakkethoren), maar
   zal het pakket niet aan een volgende regel doorgeven. Indien er geen
   slotregel opgegeven werd, zal aptitude de standaardregel gebruiken, die
   erin bestaat de standaard “pakketitems” aan te maken.

 actie

           Groepeert pakketten volgens de actie die voor hen gepland is;
           pakketten die niet opgewaardeerd kunnen worden en ongewijzigd
           zullen blijven, worden genegeerd. Dit is het soort groepering dat
           gebruikt wordt voor de boomstructuur van de voorafbeeldingen.

 architectuur

           Groepeert pakketten volgens hun architectuur.

 deps

           Dit is een slotregel.

           Maakt standaard pakketitems aan die uitvouwbaar zijn om de
           vereisten van het pakket te tonen.

 filter(patroon)

           Neem enkel pakketten op waarvan ten minste een versie beantwoordt
           aan patroon.

           Indien patroon “ontbreekt”, worden geen pakketten weggelaten. Dit
           is een functionaliteit met het oog op neerwaartse compatibiliteit
           en kan in de toekomst verwijderd worden.

 firstchar[(modus)]

           Groepeert pakketten op basis van de eerste letter van hun naam.

           Eigenlijk is het, om precies te zijn, niet altijd de eerste letter
           -- voor pakketten die met lib* beginnen, is de groepsnaam liba,
           libb, ... zoals op een Debian FTP-site.

           modus kan een van de volgende zijn:

                binary

                        Het groeperen gebeurt op basis van de naam van het
                        binaire pakket. Dit is het standaardgedrag als geen
                        modus opgegeven werd.

                        Voorbeeld 2.7. Groeperingsrichtlijn firstchar of
                        firstchar(binary)

                        Als we het broncodepakket dpkg als voorbeeld nemen,
                        dan zouden de binaire pakketten dselect, dpkg en
                        dpkg-dev gegroepeerd worden onder d, terwijl
                        libdpkg-dev en libdpkg-perl onder de groep libd
                        geplaatst zouden worden.

                source

                        Het groeperen gebeurt op basis van de naam van het
                        broncodepakket.

                        Het kan bijvoorbeeld nuttig zijn om bij het bekijken
                        van pakketten die afkomstig zijn van hetzelfde
                        broncodepakket (groeperingsrichtlijn source) binnen
                        een grote verzameling (bijvoorbeeld: alle
                        geïnstalleerde pakketten, alle opwaardeerbare
                        pakketten, alle pakketten uit de sectie "main") een
                        intermediair groeperingsniveau toe te voegen. Op die
                        manier kan men bijvoorbeeld de hiërarchie op de
                        FTP-site nabootsen (probeer eens de groepering:
                        "section(topdir),firstchar(source),source").

                        Voorbeeld 2.8. Groeperingsrichtlijn firstchar(source)

                        Met opnieuw het broncodepakket dpkg als voorbeeld,
                        zouden hierdoor alle binaire pakketten, dselect,
                        dpkg, dpkg-dev, libdpkg-dev en libdpkg-perl,
                        gegroepeerd worden onder d.

 pattern(patroon [=> titel] [{ richtlijn }] [, ...])

           Een aanpasbare groeperingsrichtlijn. Elke versie van elk pakket
           wordt getoetst aan het/de opgegeven patro(o)n(en). De eerste
           overeenkomst die gevonden wordt, wordt gebruikt om aan het pakket
           een titel toe te kennen. Daarna worden de pakketten gegroepeerd
           volgens hun titel. Als een tekenreeks in de vorm van \N in de
           titel voorkomt, zal die vervangen worden door de Nde gevonden
           overeenkomst. Indien er geen titel opgegeven is, wordt
           verondersteld dat het \1 is. Merk op dat pakketten die met geen
           enkel patroon overeenkomen, helemaal niet in de boomstructuur
           zullen voorkomen.

           Voorbeeld 2.9. Het gebruik van patroon om pakketten volgens
           pakketbeheerder te groeperen

           pattern(?maintainer() => \1)

           Het bovenstaande voorbeeld zal pakketten groeperen op basis van
           het veld Maintainer (pakketbeheerder). De richtlijn
           pattern(?maintainer()) zal hetzelfde effect hebben, aangezien een
           ontbrekende titel standaard de waarde \1 heeft.

           In plaats van op => titel, mag een richtlijn ook eindigen op ||.
           Dit geeft aan dat pakketten die beantwoorden aan het
           overeenkomstige patroon in de boomstructuur op hetzelfde niveau
           opgenomen zullen worden als de groepering pattern en niet in
           sub-bomen geplaatst zullen worden.

           Voorbeeld 2.10. Het gebruik van pattern met enkele pakketten die
           op het bovenste niveau geplaatst worden.

           pattern(?action(remove) => Pakketten die verwijderd worden, ?true
           ||)

           Het bovenstaande voorbeeld plaatst pakketten die verwijderd zullen
           worden in een sub-boom en alle andere pakketten op het huidige
           niveau in groepen overeenkomstig de beleidsrichtlijnen die op
           patroon volgen.

           Standaard worden alle pakketten die overeenkomen met een patroon,
           gegroepeerd volgens de regels die het beleid van patroon bepalen.
           Om voor sommige pakketten een andere richtlijn op te geven, moet u
           de richtlijn tussen accolades ({}) plaatsen na de titel van de
           groep, na de || of na het patroon indien geen van beide voorgaande
           gebruikt werd. Bijvoorbeeld:

           Voorbeeld 2.11. Het gebruik van een groeperingsbeleid met
           sub-richtlijnen op basis van een patroon

           pattern(?action(remove) => Pakketten die verwijderd worden {},
           ?action(install) => Pakketten die geïnstalleerd worden, ?true ||
           {status})

           De richtlijn uit het bovenstaande voorbeeld heeft de volgende
           effecten:

              * Pakketten die verwijderd zullen worden, worden in een
                sub-boom geplaatst met als titel “Pakketten die verwijderd
                worden”. Het groeperingsbeleid voor deze sub-boom is leeg,
                waardoor de pakketten in een vlakke lijst geplaatst worden.

              * Pakketten die geïnstalleerd zullen worden, worden in een
                sub-boom geplaatst met als titel Pakketten die geïnstalleerd
                worden en gegroepeerd volgens de richtlijnen die aan patroon
                beantwoorden.

              * Alle overige pakketten worden in de boomstructuur op het
                hoogste niveau geplaatst en volgens hun status gegroepeerd.

           Zie de paragraaf met de naam “Zoekpatronen” voor meer informatie
           over de indeling van patroon.

 prioriteit

           Groepeert pakketten op basis van hun prioriteit.

 section[(modus[,passthrough])]

           Groepeert pakketten volgens het veld Section (sectie).

           modus kan een van de volgende zijn:

                none

                        Groepering gebaseerd op het volledige veld Section
                        (sectie), zodat categorieën zoals “non-free/games”
                        gemaakt worden. Dit is het standaardgedrag als geen
                        modus opgegeven werd.

                topdir

                        Groepering gebaseerd op het deel van het veld Section
                        (sectie) dat voor het eerste /-teken komt. Indien dit
                        deel van de sectie niet herkend wordt of indien er
                        geen / is, zal in de plaats daarvan het eerste item
                        uit de lijst Aptitude::Sections::Top-Sections
                        gebruikt worden.

                subdir

                        Groepering gebaseerd op het deel van het veld Section
                        (sectie) dat volgt op het eerste /-teken, indien het
                        in de lijst Aptitude::Sections::Top-Sections
                        voorkomt. Indien dit niet het geval is of indien er
                        geen / voorkomt, wordt in plaats daarvan gegroepeerd
                        op basis van het volledige veld Section.

                subdirs

                        Groepering gebaseerd op het deel van het veld Section
                        (sectie) na het eerste /-teken, indien het deel van
                        het veld dat eraan voorafgaat, voorkomt in de lijst
                        Aptitude::Sections::Top-Sections. Indien dit niet het
                        geval is, of indien er geen / voorkomt, zal het
                        volledige veld gebruikt worden. Indien er meerdere
                        /-tekens voorkomen in het deel van het veld dat
                        gebruikt wordt, zal een hiërarchie van groepen
                        gemaakt worden. Indien bijvoorbeeld “games” geen deel
                        uitmaakt van Aptitude::Sections::Top-Sections, zal
                        een pakket met een sectie “games/arcade” geplaatst
                        worden onder de hoofding van het hoogste niveau
                        “games”, in een sub-boom met als naam “arcade”.

           Indien passthrough vermeld werd, zullen pakketten die om een of
           andere reden niet echt tot een sectie behoren (bijvoorbeeld
           virtuele pakketten), onmiddellijk doorgegeven worden naar het
           volgende groeperingsniveau, zonder dat ze eerst in subcategorieën
           geplaatst worden.

 status

           Groepeert pakketten in de volgende categorieën:

              * Veiligheidsupdates

              * Opwaardeerbaar

              * Nieuw

              * Geïnstalleerd

              * Niet geïnstalleerd

              * Verouderd en lokaal aangemaakt

              * Virtueel

 Broncode

           Groepeert pakketten op basis van de naam van het broncodepakket.

 tag[(aspect)]

           Groepeert pakketten op basis van de informatie die in de Debian
           package-bestanden onder Tag opgeslagen is. Indien aspect opgegeven
           werd, zullen enkel categorieën die met dat aspect overeenkomen,
           weergegeven worden en pakketten waarbij dat aspect ontbreekt,
           zullen verborgen worden. Anders zullen alle pakketten minstens
           eens weergegeven worden (waarbij pakketten zonder categorisering
           apart vermeld worden van pakketten die wel in categorieën
           ondergebracht werden).

           Zie voor meer informatie over debtags
           http://debtags.alioth.debian.org.

 taak

           Maakt een boomstructuur met de naam “Taken” aan die de beschikbare
           taken bevat (informatie over taken wordt uit debian-tasks.desc uit
           het pakket tasksel opgehaald). De categorieën die aangemaakt
           worden door de regel die na task volgt, bevinden zich op hetzelfde
           niveau als Taken.

 versies

           Dit is een slotregel.

           Maakt standaard pakketitems aan die de pakketversie weergeven als
           ze uitgevouwen worden.

    Aanpassen hoe pakketten gesorteerd worden

   Standaard worden pakketten in de pakketlijst of in de uitvoer van aptitude
   search op naam gesorteerd. Het is nochtans vaak nuttig om ze te sorteren
   volgens andere criteria (bijvoorbeeld pakketgrootte). Dit is mogelijk in
   aptitude door het sorteringsbeleid aan te passen.

   Zoals het in het vorige onderdeel beschreven groeperingsbeleid, bestaat
   ook het sorteringsbeleid uit een door komma's gescheiden lijst van
   elementen. Elk element uit de lijst is de naam van een
   sorteringsrichtlijn. Indien pakketten op basis van de eerste richtlijn
   “gelijk” zijn, wordt de tweede richtlijn gebruikt om ze te sorteren en zo
   verder. Een tilde-teken (~) voor de richtlijn keert de gewone betekenis
   ervan om. Bijvoorbeeld, priority,~name zal pakketten op basis van
   prioriteit sorteren, maar pakketten met dezelfde prioriteit zullen op
   basis van hun naam in omgekeerde volgorde geplaatst worden.

   Om voor een actieve pakketlijst het sorteringsbeleid te veranderen, moet u
   op S drukken. Om voor alle pakketlijsten het standaard sorteringsbeleid
   aan te passen, moet u de configuratieoptie Aptitude::UI::Default-Sorting
   instellen. Om voor aptitude search het sorteringsbeleid aan te passen,
   moet u de commandoregeloptie --sort gebruiken.

   De beschikbare richtlijnen zijn:

   installsize

           Sorteert pakketten volgens de geschatte schijfruimte die ze na
           installatie gebruiken.

   installsizechange

           Sorteert pakketten op basis van het verschil in schijfgebruik na
           installatie (de geschatte hoeveelheid schijfruimte die na
           installatie gebruikt wordt), waarbij de huidige versie (als die
           geïnstalleerd is) vergeleken wordt met de versie die kandidaat is
           voor installatie, opwaardering of verwijdering.

   debsize

           Sorteert pakketten op basis van de pakketgrootte.

   name

           Sorteert pakketten op naam.

   priority

           Sorteert pakketten volgens prioriteit.

   version

           Sorteert pakketten op basis van hun versienummer.

  Sneltoetsen aanpassen

   In het configuratiebestand kunnen de toetsen die gebruikt worden om in
   aptitude een commando te activeren, aangepast worden. Elk commando heeft
   onder Aptitude::UI::Keybindings een bijbehorende configuratievariabele. Om
   een andere toets aan een commando te koppelen, moet u gewoon de
   overeenkomstige variabele instellen op die toets. Om bijvoorbeeld de toets
   s een zoekopdracht te laten uitvoeren, moet u
   Aptitude::UI::Keybindings::Search instellen op “s”. U kunt het indrukken
   van de Control-toets noodzakelijk maken door “C-” voor de toets te
   plaatsen: bijvoorbeeld met “C-s” in plaats van “s” wordt de zoekopdracht
   gekoppeld aan Control+s in plaats van aan s. Tenslotte kunt u een commando
   ook aan verschillende toetsen koppelen door een met komma's gescheiden
   lijst te gebruiken: bijvoorbeeld met “s,C-s” kunt u zowel met de toets s
   als met de toetsencombinatie Control+s een zoekopdracht uitvoeren.

   De volgende commando's kunnen gekoppeld worden aan (een) toets(en) door de
   variabeleAptitude::UI::Keybindings::commando in te stellen, waarbij
   commando de naam is van het commando waaraan de toets gekoppeld wordt:

   +------------------------------------------------------------------------+
   |        Commando        |    Standaard    |        Omschrijving         |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Indien pakketten defect     |
   |                        |                 | zijn en aptitude een        |
   | ApplySolution          | !               | oplossing voor het probleem |
   |                        |                 | gesuggereerd heeft, die     |
   |                        |                 | suggestie onmiddellijk      |
   |                        |                 | toepassen.                  |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Ga naar het begin van de    |
   |                        |                 | huidige weergave: naar het  |
   | Begin                  | home,C-a        | begin van een lijst of naar |
   |                        |                 | de linkerkant van een       |
   |                        |                 | tekstinvoerveld.            |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Annuleert de huidige        |
   |                        |                 | interactie: sluit           |
   | Cancel                 | C-g,escape,C-[  | bijvoorbeeld een            |
   |                        |                 | dialoogvenster of           |
   |                        |                 | deactiveert het menu.       |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Geeft het bestand           |
   | Changelog              | C               | changelog.Debian weer van   |
   |                        |                 | het momenteel geselecteerde |
   |                        |                 | pakket of pakketversie.     |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Wijzigt het                 |
   | ChangePkgTreeGrouping  | G               | groeperingsbeleid van de    |
   |                        |                 | pakketlijst die momenteel   |
   |                        |                 | actief is.                  |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Wijzigt de afgrenzing van   |
   | ChangePkgTreeLimit     | l               | de pakketlijst die          |
   |                        |                 | momenteel actief is.        |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Wijzigt het                 |
   | ChangePkgTreeSorting   | S               | sorteringsbeleid van de     |
   |                        |                 | pakketlijst die momenteel   |
   |                        |                 | actief is.                  |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Markeert het pakket dat     |
   | ClearAuto              | m               | momenteel geselecteerd is,  |
   |                        |                 | als handmatig               |
   |                        |                 | geïnstalleerd.              |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Vouwt in een hiërarchische  |
   | CollapseAll            | ]               | lijst de geselecteerde      |
   |                        |                 | boomstructuur en alle       |
   |                        |                 | subniveaus ervan samen.     |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Vouwt in een hiërarchische  |
   | CollapseTree           | links           | lijst de geselecteerde      |
   |                        |                 | boomstructuur samen.        |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | In dialoogvensters is dit   |
   |                        |                 | het equivalent van “Ok”     |
   |                        |                 | drukken. In een interactie  |
   | Confirm                | enter           | op de statusregel           |
   |                        |                 | selecteert dit bij een      |
   |                        |                 | meerkeuzevraag de           |
   |                        |                 | standaardoptie.             |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Verplaatst de focus van het |
   | Cycle                  | tab             | toetsenbord naar het        |
   |                        |                 | volgende “element”.         |
   |------------------------+-----------------+-----------------------------|
   | CycleNext              | f6              | Verspringt naar de volgende |
   |                        |                 | actieve weergave.           |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Wisselt tussen              |
   | CycleOrder             | o               | voorgeprogrammeerde         |
   |                        |                 | indelingen van het scherm.  |
   |------------------------+-----------------+-----------------------------|
   | CyclePrev              | f7              | Springt naar de vorige      |
   |                        |                 | actieve weergave.           |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Verwijdert alle tekst       |
   | DelBOL                 | C-u             | tussen de cursor en het     |
   |                        |                 | begin van de regel.         |
   |------------------------+-----------------+-----------------------------|
   | DelBack                | backspace,C-h   | Verwijdert bij het invoeren |
   |                        |                 | van tekst het vorige teken. |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Verwijdert alle tekst vanaf |
   | DelEOL                 | C-k             | de cursor tot het einde van |
   |                        |                 | de regel.                   |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Verwijdert bij het invoeren |
   | DelForward             | delete,C-d      | van tekst het teken waarop  |
   |                        |                 | de cursor staat.            |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Geeft de vereisten van het  |
   | Dependencies           | d               | momenteel geselecteerde     |
   |                        |                 | pakket weer.                |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Wisselt bij het doornemen   |
   |                        |                 | van de pakketlijst tussen   |
   | DescriptionCycle       | i               | de verschillende            |
   |                        |                 | beschikbare weergaven in    |
   |                        |                 | het informatiegebied.       |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Scrolt bij het doornemen    |
   | DescriptionDown        | z               | van de pakketlijst het      |
   |                        |                 | informatiegebied een regel  |
   |                        |                 | naar onder.                 |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Scrolt bij het doornemen    |
   | DescriptionUp          | a               | van de pakketlijst het      |
   |                        |                 | informatiegebied een regel  |
   |                        |                 | naar boven.                 |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Het scherm met een          |
   |                        |                 | voorafbeelding tonen als    |
   |                        |                 | dat nog niet actief is      |
   | DoInstallRun           | g               | ^[a]. Indien dat scherm wel |
   |                        |                 | al actief is, een           |
   |                        |                 | installatieoperatie         |
   |                        |                 | uitvoeren.                  |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Beweegt naar beneden:       |
   |                        |                 | scrolt bijvoorbeeld naar    |
   | Down                   | down,j          | beneden door een            |
   |                        |                 | weergegeven tekst of        |
   |                        |                 | selecteert het volgende     |
   |                        |                 | item uit een lijst.         |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Schrijft indien er defecte  |
   |                        |                 | pakketten zijn, de huidige  |
   | DumpResolver           | *               | toestand van de             |
   |                        |                 | probleemoplosser op in een  |
   |                        |                 | bestand (met het oog op     |
   |                        |                 | debuggen).                  |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Ga naar het einde van de    |
   |                        |                 | huidige weergave: naar      |
   | End                    | end,C-e         | onderaan de lijst of naar   |
   |                        |                 | de rechterkant van een      |
   |                        |                 | tekstinvoerveld.            |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Indien er defecte pakketten |
   |                        |                 | zijn en aptitude een        |
   |                        |                 | oplossing gesuggereerd      |
   | ExamineSolution        | e               | heeft, een dialoogvenster   |
   |                        |                 | weergeven met een           |
   |                        |                 | gedetailleerde beschrijving |
   |                        |                 | van de voorgestelde         |
   |                        |                 | oplossing.                  |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Vouwt in een hiërarchische  |
   | ExpandAll              | [               | lijst de geselecteerde      |
   |                        |                 | boomstructuur en al zijn    |
   |                        |                 | subniveaus uit.             |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Vouwt in een hiërarchische  |
   | ExpandTree             | rechts          | lijst de geselecteerde      |
   |                        |                 | boomstructuur uit.          |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Selecteer de eerste         |
   | FirstSolution          | <               | oplossing van de            |
   |                        |                 | probleemoplosser.           |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Verbiedt dat een pakket     |
   |                        |                 | opgewaardeerd wordt naar de |
   | ForbidUpgrade          | F               | momenteel beschikbare       |
   |                        |                 | versie ervan (of naar een   |
   |                        |                 | specifieke versie).         |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Verwijdert alle informatie  |
   |                        |                 | over welke pakketten        |
   | ForgetNewPackages      | f               | “nieuw” zijn (maakt de      |
   |                        |                 | lijst van “nieuwe”          |
   |                        |                 | pakketten leeg).            |
   |------------------------+-----------------+-----------------------------|
   | Help                   | ?               | Geeft een on-line           |
   |                        |                 | hulpscherm weer.            |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | In een regeleditor die een  |
   |                        |                 | geschiedenis van            |
   | HistoryNext            | down,C-n        | wijzigingen bijhoudt,       |
   |                        |                 | verder naar het verleden    |
   |                        |                 | gaan.                       |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | In een regeleditor die een  |
   |                        |                 | geschiedenis van            |
   | HistoryPrev            | up,C-p          | wijzigingen bijhoudt,       |
   |                        |                 | terugkeren naar een minder  |
   |                        |                 | ver verleden.               |
   |------------------------+-----------------+-----------------------------|
   | Hold                   | =               | Bevriest een pakket.        |
   |------------------------+-----------------+-----------------------------|
   | Install                | +               | Markeert een pakket om      |
   |                        |                 | geïnstalleerd te worden.    |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Markeert één enkel pakket   |
   |                        |                 | om geïnstalleerd te worden. |
   | InstallSingle          | I               | Alle andere pakketten       |
   |                        |                 | worden op hun huidige       |
   |                        |                 | versie behouden.            |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Annuleert voor een pakket   |
   | Keep                   | :               | alle installatie- en        |
   |                        |                 | verwijderingsverzoeken en   |
   |                        |                 | alle handhavingsopdrachten. |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Selecteer de laatste        |
   | LastSolution           | <               | oplossing die door de       |
   |                        |                 | probleemoplosser uitgewerkt |
   |                        |                 | werd.                       |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Beweegt naar links:         |
   |                        |                 | verschuift in de menubalk   |
   |                        |                 | bijvoorbeeld één menu-item  |
   | Left                   | left,h          | meer naar links of          |
   |                        |                 | verplaatst bij het bewerken |
   |                        |                 | van tekst de cursor naar    |
   |                        |                 | links.                      |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Selecteert in een           |
   |                        |                 | hiërarchische lijst de      |
   |                        |                 | volgende aanverwant van het |
   |                        |                 | momenteel geselecteerde     |
   | LevelDown              | J               | item (het volgende item dat |
   |                        |                 | zich op hetzelfde niveau    |
   |                        |                 | bevindt en dat onder        |
   |                        |                 | hetzelfde bovenliggende     |
   |                        |                 | element thuis hoort).       |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Selecteert in een           |
   |                        |                 | hiërarchische lijst de      |
   |                        |                 | vorige aanverwant van het   |
   |                        |                 | momenteel geselecteerde     |
   | LevelUp                | K               | item (het vorige item dat   |
   |                        |                 | zich op hetzelfde niveau    |
   |                        |                 | bevindt en dat onder        |
   |                        |                 | hetzelfde bovenliggende     |
   |                        |                 | element thuis hoort).       |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Tracht alle pakketten op te |
   |                        |                 | waarderen die niet          |
   |                        |                 | gehandhaafd werden of       |
   |                        |                 | waarvan de opwaardering     |
   | MarkUpgradable         | U               | niet verboden werd. Het     |
   |                        |                 | installeert ook nieuwe      |
   |                        |                 | pakketten die essentieel    |
   |                        |                 | (Essential) of vereist      |
   |                        |                 | (Required) zijn.            |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Plaatst of verwijdert in    |
   | MineFlagSquare         | f               | Mijnenveger een vlag op/van |
   |                        |                 | een vakje.                  |
   |------------------------+-----------------+-----------------------------|
   | MineLoadGame           | L               | Haalt een spelletje         |
   |                        |                 | Mijnenveger op.             |
   |------------------------+-----------------+-----------------------------|
   | MineSaveGame           | S               | Bewaart een spelletje       |
   |                        |                 | Mijnenveger                 |
   |------------------------+-----------------+-----------------------------|
   | MineSweepSquare        | Geen koppeling  | Veegt in Mijnenveger rond   |
   |                        |                 | het huidige vakje.          |
   |------------------------+-----------------+-----------------------------|
   | MineUncoverSquare      | Geen koppeling  | Legt in Mijnenveger het     |
   |                        |                 | huidige vakje bloot.        |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Legt in Mijnenveger het     |
   | MineUncoverSweepSquare | enter           | huidige vakje bloot als het |
   |                        |                 | bedekt is. Veegt er anders  |
   |                        |                 | rond.                       |
   |------------------------+-----------------+-----------------------------|
   | NextPage               | pagedown,C-f    | Gaat in de huidige weergave |
   |                        |                 | een pagina verder.          |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Doe de vereistenoplosser    |
   | NextSolution           | .               | voortgaan naar de volgende  |
   |                        |                 | oplossing.                  |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Deze toets selecteert de    |
   | No                     | n^[b]           | knop “no” in een            |
   |                        |                 | dialoogvenster met yes/no.  |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Selecteert in een           |
   |                        |                 | hiërarchische lijst de      |
   |                        | ^, left (in     | ouder van het geselecteerde |
   | Parent                 | pakketitems)    | item. left wordt enkel      |
   |                        |                 | gebruikt in pakketitems     |
   |                        |                 | (rijen) wanneer pakketbomen |
   |                        |                 | getoond worden.             |
   |------------------------+-----------------+-----------------------------|
   | PrevPage               | pageup,C-b      | Gaat in de huidige weergave |
   |                        |                 | een pagina terug.           |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Doe de vereistenoplosser    |
   | PrevSolution           | ,               | naar de vorige oplossing    |
   |                        |                 | terugkeren.                 |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Markeer het momenteel       |
   | Purge                  | _               | geselecteerde pakket om     |
   |                        |                 | gewist te worden.           |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Activeert de momenteel      |
   | PushButton             | space,enter     | geselecteerde knop of vinkt |
   |                        |                 | een keuzevakje aan/uit.     |
   |------------------------+-----------------+-----------------------------|
   | Quit                   | q               | Sluit de huidige weergave.  |
   |------------------------+-----------------+-----------------------------|
   | QuitProgram            | Q               | Sluit het programma         |
   |                        |                 | volledig af.                |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Wijs alle acties van de     |
   |                        |                 | oplosser af die een         |
   | RejectBreakHolds       |                 | handhaving zouden           |
   |                        |                 | verbreken. Het equivalent   |
   |                        |                 | van Oplosser → Te handhaven |
   |                        |                 | pakketten niet breken.      |
   |------------------------+-----------------+-----------------------------|
   | Refresh                | C-l             | Bouwt het scherm volledig   |
   |                        |                 | opnieuw op.                 |
   |------------------------+-----------------+-----------------------------|
   | Remove                 | -               | Markeer een pakket om       |
   |                        |                 | verwijderd te worden.       |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Markeer het momenteel       |
   | ReInstall              | L               | geselecteerde pakket om     |
   |                        |                 | opnieuw geïnstalleerd te    |
   |                        |                 | worden.                     |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Herhaalt de laatste         |
   | RepeatSearchBack       | N               | zoekbewerking, maar zoekt   |
   |                        |                 | in de tegengestelde         |
   |                        |                 | richting.                   |
   |------------------------+-----------------+-----------------------------|
   | ReSearch               | n               | Herhaalt de laatste         |
   |                        |                 | zoekbewerking.              |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Geeft de pakketten weer die |
   | ReverseDependencies    | r               | afhankelijk zijn van het    |
   |                        |                 | momenteel geselecteerde     |
   |                        |                 | pakket.                     |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Beweegt naar rechts: gaat   |
   |                        |                 | bijvoorbeeld in de menubalk |
   | Right                  | right,l         | één menu-item verder naar   |
   |                        |                 | rechts, of beweegt bij het  |
   |                        |                 | bewerken van tekst de       |
   |                        |                 | cursor naar rechts.         |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Activeert de “zoek”-functie |
   | Search                 | /               | van het interface-element   |
   |                        |                 | dat momenteel actief is.    |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Activeert de “achterwaartse |
   | SearchBack             | \               | zoek”-functie van het       |
   |                        |                 | interface-element dat       |
   |                        |                 | momenteel actief is.        |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Zoek in een pakketboom naar |
   | SearchBroken           | b               | het volgende defecte        |
   |                        |                 | pakket.                     |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Markeer het huidige pakket  |
   | SetAuto                | M               | als automatisch             |
   |                        |                 | geïnstalleerd.              |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Schakelt bij een            |
   | ShowHideDescription    | D               | pakketlijst de              |
   |                        |                 | zichtbaarheid van het       |
   |                        |                 | informatiegebied aan/uit.   |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Markeert bij het bekijken   |
   |                        |                 | van een oplossing de        |
   |                        |                 | momenteel geselecteerde     |
   | SolutionActionApprove  | a               | actie als "goedgekeurd"     |
   |                        |                 | (die wordt telkens waar     |
   |                        |                 | mogelijk mee opgenomen in   |
   |                        |                 | toekomstige oplossingen).   |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Markeert bij het bekijken   |
   |                        |                 | van een oplossing de        |
   |                        |                 | momenteel geselecteerde     |
   | SolutionActionReject   | r               | actie als "afgewezen" (in   |
   |                        |                 | toekomstige oplossingen zal |
   |                        |                 | die niet meer opgenomen     |
   |                        |                 | worden).                    |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | In een hiërarchische lijst  |
   |                        |                 | wordt de momenteel          |
   | ToggleExpanded         | enter           | geselecteerde boomstructuur |
   |                        |                 | uitgevouwen of              |
   |                        |                 | dichtgevouwen.              |
   |------------------------+-----------------+-----------------------------|
   | ToggleMenuActive       | C-m,f10,C-space | Activeert of deactiveert    |
   |                        |                 | het hoofdmenu.              |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Annuleert de laatste actie. |
   |                        |                 | Dit kan teruggaan tot het   |
   |                        |                 | ogenblik waarop aptitude    |
   | Undo                   | C-_,C-u         | opgestart werd OF tot de    |
   |                        |                 | laatste maal dat de         |
   |                        |                 | pakketlijst bijgewerkt werd |
   |                        |                 | of pakketten geïnstalleerd  |
   |                        |                 | werden.                     |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Gaat naar boven: scrolt     |
   |                        |                 | bijvoorbeeld naar boven in  |
   | Up                     | up,k            | een weergegeven tekst of    |
   |                        |                 | selecteert het vorige item  |
   |                        |                 | uit een lijst.              |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Werkt de pakketlijst bij    |
   | UpdatePackageList      | u               | door indien nodig nieuwe    |
   |                        |                 | lijsten op te halen via het |
   |                        |                 | internet.                   |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Geeft de beschikbare        |
   | Versions               | v               | versies van het momenteel   |
   |                        |                 | geselecteerde pakket weer.  |
   |------------------------+-----------------+-----------------------------|
   |                        |                 | Deze toets selecteert de    |
   | Yes                    | y ^[b]          | knop “Yes” in               |
   |                        |                 | dialoogvensters met yes/no  |
   |                        |                 | .                           |
   |------------------------------------------------------------------------|
   | ^[a] tenzij Aptitude::Display-Planned-Action false (niet waar) is.     |
   |                                                                        |
   | ^[b] De standaard kan hier verschillen naargelang de lokalisatie.      |
   +------------------------------------------------------------------------+

   Naast lettertoetsen, cijfertoetsen en leestekentoetsen, kunnen ook de
   volgende “speciale” toetsen als sneltoets gedefinieerd worden:

   +------------------------------------------------------------------------+
   |    Toetsnaam     |                    Omschrijving                     |
   |------------------+-----------------------------------------------------|
   | a1               | De toets A1.                                        |
   |------------------+-----------------------------------------------------|
   | a3               | De toets A3.                                        |
   |------------------+-----------------------------------------------------|
   | b2               | De toets B2.                                        |
   |------------------+-----------------------------------------------------|
   | backspace        | De toets Backspace.                                 |
   |------------------+-----------------------------------------------------|
   | backtab          | De toets achterwaartse Tab                          |
   |------------------+-----------------------------------------------------|
   | begin            | De toets Begin (niet Home)                          |
   |------------------+-----------------------------------------------------|
   | break            | De toets “Break”.                                   |
   |------------------+-----------------------------------------------------|
   | c1               | De toets C1.                                        |
   |------------------+-----------------------------------------------------|
   | c3               | De toets C3.                                        |
   |------------------+-----------------------------------------------------|
   | cancel           | De toets Cancel.                                    |
   |------------------+-----------------------------------------------------|
   | create           | De toets Create.                                    |
   |------------------+-----------------------------------------------------|
   |                  | Komma (,) -- merk op dat dit de enige manier is om  |
   | comma            | de komma als sneltoets te definiëren, vermits       |
   |                  | komma's gebruikt worden bij een lijst van toetsen.  |
   |------------------+-----------------------------------------------------|
   | command          | De toets Command.                                   |
   |------------------+-----------------------------------------------------|
   | copy             | De toets Copy.                                      |
   |------------------+-----------------------------------------------------|
   | delete           | De toets Delete.                                    |
   |------------------+-----------------------------------------------------|
   | delete_line      | De toets “delete line” (wis regel).                 |
   |------------------+-----------------------------------------------------|
   | down             | De toets “Pijl-omlaag”.                             |
   |------------------+-----------------------------------------------------|
   | end              | De toets End.                                       |
   |------------------+-----------------------------------------------------|
   | entry            | De toets Enter.                                     |
   |------------------+-----------------------------------------------------|
   | exit             | De toets Exit.                                      |
   |------------------+-----------------------------------------------------|
   | f1, f2, ..., f10 | De functietoetsen F1 tot F10.                       |
   |------------------+-----------------------------------------------------|
   | find             | De toets Find.                                      |
   |------------------+-----------------------------------------------------|
   | home             | De toets Home.                                      |
   |------------------+-----------------------------------------------------|
   | insert           | De toets Insert.                                    |
   |------------------+-----------------------------------------------------|
   | insert_exit      | De toets “insert exit”.                             |
   |------------------+-----------------------------------------------------|
   | clear            | De toets “clear” (wissen).                          |
   |------------------+-----------------------------------------------------|
   | clear_eol        | De toets “clear to end of line” (wis tot einde      |
   |                  | regel).                                             |
   |------------------+-----------------------------------------------------|
   | clear_eos        | De toets “clear to end of screen” (wis tot einde    |
   |                  | scherm).                                            |
   |------------------+-----------------------------------------------------|
   | insert_line      | De toets “insert line” (regel invoegen).            |
   |------------------+-----------------------------------------------------|
   | left             | De toets “Pijl-links”.                              |
   |------------------+-----------------------------------------------------|
   | mark             | De toets Mark.                                      |
   |------------------+-----------------------------------------------------|
   | message          | De toets Message.                                   |
   |------------------+-----------------------------------------------------|
   | move             | De toets Move.                                      |
   |------------------+-----------------------------------------------------|
   | next             | De toets Next.                                      |
   |------------------+-----------------------------------------------------|
   | open             | De toets Open.                                      |
   |------------------+-----------------------------------------------------|
   | previous         | De toets Previous.                                  |
   |------------------+-----------------------------------------------------|
   | print            | De toets Print.                                     |
   |------------------+-----------------------------------------------------|
   | redo             | De toets Redo.                                      |
   |------------------+-----------------------------------------------------|
   | reference        | De toets Reference.                                 |
   |------------------+-----------------------------------------------------|
   | refresh          | De toets Refresh.                                   |
   |------------------+-----------------------------------------------------|
   | replace          | De toets Replace.                                   |
   |------------------+-----------------------------------------------------|
   | restart          | De toets Restart.                                   |
   |------------------+-----------------------------------------------------|
   | resume           | De toets Resume.                                    |
   |------------------+-----------------------------------------------------|
   | return           | De toets Return.                                    |
   |------------------+-----------------------------------------------------|
   | right            | De toets “Pijl-rechts”.                             |
   |------------------+-----------------------------------------------------|
   | save             | De toets Save.                                      |
   |------------------+-----------------------------------------------------|
   | scrollf          | De toets “scroll forward” (vooruit scrollen).       |
   |------------------+-----------------------------------------------------|
   | scrollr          | De toets “scroll backwards” (achteruit scrollen).   |
   |------------------+-----------------------------------------------------|
   | select           | De toets Select.                                    |
   |------------------+-----------------------------------------------------|
   | suspend          | De toets Suspend.                                   |
   |------------------+-----------------------------------------------------|
   | pagedown         | De toets “Page Down”.                               |
   |------------------+-----------------------------------------------------|
   | pageup           | De toets “Page Up”.                                 |
   |------------------+-----------------------------------------------------|
   | space            | De Spatiebalk                                       |
   |------------------+-----------------------------------------------------|
   | tab              | De toets Tab                                        |
   |------------------+-----------------------------------------------------|
   | undo             | De toets Undo.                                      |
   |------------------+-----------------------------------------------------|
   | up               | De toets “Pijl-omhoog”.                             |
   +------------------------------------------------------------------------+

   Naast het definiëren van een globale sneltoets, kan men ook een
   snelkoppeling aanpassen voor een specifiek onderdeel (of domein) van
   aptitude: om bijvoorbeeld in de menubalk van de Tab-toets het equivalent
   te maken van de toets Pijl-rechts, moet u
   Aptitude::UI::Keybindings::Menubar::Right instellen op “tab,right”. De
   volgende domeinen kunnen gebruikt worden:

   +------------------------------------------------------------------------+
   |    Domein     |                      Omschrijving                      |
   |---------------+--------------------------------------------------------|
   |               | Gebruikt voor widgets van het type regelbewerking,     |
   | EditLine      | zoals het invoerveld in een dialoogvenster “Zoek       |
   |               | naar:”.                                                |
   |---------------+--------------------------------------------------------|
   | Menu          | Gebruikt voor een uitklappend keuzemenu.               |
   |---------------+--------------------------------------------------------|
   | Menubar       | Gebruikt voor de menubalk bovenaan het scherm.         |
   |---------------+--------------------------------------------------------|
   | Minesweeper   | Gebruikt voor de modus Mijnenveger.                    |
   |---------------+--------------------------------------------------------|
   |               | Gebruikt voor de multiplechoicevragen die u krijgt als |
   | MinibufChoice | u ervoor gekozen heeft om sommige vragen in de         |
   |               | statusregel te laten stellen.                          |
   |---------------+--------------------------------------------------------|
   | Pager         | Gebruikt bij het weergeven van een op schijf           |
   |               | opgeslagen bestand (bijvoorbeeld de hulptekst).        |
   |---------------+--------------------------------------------------------|
   | PkgNode       | Gebruikt voor pakketten, pakketbomen, pakketversies en |
   |               | pakketvereisten als ze in een pakketlijst voorkomen.   |
   |---------------+--------------------------------------------------------|
   | PkgTree       | Gebruikt voor pakketlijsten.                           |
   |---------------+--------------------------------------------------------|
   | Table         | Gebruikt voor widgetplatformen (bijvoorbeeld           |
   |               | dialoogvensters).                                      |
   |---------------+--------------------------------------------------------|
   | TextLayout    | Gebruikt bij de weergave van opgemaakte tekst, zoals   |
   |               | pakketbeschrijvingen.                                  |
   |---------------+--------------------------------------------------------|
   |               | Gebruikt bij de weergave van alle boomstructuren (met  |
   | Tree          | inbegrip van pakketlijsten, waarvoor echter met        |
   |               | PkgTree iets anders gekozen kan worden).               |
   +------------------------------------------------------------------------+

  De kleur en de vormgeving van tekst aanpassen

   De kleur en de visuele vormgeving die door aptitude gebruikt wordt om
   tekst weer te geven, kan grondig aangepast worden. Aan elk visueel element
   is een “stijl” gekoppeld, waarin beschreven wordt welke kleuren en visuele
   attributen gebruikt worden om dat element weer te geven. Stijlen nemen de
   vorm aan van een lijst met instellingen voor kleur en attributen. Deze
   lijst moet niet noodzakelijk exhaustief zijn. Indien sommige kleuren of
   attributen niet expliciet vermeld worden, worden hun waarden afgeleid uit
   de context van de visuele omgeving. In feite is standaard de stijl van de
   meeste visuele elementen “leeg”.

   U kunt de inhoud van een stijl aanpassen door een configuratiegroep met
   dezelfde naam aan te maken in het configuratiebestand van apt of aptitude.
   Bijvoorbeeld, de stijl “MenuBorder” wordt gebruikt om de visuele rand te
   tekenen rond uitklappende menu's. Standaard is die rand vet en
   wit-op-blauw. Met de volgende tekst in het configuratiebestand wordt dit
   veranderd naar wit-op-cyaan:

 Aptitude::UI::Styles {
   MenuBorder {fg white; bg cyan; set bold;};
 };

   Zoals u kunt zien, bestaat de configuratiegroep van een stijl uit een
   opeenvolging van instructies. De algemene klassen van instructies zijn:

   fg kleur

           Geeft de tekst weer in de opgegeven kleur. Zie verder voor een
           lijst van kleuren die aptitude kan gebruiken.

   bg kleur

           Geeft de tekst weer tegen een achtergrond in de opgegeven kleur.
           Zie verder voor een lijst van kleuren die aptitude kan gebruiken.

   set attribuut

           Activeert het opgegeven tekstattribuut. Zie hierna voor een lijst
           van tekstattributen die door aptitude gekend zijn.

   clear attribuut

           Deactiveert het opgegeven tekstattribuut. Zie hierna voor een
           lijst van tekstattributen die door aptitude gekend zijn.

   flip attribuut

           Schakelt het opgegeven tekstattribuut aan/uit: indien het in het
           omgevingselement actief is, wordt het gedeactiveerd en vice versa.
           Zie hierna voor een lijst van tekstattributen die door aptitude
           gekend zijn.

   De door aptitude gekende kleuren zijn black (zwart), blue (blauw), cyan
   (cyaan), green (groen), magenta (magenta), red (rood), white (wit) en
   yellow (geel) ^[20]. Daarnaast kunt u default opgeven in plaats van een
   achtergrondkleur en zo de standaardachtergrond van de terminal gebruiken
   (dit kan de standaardkleur zijn, een afbeelding of zelfs “transparant”).
   De door aptitude gekende stijlen zijn:

   blink

           Doet de tekst knipperen.

   bold

           Maakt de tekstkleur (of de achtergrondkleur als voor- en
           achtergrondkleur omgewisseld werden (d.w.z. bij reverse video))
           helderder.

   dim

           Maakt de tekst op sommige terminals extra mat. Op gewone
           Linux-terminals ziet men geen verschil.

   reverse

           Wisselt voor- en achtergrondkleur om. Vele visuele elementen maken
           gebruik van dit attribuut als iets geaccentueerd moet worden.

   standout

           Dit gebruikt “de methode die best past bij de terminal om iets te
           accentueren”. Bij xterms is dat iets dat lijkt op, maar niet
           identiek is aan het omwisselen van voor- en achtergrondkleur. Op
           andere terminals kan dit een verschillend effect geven.

   underline

           Onderstreept tekst.

   U kunt verschillende attributen tegelijk selecteren door hen met komma's
   van elkaar te scheiden. Bijvoorbeeld: set bold,standout;.

   [Opmerking] Opmerking
               Zoals hiervoor aangegeven is de interpretatie van zowel
               stijlen als tekstattributen sterk terminalafhankelijk. Soms is
               wat experimenteren nodig om exact te weten wat op uw terminal
               het effect is van sommige instellingen.

   De volgende stijlen kunnen in aptitude aangepast worden:

   Afbeelding 2.14. Stijlen die in aptitude aangepast kunnen worden

  +----------------------------------------------------------------------------+
  |          Stijl           |   Standaard   |          Omschrijving           |
  |--------------------------+---------------+---------------------------------|
  |Bullet                    |fg yellow; set |De stijl van het opsommingsteken |
  |                          |bold;          |in een lijst.                    |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl van nieuwere            |
  |                          |               |pakketversies in de weergave van |
  |                          |               |de changelog (log van            |
  |                          |               |wijzigingen). Merk op dat        |
  |ChangelogNewerVersion     |set bold;      |aptitude nieuwere versies van een|
  |                          |               |pakket enkel zal accentueren als |
  |                          |               |het pakket                       |
  |                          |               |libparse-debianchangelog-perl    |
  |                          |               |geïnstalleerd is.                |
  |--------------------------+---------------+---------------------------------|
  |Default                   |fg white; bg   |De gewone stijl van het scherm.  |
  |                          |black;         |                                 |
  |--------------------------+---------------+---------------------------------|
  |DepBroken                 |fg black; bg   |De stijl voor niet-voldane       |
  |                          |red;           |vereisten.                       |
  |--------------------------+---------------+---------------------------------|
  |                          |fg black; bg   |De stijl voor menuonderdelen die |
  |DisabledMenuEntry         |blue; set dim; |uitgeschakeld zijn en niet       |
  |                          |               |gebruikt kunnen worden.          |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl om aan te geven dat een |
  |                          |fg black; bg   |bestand “geraakt” werd: d.w.z.   |
  |DownloadHit               |green;         |dat het niet gewijzigd is sinds  |
  |                          |               |het de laatste keer opgehaald    |
  |                          |               |werd.                            |
  |--------------------------+---------------+---------------------------------|
  |DownloadProgress          |fg blue; bg    |De stijl waarmee de voortgang van|
  |                          |yellow;        |een download aangegeven wordt.   |
  |--------------------------+---------------+---------------------------------|
  |                          |fg white; bg   |De stijl voor regeleditors       |
  |EditLine                  |black; clear   |(bijvoorbeeld het invoerveld in  |
  |                          |reverse;       |het dialoogvenster “Zoek naar:”).|
  |--------------------------+---------------+---------------------------------|
  |Error                     |fg white; bg   |De stijl voor foutberichten.     |
  |                          |red; set bold; |                                 |
  |--------------------------+---------------+---------------------------------|
  |Header                    |fg white; bg   |De stijl voor schermkoppen.      |
  |                          |blue; set bold;|                                 |
  |--------------------------+---------------+---------------------------------|
  |                          |fg white; bg   |De stijl voor het momenteel      |
  |HighlightedMenuBar        |blue; set      |geselecteerde menu-item in de    |
  |                          |bold,reverse;  |menubalk.                        |
  |--------------------------+---------------+---------------------------------|
  |                          |fg white; bg   |De stijl voor de momenteel       |
  |HighlightedMenuEntry      |blue; set      |geselecteerde keuze in een menu. |
  |                          |bold,reverse;  |                                 |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl voor het dialoogvenster |
  |MediaChange               |fg yellow; bg  |dat de gebruiker vraagt een      |
  |                          |red; set bold; |nieuwe CD in het station te      |
  |                          |               |plaatsen.                        |
  |--------------------------+---------------+---------------------------------|
  |MenuBar                   |fg white; bg   |De stijl voor de menubalk.       |
  |                          |blue; set bold;|                                 |
  |--------------------------+---------------+---------------------------------|
  |MenuBorder                |fg white; bg   |De stijl voor de randen rond een |
  |                          |blue; set bold;|uitklappend menu.                |
  |--------------------------+---------------+---------------------------------|
  |MenuEntry                 |fg white; bg   |De stijl voor elk item uit een   |
  |                          |blue;          |uitklappend menu.                |
  |--------------------------+---------------+---------------------------------|
  |MineBomb                  |fg red; set    |De stijl van bommen in           |
  |                          |bold;          |Mijnenveger.                     |
  |--------------------------+---------------+---------------------------------|
  |MineBorder                |set bold;      |De stijl voor de rand van het    |
  |                          |               |bord van Mijnenveger.            |
  |--------------------------+---------------+---------------------------------|
  |MineFlag                  |fg red; set    |De stijl voor de vlaggen in      |
  |                          |bold;          |Mijnenveger.                     |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl voor het cijfer N in    |
  |MineNumberN               |Diverse        |Mijnenveger. N kan van 0 tot 8   |
  |                          |               |variëren.                        |
  |--------------------------+---------------+---------------------------------|
  |                          |fg white; bg   |De kleur voor het weergeven van  |
  |MultiplexTab              |blue;          |“tabs” van momenteel niet        |
  |                          |               |geselecteerde tabbladen.         |
  |--------------------------+---------------+---------------------------------|
  |                          |fg blue; bg    |De kleur om de “tab” van het     |
  |MultiplexTabHighlighted   |white;         |momenteel geselecteerde tabblad  |
  |                          |               |weer te geven.                   |
  |--------------------------+---------------+---------------------------------|
  |                          |fg red; flip   |De stijl voor de pakketten uit de|
  |PkgBroken                 |reverse;       |pakketlijst met niet-voldane     |
  |                          |               |vereisten.                       |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl voor een geaccentueerd  |
  |PkgBrokenHighlighted      |fg red;        |pakket in de pakketlijst met     |
  |                          |               |niet-voldane vereisten.          |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl voor pakketten die      |
  |PkgNotInstalled           |               |momenteel niet geïnstalleerd zijn|
  |                          |               |en niet geïnstalleerd zullen     |
  |                          |               |worden.                          |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl voor een geaccentueerd  |
  |PkgNotInstalledHighlighted|               |pakket dat momenteel niet        |
  |                          |               |geïnstalleerd is en niet         |
  |                          |               |geïnstalleerd zal worden.        |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl voor pakketten die      |
  |PkgIsInstalled            |set bold;      |momenteel geïnstalleerd zijn en  |
  |                          |               |waarvoor geen acties gepland     |
  |                          |               |zijn.                            |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl voor een geaccentueerd  |
  |PkgIsInstalledHighlighted |set bold; flip |pakket dat momenteel             |
  |                          |reverse;       |geïnstalleerd is en waarvoor geen|
  |                          |               |acties gepland zijn.             |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl voor pakketten uit de   |
  |PkgToDowngrade            |set bold;      |pakketlijst die gedegradeerd     |
  |                          |               |zullen worden.                   |
  |--------------------------+---------------+---------------------------------|
  |                          |set bold; flip |De stijl voor een geaccentueerd  |
  |PkgToDowngradeHighlighted |reverse        |pakket uit de pakketlijst dat    |
  |                          |               |gedegradeerd zal worden.         |
  |--------------------------+---------------+---------------------------------|
  |                          |fg white; flip |De stijl voor pakketten uit de   |
  |PkgToHold                 |reverse;       |pakketlijst die te handhaven     |
  |                          |               |zijn.                            |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl voor een geaccentueerd  |
  |PkgToHoldHighlighted      |fg white;      |pakket uit de pakketlijst dat te |
  |                          |               |handhaven is.                    |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl voor pakketten uit de   |
  |PkgToInstall              |fg green; flip |pakketlijst die geïnstalleerd    |
  |                          |reverse;       |(niet opgewaardeerd) of opnieuw  |
  |                          |               |geïnstalleerd zullen worden.     |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl voor een geaccentueerd  |
  |                          |               |pakket uit de pakketlijst dat    |
  |PkgToInstallHighlighted   |fg green;      |geïnstalleerd (niet              |
  |                          |               |opgewaardeerd) of opnieuw        |
  |                          |               |geïnstalleerd zal worden.        |
  |--------------------------+---------------+---------------------------------|
  |                          |fg magenta;    |De stijl voor pakketten uit de   |
  |PkgToRemove               |flip reverse;  |pakketlijst die verwijderd of    |
  |                          |               |gewist zullen worden.            |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl voor een geaccentueerd  |
  |PkgToRemoveHighlighted    |fg magenta;    |pakket uit de pakketlijst dat    |
  |                          |               |verwijderd of gewist zal worden. |
  |--------------------------+---------------+---------------------------------|
  |                          |fg cyan; flip  |De stijl voor pakketten uit de   |
  |PkgToUpgrade              |reverse;       |pakketlijst die opgewaardeerd    |
  |                          |               |zullen worden.                   |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl voor een geaccentueerd  |
  |PkgToUpgradeHighlighted   |fg cyan;       |pakketten uit de pakketlijst dat |
  |                          |               |opgewaardeerd zal worden.        |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De stijl voor een                |
  |Progress                  |fg blue; bg    |voortgangsindicator zoals die    |
  |                          |yellow;        |welke getoond wordt tijdens het  |
  |                          |               |ophalen van de pakketcache.      |
  |--------------------------+---------------+---------------------------------|
  |SolutionActionApproved    |bg green;      |De stijl voor goedgekeurde acties|
  |                          |               |in een oplossing.                |
  |--------------------------+---------------+---------------------------------|
  |SolutionActionRejected    |bg red;        |De stijl voor afgewezen acties in|
  |                          |               |een oplossing.                   |
  |--------------------------+---------------+---------------------------------|
  |Status                    |fg white; bg   |De stijl voor statusregels       |
  |                          |blue; set bold;|onderaan het scherm.             |
  |--------------------------+---------------+---------------------------------|
  |                          |               |De achtergrondkleur voor alle    |
  |TreeBackground            |               |zichtbare lijsten en             |
  |                          |               |boomstructuren.                  |
  |--------------------------+---------------+---------------------------------|
  |                          |fg red; bg     |De kleur die gebruikt wordt bij  |
  |TrustWarning              |black; set     |het weergeven van waarschuwingen |
  |                          |bold;          |in verband met de betrouwbaarheid|
  |                          |               |van pakketten.                   |
  +----------------------------------------------------------------------------+

  De schermopmaak aanpassen

   Het is mogelijk om de pakketlijst van aptitude te herorganiseren door de
   juiste aanpassingen te maken aan het configuratiebestand.

    Weergave-elementen

   De opmaak wordt opgeslagen in de configuratiegroep
   Aptitude::UI::Default-Package-View en bestaat uit een lijst van
   weergave-elementen:

 Naam Type {
   Row rij;
   Column kolom;
   Width breedte;
   Height hoogte;

   bijkomende opties...
 };

   Dit creëert een weergave-element, Naam genoemd. Het type element dat
   aangemaakt wordt, wordt door Type bepaald. De opties Row, Column, Width en
   Height moeten aanwezig zijn. Zij bepalen waar het element geplaatst wordt.
   (zie hierna voor een gedetailleerde uitleg over hoe weergave-elementen
   geschikt worden)

   Voor voorbeelden over hoe de weergaveopmaak veranderd kan worden, kunt u
   de definities van thema's in het bestand
   /usr/share/aptitude/aptitude-defaults raadplegen.

   De volgende types weergave-elementen kunnen gebruikt worden:

   Description

           Dit weergave-element zal het “informatiegebied” bevatten (meestal
           een beschrijving van het momenteel geselecteerde pakket).

           De optie PopUpDownKey geeft de naam op van het toetsenbordcommando
           dat er voor zorgt dat het element weergegeven of verborgen wordt.
           Als men dit bijvoorbeeld instelt op ShowHideDescription, zal het
           huidige weergave-element hetzelfde gedrag vertonen als dat van het
           standaard-informatiegebied. De optie PopUpDownLinked geeft de naam
           op van een ander weergave-element en leidt ertoe dat het huidige
           element weergegeven of verborgen zal worden telkens wanneer dat
           voor dat andere element het geval is.

   MainWidget

           Dit is een plaatshouder voor het “belangrijkste” weergave-element:
           dit is gewoonlijk de pakketlijst. Een weergaveopmaak moet exact
           een element van het type MainWidget bevatten, niet meer en niet
           minder.

   Static

           Een gebied van het scherm dat tekst weergeeft, die mogelijk
           indelingscodes bevat zoals beschreven in de paragraaf met de naam
           “Aanpassen hoe pakketten weergegeven worden”. De weer te geven
           tekst kan opgegeven worden in de optie Columns, of hij kan in een
           andere configuratievariabele opgeslagen worden die opgegeven werd
           in de optie ColumnsCfg. De kleur van de tekst wordt bepaald door
           de kleur die genoemd wordt in de optieColor.

           Items van het type Static kunnen met de opties PopUpDownKey en
           PopUpDownLinked op dezelfde manier weergegeven en verborgen worden
           als items van het type Description.

    De plaatsing van weergave-elementen

   De weergave-elementen worden in een “tabel” geordend. De linkerbovenhoek
   van een element bevindt zich in de cel die opgegeven wordt in de opties
   Row en Column (gewoonlijk begint men bij rij 0 en kolom 0, maar dat is
   niet verplicht). De breedte van een element in termen van cellen wordt
   opgegeven in de optie Width en de hoogte in de optie Height.

   Nadat de weergave-elementen geordend werden en een initiële hoeveelheid
   ruimte op het scherm toegewezen kregen, is er waarschijnlijk nog plaats
   over. Indien er extra verticale ruimte beschikbaar is, zal elke rij met
   een weergave-element waarvan de optie RowExpand op true ingesteld staat,
   een deel van de extra ruimte toegewezen krijgen. Op dezelfde manier zal in
   geval van extra beschikbare horizontale ruimte, iedere kolom met een
   weergave-element waarvan de optieColExpand op true ingesteld werd, een
   deel van de extra ruimte toegewezen krijgen.

   In het geval er onvoldoende ruimte beschikbaar is, zal iedere rij en kolom
   waarvan alle widgets de optie RowShrink of ColShrink op de waarde true
   ingesteld hebben staan, verkleind worden. Als dat nog niet genoeg is,
   zullen alle rijen en kolommen verkleind worden om op die manier binnen de
   beschikbare ruimte te passen.

   Indien een weergave-element niet vergroot wordt, terwijl dat wel het geval
   is voor zijn rij of zijn kolom, zal de uitlijning geregeld worden door de
   opties RowAlign en ColAlign. Door die in te stellen op Left (links), Right
   (rechts), Top (bovenaan), Bottom (onderaan) of Center (gecentreerd) zal
   aptitude weten waar het element in de rij of de kolom geplaatst moet
   worden.

   De volgende configuratiegroep maakt bijvoorbeeld een statisch element aan
   met de naam “Header” dat drie cellen breed is en horizontaal maar niet
   verticaal vergroot kan worden. Het heeft dezelfde kleur als andere
   kopregels en gebruikt de standaard weergave-indeling voor kopregels:

 Header Static {
   Row 0;
   Column 0;
   Width 3;
   Height 1;

   ColExpand true;
   ColAlign Center;

   RowAlign Center;

   Color ScreenHeaderColor;
   ColumnsCfg HEADER;
 };

    Referentiegids voor de opties voor weergaveopmaak

   De volgende opties kunnen gebruikt worden bij weergave-elementen:

   ColAlign uitlijning;

           uitlijning is ofwel Left (links), Right (rechts) of Center
           (gecentreerd). Indien de rij die het huidige weergave-element
           bevat, breder is dan het element zelf en ColExpand op false
           ingesteld staat, dan zal het plaatsen van het element in de rij
           gebeuren volgens de waarde van uitlijning.

           Indien deze optie niet aanwezig is, wordt teruggevallen op de
           standaardwaarde die Left (links) is.

   ColExpand true|false;

           Indien deze optie op true ingesteld staat, zal de kolom die dat
           element bevat, een deel toegewezen krijgen van eventuele extra
           beschikbare horizontale ruimte.

           Indien deze optie niet aanwezig is, wordt teruggevallen op de
           standaardwaarde die false (niet waar) is.

   Color kleurnaam;

           Deze optie is van toepassing op elementen van het type Static.
           kleurnaam is de naam van een kleur (bijvoorbeeld,
           ScreenStatusColor) die als de “standaardkleur” voor dit
           weergave-element gebruikt moet worden.

           Indien deze optie niet aanwezig is, wordt teruggevallen op zijn
           standaardwaarde die DefaultWidgetBackground is.

   ColShrink true|false;

           Indien deze optie voor elk element in een kolom ingesteld werd op
           true en er onvoldoende horizontale ruimte is, zal de kolom zoveel
           verkleind worden dat ze past in de beschikbare ruimte. Merk op dat
           een kolom verkleind kan worden zelfs als ColShrink ingesteld werd
           op false. Dit geeft enkel aan dat aptitude eerst moet proberen een
           specifieke kolom te verkleinen vooraleer andere kolommen te
           verkleinen.

           Indien deze optie niet aanwezig is, wordt teruggevallen op de
           standaardwaarde die false (niet waar) is.

   Column kolom;

           Geeft de meest linkse kolom op dat dit weergave-element bevat.

   Columns indeling;

           Deze optie is van toepassing op weergave-elementen van het type
           Static waarvoor de optieColumnsCfg niet ingesteld staat. Het stelt
           de weergegeven inhoud van het statusitem in. Het is een
           indelingstekenreeks zoals beschreven in de paragraaf met de naam
           “Aanpassen hoe pakketten weergegeven worden”.

   ColumnsCfg HEADER|STATUS|naam;

           Deze optie is van toepassing op weergave-elementen van het type
           Static. Het stelt de weergave-indeling van het huidige element in
           op de waarde van een andere configuratievariabele: indien het
           HEADER of STATUS is, worden respectievelijk de opties
           Aptitude::UI::Package-Header-Format en
           Aptitude::UI::Package-Status-Format gebruikt. Anders wordt de
           optie naam gebruikt.

           Indien deze optie niet aanwezig is, wordt de waarde van de optie
           Columns gebruikt om de inhoud van het statische item te regelen.

   Height hoogte;

           Definieert de hoogte van het huidige weergave-element.

   PopUpDownKey commando;

           Deze optie is van toepassing op weergave-elementen van het type
           Description en Static.

           commando is de naam van een toetsenbordcommando (bijvoorbeeld
           ShowHideDescription). Als die toets ingedrukt wordt, zal het
           weergave-element verborgen worden als het zichtbaar is en
           weergegeven worden als het onzichtbaar is.

   PopUpDownLinked element;

           Deze optie is van toepassing op weergave-elementen van het type
           Description en Static.

           element is de naam van een weergave-element. Als element
           weergegeven wordt, zal ook het huidige element weergegeven worden.
           Als element verborgen is, zal ook het huidige element verborgen
           worden.

   Row rij;

           Geeft de bovenste rij op die dit weergave-element bevat.

   RowAlign uitlijning;

           uitlijning moet ofwel Top (bovenaan), Bottom (onderaan) of Center
           (centraal) zijn. Indien de rij die het huidige weergave-element
           bevat, groter is dan het element zelf en RowExpand is ingesteld op
           false (niet waar), dan zal het element in de rij geplaatst worden
           overeenkomstig de waarde van uitlijning.

           Indien deze optie niet aanwezig is, wordt teruggevallen op de
           standaardwaarde die Top (bovenaan) is.

   RowExpand true|false;

           Indien deze optie op true ingesteld is, zal de rij met dit
           weergave-element een deel van de eventuele extra beschikbare
           verticale ruimte toegewezen krijgen.

           Indien deze optie niet aanwezig is, wordt teruggevallen op de
           standaardwaarde die false (niet waar) is.

   RowShrink true|false;

           Indien deze optie voor elk element in een rij ingesteld is op true
           en er onvoldoende verticale ruimte is, zal de rij zoveel verkleind
           worden als nodig is om te passen in de beschikbare ruimte. Merk op
           dat een rij ook verkleind kan worden zelfs al is RowShrink
           ingesteld op false. Dit geeft enkel aan dat aptitude eerst een
           specifieke rij moet trachten te verkleinen vooraleer dit met
           andere rijen te doen.

           Indien deze optie niet aanwezig is, wordt teruggevallen op de
           standaardwaarde die false (niet waar) is.

   Visible true|false;

           Indien de instelling false is, zal dit weergave-element initieel
           verborgen zijn. Wellicht enkel zinvol in combinatie met
           PopUpDownKey en/of PopUpDownLinked.

           Indien deze optie niet aanwezig is, wordt teruggevallen op de
           standaardwaarde die true (waar) is.

   Width breedte;

           Definieert de breedte van het huidige weergave-element.

  Referentiegids voor het configuratiebestand

    Indeling van het configuratiebestand

   In zijn basisvorm is het configuratiebestand van aptitude een lijst van
   opties met hun waarden. Elke regel van het bestand moet de vorm hebben van
   “Optie Waarde;”: de volgende regel in het configuratiebestand stelt
   bijvoorbeeld de optie Aptitude::Theme in op “Dselect”.

 Aptitude::Theme "Dselect";

   Een optie kan andere opties “bevatten” als ze tussen accolades staan en
   geplaatst worden tussen de optie en de erop volgende puntkomma, zoals dit:

 Aptitude::UI {
   Package-Status-Format "";
   Package-Display-Format "";
 };

   Een optie die andere opties bevat, wordt soms een groep genoemd. In feite
   zijn de dubbele punten die in optienamen voorkomen eigenlijk een verkorte
   notatie om het behoren tot een groep aan te geven: de optie
   Aptitude::UI::Default-Grouping maakt deel uit van de groep Aptitude.
   Indien u wenste zou u die optie dus kunnen instellen op "" op de volgende
   manier:

 Aptitude {
   UI {
     Default-Grouping "";
   };
 };

   Voor meer informatie over de indeling van het configuratiebestand, kunt u
   de man-pagina apt.conf(5) raadplegen.

    De plaats van configuratiebestanden

   aptitude leest in volgorde zijn configuratie uit de volgende bronnen:

    1. Aan de commandoregel meegegeven configuratiebestandsopties.

    2. Het configuratiebestand van de gebruiker, ~/.aptitude/config. Dit
       bestand wordt bijgewerkt als de gebruiker veranderingen aanbrengt in
       de instellingen van het menu Opties.

    3. Het systeemconfiguratiebestand, /etc/apt/apt.conf.

    4. De systeembestanden met configuratiefragmenten, /etc/apt/apt.conf.d/*.

    5. Het bestand dat gespecificeerd wordt door de omgevingsvariabele
       APT_CONFIG (als die ingesteld werd).

    6. De standaardwaarden, opgeslagen in
       /usr/share/aptitude/aptitude-defaults.

    7. In aptitude ingebouwde standaardwaarden.

   Als een optie nagegaan wordt, worden deze bronnen in volgorde doorzocht en
   de eerste waarde die voor die optie gevonden wordt, wordt gebruikt.
   Bijvoorbeeld zal een in /etc/apt/apt.conf ingestelde optie voorrang hebben
   op de standaardwaarde van aptitude voor die optie, maar niet op de
   instellingen van de gebruiker uit ~/.aptitude/config.

    Configuratieopties die gebruikt kunnen worden

   De volgende configuratieopties worden door aptitude gebruikt. Merk op dat
   dit niet de enig mogelijke configuratieopties zijn. De opties die voor het
   onderliggende apt-systeem gebruikt kunnen worden, zijn hier niet
   opgenomen. Raadpleeg de man-pagina's apt(8) en apt.conf(5) voor informatie
   over de opties van apt.

   Optie: APT::AutoRemove::RecommendsImportant
   Standaard: true
   Omschrijving: Als deze optie op true (waar) ingesteld staat, zal aptitude
   een pakket niet als ongebruikt aanzien (en het dus niet automatisch
   verwijderen) zolang er een geïnstalleerd pakket is dat het aanbeveelt, ook
   al is de waarde van APT::Install-Recommends false (niet waar). Zie voor
   meer informatie de paragraaf met de naam “Automatisch geïnstalleerde
   pakketten beheren”.
   Optie: APT::AutoRemove::SuggestsImportant
   Standaard: true
   Omschrijving: Als deze optie op true ingesteld staat, zal aptitude een
   pakket niet als ongebruikt aanzien (en het dus niet automatisch
   verwijderen) zolang er een geïnstalleerd pakket is dat het suggereert. Zie
   voor meer informatie de paragraaf met de naam “Automatisch geïnstalleerde
   pakketten beheren”.
   Optie: APT::Get::List-Cleanup
   Standaard: true
   Omschrijving: Dit is een synoniem voor APT::List-Cleanup. Indien een van
   beide opties op false ingesteld is, zal aptitude oude pakketlijsten niet
   verwijderen na het downloaden van een nieuwe reeks pakketlijsten.
   Optie: APT::List-Cleanup
   Standaard: true
   Omschrijving: Dit is een synoniem voor APT::Get::List-Cleanup. Indien een
   van beide opties op false ingesteld is, zal aptitude oude pakketlijsten
   niet verwijderen na het downloaden van een nieuwe reeks pakketlijsten.
   Optie: APT::Install-Recommends
   Standaard: true
   Omschrijving: Indien deze optie true is en Aptitude::Auto-Install ook true
   is en u een pakket markeert om geïnstalleerd te worden, zal aptitude ook
   de pakketten die het aanbeveelt, markeren voor installatie. Als deze optie
   true is, zal aptitude bovendien een pakket niet als ongebruikt aanzien (en
   het dus niet automatisch verwijderen) zolang er een geïnstalleerd pakket
   is dat het aanbeveelt. Zie voor meer informatie de paragraaf met de naam
   “Automatisch geïnstalleerde pakketten beheren” en de paragraaf met de naam
   “Onmiddellijke vereistenoplossing”.
   Optie: Aptitude::Allow-Null-Upgrade
   Standaard: false
   Omschrijving: Indien u een installatieoperatie probeert te starten en er
   geen acties uitgevoerd moeten worden, zal aptitude normaal een
   waarschuwing geven en terugkeren naar de pakketlijst. Indien deze optie op
   true ingesteld staat, zal aptitude doorgaan naar het scherm met de
   voorafbeelding als er pakketten zijn die opgewaardeerd kunnen worden en
   geen wenk in verband met het commando Acties → Markeer als opwaardeerbaar
   (U) weergeven.
   Optie: Aptitude::Always-Use-Safe-Resolver
   Standaard: false
   Omschrijving: Indien deze optie true is, zullen de commandoregelacties van
   aptitude steeds een “veilige” vereistenoplosser gebruiken alsof aan de
   commandoregel de optie --safe-resolver meegegeven werd.
   Optie: Aptitude::Autoclean-After-Update
   Standaard: false
   Omschrijving: Indien deze optie op true ingesteld is, zal aptitude
   verouderde bestanden opruimen (zie Acties → Schoon verouderde bestanden
   op) telkens u de pakketlijst bijwerkt. Deze optie is vergelijkbaar met
   Aptitude::Clean-After-Install.
   Optie: Aptitude::Auto-Fix-Broken
   Standaard: true
   Omschrijving: Indien deze optie op false ingesteld is, zal aptitude om
   toestemming vragen vooraleer het probeert een defect pakket te repareren.
   Optie: Aptitude::Auto-Install
   Standaard: true
   Omschrijving: Indien deze optie true is, zal aptitude automatisch proberen
   tegemoet te komen aan de vereisten van een pakket als u een pakket
   markeert om geïnstalleerd of opgewaardeerd te worden.
   Optie: Aptitude::Auto-Install-Remove-Ok
   Standaard: false
   Omschrijving: Als deze optie op true ingesteld is, zal aptitude
   automatisch conflicterende pakketten verwijderen als u een pakket markeert
   om geïnstalleerd of opgewaardeerd te worden. Normaal worden deze
   conflicten met een vlag aangeduid en moet u ze zelf handmatig behandelen.
   Optie: Aptitude::Auto-Upgrade
   Standaard: false
   Omschrijving: Indien deze optie true is, zal aptitude automatisch alle
   opwaardeerbare pakketten markeren om opgewaardeerd te worden als u het
   programma start, alsof u het commando Acties → Markeer als opwaardeerbaar
   (U) gegeven had.
   Optie: Aptitude::Clean-After-Install
   Standaard: false
   Omschrijving: Indien deze optie op true ingesteld staat, zal aptitude na
   een succesvolle installatie van pakketten (of vergelijkbare operaties)
   alle bestanden in de cache-map opruimen (zie Acties → Schoon pakketcache
   op). Deze optie is vergelijkbaar met Aptitude::Autoclean-After-Update.
   Optie: Aptitude::CmdLine::Always-Prompt
   Standaard: false
   Omschrijving: Indien dit ingesteld staat, zal aptitude in
   commandoregelmodus steeds om bevestiging vragen vooraleer met het
   installeren of verwijderen van pakketten te beginnen, ook al zou die vraag
   normaal overgeslagen worden. Dit is het equivalent van de
   commandoregeloptie -P.
   Optie: Aptitude::CmdLine::Assume-Yes
   Standaard: false
   Omschrijving: Indien deze optie true is, zal aptitude zich in
   commandoregelmodus gedragen alsof de gebruiker op elke vraag met “yes”
   geantwoord had, waardoor de meeste vragen overgeslagen worden. Dit is het
   equivalent van de commandoregeloptie -y.
   Optie: Aptitude::CmdLine::Disable-Columns
   Standaard: false
   Omschrijving: Indien deze optie ingesteld werd, zal het resultaat van
   zoekopdrachten aan de commandoregel (uitgevoerd via aptitude search) niet
   ingedeeld worden in kolommen met een vaste breedte of afgekapt worden op
   de breedte van het scherm. Dit is het equivalent van de commandoregeloptie
   --disable-columns.
   Optie: Aptitude::CmdLine::Download-Only
   Standaard: false
   Omschrijving: Indien deze optie true is, zal aptitude in
   commandoregelmodus pakketbestanden downloaden, maar ze niet installeren.
   Dit is het equivalent van de commandoregeloptie -d.
   Optie: Aptitude::CmdLine::Fix-Broken
   Standaard: false
   Omschrijving: Indien deze optie op true ingesteld werd, zal aptitude in
   commandoregelmodus meer agressief te werk gaan bij het proberen oplossen
   van de vereisten van defecte pakketten. Dit is het equivalent van de
   commandoregeloptie -f.
   Optie: Aptitude::CmdLine::Versions-Group-By
   Standaard: Stel dit in op auto, none, package of source-package om te
   bepalen of en hoe de uitvoer van aptitude versions gegroepeerd wordt. Dit
   is het equivalent van de commandoregeloptie --group-by (raadpleeg de
   documentatie daarvan voor meer toelichting bij wat de betekenis van deze
   waarden is).
   Optie: Aptitude::CmdLine::Ignore-Trust-Violations
   Standaard: false
   Omschrijving: In de commandoregelmodus doet dit aptitude voorbijgaan aan
   het feit dat onbetrouwbare pakketten geïnstalleerd worden. Dit is een
   synoniem van APT::Get::AllowUnauthenticated.
   Optie: Aptitude::CmdLine::Package-Display-Format
   Standaard: %c%a%M %p# - %d#
   Omschrijving: Dit is een indelingstekenreeks, zoals beschreven in de
   paragraaf met de naam “Aanpassen hoe pakketten weergegeven worden”. Ze
   wordt gebruikt om de resultaten weer te geven van een zoekopdracht aan de
   commandoregel. Dit is het equivalent van de commandoregeloptie -F.
   Optie: Aptitude::CmdLine::Package-Display-Width
   Standaard:
   Omschrijving: Deze optie stelt de breedte in, uitgedrukt in aantal
   lettertekens, voor het weergeven van het resultaat van een zoekopdracht
   aan de commandoregel. Als die optie leeg is (d.w.z. "", hetgeen de
   standaard is), dan zal de indeling van de zoekresultaten aangepast worden
   aan de grootte van de huidige terminal of, als die niet vastgesteld kan
   worden, aan een scherm van 80 tekens breed.
   Optie: Aptitude::CmdLine::Progress::Percent-On-Right
   Standaard: false
   Omschrijving: Deze optie regelt of de voortgangsindicatoren aan de
   commandoregel het percentage weergeven aan de linkerkant van het scherm,
   in de stijl van apt-get, of aan de rechterkant (wat standaard is). Deze
   optie heeft geen invloed op de voortgangsindicatoren bij het downloaden.
   Optie: Aptitude::CmdLine::Progress::Retain-Completed
   Standaard: false
   Omschrijving: Indien deze waarde ingesteld is op false, dan zullen de
   voortgangsindicatoren van de commandoregel verwijderd en overschreven
   worden van zodra de taak waarop zij betrekking hebben, beëindigd is.
   Indien deze waarde true is, dan zullen zij op de terminal blijven staan.
   Deze optie heeft geen invloed op de voortgangsindicatoren bij het
   downloaden.
   Optie: Aptitude::CmdLine::Request-Strictness
   Standaard: 10000
   Omschrijving: Als aptitude in commandoregelmodus uitgevoerd wordt, zal het
   bij vereistenproblemen voor elke actie waarom u expliciet vraagt, deze
   waarde optellen bij de score die de probleemoplosser eraan geeft.
   Optie: Aptitude::CmdLine::Resolver-Debug
   Standaard: false
   Omschrijving: Indien deze optie op true ingesteld is, zal aptitude in
   commandoregelmodus bij het proberen oplossen van defecte vereisten,
   extreem veel informatie geven. Zoals de naam van deze optie suggereert, is
   ze in de eerste plaats bedoeld om te helpen bij het debuggen van de
   probleemoplosser.
   Optie: Aptitude::CmdLine::Resolver-Dump
   Standaard:
   Omschrijving: Als het in commandoregelmodus nodig is om defecte vereisten
   op te lossen en de waarde van deze optie de naam is van een bestand waarin
   geschreven kan worden, dan zal de oplosser zijn toestand in dat bestand
   opschrijven voordat hij begint berekeningen te maken.
   Optie: Aptitude::CmdLine::Resolver-Show-Steps
   Standaard: false
   Omschrijving: Als deze optie true is, dan zal een oplossing voor een
   vereiste weergegeven worden als een sequentie van oplossingen voor
   individuele vereisten. Bijvoorbeeld, “wesnoth hangt af van wesnoth-data (=
   1.2.4-1) -> installeren van wesnoth-data 1.2.4-1 (unstable)”. Om tussen de
   twee weergavemodi te wisselen, drukt u op o bij de vraag “Deze oplossing
   aanvaarden?”.
   Optie: Aptitude::CmdLine::Show-Deps
   Standaard: false
   Omschrijving: Indien deze optie op true ingesteld werd, zal aptitude in de
   commandoregelmodus een korte samenvatting tonen van de (eventuele)
   vereisten, gekoppeld aan de toestand van het pakket. Dit is het equivalent
   van de commandoregeloptie -D.
   Optie: Aptitude::CmdLine::Show-Size-Changes
   Standaard: false
   Omschrijving: Als deze optie true is, zal aptitude in commandoregelmodus
   voor elk pakket het verwachte verschil inzake schijfgebruik weergeven. Dit
   is het equivalent van de commandoregeloptie -Z.
   Optie: Aptitude::CmdLine::Show-Summary
   Standaard: no-summary
   Omschrijving: Deze optie stelt de standaardwaarde in van het
   commandoregelargument --show-summary. Raadpleeg de documentatie van
   --show-summary voor een lijst van de mogelijke waarden voor deze optie en
   hun betekenis.
   Optie: Aptitude::CmdLine::Show-Versions
   Standaard: false
   Omschrijving: Indien deze optie op true ingesteld is, zal aptitude in
   commandoregelmodus de versie weergeven van het pakket dat geïnstalleerd of
   verwijderd wordt. Dit is het equivalent van de commandoregeloptie -V.
   Optie: Aptitude::CmdLine::Show-Why
   Standaard: false
   Omschrijving: Als deze optie op true ingesteld werd, zal aptitude in
   commandoregelmodus van elk automatisch geïnstalleerd pakket weergeven welk
   handmatig geïnstalleerd pakket ervan afhankelijk is en van elk automatisch
   verwijderd pakket welk handmatig geïnstalleerd pakket ermee conflicteert.
   Dit is het equivalent van de commandoregeloptie -W en toont dezelfde
   informatie als die welke u te zien krijgt via aptitude why of door bij een
   pakketlijst op i te drukken.
   Optie: Aptitude::CmdLine::Version-Display-Format
   Standaard: %c%a%M %p# %t %i
   Omschrijving: Dit is de indelingstekenreeks zoals die in de paragraaf met
   de naam “Aanpassen hoe pakketten weergegeven worden” beschreven werd. Ze
   wordt gebruikt om de uitvoer van aptitude versions weer te geven. Dit is
   het equivalent van de commandoregeloptie -F.
   Optie: Aptitude::CmdLine::Versions-Show-Package-Names
   Standaard: Wordt ingesteld op always, auto of never om te regelen wanneer
   pakketnamen weergegeven worden in de uitvoer van aptitude versions. Dit is
   het equivalent van de commandoregeloptie --show-package-names (raadpleeg
   de documentatie op die plaats voor een beschrijving van de betekenis van
   deze waarden).
   Optie: Aptitude::Safe-Resolver::Show-Resolver-Actions
   Standaard: false
   Omschrijving: Indien deze optie actief is en de “veilige” probleemoplosser
   geactiveerd werd via --safe-resolver of omdat de actie aan de
   commandoregel safe-upgrade is, zal er een samenvatting getoond worden van
   de acties die de oplosser onderneemt vooraleer de voorafbeelding van de
   installatie getoond wordt. Dit is het equivalent van de commandoregeloptie
   --show-resolver-actions.
   Optie: Aptitude::Screenshot::IncrementalLoadLimit
   Standaard: 16384
   Omschrijving: De minimale grootte in bytes vanaf wanneer aptitude
   schermafbeeldingen incrementeel zal beginnen weergeven. Onder dat minimum
   zullen schermafbeeldingen enkel zichtbaar worden nadat ze volledig
   gedownload werden.
   Optie: Aptitude::Screenshot::Cache-Max
   Standaard: 4194304
   Omschrijving: De maximale hoeveelheid bytes aan schermafbeeldingsgegevens
   die aptitude in het geheugen zal opslaan voor schermafbeeldingen die
   momenteel niet weergegeven worden. Standaard is dit vier megabyte.
   Optie: Aptitude::CmdLine::Simulate
   Standaard: false
   Omschrijving: Deze optie is verouderd; gebruik in de plaats daarvan
   Aptitude::Simulate. Doet aptitude in commandoregelmodus enkel tonen welke
   acties ondernomen zouden worden (in plaats van ze effectief uit te
   voeren). In de visuele interface doet dit aptitude opstarten in
   alleen-lezenmodus ongeacht of u root bent of niet. Dit is het equivalent
   van de commandoregeloptie -s.
   Optie: Aptitude::CmdLine::Verbose
   Standaard: 0
   Omschrijving: Dit regelt hoeveel informatie de commandoregelmodus van
   aptitude geeft. Elke maal dat de commandoregeloptie -v aangetroffen wordt,
   wordt deze waarde met 1 verhoogd.
   Optie: Aptitude::CmdLine::Visual-Preview
   Standaard: false
   Omschrijving: Indien deze optie ingesteld staat op true, zal aptitude zijn
   visuele interface activeren om de voorafbeelding van een
   installatieoperatie te tonen en pakketten te downloaden.
   Optie: Aptitude::Delete-Unused
   Standaard: true
   Omschrijving: Indien deze optie true is, zullen automatisch geïnstalleerde
   pakketten die niet langer nodig zijn, automatisch verwijderd worden. Zie
   voor meer informatie de paragraaf met de naam “Automatisch geïnstalleerde
   pakketten beheren”.
   Optie: Aptitude::Delete-Unused-Pattern
   Standaard:
   Omschrijving: Een verouderde alias voor Aptitude::Keep-Unused-Pattern.
   Indien Aptitude::Keep-Unused-Pattern gedeactiveerd is of ingesteld op een
   lege tekenreeks, zal de waarde van deze configuratieoptie als een
   vervanging ervoor fungeren. Anders wordt Aptitude::Delete-Unused-Pattern
   genegeerd.
   Optie: Aptitude::Display-Planned-Action
   Standaard: true
   Omschrijving: Indien deze optie true is, zal aptitude een voorafbeelding
   tonen vooraleer de door u gevraagde acties uit te voeren.
   Optie: Aptitude::Forget-New-On-Install
   Standaard: false
   Omschrijving: Indien deze optie de waarde true heeft, zal aptitude de
   lijst van nieuwe pakketten leegmaken telkens u pakketten installeert,
   opwaardeert of verwijdert, net alsof u het commando Acties → Vergeet
   nieuwe pakketten (f) had gegeven.
   Optie: Aptitude::Forget-New-On-Update
   Standaard: false
   Omschrijving: Indien deze optie de waarde true heeft, zal aptitude de
   lijst van nieuwe pakketten leegmaken telkens wanneer de pakketlijst
   bijgewerkt wordt, net alsof u het commando Acties → Vergeet nieuwe
   pakketten (f) had gegeven.
   Optie: Aptitude::Get-Root-Command
   Standaard: su:/bin/su
   Omschrijving: Deze optie stelt in welk extern commando aptitude zal
   gebruiken om systeembeheerder (root user) te worden (zie de paragraaf met
   de naam “Systeembeheerder (root) worden”). Ze heeft de vorm
   protocol:commando. protocol moet ofwel su of sudo zijn. Ze bepaalt hoe
   aptitude een beroep doet op het programma als het systeembeheerdersrechten
   (root privileges) wil verkrijgen. Indien het protocol su is, dan wordt
   “commando -c argumenten” gebruikt om systeembeheerder te worden. Anders
   gebruikt aptitude “commando argumenten”. Het eerste woord in commando is
   de naam van het programma waarop een beroep gedaan moet worden. De overige
   woorden worden als argumenten voor dat programma behandeld.
   Optie: Aptitude::Ignore-Old-Tmp
   Standaard: false
   Omschrijving: Oudere versies van aptitude maakten een map ~/.aptitude/.tmp
   aan die niet langer nodig is. Indien de map bestaat en
   Aptitude::Ignore-Old-Tmp true is, zal aptitude vragen of die map
   verwijderd moet worden. Deze optie wordt automatisch op true ingesteld na
   uw antwoord. Indien de map evenwel niet bestaat, wordt de optie op false
   ingesteld, waardoor u geïnformeerd zult worden als ze terug opduikt.
   Optie: Aptitude::Ignore-Recommends-Important
   Standaard: false
   Omschrijving: In eerdere versies van aptitude zorgde de instelling
   Aptitude::Recommends-Important voor het automatisch installeren van
   aanbevolen pakketten op dezelfde manier waarop dit nu via
   APT::Install-Recommends gebeurt. Indien deze optie op false ingesteld
   wordt, zal aptitude bij het opstarten APT::Install-Recommends op false
   instellen en Aptitude::Ignore-Recommends-Important op true.
   Optie: Aptitude::Keep-Recommends
   Standaard: false
   Omschrijving: Dit is een verouderde optie. Gebruik in de plaats daarvan
   APT::AutoRemove::RecommendsImportant. Deze optie instellen op true heeft
   hetzelfde effect als APT::AutoRemove::RecommendsImportant op true
   instellen.
   Optie: Aptitude::Keep-Suggests
   Standaard: false
   Omschrijving: Dit is een verouderde optie. Gebruik in de plaats daarvan
   APT::AutoRemove::SuggestsImportant. Deze optie instellen op true heeft
   hetzelfde effect als APT::AutoRemove::SuggestsImportant op true instellen.
   Optie: Aptitude::Keep-Unused-Pattern
   Standaard:
   Omschrijving: Indien Aptitude::Delete-Unused true is, zullen enkel
   niet-gebruikte pakketten die niet aan dit patroon beantwoorden (zie de
   paragraaf met de naam “Zoekpatronen”), verwijderd worden. Indien deze
   optie op een lege tekenreeks ingesteld wordt (de standaardinstelling), dan
   zullen alle niet-gebruikte pakketten verwijderd worden.
   Optie: Aptitude::LockFile
   Standaard: /var/lock/aptitude
   Omschrijving: Een bestand dat met fcntl vergrendeld wordt om er zeker van
   te zijn dat hoogstens één proces van aptitude tegelijk de cache kan
   wijzigen. In normale omstandigheden zou u dit nooit moeten wijzigen. Maar
   voor het debuggen kan dat wel nuttig zijn. Noot: indien aptitude zijn
   beklag doet dat het geen vergrendeling kan bekomen, betekent dit niet dat
   het vergrendelingsbestand verwijderd moet worden. Vergrendelingen via
   fcntl worden door de kernel beheerd en worden vernietigd als het programma
   dat de vergrendeling gebruikt, beëindigd wordt. Als er geen vergrendeling
   bekomen kan worden, betekent dit dat een ander actief programma haar
   gebruikt!
   Optie: Aptitude::Localize-Log
   Standaard: false
   Omschrijving: Indien deze optie gebruikt wordt, zal aptitude meldingen en
   datumaanduidingen in het logbestand weergeven, rekening houdend met het
   taalgebied van de gebruiker. Anders worden die weergegeven volgens de
   "klassieke" taaldefinitie om te voorkomen dat verschillende talen
   (afhankelijk van de taaldefinities van de gebruikers die het programma
   uitvoeren) gebruikt zouden worden om in het logbestand te schrijven.
   Optie: Aptitude::Log
   Standaard: /var/log/aptitude
   Omschrijving: Indien dit op een niet-lege tekenreeks ingesteld staat, zal
   aptitude een log bijhouden van de uitgevoerde installaties, verwijderingen
   en opwaarderingen van pakketten. Indien de waarde van Aptitude::Log begint
   met een sluisteken (nl. “|”), zal de rest van de waarde gebruikt worden
   als de naam van een commando waar de log doorgesluisd moet worden:
   bijvoorbeeld, |mail -s 'Aptitude install run' root zal ertoe leiden dat de
   log naar root gemaild wordt. Om de log naar verschillende bestanden of
   commando's te schrijven, kunt u deze optie instellen op een lijst van
   logdoelwitten.
   Optie: Aptitude::Logging::File
   Standaard:
   Omschrijving: Indien dit op een niet-lege tekenreeks ingesteld staat, zal
   aptitude er logberichten in opschrijven. Dit instellen op “-” zorgt ervoor
   dat logberichten naar standaarduitvoer geschreven worden. Het verschil met
   de instelling Aptitude::Log is dat dat bestand gebruikt wordt om een log
   bij te houden van installaties en verwijderingen, terwijl dit bestand
   gebruikt wordt om er programmagebeurtenissen, fouten en debuginformatie
   (als debuggen actief is) in op te schrijven. Deze optie is het equivalent
   van het commandoregelargument --log-file. Zie ook
   Aptitude::Logging::Levels.
   Optie: Aptitude::Logging::Levels
   Standaard: (leeg)
   Omschrijving: Deze optie is een groep waarvan de elementen regelen welke
   logberichten opgeschreven worden. Een element is ofwel “niveau”, wat het
   globale logniveau (het logniveau van de hoofdlogger) instelt op het
   opgegeven niveau, ofwel “categorie:niveau”, waarbij categorie de categorie
   berichten is waarvoor deze instructie geldt (zoals
   aptitude.resolver.hints.match) en niveau het laagste niveau waarvoor
   logberichten uit deze categorie weergegeven moeten worden. Geldige
   logniveaus zijn “fatal”, “error”, “warn”, “info”, “debug” en “trace”. De
   commandoregeloptie --log-level kan gebruikt worden om gelijk welk
   logniveau in te stellen of te wijzigen.
   Optie: Aptitude::Parse-Description-Bullets
   Standaard: true
   Omschrijving: Indien deze optie actief is, zal aptitude proberen om
   lijsten met opsommingstekens automatisch te vinden in
   pakketbeschrijvingen. Dit zal in het algemeen een betere weergave van
   beschrijvingen tot gevolg hebben, maar het is niet volledig neerwaarts
   compatibel. Sommige beschrijvingen zullen met een minder attractieve
   indeling weergegeven worden wanneer deze optie true is dan wanneer ze
   false zou zijn.
   Optie: Aptitude::Pkg-Display-Limit
   Standaard:
   Omschrijving: De standaardfilter die op een pakketlijst toegepast wordt.
   Zie de paragraaf met de naam “Zoekpatronen” voor details over de indeling
   ervan.
   Optie: Aptitude::ProblemResolver::Allow-Break-Holds
   Standaard: false
   Omschrijving: Indien deze optie true is, zal de probleemoplosser het
   verbreken van een handhaving van een pakket of het installeren van
   verboden versies van een pakket in overweging nemen om een
   vereistenprobleem op te lossen. Indien ze op false ingesteld wordt, zullen
   deze acties standaard afgewezen worden, hoewel u ze steeds manueel kunt
   toestaan (zie de paragraaf met de naam “Vereisten interactief oplossen”).
   Optie: Aptitude::ProblemResolver::BreakHoldScore
   Standaard: -300
   Omschrijving: Met hoeveel punten oplossingen die de toestand van een
   gehandhaafd pakket wijzigen of een verboden versie installeren, beloond of
   bestraft moeten worden. Merk op dat tenzij
   Aptitude::ProblemResolver::Allow-Break-Holds op true ingesteld werd, de
   oplosser nooit een handhaving zal verbreken of een verboden versie zal
   installeren, tenzij hij daarvoor de expliciete goedkeuring van de
   gebruiker heeft.
   Optie: Aptitude::ProblemResolver::Break-Hold-Level
   Standaard: 50000
   Omschrijving: De veiligheidskost die aangerekend wordt aan acties die een
   door de gebruiker ingestelde handhaving doorbreken (door een gehandhaafd
   pakket op te waarderen of door een verboden versie van een pakket te
   installeren). Zie de paragraaf met de naam “Veiligheidskosten” voor een
   beschrijving van veiligheidskosten.
   Optie: Aptitude::ProblemResolver::BrokenScore
   Standaard: -100
   Omschrijving: Met hoeveel punten potentiële oplossingen beloond of
   bestraft moeten worden op basis van het aantal vereisten dat ze defect
   maken. Voor elke vereiste die door een potentiële oplossing defect gemaakt
   wordt, wordt dit aantal punten opgeteld bij haar score. Doorgaans zou dit
   een negatieve waarde moeten zijn.
   Optie: Aptitude::ProblemResolver::CancelRemovalScore
   Standaard: -300
   Omschrijving: Welk gewicht de probleemoplosser moet toekennen aan het niet
   verwijderen of wissen van een pakket waarvan het verwijderen of wissen
   aangevraagd is.
   Optie: Aptitude::ProblemResolver::DefaultResolutionScore
   Standaard: 400
   Omschrijving: Met hoeveel punten potentiële oplossingen beloond of
   bestraft moeten worden op basis van het aantal “standaard”-oplossingen
   voor momenteel onvoldane vereisten dat zij installeren. De
   standaardoplossing is de oplossing die door “apt-get install” of door de
   “onmiddellijke vereistenoplosser” eruit gepikt zou worden. Deze score
   wordt enkel toegepast voor vereisten en aanbevelingen waarvan het doel
   momenteel niet geïnstalleerd is.
   Optie: Aptitude::ProblemResolver::Discard-Null-Solution
   Standaard: true
   Omschrijving: Indien deze optie true is, zal aptitude nooit voorstellen om
   alle door u voorgestelde acties te annuleren om een vereistenprobleem op
   te lossen.
   Optie: Aptitude::ProblemResolver::EssentialRemoveScore
   Standaard: -100000
   Omschrijving: Met hoeveel punten oplossingen beloond of bestraft moeten
   worden die een essentieel pakket verwijderen.
   Optie: Aptitude::ProblemResolver::Remove-Essential-Level
   Standaard: 60000
   Omschrijving: De veiligheidskost die aangerekend wordt aan acties die een
   essentieel pakket verwijderen. Zie de paragraaf met de naam
   “Veiligheidskosten” voor een beschrijving van veiligheidskosten.
   Optie: Aptitude::ProblemResolver::ExtraScore
   Standaard: 0
   Omschrijving: Deze hoeveelheid punten wordt opgeteld bij de score van elke
   pakketversie waarvan de prioriteit de waarde “extra” heeft.
   Optie: Aptitude::ProblemResolver::FullReplacementScore
   Standaard: 500
   Omschrijving: Het verwijderen van een pakket en het installeren van een
   ander pakket dat het volledig vervangt (d.w.z. ermee conflicteert, het
   vervangt of erin voorziet) krijgt deze score toegekend.
   Optie: Aptitude::ProblemResolver::FutureHorizon
   Standaard: 50
   Omschrijving: Hoeveel “stappen” de oplosser nog moet zetten na het vinden
   van de eerste oplossing. Hoewel aptitude probeert om eerst de beste
   oplossingen te genereren en daarna de minder goede, is het daar soms niet
   toe in staat. Deze instelling doet de oplosser nog een korte tijd verder
   zoeken naar een betere oplossing vooraleer hij zijn resultaten
   presenteert, in de plaats van onmiddellijk na het vinden van de eerste
   oplossing te stoppen.
   Optie: Aptitude::ProblemResolver::Hints
   Standaard: (leeg)
   Omschrijving: Deze optie is een groep waarvan de elementen gebruikt worden
   om de probleemoplosser te configureren. Elk item uit de groep is een
   tekenreeks die een actie beschrijft die op een of meer pakketten
   uitgevoerd moet worden. De syntaxis van elke aanwijzing en het effect
   ervan, kan men vinden in de paragraaf met de naam “Hints voor de oplosser
   configureren”.
   Optie: Aptitude::ProblemResolver::ImportantScore
   Standaard: 4
   Omschrijving: Dit aantal punten wordt opgeteld bij de score van elke
   pakketversie waarvan de prioriteit de waarde “important” heeft.
   Optie: Aptitude::ProblemResolver::Infinity
   Standaard: 1000000
   Omschrijving: Een “maximale” score, ook oneindig genoemd, die een
   mogelijke oplossing kan hebben. Indien een geheel van acties een slechtere
   score haalt dan -oneindig, wordt ze onmiddellijk aan de kant geschoven.
   Optie: Aptitude::ProblemResolver::InstallScore
   Standaard: -20
   Omschrijving: Welk gewicht de probleemoplosser moet toekennen aan het
   installeren van een pakket waarvan de installatie nog niet gepland was.
   Optie: Aptitude::ProblemResolver::Keep-All-Level
   Standaard: 10000
   Omschrijving: De veiligheidskost die aangerekend wordt aan de enige
   oplossing die alle door de gebruiker geselecteerde acties annuleert. Zie
   de paragraaf met de naam “Veiligheidskosten” voor een beschrijving van
   veiligheidskosten.
   Optie: Aptitude::ProblemResolver::KeepScore
   Standaard: 0
   Omschrijving: Welk gewicht de probleemoplosser moet toekennen aan het
   behouden van een pakket in zijn huidige toestand, als dat pakket niet
   reeds in zijn huidige toestand behouden zou worden.
   Optie: Aptitude::ProblemResolver::NonDefaultScore
   Standaard: -40
   Omschrijving: Welk gewicht de probleemoplosser moet toekennen aan het
   installeren van een andere dan de standaardversie van een pakket (een die
   niet de huidige versie en niet de “kandidaatversie” is).
   Optie: Aptitude::ProblemResolver::Non-Default-Level
   Standaard: 50000
   Omschrijving: De veiligheidskost die aangerekend wordt aan acties die een
   andere dan de standaardversie van een pakket installeren. Als bijvoorbeeld
   versie 5 van een pakket geïnstalleerd is, versies 6, 7 en 8 beschikbaar
   zijn en versie 7 de standaardversie is, dan zullen versies 6 en 8 een
   veiligheidskost aangerekend krijgen die minstens zo hoog is. Zie de
   paragraaf met de naam “Veiligheidskosten” voor een beschrijving van
   veiligheidskosten.
   Optie: Aptitude::ProblemResolver::OptionalScore
   Standaard: 1
   Omschrijving: Dit aantal punten wordt opgeteld bij de score van elke
   pakketversie waarvan de prioriteit de waarde “optional” heeft.
   Optie: Aptitude::ProblemResolver::PreserveAutoScore
   Standaard: 0
   Omschrijving: Welk gewicht de probleemoplosser moet geven aan het behouden
   van automatische installaties en verwijderingen.
   Optie: Aptitude::ProblemResolver::PreserveManualScore
   Standaard: 20
   Omschrijving: Welk gewicht de probleemoplosser moet geven aan het behouden
   van door de gebruiker expliciet gemaakte selecties.
   Optie: Aptitude::ProblemResolver::RemoveObsoleteScore
   Standaard: 310
   Omschrijving: Welk gewicht de probleemoplosser moet toekennen aan het
   verwijderen van een verouderd pakket (als het nog niet gemarkeerd is om
   verwijderd te worden). Dit moet minstens RemoveScore tegengaan, aangezien
   dat nog altijd toegepast zal worden.
   Optie: Aptitude::ProblemResolver::RemoveScore
   Standaard: -300
   Omschrijving: Welk gewicht de probleemoplosser moet toekennen aan het
   verwijderen van een pakket (als het nog niet gemarkeerd is om verwijderd
   te worden).
   Optie: Aptitude::ProblemResolver::Remove-Level
   Standaard: 10000
   Omschrijving: De veiligheidskost die aangerekend wordt aan acties die een
   pakket verwijderen. Zie de paragraaf met de naam “Veiligheidskosten” voor
   een beschrijving van veiligheidskosten.
   Optie: Aptitude::ProblemResolver::RequiredScore
   Standaard: 8
   Omschrijving: Dit aantal punten wordt opgeteld bij de score van elke
   pakketversie waarvan de prioriteit de waarde “required” heeft.
   Optie: Aptitude::ProblemResolver::ResolutionScore
   Standaard: 50
   Omschrijving: Naast alle andere factoren die de score beïnvloeden, krijgen
   voorgestelde oplossingen die effectief alle niet-voldane vereisten
   oplossen, dit aantal extra punten toegekend.
   Optie: Aptitude::ProblemResolver::Safe-Level
   Standaard: 10000
   Omschrijving: De veiligheidskost die aangerekend wordt aan acties die de
   standaardversie van een pakket installeren, een pakket naar zijn
   standaardversie opwaarderen of het installeren of opwaarderen van een
   pakket annuleren. Oplossingen waaraan een dergelijke kost aangerekend
   wordt, kunnen gegenereerd worden door aptitude safe-upgrade. Zie de
   paragraaf met de naam “Veiligheidskosten” voor een beschrijving van
   veiligheidskosten.
   Optie: Aptitude::ProblemResolver::SolutionCost
   Standaard: safety,priority
   Omschrijving: Beschrijft hoe de kost van een oplossing vastgesteld moet
   worden. Zie de paragraaf met de naam “Kosten van de interactieve
   vereistenoplosser” voor een beschrijving van wat oplossingskosten zijn,
   wat zij doen en welke syntaxis gebruikt wordt om ze te specificeren.
   Indien de kost niet ontleed kan worden, wordt een foutmelding weergegeven
   en wordt in de plaats daarvan de standaardkost gebruikt.
   Optie: Aptitude::ProblemResolver::StandardScore
   Standaard: 2
   Omschrijving: Dit aantal punten wordt opgeteld bij de score van elke
   pakketversie waarvan de prioriteit de waarde “standard” heeft.
   Optie: Aptitude::ProblemResolver::StepLimit
   Standaard: 5000
   Omschrijving: Het maximum aantal “stappen” dat de probleemoplosser mag
   zetten bij elke poging om een oplossing te vinden voor een
   vereistenprobleem. Door dit getal te verlagen zal men aptitude sneller
   doen “opgeven”. Het getal verhogen zal de zoektocht naar een oplossing
   toelaten om meer tijd en geheugen te gebruiken alvorens afgebroken wordt.
   Door StepLimit op 0 in te stellen, zal men de probleemoplosser volledig
   uitschakelen. De standaardwaarde is groot genoeg om gewone situaties te
   kunnen opvangen en aptitude te beschermen tegen het “opblazen” van
   zichzelf als het een al te complex probleem tegenkomt. (Noot: dit is enkel
   van toepassing op het zoeken naar oplossingen aan de commandoregel. Met de
   visuele interface zal de oplosser blijven voortwerken totdat een oplossing
   bereikt werd)
   Optie: Aptitude::ProblemResolver::StepScore
   Standaard: -10
   Omschrijving: Met hoeveel punten potentiële oplossingen beloond of
   bestraft worden op basis van hun lengte. Voor elke actie die ondernomen
   wordt om tot die oplossing te komen, wordt deze hoeveelheid punten bij
   zijn score opgeteld. Hoe groter deze waarde is, des te meer de oplosser
   geneigd zal zijn om bij zijn eerste keuze te blijven, eerder dan
   alternatieven te overwegen. Dit heeft tot gevolg dat er vlugger een
   oplossing geproduceerd wordt. Ze kan dan echter een iets lagere kwaliteit
   dan anders hebben.
   Optie: Aptitude::ProblemResolver::Trace-Directory
   Standaard:
   Omschrijving: Indien deze waarde ingesteld werd, wordt iedere keer als er
   een oplossing geproduceerd wordt, een vereenvoudigde versie van de
   pakketstatus, die volstaat om de oplossing te reproduceren, naar het
   opgegeven bestand geschreven. Indien ook
   Aptitude::ProblemResolver::Trace-File ingesteld werd, zal diezelfde
   informatie ook opgeschreven worden in het traceringsbestand.
   Traceringsmappen zijn transparanter dan traceringsbestanden en zijn meer
   geschikt om bijvoorbeeld als testcases opgenomen te worden in een
   broncodeboom.
   Optie: Aptitude::ProblemResolver::Trace-File
   Standaard:
   Omschrijving: Indien deze waarde ingesteld werd, wordt iedere keer als er
   een oplossing geproduceerd wordt, een vereenvoudigde versie van de
   pakketstatus, die volstaat om de oplossing te reproduceren, naar het
   opgegeven bestand geschreven. Indien ook
   Aptitude::ProblemResolver::Trace-Directory ingesteld werd, zal diezelfde
   informatie ook opgeschreven worden in de traceringsmap. Een
   traceringsbestand is gewoon een gecomprimeerd archief van een
   traceringsmap. Het neemt minder plaats in dan een traceringsmap en is
   geschikt om over een network getransporteerd te worden.
   Optie: Aptitude::ProblemResolver::UndoFullReplacementScore
   Standaard: -500
   Omschrijving: Deze score wordt toegekend aan het installeren van een
   pakket en het verwijderen van een ander pakket dat het volledig vervangt
   (nl. ermee conflicteert, het vervangt of erin voorziet).
   Optie: Aptitude::ProblemResolver::UnfixedSoftScore
   Standaard: -200
   Omschrijving: Met hoeveel het onopgelost laten van een Recommends (een
   aanbeveling) beloond of bestraft wordt. Dit zou normalerwijze minder
   moeten zijn dan RemoveScore, anders zal aptitude eerder geneigd zijn om
   pakketten te verwijderen dan om hun aanbevelingen onbeantwoord te laten.
   Zie de paragraaf met de naam “Vereisten interactief oplossen” voor
   details.
   Optie: Aptitude::ProblemResolver::UpgradeScore
   Standaard: 30
   Omschrijving: Welk gewicht de probleemoplosser moet toekennen aan het
   opwaarderen (of degraderen) van een pakket naar zijn kandidaatversie
   indien dat pakket niet reeds opgewaardeerd zou worden.
   Optie: Aptitude::Purge-Unused
   Standaard: false
   Omschrijving: Indien deze optie true is en Aptitude::Delete-Unused is ook
   true, dan zullen niet-gebruikte pakketten gewist worden van het systeem,
   wat ook het verwijderen van hun configuratiebestanden en eventuele andere
   belangrijke gegevens inhoudt. Voor meer informatie over welke pakketten
   als “niet-gebruikt” beschouwd worden, zie de paragraaf met de naam
   “Automatisch geïnstalleerde pakketten beheren”. Deze optie kan leiden tot
   het verlies van gegevens! Activeer ze niet, tenzij u weet wat u doet!
   Optie: Aptitude::Recommends-Important
   Standaard: true
   Omschrijving: Dit is een verouderde configuratieoptie die vervangen werd
   door APT::Install-Recommends. Bij het opstarten zal aptitude
   Aptitude::Recommends-Important (als het bestaat) kopiëren naar
   APT::Install-Recommends en vervolgens Aptitude::Recommends-Important
   verwijderen uit uw gebruikersconfiguratiebestand.
   Optie: Aptitude::Safe-Resolver::No-New-Installs
   Standaard: false
   Omschrijving: De oplosser zal geen toelating hebben om pakketten te
   installeren die momenteel niet geïnstalleerd zijn als deze optie op true
   ingesteld staat en de probleemoplosser in “veilige” modus gestart werd via
   --safe-resolver of via de commandoregelactie safe-upgrade.
   Optie: Aptitude::Safe-Resolver::No-New-Upgrades
   Standaard: false
   Omschrijving: De oplosser zal geen toelating hebben om vereisten op te
   lossen via het opwaarderen van pakketten als deze optie geactiveerd is en
   de probleemoplosser in “veilige” modus gestart werd via --safe-resolver of
   via de commandoregelactie safe-upgrade.
   Optie: Aptitude::Sections::Descriptions
   Standaard: Zie $prefix/share/aptitude/section-descriptions
   Omschrijving: Deze optie is een groep waarvan de elementen de weergegeven
   beschrijving definiëren van secties wanneer men voor de pakkethiërarchie
   de groeperingsrichtlijn “section” gebruikt. Beschrijvingen worden
   toegewezen aan sectiebomen op basis van de laatste component van de naam:
   bijvoorbeeld, een element van deze groep met als naam “games”, zal
   gebruikt worden voor de beschrijvingen van de secties “games”,
   “non-free/games” en “non-free/desktop/games”. In de tekst die een sectie
   beschrijft, zal de tekenreeks “\n” vervangen worden door een regeleinde en
   de tekenreeks “''” door een dubbel aanhalingsteken.
   Optie: Aptitude::Sections::Top-Sections
   Standaard: "main"; "contrib"; "non-free"; "non-US";
   Omschrijving: Een configuratiegroep waarvan de elementen de namen zijn van
   de secties die op het basisniveau in het archief bestaan. De
   groeperingsrichtlijnen “topdir”, “subdir” en “subdirs” gebruiken deze
   lijst om sectievelden te interpreteren: indien het eerste element van het
   sectiepad van een pakket niet in deze lijst voorkomt of indien dat pad
   slechts uit één element bestaat, dan zal het pakket gegroepeerd worden op
   basis van de aanname dat het eerste element uit deze groep ook het eerste
   element van het sectiepad van dat pakket is. Bijvoorbeeld, indien het
   eerste element van Top-Sections “main” is, dan zal een pakket dat als
   sectie “games/arcade” heeft, behandeld worden alsof zijn sectie
   “main/games/arcade” was.
   Optie: Aptitude::Simulate
   Standaard: false
   Omschrijving: In commandoregelmodus doet dit aptitude de acties die
   uitgevoerd zouden worden, enkel weergeven (eerder dan ze effectief uit te
   voeren). In de visuele interface doet dit aptitude in de alleen-lezen
   modus opstarten, ongeacht of u root bent of niet. Dit is het equivalent
   van de commandoregeloptie -s.
   Optie: Aptitude::Spin-Interval
   Standaard: 500
   Omschrijving: Het aantal millisecondes tussen de verversingen van het
   “draaiwieltje” dat zichtbaar is terwijl de probleemoplosser aan het werk
   is.
   Optie: Aptitude::Suggests-Important
   Standaard: false
   Omschrijving: Dit is een verouderde optie. Gebruik in de plaats daarvan
   APT::AutoRemove::SuggestsImportant. Deze optie instellen op true heeft
   hetzelfde effect als APT::AutoRemove::SuggestsImportant op true instellen.
   Optie: Aptitude::Suppress-Read-Only-Warning
   Standaard: false
   Omschrijving: Indien deze optie false is, zal aptitude een waarschuwing
   tonen bij de eerste keer dat u de toestand van pakketten tracht te
   wijzigen terwijl het programma in alleen-lezen modus uitgevoerd wordt.
   Optie: Aptitude::Theme
   Standaard:
   Omschrijving: Het door aptitude te gebruiken thema. Zie de paragraaf met
   de naam “Thema's” voor meer informatie.
   Optie: Aptitude::Track-Dselect-State
   Standaard: true
   Omschrijving: Indien deze optie ingesteld werd op true, zal aptitude
   trachten te achterhalen of met behulp van dselect of dpkg een wijziging
   aan de toestand van een pakket werd doorgevoerd: indien u bijvoorbeeld een
   pakket verwijdert met dpkg, zal aptitude niet proberen het opnieuw te
   installeren. Noteer dat hierbij soms fouten kunnen gemaakt worden.
   Optie: Aptitude::UI::Advance-On-Action
   Standaard: false
   Omschrijving: Indien deze optie op true ingesteld staat en de toestand van
   een pakket gewijzigd wordt (het wordt bijvoorbeeld gemarkeerd om
   geïnstalleerd te worden), zal aptitude de accentueringsbalk verplaatsen
   naar het volgende pakket uit de huidige groep.
   Optie: Aptitude::UI::Auto-Show-Reasons
   Standaard: true
   Omschrijving: Als deze optie op true ingesteld is en er een pakket
   geselecteerd wordt dat defect is of andere pakketten blijkt defect te
   maken, zullen in het informatiegebied automatisch een aantal mogelijke
   redenen daarvoor getoond worden.
   Optie: Aptitude::UI::Default-Grouping
   Standaard:
   filter(missing),status,section(subdirs,passthrough),section(topdir)
   Omschrijving: Stelt het standaard groeperingsbeleid in voor pakketlijsten.
   Zie de paragraaf met de naam “De pakkethiërarchie aanpassen” voor
   bijkomende informatie over groeperingsrichtlijnen.
   Optie: Aptitude::UI::Default-Package-View
   Standaard:
   Omschrijving: Deze optie is een groep waarvan de elementen de
   standaardopmaak van het weergavescherm van aptitude definiëren. Zie de
   paragraaf met de naam “De schermopmaak aanpassen” voor meer informatie.
   Optie: Aptitude::UI::Default-Preview-Grouping
   Standaard: action
   Omschrijving: Stelt voor voorafbeeldingen het standaard groeperingsbeleid
   in. Zie de paragraaf met de naam “De pakkethiërarchie aanpassen” voor
   bijkomende informatie over groeperingsrichtlijnen.
   Optie: Aptitude::UI::Default-Sorting
   Standaard: name
   Omschrijving: Het standaard sorteringsbeleid voor pakketweergaven. Zie de
   paragraaf met de naam “Aanpassen hoe pakketten gesorteerd worden” voor
   meer informatie.
   Optie: Aptitude::UI::Description-Visible-By-Default
   Standaard: true
   Omschrijving: Bij de eerste weergave van een pakketlijst zal het
   informatiegebied (dat gewoonlijk de uitgebreide beschrijving van het
   actuele pakket bevat) zichtbaar zijn als deze optie true is en onzichtbaar
   als ze false is.
   Optie: Aptitude::UI::Exit-On-Last-Close
   Standaard: true
   Omschrijving: Indien deze optie true is en alle actieve weergaven gesloten
   worden, zal aptitude afsluiten. Anders zal aptitude pas afsluiten als u
   het commando Acties → Afsluiten (Q) geeft. Zie de paragraaf met de naam
   “Met verschillende weergaven werken” voor meer informatie.
   Optie: Aptitude::UI::Fill-Text
   Standaard: false
   Omschrijving: Indien deze optie true is, zal aptitude beschrijvingen zo
   opmaken dat iedere regel exact de breedte van het scherm inneemt.
   Optie: Aptitude::UI::Flat-View-As-First-View
   Standaard: false
   Omschrijving: Indien deze optie true is, zal aptitude bij het opstarten
   een vlakke weergave tonen in plaats van de standaardweergave.
   Optie: Aptitude::UI::HelpBar
   Standaard: true
   Omschrijving: Indien deze optie true is, zal bovenaan het scherm een regel
   weergegeven worden met informatie over de belangrijkste toetsaanslagen.
   Optie: Aptitude::UI::Incremental-Search
   Standaard: true
   Omschrijving: Indien deze optie true is, zal aptitude “incrementele”
   zoekacties uitvoeren: terwijl u een zoekpatroon intypt, zal het programma
   zoeken naar het volgende pakket dat beantwoordt aan wat u tot dan getypt
   heeft.
   Optie: Aptitude::UI::InfoAreaTabs
   Standaard: false
   Omschrijving: Indien deze optie true is, zal aptitude bovenaan het
   informatiegebied (het gebied onderaan het scherm) tabs weergeven die de
   verschillende mogelijke modi omschrijven waarop dat gebied ingesteld kan
   worden.
   Optie: Aptitude::UI::Keybindings
   Standaard:
   Omschrijving: Dit is een groep waarvan de elementen de relatie beschrijven
   tussen toetsaanslagen en commando's in aptitude. Zie voor meer informatie
   de paragraaf met de naam “Sneltoetsen aanpassen”.
   Optie: Aptitude::UI::Menubar-Autohide
   Standaard: false
   Omschrijving: Indien deze optie op true ingesteld werd, zal de menubalk
   onzichtbaar zijn als hij niet in gebruik is.
   Optie: Aptitude::UI::Minibuf-Download-Bar
   Standaard: false
   Omschrijving: Indien deze optie op true ingesteld is, zal aptitude een
   minder opdringerig mechanisme gebruiken voor het weergeven van de
   voortgang van downloads: onderaan het scherm zal een balk verschijnen die
   de huidige downloadstatus weergeeft. Op q drukken terwijl het downloaden
   bezig is, zal dat afbreken.
   Optie: Aptitude::UI::Minibuf-Prompts
   Standaard: false
   Omschrijving: Indien deze optie true is, zullen sommige keuzemogelijkheden
   (zoals ja/nee-vragen en multiplechoicevragen) weergegeven worden onderaan
   het scherm in plaats van in dialoogvensters.
   Optie: Aptitude::UI::New-Package-Commands
   Standaard: true
   Omschrijving: Indien deze optie op false ingesteld is, zullen commando's
   zoals Pakket → Installeren (+) een gedrag vertonen dat hetzelfde is als in
   oudere versies van aptitude en dat nu in onbruik geraakt is.
   Optie: Aptitude::UI::Package-Display-Format
   Standaard: %c%a%M %p %Z %v %V
   Omschrijving: Deze optie regelt de indelingstekenreeks die gebruikt wordt
   bij het weergeven van pakketten in pakketlijsten. Voor meer informatie
   over indelingstekenreeksen, zie de paragraaf met de naam “Aanpassen hoe
   pakketten weergegeven worden”.
   Optie: Aptitude::UI::Package-Header-Format
   Standaard: %N %n @ %H #%B %u %o
   Omschrijving: Deze optie regelt de indelingstekenreeks die gebruikt wordt
   bij de weergave van de kopregel van pakketlijsten (nl. de regel die tussen
   de menubalk en de pakketlijst staat). Voor meer informatie over
   indelingstekenreeksen, zie de paragraaf met de naam “Aanpassen hoe
   pakketten weergegeven worden”.
   Optie: Aptitude::UI::Package-Status-Format
   Standaard: %d
   Omschrijving: Deze optie regelt de indelingstekenreeks die gebruikt wordt
   bij de weergave van de statusregel van pakketlijsten (nl. de regel die
   tussen de pakketlijst en het informatiegebied staat). Voor meer informatie
   over indelingstekenreeksen, zie de paragraaf met de naam “Aanpassen hoe
   pakketten weergegeven worden”.
   Optie: Aptitude::UI::Pause-After-Download
   Standaard: OnlyIfError
   Omschrijving: Indien deze optie true is, zal aptitude een bericht
   weergeven als het klaar is met het ophalen van pakketten en u vragen of u
   wilt voortgaan met de installatie. Indien ze op OnlyIfError ingesteld
   werd, zal enkel een bericht getoond worden als een download mislukte. In
   het andere geval, als de optie op false ingesteld staat, zal aptitude
   onmiddellijk naar het volgende scherm doorgaan nadat een download voltooid
   werd.
   Optie: Aptitude::UI::Preview-Limit
   Standaard:
   Omschrijving: De standaardfilter die op het scherm met de voorafbeelding
   toegepast wordt. Zie de paragraaf met de naam “Zoekpatronen” voor details
   over zijn indeling.
   Optie: Aptitude::UI::Prompt-On-Exit
   Standaard: true
   Omschrijving: Indien deze optie true is, zal aptitude een bevestiging
   vragen vooraleer het afgesloten wordt.
   Optie: Aptitude::UI::Styles
   Standaard:
   Omschrijving: Dit is een configuratiegroep waarvan de inhoud bepaalt welke
   tekststijlen gebruikt worden door aptitude bij het weergeven van
   informatie. Zie voor meer informatie de paragraaf met de naam “De kleur en
   de vormgeving van tekst aanpassen”.
   Optie: Aptitude::UI::ViewTabs
   Standaard: true
   Omschrijving: Indien deze optie op false ingesteld werd, zal aptitude
   bovenaan het scherm geen “tabs” weergeven met de beschrijving van de
   weergaven die momenteel actief zijn.
   Optie: Aptitude::Warn-Not-Root
   Standaard: true
   Omschrijving: Indien deze optie true is, zal aptitude opmerken wanneer u
   over de rechten van root moet beschikken om iets te doen en u vragen of u
   wilt overschakelen op het account van root als u momenteel nog niet root
   bent. Zie de paragraaf met de naam “Systeembeheerder (root) worden” voor
   meer informatie.
   Optie: DebTags::Vocabulary
   Standaard: /usr/share/debtags/vocabulary
   Omschrijving: De locatie van het bestand met het vocabularium van debtags;
   wordt gebruikt om de metadata over de categorisering van pakketten op te
   halen.
   Optie: Dir::Aptitude::state
   Standaard: /var/lib/aptitude
   Omschrijving: De map waarin informatie over de persistente toestand van
   aptitude opgeslagen wordt.
   Optie: Quiet
   Standaard: 0
   Omschrijving: Dit regelt de mate van geruisloosheid van de
   commandoregelmodus. Hoe hoger de waarde hoe meer voortgangsindicatoren er
   weggelaten worden.

  Thema's

   In aptitude is een thema gewoon een geheel van instellingen die “bij
   elkaar horen”. Thema's hebben voorrang op de standaardwaarden van opties:
   indien een optie niet ingesteld werd in het systeemconfiguratiebestand of
   in uw persoonlijk configuratiebestand, zal aptitude de instelling uit het
   huidige thema gebruiken als die daarin voorkomt en pas in het andere geval
   de standaardwaarde gebruiken.

   Een thema is gewoon een benoemde groep onder Aptitude::Themes. Elke
   configuratieoptie uit de groep zal voorrang hebben op de overeenkomstige
   optie uit de globale configuratie. Bijvoorbeeld, indien het thema Dselect
   geselecteerd werd, zal de optie
   Aptitude::Themes::Dselect::Aptitude::UI::Package-Display-Format voorrang
   hebben op de standaardwaarde van de optie
   Aptitude::UI::Package-Display-Format.

   Om een thema te selecteren moet u de configuratieoptie Aptitude::Theme
   instellen op de naam van het thema. Bijvoorbeeld,

 Aptitude::Theme Vertical-Split;

   De volgende thema's worden met aptitude in
   /usr/share/aptitude/aptitude-defaults meegeleverd:

   Dselect

           Dit thema doet aptitude er meer uitzien en zich gedragen als de
           oudere pakketbeheerder dselect:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 --\ Geïnstalleerde Pakketten
   --\ Prioriteit required
     --\ base - Het basissysteem van Debian
 c   base  base-file 3.0.16      3.0.16      Debian base system miscellaneous fil
 c   base  base-pass 3.5.7       3.5.7       Debian basissysteem hoofd wachtwoord en
 c   base  bash      2.05b-15    2.05b-15    The GNU Bourne Again SHell
 c   base  bsdutils  1:2.12-7    1:2.12-7    Basic utilities from 4.4BSD-Lite
 c   base  coreutils 5.0.91-2    5.0.91-2    The GNU core utilities
 c   base  debianuti 2.8.3       2.8.3       Miscellaneous utilities specific to
 c   base  diff      2.8.1-6     2.8.1-6     Hulpprogramma's voor bestandsvergelijking
 base-files                      geïnstalleerd ; geen                       required
 This package contains the basic filesystem hierarchy of a Debian system, and
 several important miscellaneous files, such as /etc/debian_version,
 /etc/host.conf, /etc/issue, /etc/motd, /etc/profile, /etc/nsswitch.conf, and
 others, and the text of several common licenses in use on Debian systems.







   Vertical-Split

           Dit thema reorganiseert de weergave: in plaats van de beschrijving
           van het huidige pakket onder de pakketlijst weer te geven, wordt
           ze rechts van de pakketlijst weergegeven. Dit thema is nuttig voor
           zeer brede terminals en wellicht ook bij het bewerken van de
           ingebouwde hiërarchie onder de pakketten.

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 aptitude 0.2.14.1
 --\ Installed Packages                  Moderne computers ondersteunen het Geavanceerde  #
   --\ admin - Administrative utilities  Configuratie en Energie Interface
     --\ main - The main Debian archive  (ACPI) zodat intelligent
 i   acpid         1.0.3-19   1.0.3-19   energiebeheer op uw systeem mogelijk wordt
 i   alien         8.44       8.44       en om de status van de batterij
 i   anacron       2.3-9      2.3-9
 i   apt-show-vers 0.07       0.07       en de configuratie op te vragen.
 i A apt-utils     0.5.25     0.5.25     ACPID is een compleet, flexibel en uitbreidbaar
 i   apt-watch     0.3.2-2    0.3.2-2    daemon voor het leveren van ACPI-gebeurtenissen.
 i   aptitude      0.2.14.1-2 0.2.14.1-2 Het luistert op de netlink-interface (of het
 i   at            3.1.8-11   3.1.8-11   verouderde bestand /proc/acpi/event) en, als er
 i   auto-apt      0.3.20     0.3.20     een gebeurtenis plaatsvindt, voert het programma's
 i   cron          3.0pl1-83  3.0pl1-83  uit om de gebeurtenis te verwerken.
 i   debconf       1.4.29     1.4.29     De programma's die uitgevoerd worden
 i   debconf-i18n  1.4.29     1.4.29     kunnen geconfigureerd worden door
 i A debootstrap   0.2.39     0.2.39     beheerders of softwarepakketten.
 i A deborphan     1.7.3      1.7.3
 i   debtags       0.16       0.16
 i A defoma        0.11.8     0.11.8
 i   discover      2.0.4-5    2.0.4-5
 Instelprogramma geavanceerde gebeurtenissen en energiebeheer (ACPI)

Mijnenveger spelen

   Mocht u het beu geraken om pakketten te installeren en te verwijderen, dan
   biedt aptitude u een ingebouwde versie van het klassieke spel
   “Mijnenveger”. Om het te starten moet u Acties → Mijnenveger spelen
   selecteren en het openingsbord van Mijnenveger zal zichtbaar worden:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 Mijnenveger                                              10/10 mijnen  13 seconden





                                    +--------+
                                    |        |
                                    |        |
                                    |        |
                                    |        |
                                    |        |
                                    |        |
                                    |        |
                                    |        |
                                    +--------+






   Binnenin de rechthoek die op het scherm verschijnt, zitten tien mijnen
   verborgen. De uitdaging is om op basis van intuïtie, logisch redeneren en
   geluk uit te zoeken waar die mijnen zich bevinden, zonder er een te doen
   afgaan! Om dat te bereiken, moet u alle vakjes zonder mijnen openleggen.
   Terwijl u dat doet vergaart u belangrijke informatie over in welke vakjes
   er mijnen verborgen zitten. Wees echter voorzichtig: een vakje met een
   mijn openleggen, doet die afgaan, waardoor het spel onmiddellijk voorbij
   is!

   Om een vakje open te leggen (en te weten te komen of er een mijn verborgen
   zit), moet u het vakje selecteren met de pijltjestoetsen en op Enter
   drukken:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 Mijnenveger                                              10/10 mijnen  387 seconden





                                    +--------+
                                    | 2......|
                                    | 2111...|
                                    |    1...|
                                    | 1111...|
                                    |11...111|
                                    |...113  |
                                    |1122    |
                                    |        |
                                    +--------+






   Zoals u kunt zien, zijn in deze schermafdruk sommige verborgen (blanco)
   delen van het bord onthult. De vakjes met een . zijn vakjes die zich niet
   naast een mijn bevinden. De getallen in de overige vakjes geven aan
   hoeveel mijnen er zich naast dat vakje bevinden.

   Indien u denkt te weten waar er zich een mijn bevindt, kunt u er een
   “vlag” op plaatsen. Om dit te doen selecteert u het verdachte vakje en
   drukt u op f. In de schermafdruk hieronder besliste ik bijvoorbeeld dat
   het vakje aan de linkerkant van het bord verdacht leek...

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 Mijnenveger                                              9/10 mijnen  961 seconden





                                    +--------+
                                    | 2......|
                                    | 2111...|
                                    |    1...|
                                    |F1111...|
                                    |11...111|
                                    |...113  |
                                    |1122    |
                                    |        |
                                    +--------+






   Zoals u kunt zien staat er nu een F in het geselecteerde vakje. Het is
   niet langer mogelijk om dit vakje open te leggen, zelfs niet per ongeluk,
   totdat de vlag verwijderd werd (door opnieuw op f te drukken). Nadat u
   vlaggen geplaatst heeft op alle mijnen die zich naast een vakje bevinden
   (bijvoorbeeld de vakjes die naast de vlag hierboven het kenteken 1
   hebben), kunt u rond het vakje “vegen”. Dit is gewoon een handige
   sneltoets om alle vakjes die er naast liggen open te leggen (behalve die
   met een vlag natuurlijk). Laten we bijvoorbeeld vegen rond de 1 hierboven:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 Mijnenveger                                              9/10 mijnen  2290 seconden





                                    +--------+
                                    | 2......|
                                    | 2111...|
                                    |221 1...|
                                    |F1111...|
                                    |11...111|
                                    |...113  |
                                    |1122    |
                                    |        |
                                    +--------+






   Gelukkig had ik juist gegokt (was het wel een gok?) wat de plaats van de
   mijn betreft. Mocht ik fout geweest zijn, dan was ik onmiddellijk
   verloren:

  Acties  Ongedaan maken  Pakket  Zoeken  Opties  Weergaven  Hulp
 f10: Menu  ?: Hulp  q: Afsluiten  u: Bijwerken  g: Ophalen/Inst./Verw. Pakketten
 Mijnenveger                                   Mijnenveger    Verloren in 2388 seconden





                                    +--------+
                                    |^2......|
                                    |^2111...|
                                    |221^1...|
                                    |^1111...|
                                    |11...111|
                                    |...113^ |
                                    |1122* ^ |
                                    | ^ ^   ^|
                                    +--------+






   Als u verliest, wordt de locatie van alle mijnen zichtbaar: niet-ontplofte
   mijnen worden met het symbool accent circonflexe (^) weergegeven, en die
   waarop u “trapte”, wordt aangeduid met een asterisk (*).

   --------------------------------------------------------------------------

   ^[7] Het is me een genoegen te kunnen zeggen dat het aantal vragen van die
   aard kort na de initiële publicatie van deze gids snel verminderde. Het
   zou een gelukkig voorval zijn, mocht er tussen beide gebeurtenissen een
   verband bestaan.

   ^[8] Hiernaar wordt soms verwezen met het begrip “installatieoperatie”,
   ook al kan het zijn dat u niet enkel pakketten installeert, maar er ook
   opwaardeert of verwijdert.

   ^[9] Zoals eerder reeds aangegeven, is dit geen indicatie voor het feit
   dat de pakketten in het archief veilig of zelfs niet kwaadaardig zijn,
   maar het is eerder een aanwijzing dat ze echt zijn.

   ^[10] Meer precies zullen ze verwijderd worden als er via Depends
   (vereiste), PreDepends (voorvereiste), of Recommends (aanbeveling) tussen
   hen en een handmatig geïnstalleerd pakket geen enkele
   afhankelijkheidsrelatie meer vastgesteld wordt. Indien
   APT::AutoRemove::SuggestsImportant op true ingesteld staat, zal een
   relatie op het niveau Suggests (suggestie) volstaan om een pakket
   geïnstalleerd te laten.

   ^[11] Of wanneer de onmiddellijke oplossing uitgeschakeld is.

   ^[12] Het pakket met de hoogste dpkg-prioriteit, niet het pakket met de
   hoogste apt pin-prioriteit.

   ^[13] Deze limiet werd ingesteld omdat nog meer complexe kostenstructuren
   het moeilijk zouden maken om de oplosser te optimaliseren. Uit toekomstige
   versies van het programma zouden sommige restricties verwijderd kunnen
   worden als ze niet noodzakelijk blijken te zijn.

   ^[14] aptitude zal een komma enkel als een speciaal teken interpreteren
   als er een tweede argument opgegeven is, zodat (bijvoorbeeld)
   “?name(apt,itude)” zal zoeken naar de tekenreeks “apt,itude” in het veld
   Naam van de pakketten.

   Hoewel dit gedrag duidelijk omschreven is, kan het toch tot verrassingen
   leiden. Ik beveel aan om tekenreeksen tussen aanhalingstekens te gebruiken
   voor elk patroon dat lettertekens bevat die een speciale betekenis kunnen
   hebben.

   ^[15] De lettertekens met een bijzondere betekenis zijn: “+”, “-”, “.”,
   “(”, “)”, “|”, “[”, “]”, “^”, “$”, en “?”. Merk op dat sommige daarvan ook
   metatekens voor aptitude zijn. Indien u dus (bijvoorbeeld) een letterlijke
   “|” wenst te typen, moet u een dubbele stuurcode (escape) gebruiken:
   “?description(\~|)” zal een overeenkomst opleveren met pakketten waarvan
   de beschrijving het letterteken verticaal streepje (“|”) bevat.

   ^[16] Ook de backslash stuurcodes (escapes) \\, \n en \t kunnen gebruikt
   worden.

   ^[17] Scherpzinnige lezers zullen opmerken dat dit in essentie een manier
   is om expliciet de variabele in de λ-termen die aan de term beantwoordt,
   te benoemen. Een typische term zou de vorm hebben “λ x . name-equals(x,
   patroon)”. Dit een expliciet doel geven, maakt x in de zoektaal zichtbaar.

   ^[18] Dit wordt grotendeels met het oog op de symmetrie met ?true
   geïmplementeerd.

   ^[19] Momenteel wordt merktekens geven niet ondersteund. Deze stuurcode is
   voor toekomstig gebruik bedoeld.

   ^[20] Op sommige terminals zal een “gele” achtergrond er in werkelijkheid
   bruin uitzien.

                 Hoofdstuk 3. Veel gestelde vragen bij aptitude

        “Wat ... is uw naam?”                                             

        “Ik ben Arthur, Koning van de Britten.”

        “Wat ... is uw queeste?”

        “Ik zoek de Heilige Graal!”

        “Wat ... is de snelheid waarmee een niet-beladen zwaluw vliegt?”

        “Wat bedoelt u? Een Afrikaanse of een Europese zwaluw?”

        “Huh? Ik ... Ik weet het n---AAAAAUUUGGGHH!”
                                          -- Monty Python en de Heilige Graal

   3.1. Hoe kan ik exact één pakket op naam vinden?

   3.2. Hoe kan ik defecte pakketten vinden?

   3.3. Ik wil tekst selecteren. Waarom laat aptitude me de muis niet
   uitschakelen?

   3.1. Hoe kan ik exact één pakket op naam vinden?
        Zoals in de paragraaf met de naam “Zoekpatronen” aangegeven werd, is
        de tekst die u invoert als u op naam zoekt naar een pakket, eigenlijk
        een reguliere expressie. Dus zal het zoekpatroon “^naam$” enkel
        overeenkomen met een pakket met de naam naam.

        U kunt bijvoorbeeld apt (maar niet aptitude of synaptic) vinden door
        ^apt$ in te geven. U kunt g++ (maar niet g++-2.95 of g++-3.0) vinden
        door ^g\+\+$ in te geven.
   3.2. Hoe kan ik defecte pakketten vinden?
        Gebruik het commando Zoeken → Zoek Defecte (b).
   3.3. Ik wil tekst selecteren. Waarom laat aptitude me de muis niet
        uitschakelen?
        Normaal gezien kunt u geen tekst selecteren in een x-terminal als er
        in die terminal een programma uitgevoerd wordt (zoals aptitude) dat
        de muis gebruikt. U kunt dit gedrag echter omzeilen en een selectie
        maken door de Shift-toets ingedrukt te houden terwijl u op de
        terminal klikt.

                              Hoofdstuk 4. Credits

           Niemand herinnert zich de zanger. Het liedje blijft.        
                                          -- Terry Pratchett, De Laatste Held

   Dit onderdeel eert sommige mensen die bijgedragen hebben aan aptitude in
   de loop van zijn bestaan.

   [Opmerking] Opmerking
               Dit onderdeel is momenteel eerder onvolledig en zal wellicht
               na verloop van tijd bijgewerkt en uitgebreid worden (vooral
               voor het vertaalwerk ontbreken heel wat vermeldingen omwille
               van het hoge aantal bronnen in verband met vertalingen ^[21]).
               Indien u denkt dat u in deze lijst vermeld zou moeten worden,
               stuur dan een e-mail naar <dburrows@debian.org> met een uitleg
               voor waarom u dat denkt.

   Vertaling en internationalisering

   Braziliaanse vertaling

           Andre Luis Lopes, Gustavo Silva

   Chinese vertaling

           Carlos Z.F. Liu

   Tsjechische vertaling

           Miroslav Kure

   Deense vertaling

           Morten Brix Pedersen, Morten Bo Johansen

   Nederlandse vertaling

           Luk Claes

   Finse vertaling

           Jaakko Kangasharju

   Franse vertaling

           Martin Quinson, Jean-Luc Coulon

   Duitse vertaling

           Sebastian Schaffert, Erich Schubert, Sebastian Kapfer, Jens Seidel

   Italiaanse vertaling

           Danilo Piazzalunga

   Japanse vertaling

           Yasuo Eto, Noritada Kobayashi

   Litouwse vertaling

           Darius ?itkevicius

   Poolse vertaling

           Michal Politowski

   Portugese vertaling

           Nuno Sénica, Miguel Figueiredo

   Noorse vertaling

           Håvard Korsvoll

   Spaanse vertaling

           Jordi Malloch, Ruben Porras

   Zweedse vertaling

           Daniel Nylander

   Initiële patch voor internationalisering

           Masato Taruishi

   triage en onderhoud van het internationaliseringsproces

           Christian Perrier

   Documentatie

   Gebruikershandleiding

           Daniel Burrows

   Programmering

   Programmaontwerp en -uitwerking

           Daniel Burrows

   Ondersteuning voor het veld Breaks van dpkg

           Ian Jackson, Michael Vogt

   --------------------------------------------------------------------------

   ^[21] Het moet mogelijk zijn om een behoorlijk volledige lijst van
   vertalers die een bijdrage geleverd hebben, samen te stellen aan de hand
   van het Changelog-bestand, de erin voorkomende verwijzingen naar het
   bugopvolgingssysteem van Debian en de revisiegeschiedenis van aptitude,
   maar dit vraagt behoorlijk wat tijd die er momenteel niet is.

                      Referentiegids voor de commandoregel

   --------------------------------------------------------------------------

   Inhoudsopgave

   aptitude — hoogwaardige interface voor de pakketmanager

   aptitude-create-state-bundle — de huidige toestand van aptitude
   samenbundelen

   aptitude-run-state-bundle — pak een statusbundel van aptitude uit en
   gebruik dit om er aptitude op uit te voeren.

Name

   aptitude — hoogwaardige interface voor de pakketmanager

Samenvatting

   aptitude [opties...] { autoclean | clean | forget-new | keep-all | update
   }

   aptitude [opties...] { full-upgrade | safe-upgrade } [pakketten...]

   aptitude [options...] { build-dep | build-depends | changelog | download |
   forbid-version | hold | install | markauto | purge | reinstall | remove |
   show | showsrc | source | unhold | unmarkauto | versions } pakketten...

   aptitude extract-cache-subset uitvoer-map pakketten...

   aptitude [opties...] search patronen...

   aptitude [opties...] { add-user-tag | remove-user-tag } merkteken
   pakketten...

   aptitude [opties...] { why | why-not } [patronen...] pakket

   aptitude [-S bestandsnaam] [ --autoclean-on-startup | --clean-on-startup |
   -i | -u ]

   aptitude help

Omschrijving

   aptitude is een interface in tekstmodus voor het Debian GNU/Linux
   pakketsysteem.

   Het laat de gebruiker toe de pakketlijst te bekijken en taken van
   pakketbeheer uit te voeren, zoals het installeren, opwaarderen en
   verwijderen van pakketten. Acties kunnen uitgevoerd worden met behulp van
   een visuele interface of aan de commandoregel.

Acties aan de commandoregel

   het eerste argument dat niet met een streepje (“-”) begint, wordt als een
   actie beschouwd die door het programma uitgevoerd moet worden. Indien er
   aan de commandoregel geen actie ingegeven wordt, zal aptitude in visuele
   modus opstarten.

   De volgende acties kunnen gebruikt worden:

   install

           Installeer een of meer pakketten. De pakketten moeten na het
           commando “install” vermeld worden. Indien de naam van een pakket
           een tilde-teken (“~”) of een vraagteken (“?”) bevat, zal dat als
           een zoekpatroon behandeld worden en elk pakket dat aan dat patroon
           beantwoordt zal geïnstalleerd worden (raadpleeg de sectie over
           “Zoekpatronen” in de referentiehandleiding van aptitude).

           Om een specifieke versie van een pakket te selecteren, voegt u
           “=versie” toe aan de pakketnaam: bijvoorbeeld, “aptitude install
           apt=0.3.1”. Op dezelfde manier kunt u een pakket uit een specifiek
           archief selecteren door “/archief” toe te voegen aan de
           pakketnaam: bijvoorbeeld, “aptitude install apt/experimental”. U
           kunt niet terzelfder tijd een archief en een versie opgeven voor
           een pakket.

           Niet elk pakket dat aan de commandoregel opgegeven wordt, moet
           geïnstalleerd worden. U kunt aptitude opdragen iets anders te doen
           met een pakket door aan de naam van het pakket een
           “modificatieaanduiding” toe te voegen. Bijvoorbeeld, aptitude
           remove wesnoth+ zal wesnoth installeren in plaats van het te
           verwijderen. De volgende modificatieaanduidingen kunnen gebruikt
           worden:

                pakket+

                        Installeer pakket.

                        Indien het pakket niet geïnstalleerd was, wordt het
                        gemarkeerd als handmatig geïnstalleerd en de nieuw
                        geïnstalleerde vereisten worden gemarkeerd met de
                        vlag automatisch geïnstalleerd. Indien het pakket of
                        de vereisten reeds geïnstalleerd waren, blijft de
                        markering automatisch geïnstalleerd behouden. Zie
                        voor meer informatie het onderdeel over automatische
                        installaties uit de documentatie.

                pakket+M

                        Installeer pakket en markeer het onmiddellijk als
                        automatisch geïnstalleerd (merk op dat indien niets
                        afhankelijk is van pakket, dit tot gevolg heeft dat
                        het onmiddellijk verwijderd zal worden).

                pakket-

                        Verwijder pakket.

                pakket_

                        Wis pakket: verwijder het en ook de ermee verband
                        houdende configuratie- en databestanden.

                pakket=

                        Bevries pakket: annuleer een eventuele geactiveerde
                        installatie, opwaardering of verwijdering en voorkom
                        dat dit pakket in de toekomst automatisch
                        opgewaardeerd wordt.

                pakket:

                        Behoud pakket op zijn huidige versie: annuleer een
                        eventuele installatie, verwijdering of opwaardering.
                        Anders dan bij een “handhaving” (zie hierboven)
                        worden toekomstige automatische opwaarderingen
                        hierdoor niet tegengehouden.

                pakket&M

                        Markeer pakket als automatisch geïnstalleerd.

                pakket&m

                        Markeer pakket als handmatig geïnstalleerd.

                pakket&BD

                        Installeer de bouwvereisten van een pakket.

           Een bijzondere casus is “install” zonder argumenten, hetgeen een
           uitwerking zal hebben op alle opgeslagen/aanhangige acties.

           [Opmerking] Opmerking
                       Nadat u bij de uiteindelijke vraag om bevestiging Y
                       ingevoerd heeft, zal het commando “install” de door
                       aptitude opgeslagen informatie over de uit te voeren
                       acties, aanpassen. Als u bijvoorbeeld voor pakketten
                       die voordien niet geïnstalleerd waren, de opdracht
                       geeft “aptitude install foo bar” en als vervolgens de
                       installatie mislukt nadat aptitude begonnen was met
                       het downloaden en installeren van pakketten, zult u
                       daarom het commando “aptitude remove foo bar” moeten
                       uitvoeren om terug te gaan naar de vorige toestand (en
                       eventueel de op andere pakketten toegepaste
                       installatie- of opwaarderingsactie, die door de
                       “install”-actie uitgelokt werden, ongedaan maken).

   remove, purge, reinstall

           Deze commando's zijn hetzelfde als “install”, maar passen de
           vermelde actie toe op alle aan de commandoregel opgegeven
           pakketten waarvoor die actie niet opgeheven (overridden) werd.

           Bijvoorbeeld, “aptitude remove '~ndeity'” zal alle pakketten
           verwijderen waarvan de naam “deity” bevat.

   build-depends, build-dep

           Voldoe aan de bouwvereisten van een pakket. Elke pakketnaam kan de
           naam van een bronpakket zijn en in dat geval worden de
           bouwvereisten voor dat bronpakket geïnstalleerd. In het andere
           geval worden binaire pakketten opgezocht zoals bij het commando
           “install” en wordt voldaan aan de bouwvereisten van de
           bronpakketten waaruit deze binaire pakketten gebouwd worden.

           Indien de commandoregelparameter --arch-only gebruikt werd, wordt
           enkel voldaan aan de architectuurgerelateerde bouwvereisten
           (d.w.z. niet Build-Depends-Indep of Build-Conflicts-Indep).

   markauto, unmarkauto

           Markeer pakketten respectievelijk als automatisch of als handmatig
           geïnstalleerd. De pakketten worden op dezelfde manier
           gespecificeerd als bij het commando “install”. Bijvoorbeeld,
           “aptitude markauto '~slibs'” markeert alle pakketten uit de sectie
           “libs” als automatisch geïnstalleerd.

           Zie voor meer informatie over automatisch geïnstalleerde pakketten
           de sectie “Het beheer van automatisch geïnstalleerde pakketten” in
           de referentiehandleiding van aptitude.

   hold, unhold, keep

           Markeer pakketten als te handhaven, ontneem hen deze status, of
           stel in dat ze behouden moeten blijven in hun huidige toestand. De
           pakketten worden op precies dezelfde manier opgegeven als bij het
           commando “install”. Bijvoorbeeld, “aptitude hold '~e^dpkg$'”
           markeert alle pakketten uit het broncodepakket “dpkg” als te
           handhaven.

           Het verschil tussen hold en keep is dat hold ervoor zorgt dat een
           pakket genegeerd zal worden bij toekomstige safe-upgrade en
           full-upgrade commando's, terwijl keep enkel eventuele geplande
           acties voor een pakket annuleert. unhold laat terug toe dat een
           pakket opgewaardeerd wordt door een later gegeven safe-upgrade of
           full-upgrade commando, zonder andere veranderingen aan zijn
           toestand aan te brengen.

   keep-all

           Annuleert alle geplande acties voor alle pakketten. Bij alle
           pakketten die een gevraagde actie van installeren, verwijderen of
           opwaarderen opgeplakt kregen, wordt die aangevraagde toestand
           geannuleerd.

   forget-new

           Vergeet alle interne informatie over welke pakketten “nieuw” zijn
           (het equivalent van het indrukken van “f” in de visuele modus).

           Dit commando aanvaardt pakketnamen en patronen als argument.
           Indien de tekenreeks een tilde-teken (“~”) of een vraagteken (“?”)
           bevat, zal dat als een zoekpatroon behandeld worden en elk pakket
           dat aan dat patroon beantwoordt, zal in aanmerking genomen worden
           (raadpleeg de sectie over “Zoekpatronen” in de
           referentiehandleiding van aptitude).

   forbid-version

           Laat niet toe dat een pakket opgewaardeerd wordt naar een
           specifieke versie, maar sta automatische opwaarderingen naar
           latere versies wel toe. Dit is bijvoorbeeld nuttig om een versie
           van een pakket te vermijden waarvan bekend is dat ze defect is,
           zonder daarvoor handmatig handhavingen te hoeven instellen en op
           te heffen.

           Standaard zou aptitude de verboden versie selecteren als de versie
           waarnaar het pakket normaliter opgewaardeerd zou worden (de
           kandidaatversie). U kunt deze selectie aanpassen door “=versie”
           aan de pakketnaam toe te voegen: bijvoorbeeld, “aptitude
           forbid-version vim=1.2.3.broken-4”.

           Als u op de actie wilt terugkomen, zal het verbod opgeheven worden
           door “aptitude install pakket”. Om de verboden versie te
           verwijderen zonder de kandidaatversie te installeren, moet de
           huidige versie toegevoegd worden: “install pakket=versie”.

   update

           Werkt de lijst bij van de pakketten die beschikbaar zijn bij de
           pakketbronnen van apt (dit is het equivalent van “apt-get update”)

   safe-upgrade

           Waardeert geïnstalleerde pakketten naar hun meest recente versie
           op. Geïnstalleerde pakketten zullen niet verwijderd worden tenzij
           ze niet gebruikt worden (zie de sectie “Het beheer van automatisch
           geïnstalleerde pakketten” in de referentiehandleiding van
           aptitude). Pakketten die momenteel niet geïnstalleerd zijn, kunnen
           geïnstalleerd worden om te voldoen aan vereisten, tenzij de
           commandoregeloptie --no-new-installs gebruikt werd.

           Indien aan de commandoregel geen pakketten opgegeven werden, zal
           aptitude elk pakket trachten op te waarderen dat opgewaardeerd kan
           worden. Anders zal aptitude enkel de opgegeven pakketten trachten
           op te waarderen. Aan het/de pakketten kan een achtervoegsel
           toegevoegd worden, zoals dit met de argumenten voor aptitude
           install het geval is, waardoor u hier aan aptitude nog bijkomende
           instructies kunt meegeven. Bijvoorbeeld, aptitude safe-upgrade
           bash dash- zal proberen het pakket bash op te waarderen en het
           pakket dash te verwijderen.

           Soms is het nodig om een pakket te verwijderen om een ander te
           kunnen opwaarderen. In zulke situaties is dit commando niet in
           staat pakketten op te waarderen. Gebruik het commando full-upgrade
           om zoveel mogelijk pakketten op te waarderen.

   full-upgrade

           Waardeert geïnstalleerde pakketten op naar hun meest recente
           versie en zo nodig kan het daarbij pakketten verwijderen of
           installeren. Het installeert ook nieuwe essentiële of vereiste
           pakketten (pakketten met de markering 'Essential' of 'Required').
           Dit commando gaat minder conservatief te werk dan safe-upgrade,
           hetgeen dus een grotere kans op ongewenste acties geeft.
           Daarentegen is het wel in staat pakketten op te waarderen die niet
           door safe-upgrade opgewaardeerd kunnen worden.

           Indien aan de commandoregel geen pakketten vermeld wordt/worden,
           zal aptitude proberen elk pakket dat opgewaardeerd kan worden, op
           te waarderen. Anders zal aptitude enkel die pakketten proberen op
           te waarderen waarvoor het die opdracht kreeg. Aan het/de pakketten
           kan een achtervoegsel toegevoegd worden, zoals dit met de
           argumenten voor aptitude install het geval is, waardoor u hier aan
           aptitude nog bijkomende instructies kunt meegeven. Bijvoorbeeld,
           aptitude full-upgrade bash dash- zal proberen het pakket bash op
           te waarderen en het pakket dash te verwijderen.

           [Opmerking] Opmerking
                       Origineel werd het commando om historische redenen
                       dist-upgrade genoemd, en aptitude herkent dist-upgrade
                       nog steeds als een synoniem voor full-upgrade.

   search

           Zoekt naar de pakketten die beantwoorden aan een van de patronen
           die aan de commandoregel ingegeven werden. Elk pakket dat
           overeenkomt met een van de opgegeven patronen zal weergegeven
           worden. Bijvoorbeeld, “aptitude search '~N' edit” zal alle
           pakketten opleveren die “nieuw” zijn en alle pakketten die in hun
           naam “edit” hebben. Voor bijkomende informatie in verband met
           zoekpatronen raadpleegt u de sectie “Zoekpatronen” in de
           referentiehandleiding van aptitude.

           [Opmerking] Opmerking
                       In het bovenstaande voorbeeld heeft “aptitude search
                       '~N' edit” twee argumenten na search en dus wordt er
                       gezocht op twee patronen: “~N” en “edit”. Zoals in de
                       referentiegids zoekpatronen beschreven wordt, levert
                       één enkel patroon dat bestaat uit twee met een spatie
                       van elkaar gescheiden subpatronen (zoals “~N edit”),
                       enkel een resultaat op als met beide patronen een
                       overeenkomst gevonden wordt. Dus het commando
                       “aptitude search '~N edit'” zal enkel die “nieuwe”
                       pakketten weergeven die “edit” in hun naam hebben.

           Tenzij u de optie -F meegeeft, zal de uitvoer van aptitude search
           er ongeveer zo uitzien:

 i   apt                             - Advanced front-end for dpkg
 pi  apt-build                       - frontend to apt to build, optimize and in
 cp  apt-file                        - APT package searching utility -- command-
 ihA raptor-utils                    - Raptor RDF Parser utilities

           Elk zoekresultaat wordt op een aparte regel weergegeven. Het
           eerste teken op iedere regel geeft de huidige toestand van het
           pakket weer: de meest voorkomende toestanden zijn p, wat betekent
           dat er op het systeem geen enkel spoor van het pakket bestaat, c,
           wat betekent dat het pakket verwijderd werd maar dat zijn
           configuratiebestanden nog op het systeem aanwezig zijn, i, wat
           betekent dat het pakket geïnstalleerd is, en v, wat betekent dat
           het om een virtueel pakket gaat. Het tweede letterteken is een
           aanduiding voor de opgeslagen actie (en anders wordt een blanco
           spatie weergegeven) die later op het pakket uitgevoerd zal worden,
           waarbij de meest voorkomende acties zijn: i, wat betekent dat het
           pakket geïnstalleerd zal worden, d, wat betekent dat het pakket
           verwijderd zal worden, en p, wat het betekent dat het pakket en
           zijn configuratiebestanden verwijderd zullen worden. Indien het
           derde letterteken een A is, geeft dit aan dat het pakket
           automatisch geïnstalleerd werd.

           Voor een volledige lijst van alle mogelijke vlaggen om een
           toestand of een actie aan te duiden, raadpleegt u de sectie
           “Pakketinformatie opvragen” in de referentiegids van aptitude.
           Voor het aanpassen van de uitvoer van search, verwijzen we naar de
           commandoregelopties -F en --sort.

   show

           Geeft gedetailleerde informatie weer over een of meer pakketten.
           Indien er een tildeteken (“~”) of een vraagteken (“?”) in de
           pakketnaam staat, zal hij als een zoekpatroon geïnterpreteerd
           worden en alle pakketten die eraan beantwoorden zullen weergegeven
           worden (zie de sectie “Zoekpatronen” in de referentiehandleiding
           van aptitude).

           Indien het niveau van detaillering 1 of hoger is (dit betekent dat
           de commandoregel minstens één -v bevat), wordt informatie over
           alle versies van het pakket weergegeven. Anders wordt informatie
           weergegeven over de “kandidaatversie” (de versie die door
           “aptitude install” zou opgehaald worden).

           U kunt informatie laten weergeven over een andere pakketversie
           door =versie toe te voegen aan de pakketnaam. U kunt de versie uit
           een specifiek archief of release laten weergeven door /archief of
           /release toe te voegen aan de pakketnaam: bijvoorbeeld, /unstable
           of /sid. Indien er zo een is, zal enkel de gevraagde versie
           weergegeven worden, ongeacht het niveau van detaillering.

           Indien het niveau van detaillering 1 of hoger is, worden de velden
           architectuur, grootte in gecomprimeerde vorm, bestandsnaam en
           md5-controlesom weergegeven. Indien het niveau van detaillering 2
           of hoger is, zal/zullen de geselecteerde versie(s) eenmaal
           weergegeven worden voor elk archief waarin ze aangetroffen
           wordt/worden.

   showsrc

           Geeft gedetailleerde informatie over een of meer broncodepakketten
           weer.

           Dit is een dun omhulsel rond apt(8).

   source

           Downloadt een of meer broncodepakketten.

           Dit is een dun omhulsel rond apt(8).

   versions

           Geeft de versies weer van de aan de commandoregel opgegeven
           pakketten.

 $ aptitude versions wesnoth
 p   1:1.4.5-1                                                             100
 p   1:1.6.5-1                                    unstable                 500
 p   1:1.7.14-1                                   experimental             1

           Elke versie wordt op een aparte regel weergegeven. De drie meest
           linkse lettertekens geven de huidige toestand en de (eventuele)
           geplande toestand weer en of het een automatisch geïnstalleerd
           pakket betreft. Raadpleeg voor bijkomende informatie over de
           betekenis ervan de documentatie bij aptitude search. Rechts van
           het versienummer ziet u de releases waarin de versie te vinden is
           en de pin-prioriteit van de versie.

           Indien een pakketnaam een tildeteken (“~”) bevat of een vraagteken
           (“?”), zal die geïnterpreteerd worden als een zoekpatroon en
           zullen alle versies die eraan beantwoorden, weergegeven worden
           (zie de sectie “Zoekpatronen” in de referentiehandleiding van
           aptitude). Dit betekent dat bijvoorbeeld aptitude versions '~i'
           alle versies zal weergeven die momenteel op het systeem
           geïnstalleerd zijn en niets anders, zelfs geen andere versies van
           dezelfde pakketten.

 $ aptitude versions '~nexim4-daemon-light'
 Pakket exim4-daemon-light:
 i   4.71-3                                                                100
 p   4.71-4                                       unstable                 500

 Pakket exim4-daemon-light-dbg:
 p   4.71-4                                       unstable                 500

           Indien de invoer een zoekpatroon is of indien meer dan een versie
           van een pakket weergegeven moet worden, zal aptitude de uitvoer
           automatisch per pakket groeperen, zoals hierboven getoond wordt. U
           kunt dit uitzetten via --group-by=none, waardoor aptitude een
           gewone lijst zal weergeven van alle gevonden versies, waarbij
           iedere regel automatisch ook de naam van het pakket zal bevatten:

 $ aptitude versions --group-by=none '~nexim4-daemon-light'
 i   exim4-daemon-light 4.71-3                                             100
 p   exim4-daemon-light 4.71-4                    unstable                 500
 p   exim4-daemon-light-dbg 4.71-4                unstable                 500

           Om de pakketnaam weg te laten, geeft u --show-package-names=never
           op:

 $ aptitude versions --show-package-names=never --group-by=none '~nexim4-daemon-light'
 i   4.71-3                                                                100
 p   4.71-4                                       unstable                 500
 p   4.71-4                                       unstable                 500

           Behalve met de voorgaande opties, kunt u de informatie die voor
           elke versie weergegeven wordt, ook regelen met de
           commandoregeloptie -F. De volgorde waarin versies weergegeven
           worden kan beïnvloed worden met de commandoregeloptie --sort. Om
           te voorkomen dat aptitude de uitvoer in kolommen zou opmaken,
           gebruikt u --disable-columns.

   add-user-tag, remove-user-tag

           Voegt een gebruikerslabel (user tag) toe aan of verwijdert een
           gebruikerslabel van de geselecteerde groep pakketten. Indien een
           pakketnaam een tilde (“~”) of een vraagteken (“?”) bevat, wordt
           hij als een zoekpatroon beschouwd en wordt het merkteken
           toegevoegd aan of verwijderd van alle pakketten die aan het
           zoekpatroon beantwoorden (zie de sectie “Zoekpatronen” in de
           referentiehandleiding van aptitude).

           Gebruikerslabels (user tags) zijn arbitraire tekenreeksen die aan
           een pakket gekoppeld worden. Zij kunnen gebruikt worden met de
           zoekterm ?user-tag(merkteken), waarmee alle pakketten geselecteerd
           worden die een vrij merkteken hebben dat overeenkomt met
           merkteken..

   why, why-not

           Geeft een verklaring waarom een specifiek pakket op het systeem
           geïnstalleerd zou moeten worden of er niet op geïnstalleerd kan
           worden.

           Dit commando zoekt de pakketten op die het opgegeven pakket
           vereisen of die ermee conflicteren. Het geeft een sequentie weer
           van afhankelijkheden die naar het beoogde pakket leiden, samen met
           een aanduiding van de installatiestatus van elk pakket uit de hele
           keten van vereisten:

 $ aptitude why kdepim
 i   nautilus-data Beveelt aan nautilus
 i A nautilus      Beveelt aan desktop-base (>= 0.2)
 i A desktop-base  Suggereert   gnome | kde | xfce4 | wmaker
 p   kde           Vereist    kdepim (>= 4:3.4.3)

           Het commando why zoekt de hele keten van vereisten op die tot de
           installatie leidt van het aan de commandoregel opgegeven pakket,
           zoals hierboven te zien is. Merk in dit geval op dat de door
           aptitude gevonden vereistenrelatie een suggestie (suggests) is.
           Dit is omdat geen enkel momenteel op deze computer geïnstalleerd
           pakket het pakket kdepim echt vereist (depends) of aanbeveelt
           (recommends). Indien er een sterkere vereistenrelatie bestond, had
           aptitude ze weergegeven.

           Daartegenover gaat why-not op zoek naar een keten van vereisten
           die uitmondt in een conflict met het beoogde pakket:

 $ aptitude why-not textopo
 i   ocaml-core          Vereist   ocamlweb
 i A ocamlweb            Vereist   tetex-extra | texlive-latex-extra
 i A texlive-latex-extra Conflicteert met textopo

           Indien een of meer patro(o)nen opgegeven werden (naast het
           verplichte laatste argument dat een geldige pakketnaam moet zijn),
           dan begint aptitude zijn zoektocht bij deze patronen. Dit houdt in
           dat het eerste pakket uit de keten die het weergeeft om uit te
           leggen waarom een pakket wel of niet geïnstalleerd wordt, een
           pakket zal zijn dat aan het patroon in kwestie beantwoordt. De
           patronen worden als pakketnamen geïnterpreteerd, tenzij ze een
           tilde (“~”) of een vraagteken (“?”) bevatten. In dat geval worden
           ze als zoekpatronen behandeld (zie de sectie“Zoekpatronen” in de
           referentiehandleiding van aptitude).

           Indien er geen patronen opgegeven werden, zal aptitude op zoek
           gaan naar ketens van vereisten die starten bij handmatig
           geïnstalleerde pakketten. Dit kan op een treffende manier laten
           zien welke pakketten ertoe geleid hebben, of ertoe zouden leiden,
           dat een bepaald pakket geïnstalleerd werd.

           [Opmerking] Opmerking
                       aptitude why voert geen volledige oplossing van
                       vereistenproblemen uit; het geeft enkel rechtstreekse
                       relaties tussen pakketten weer. Bijvoorbeeld, als A B
                       nodig heeft en C heeft D nodig en B en C conflicteren
                       met elkaar, dan zal “aptitude why-not D” niet het
                       antwoord geven dat “A B vereist, B met C conflicteert
                       en D C vereist”.

           Standaard geeft aptitude enkel de “meest geïnstalleerde, sterkste,
           meest hechte, kortste” keten van vereisten weer. Dit houdt in dat
           het zoekt naar een keten van vereisten die enkel bestaat uit
           pakketten die geïnstalleerd zijn of geïnstalleerd zullen worden.
           Binnen die restrictie zoekt het naar de sterkst mogelijke
           afhankelijkheden. Het zoekt naar een keten van vereisten waarbij
           vereisten waarvoor meerdere alternatieven bestaan (die zich met OR
           tot elkaar verhouden) en Provides (pakketten die voorzien in)
           vermeden worden. Het zoekt de kortste keten van vereisten die aan
           deze criteria beantwoordt. Gaandeweg worden deze regels versoepeld
           tot er een overeenkomst gevonden wordt.

           Als het niveau van detaillering 1 of meer is, dan zullen alle
           verklaringen die aptitude kan vinden, weergegeven worden in
           omgekeerde volgorde van relevantie. Als het niveau van
           detaillering 2 of meer is, zal een echt excessieve hoeveelheid
           debuginformatie naar standaarduitvoer gestuurd worden.

           De terugkeerwaarde van het commando is 0 bij succes, 1 als geen
           verklaring uitgewerkt kon worden en -1 als er zich een fout
           voordeed.

   clean

           Verwijdert alle eerder opgehaalde .deb-bestanden uit de map met de
           pakketcache (gewoonlijk /var/cache/apt/archives).

   autoclean

           Verwijdert alle pakketten uit de cache die niet langer gedownload
           kunnen worden. Dit laat u toe te voorkomen dat de cache na verloop
           van tijd oncontroleerbaar groot zou worden, zonder hem volledig
           leeg te maken.

   changelog

           Downloadt de Debian changelog (log van wijzigingen) voor elk van
           de opgegeven binaire of bronpakketten en geeft die weer.

           Standaard wordt de changelog opgehaald voor de versie die met
           “aptitude install” geïnstalleerd zou worden. U kunt een specifieke
           versie van een pakket selecteren door =versie toe te voegen aan de
           naam van het pakket. U kunt de versie uit een specifiek archief of
           release selecteren door /archief of /release toe te voegen aan de
           naam van het pakket (bijvoorbeeld, /unstable of /sid).

   download

           Downloadt het .deb-bestand van het opgegeven pakket en plaatst het
           in de huidige map.

           Dit is een dun omhulsel rond apt(8).

   extract-cache-subset

           Kopieert de configuratiemap van apt (/etc/apt) en een subset van
           de pakketdatabase naar de opgegeven map. Indien geen pakketten
           opgegeven werden, wordt de volledige pakketdatabase gekopieerd,
           anders enkel de onderdelen ervan die overeenkomen met de genoemde
           pakketten. Elke pakketnaam kan een zoekpatroon zijn en alle
           pakketten die eraan beantwoorden, zullen geselecteerd worden (zie
           de sectie “Zoekpatronen” in de referentiehandleiding van
           aptitude). Eventuele bestaande pakketdatabasebestanden in de map
           waarin de uitvoer terecht komt, zullen overschreven worden.

           Afhankelijkheden die in de paragrafen van binaire pakketten
           vermeld staan, worden herschreven om verwijzingen naar pakketten
           die niet in de geselecteerde set voorkomen, te verwijderen.

   help

           Geeft een korte samenvatting weer van de commando's en opties die
           gebruikt kunnen worden.

Opties

   De volgende opties kunnen gebruikt worden om het gedrag van de hiervoor
   beschreven acties te beïnvloeden. Merk op dat hoewel bij alle commando's
   alle opties geaccepteerd zullen worden, sommige opties voor bepaalde
   commando's niet van toepassing zijn en door die commando's genegeerd
   zullen worden.

   --add-user-tag merkteken

           Bij full-upgrade, safe-upgrade, forbid-version, hold, install,
           keep-all, markauto, unmarkauto, purge, reinstall, remove, unhold
           en unmarkauto: voeg het gebruikerslabel (user tag) merkteken toe
           aan alle pakketten die door dit commando geïnstalleerd, verwijderd
           of opgewaardeerd werden alsof het commando add-user-tag gegeven
           werd.

   --add-user-tag-to merkteken,patroon

           Bij full-upgrade, safe-upgrade forbid-version, hold, install,
           keep-all, markauto, unmarkauto, purge, reinstall, remove, unhold
           en unmarkauto: voeg het gebruikerslabel (user tag) merkteken toe
           aan alle pakketten die beantwoorden aan patroon alsof het commando
           add-user-tag gegeven werd. Het patroon is een zoekpatroon, zoals
           beschreven in de sectie “Zoekpatronen” in de referentiehandleiding
           van aptitude.

           Zo zal bijvoorbeeld het commando aptitude safe-upgrade
           --add-user-tag-to "nieuwe-installatie,?action(install)" het
           merkteken nieuwe-installatie geven aan alle pakketten die met het
           commando safe-upgrade geïnstalleerd werden.

   --allow-new-upgrades

           Als de oplosser in veilige modus gebruikt wordt (d.w.z. als de
           optie --safe-resolver opgegeven werd of als de actie safe-upgrade
           is, of als Aptitude::Always-Use-Safe-Resolver ingesteld werd op
           true), de vereistenoplosser de toelating geven om opwaarderingen
           van pakketten te installeren, ongeacht de waarde van
           Aptitude::Safe-Resolver::No-New-Upgrades.

   --allow-new-installs

           Sta het commando safe-upgrade toe om nieuwe pakketten te
           installeren. Als de oplosser in veilige modus gebruikt wordt
           (d.w.z. als de optie --safe-resolver opgegeven werd of als de
           actie safe-upgrade is, of als Aptitude::Always-Use-Safe-Resolver
           ingesteld werd op true), de vereistenoplosser de toelating geven
           om nieuwe pakketten te installeren. Deze optie is van kracht
           ongeacht de waarde van Aptitude::Safe-Resolver::No-New-Installs.

   --allow-untrusted

           Installeer pakketten afkomstig van onbetrouwbare pakketbronnen
           zonder vragen te stellen. U zou dit enkel mogen gebruiken als u
           weet wat u doet, aangezien het gemakkelijk de veiligheid van uw
           systeem in gevaar zou kunnen brengen.

   --disable-columns

           Deze optie heeft tot effect dat aptitude search en aptitude
           versions hun resultaten weergeven zonder enige vorm van bijzondere
           indeling. Meer in het bijzonder is het zo dat aptitude normaal
           gezien witruimte toevoegt aan zoekresultaten of ze afkapt in een
           poging om ze te doen passen binnen verticale “kolommen”. Als deze
           vlag gebruikt wordt, zal de indeling van elke regel erin bestaan
           dat de indelingsstuurcodes uit de indelingstekenreeks vervangen
           worden door de overeenkomstige tekst, zonder rekening te houden
           met de breedte van de kolommen.

           De eerste paar regels van de uitvoer van het commando “aptitude
           search -F '%p %V' --disable-columns libedataserver” zouden
           bijvoorbeeld als volgt kunnen zijn:

 disksearch 1.2.1-3
 hp-search-mac 0.1.3
 libbsearch-ruby 1.5-5
 libbsearch-ruby1.8 1.5-5
 libclass-dbi-abstractsearch-perl 0.07-2
 libdbix-fulltextsearch-perl 0.73-10

           Zoals in het bovenstaande voorbeeld, is het gebruik van
           --disable-columns vaak nuttig in combinatie met een aangepaste
           weergave-indeling die met de commandoregeloptie -F ingesteld werd.

           Dit komt overeen met de configuratieoptie
           Aptitude::CmdLine::Disable-Columns.

   -D, --show-deps

           Toon bij commando's die pakketten installeren of verwijderen
           (install, full-upgrade, enz.) een korte toelichting bij
           automatische installaties en verwijderingen.

           Dit komt overeen met de configuratieoptie
           Aptitude::CmdLine::Show-Deps.

   -d, --download-only

           Download indien nodig pakketten naar de pakketcache, maar
           installeer of verwijder niets. Standaard wordt de pakketcache
           opgeslagen in /var/cache/apt/archives.

           Dit komt overeen met de configuratieoptie
           Aptitude::CmdLine::Download-Only.

   -F indeling, --display-format indeling

           Specificeert de indeling die gebruikt moet worden om de uitvoer
           van de commando's search en versions weer te geven. Bijvoorbeeld,
           “%p %v %V” opgeven als indeling zal resulteren in het weergeven
           van de naam van het pakket, gevolgd door de momenteel
           geïnstalleerde versie ervan en zijn kandidaatversie (zie voor meer
           informatie de sectie “Aanpassingen maken aan de wijze waarop
           pakketten weergegeven worden” in de referentiehandleiding van
           aptitude).

           De commandoregeloptie --disable-columns is vaak nuttig in
           combinatie met -F.

           Voor search komt dit overeen met de configuratieoptie
           Aptitude::CmdLine::Package-Display-Format. Voor versions komt dit
           overeen met de configuratieoptie
           Aptitude::CmdLine::Version-Display-Format.

   -f

           Doe moeite om de vereisten van defecte pakketten te repareren,
           zelfs als dit het negeren inhoudt van de aan de commandoregel
           gevraagde acties.

           Dit komt overeen met het configuratie-item
           Aptitude::CmdLine::Fix-Broken.

   --full-resolver

           Gebruik de standaard “integrale” oplosser voor het oplossen van
           vereistenproblemen van pakketten als die zich voordoen. In
           tegenstelling tot de oplosser in “veilige” modus die door
           --safe-resolver geactiveerd wordt, zal de integrale oplosser
           probleemloos pakketten verwijderen om aan vereisten te kunnen
           voldoen. Hij is in staat om meer situaties op te lossen dan het
           veilige algoritme, maar zijn oplossingen maken meer kans om
           onwenselijk te zijn.

           Deze optie kan gebruikt worden om het gebruik van de integrale
           oplosser af te dwingen, zelfs als
           Aptitude::Always-Use-Safe-Resolver ingesteld werd op true.

   --group-by groeperingsmodus

           Regelt hoe het commando versions zijn uitvoer groepeert. De
           volgende waarden kunnen gebruikt worden:

              * archive om pakketten te groeperen volgens het archief waarin
                ze voorkomen (“stable”, “unstable”, enz.). Indien een pakket
                in verschillende archieven voorkomt, zal het in elk ervan
                weergegeven worden.

              * auto om versies volgens hun pakket te groeperen, tenzij er
                exact één argument gebruikt werd dat geen zoekpatroon is.

              * none om alle versies in een eenvoudige lijst weer te geven
                zonder enige vorm van groepering.

              * package om versies volgens hun pakket te groeperen.

              * source-package om versies volgens hun broncodepakket te
                groeperen.

              * source-version om versies volgens hun broncodepakket en de
                broncodeversie te groeperen.

           Dit komt overeen met de configuratieoptie
           Aptitude::CmdLine::Versions-Group-By.

   -h, --help

           Geef een korte hulptekst weer. Identiek aan de actie help.

   --log-file=bestand

           Indien bestand geen lege tekenreeks is, zullen logberichten daarin
           opgeschreven worden, behalve als bestand “-” is. In dat laatste
           geval zullen logberichten naar standaarduitvoer geschreven worden.
           Indien deze optie meerdere keren voorkomt, zal de laatste
           vermelding uitwerking krijgen.

           Dit heeft geen invloed op het loggen van de installaties die
           aptitude uitvoert (/var/log/aptitude). De logberichten waarop deze
           configuratie betrekking heeft, betreffen interne
           programmagebeurtenissen, fouten en debugberichten. Zie de
           commandoregeloptie --log-level om meer controle te verwerven over
           wat gelogd wordt.

           Dit komt overeen met de configuratieopte Aptitude::Logging::File.

   --log-level=niveau, --log-level=categorie:niveau

           --log-level=niveau heeft als effect dat aptitude enkel berichten
           logt van een niveau niveau of hoger. Het logniveau bijvoorbeeld
           instellen op error zal ertoe leiden dat enkel berichten van de
           logniveaus error en fatal weergegeven worden. Alle andere zullen
           verborgen worden. Geldige logniveaus (in aflopende volgorde) zijn
           off, fatal, error, warn, info, debug, en trace. Het standaard
           logniveau is warn.

           --log-level=categorie:niveau heeft als effect dat berichten uit de
           categorie categorie enkel gelogd worden als hun niveau van niveau
           of hoger is.

           --log-level mag meermaals voorkomen aan de commandoregel. Het is
           de meest specifieke instelling die uitwerking heeft. Indien u dus
           --log-level=aptitude.resolver:fatal en
           --log-level=aptitude.resolver.hints.match:trace opgeeft, dan
           zullen berichten uit aptitude.resolver.hints.parse enkel
           weergegeven worden als hun niveau fatal is, maar zullen alle
           berichten uit aptitude.resolver.hints.match weergegeven worden.
           Indien u het niveau voor eenzelfde categorie twee of meer keren
           instelt, zal het de laatste instelling zijn die uitwerking heeft.

           Dit heeft geen invloed op het loggen van de installaties die
           aptitude uitgevoerd heeft (/var/log/aptitude). De logberichten die
           ten gevolge van deze instelling opgeschreven worden hebben
           betrekking op interne programmagebeurtenissen, fouten en
           informatie gericht op debuggen. Zie de commandoregeloptie
           --log-file om de plaats waar logberichten terecht komen te
           wijzigen.

           Dit komt overeen met de configuratiegroep
           Aptitude::Logging::Levels.

   --log-resolver

           Stel een aantal standaardlogniveaus in verband met de oplosser in
           om loguitvoer te produceren, geschikt om door geautomatiseerd
           gereedschap verwerkt te worden. Dit is het equivalent van de
           commandoregelopties --log-level=aptitude.resolver.search:trace
           --log-level=aptitude.resolver.search.tiers:info.

   --no-new-installs

           Voorkom dat safe-upgrade nieuwe pakketten installeert. Sta de
           vereistenoplosser niet toe om nieuwe pakketten te installeren bij
           het gebruik van de veilige oplosser (d.w.z. als de optie
           --safe-resolver opgegeven werd of als
           Aptitude::Always-Use-Safe-Resolver ingesteld werd op true). Deze
           optie heeft uitwerking ongeacht de waarde van
           Aptitude::Safe-Resolver::No-New-Installs.

           Dit imiteert het vroegere gedrag van apt-get upgrade.

   --no-new-upgrades

           Verbied bij het gebruik van de oplosser in veilige modus (d.w.z.
           als de optie --safe-resolver opgegeven werd of als
           Aptitude::Always-Use-Safe-Resolver ingesteld werd op true) dat de
           vereistenoplosser opwaarderingen van pakketten installeert en dit
           ongeacht de waarde van Aptitude::Safe-Resolver::No-New-Upgrades.

   --no-show-resolver-actions

           Geef de acties die door de “veilige” oplosser ondernomen worden,
           niet weer en hef een eventuele configuratieoptie in dat verband of
           een eerder opgegeven --show-resolver-actions op.

   -O volgorde, --sort volgorde

           Geef op in welke volgorde de uitvoer van de commando's search en
           versions weergegeven moet worden. Indien u bijvoorbeeld
           “installsize” opgeeft als volgorde, zullen pakketten weergegeven
           worden volgens hun grootte na installatie (zie voor meer
           informatie de sectie “Aanpassen hoe pakketten geordend worden” in
           de referentiehandleiding van aptitude).

           De standaardvolgorde is name,version.

   -o sleutel=waarde

           Stel een configuratiebestandsoptie rechtstreeks in. Gebruik
           bijvoorbeeld -o Aptitude::Log=/tmp/my-log om de log van de acties
           van aptitude te laten opschrijven in /tmp/my-log. Zie voor meer
           informatie over configuratiebestandsopties de sectie
           “Referentiegids voor het configuratiebestand” in de
           referentiehandleiding van aptitude.

   -P, --prompt

           Vraag altijd om bevestiging vooraleer pakketten te downloaden, te
           installeren of te verwijderen, zelfs wanneer er geen andere acties
           dan die waarom expliciet gevraagd werd, uitgevoerd zullen worden.

           Dit komt overeen met de configuratieoptie
           Aptitude::CmdLine::Always-Prompt.

   --purge-unused

           Indien Aptitude::Delete-Unused ingesteld staat op “true” (wat
           standaard het geval is), dan zal aptitude niet enkel de pakketten
           die door geen enkel geïnstalleerd pakket meer vereist worden,
           verwijderen maar ze ook wissen, wat het wissen van hun
           configuratiebestanden en eventuele andere belangrijke gegevens
           inhoudt. Zie voor meer informatie over welke pakketten als
           “ongebruikt” beschouwd worden, de sectie “Het beheer van
           automatisch geïnstalleerde pakketten” in de referentiehandleiding
           van aptitude. Deze optie kan tot gegevensverlies leiden! Gebruik
           ze dus enkel als u weet wat u doet!

           Dit komt overeen met de configuratieoptie Aptitude::Purge-Unused.

   -q[=n], --quiet[=n]

           Onderdruk alle incrementele voortgangsindicatoren en maak de
           uitvoer daardoor geschikt voor loggen. Dit kan meerdere keren
           opgegeven worden om het programma minder breedsprakig te maken,
           maar in tegenstelling tot apt-get, laat aptitude het gebruik van
           -y niet toe als -q meer dan één keer opgegeven werd.

           Het facultatieve =n kan gebruikt worden om rechtstreeks het niveau
           van breedsprakigheid in te stellen (om bijvoorbeeld een instelling
           uit /etc/apt/apt.conf te omzeilen). Het lokt bij het programma
           hetzelfde gedrag uit als wanneer -q exact n maal zou opgegeven
           worden.

   -R, --without-recommends

           Behandel aanbevolen pakketten niet als vereisten bij het
           installeren van nieuwe pakketten (dit heeft voorrang op
           instellingen uit /etc/apt/apt.conf en ~/.aptitude/config). Omwille
           van aanbevelingen eerder geïnstalleerde pakketten zullen niet
           verwijderd worden.

           Dit komt overeen met het paar configuratieopties
           APT::Install-Recommends en APT::AutoRemove::RecommendsImportant.

   -r, --with-recommends

           Behandel aanbevolen pakketten als vereisten bij het installeren
           van nieuwe pakketten (dit heeft voorrang op instellingen uit
           /etc/apt/apt.conf en ~/.aptitude/config).

           Dit komt overeen met de configuratieoptie APT::Install-Recommends

   --remove-user-tag merkteken

           Bij full-upgrade, safe-upgrade, forbid-version, hold, install,
           keep-all, markauto, unmarkauto, purge, reinstall, remove, unhold
           en unmarkauto: verwijder het gebruikerslabel (user tag) merkteken
           van alle pakketten die door dit commando geïnstalleerd, verwijderd
           of opgewaardeerd werden alsof het commando add-user-tag gebruikt
           werd.

   --remove-user-tag-from merkteken,patroon

           Bij full-upgrade, safe-upgrade, forbid-version, hold, install,
           keep-all, markauto, unmarkauto, purge, reinstall, remove, unhold
           en unmarkauto: verwijder het gebruikerslabel (user tag) merkteken
           van alle pakketten die beantwoorden aan het patroon alsof het
           commando remove-user-tag gebruikt werd. Het patroon is een
           zoekpatroon, zoals beschreven in de sectie “Search Patterns” van
           de referentiehandleiding van aptitude.

           Bijvoorbeeld, aptitude safe-upgrade --remove-user-tag-from
           "niet-opgewaardeerd,?action(upgrade)" zal het merkteken
           niet-opgewaardeerd verwijderen van alle pakketten die met het
           commando safe-upgrade opgewaardeerd kunnen worden.

   -s, --simulate

           Geef in de commandoregelmodus weer welke acties normaal gezien
           uitgevoerd zouden worden, zonder ze evenwel effectief uit te
           voeren. Dit vereist geen systeembeheerdersrechten (de privileges
           van root). Open in de visuele interface de cache steeds in
           alleen-lezen modus, ongeacht het feit of u root bent of niet.

           Dit komt overeen met de configuratieoptie Aptitude::Simulate.

   --safe-resolver

           Gebruik bij het tegenkomen van vereistenproblemen een “veilig”
           algoritme om ze op te lossen. Deze oplosser probeert zoveel
           mogelijk van uw keuzes te behouden. Hij zal nooit een pakket
           verwijderen en nooit een andere versie van een pakket installeren
           dan zijn standaard kandidaatversie. Hetzelfde algoritme wordt
           gebruikt bij safe-upgrade. Het is inderdaad zo dat aptitude
           --safe-resolver full-upgrade het equivalent is van aptitude
           safe-upgrade. Omdat safe-upgrade steeds de veilige oplosser
           gebruikt, wordt het niet toegestaan om er de vlag --safe-resolver
           bij te gebruiken.

           Deze optie is het equivalent van het instellen van de
           configuratievariabele Aptitude::Always-Use-Safe-Resolver op true.

   --schedule-only

           Doet commando's die de toestand van pakketten wijzigen, die
           operaties agenderen voor de toekomst zonder ze effectief uit te
           voeren. Geagendeerde operaties kunt u effectief laten doorvoeren
           door het uitvoeren van de opdracht aptitude install zonder
           argumenten. Dit is het equivalent van het maken van de
           overeenkomstige selecties in de visuele modus om vervolgens het
           programma op een normale manier af te sluiten.

           Bijvoorbeeld, aptitude --schedule-only install evolution agendeert
           de installatie van het programma evolution voor later.

   --show-package-names wanneer

           Regelt wanneer het commando versions pakketnamen weergeeft. De
           volgende instellingen kunnen gebruikt worden:

              * always: geef pakketnamen weer telkens wanneer aptitude
                versions uitgevoerd wordt.

              * auto: geef bij het uitvoeren van aptitude versions de
                pakketnamen weer als de uitvoer niet volgens pakket
                gegroepeerd wordt en er ofwel meer dan een argument opgegeven
                werd of een argument dat als een zoekpatroon geldt.

              * never: geef in de uitvoer van aptitude versions nooit
                pakketnamen weer.

           Deze optie komt overeen met het configuratie-item
           Aptitude::CmdLine::Versions-Show-Package-Names.

   --show-resolver-actions

           Geef de acties weer die uitgevoerd worden door de “veilige”
           oplosser en door safe-upgrade.

           Bij het uitvoeren van het commando safe-upgrade of wanneer de
           optie --safe-resolver gebruikt wordt, zal aptitude eerst een
           samenvatting weergeven van de acties die de resolver uitgevoerd
           heeft en daarna pas de voorafbeelding van de installatie. Dit is
           het equivalent van de configuratieoptie
           Aptitude::Safe-Resolver::Show-Resolver-Actions.

   --show-summary[=MODUS]

           Wijzigt het gedrag van “aptitude why” zodat het elke uitvoer van
           een keten van vereisten samenvat, eerder dan ze in de lange vorm
           weer te geven. Indien deze optie gebruikt werd en MODUS niet
           “no-summary” is, zullen ketens die vereisten van het type Suggests
           bevatten, niet weergegeven worden: combineer--show-summary met -v
           om een samenvatting te zien van alle redenen voor de installatie
           van het doelpakket.

           MODUS kan één van de volgende zijn:

             1. no-summary: geen samenvatting geven (het standaardgedrag als
                --show-summary niet opgegeven is).

             2. first-package: geef het eerste pakket uit elke keten weer.
                Dit is de standaardwaarde van MODUS als niets gespecificeerd
                werd.

             3. first-package-and-type: geef het eerste pakket uit elke keten
                weer, samen met het niveau van de zwakste vereiste uit de
                keten.

             4. all-packages: geef in het kort elke keten van vereisten weer
                die naar het doelpakket leidt.

             5. all-packages-with-dep-versions: geef in het kort elke keten
                van vereisten weer die naar het doelpakket leidt, met
                inbegrip van de doelversie van elke vereiste.

           Deze optie komt overeen met het configuratie-item
           Aptitude::CmdLine::Show-Summary. Als --show-summary aan de
           commandoregel opgegeven werd, zal het voorrang hebben op
           Aptitude::CmdLine::Show-Summary.

           Voorbeeld 12. Gebruik van --show-summary

           --show-summary gebruikt samen met -v om alle redenen voor het
           installeren van een pakket weer te geven:

 $ aptitude -v --show-summary why foomatic-db
 Pakketten die afhangen van foomatic-db:
   cupsys-driver-gutenprint
   foomatic-db-engine
   foomatic-db-gutenprint
   foomatic-db-hpijs
   foomatic-filters-ppds
   foomatic-gui
   kde
   printconf
   wine

 $ aptitude -v --show-summary=first-package-and-type why foomatic-db
 Pakketten die afhangen van foomatic-db:
   [Vereist] cupsys-driver-gutenprint
   [Vereist] foomatic-db-engine
   [Vereist] foomatic-db-gutenprint
   [Vereist] foomatic-db-hpijs
   [Vereist] foomatic-filters-ppds
   [Vereist] foomatic-gui
   [Vereist] kde
   [Vereist] printconf
   [Vereist] wine

 $ aptitude -v --show-summary=all-packages why foomatic-db
 Pakketten die afhangen van foomatic-db:
   cupsys-driver-gutenprint D: cups-driver-gutenprint D: cups R: foomatic-filters R: foomatic-db-engine D: foomatic-db
   foomatic-filters-ppds D: foomatic-filters R: foomatic-db-engine D: foomatic-db
   kde D: kdeadmin R: system-config-printer-kde D: system-config-printer R: hal-cups-utils D: cups R: foomatic-filters R: foomatic-db-engine D: foomatic-db
   wine D: libwine-print D: cups-bsd R: cups R: foomatic-filters R: foomatic-db-engine D: foomatic-db
   foomatic-db-engine D: foomatic-db
   foomatic-db-gutenprint D: foomatic-db
   foomatic-db-hpijs D: foomatic-db
   foomatic-gui D: python-foomatic D: foomatic-db-engine D: foomatic-db
   printconf D: foomatic-db

 $ aptitude -v --show-summary=all-packages-with-dep-versions why foomatic-db
 Pakketten die afhangen van foomatic-db:
   cupsys-driver-gutenprint D: cups-driver-gutenprint (>= 5.0.2-4) D: cups (>= 1.3.0) R: foomatic-filters (>= 4.0) R: foomatic-db-engine (>= 4.0) D: foomatic-db (>= 20090301)
   foomatic-filters-ppds D: foomatic-filters R: foomatic-db-engine (>= 4.0) D: foomatic-db (>= 20090301)
   kde D: kdeadmin (>= 4:3.5.5) R: system-config-printer-kde (>= 4:4.2.2-1) D: system-config-printer (>= 1.0.0) R: hal-cups-utils D: cups R: foomatic-filters (>= 4.0) R: foomatic-db-engine (>= 4.0) D: foomatic-db (>= 20090301)
   wine D: libwine-print (= 1.1.15-1) D: cups-bsd R: cups R: foomatic-filters (>= 4.0) R: foomatic-db-engine (>= 4.0) D: foomatic-db (>= 20090301)
   foomatic-db-engine D: foomatic-db
   foomatic-db-gutenprint D: foomatic-db
   foomatic-db-hpijs D: foomatic-db
   foomatic-gui D: python-foomatic (>= 0.7.9.2) D: foomatic-db-engine D: foomatic-db (>= 20090301)
   printconf D: foomatic-db


           --show-summary gebruikt om een keten op één regel weer te geven:

 $ aptitude --show-summary=all-packages why aptitude-gtk libglib2.0-data
 Pakketten die afhangen van libglib2.0-data:
   aptitude-gtk D: libglib2.0-0 R: libglib2.0-data

   -t release, --target-release release

           Stelt de release in van waaruit pakketten geïnstalleerd moeten
           worden. Bijvoorbeeld, “aptitude -t experimental ...” zal pakketten
           installeren uit de distributie 'experimental' (experimenteel),
           tenzij u anders specificeert.

           Dit beïnvloedt wat de standaard kandidaatversie van een pakket is,
           volgens de regels die beschreven worden in apt_preferences(5).

           Dit komt overeen met het configuratie-item APT::Default-Release.

   -V, --show-versions

           Toon de versie van de pakketten die geïnstalleerd zullen worden.

           Dit komt overeen met de configuratieoptie
           Aptitude::CmdLine::Show-Versions.

   -v, --verbose

           Heeft als gevolg dat sommige commando's (bijvoorbeeld show) extra
           informatie weergeven. Dit kan meerdere keren opgegeven worden om
           meer en meer informatie te bekomen.

           Dit komt overeen met de configuratieoptie
           Aptitude::CmdLine::Verbose.

   --version

           Geef de versie van aptitude weer en wat informatie over hoe het
           gecompileerd werd.

   --visual-preview

           Bij het installeren of verwijderen van pakketten aan de
           commandoregel wordt niet de gebruikelijke prompt weergegeven, maar
           wordt de visuele interface opgestart met het scherm met de
           voorafbeelding.

   -W, --show-why

           Laat in de voorafbeelding die getoond wordt vooraleer pakketten
           geïnstalleerd of verwijderd worden, zien welk handmatig
           geïnstalleerd pakket welke automatisch geïnstalleerde pakketten
           vereist. Bijvoorbeeld:

 $ aptitude --show-why install mediawiki
 ...
 De volgende NIEUWE pakketten zullen geïnstalleerd worden:
   libapache2-mod-php5{a} (for mediawiki)  mediawiki  php5{a} (for mediawiki)
   php5-cli{a} (for mediawiki)  php5-common{a} (for mediawiki)
   php5-mysql{a} (for mediawiki)

           In combinatie met -v of een niet lege waarde van
           Aptitude::CmdLine::Verbose geeft dit de volledige keten van
           vereisten weer die voor elk te installeren pakket leidt tot diens
           installatie. Bijvoorbeeld:

 $ aptitude -v --show-why install libdb4.2-dev
 De volgende NIEUWE pakketten zullen geïnstalleerd worden:
   libdb4.2{a} (libdb4.2-dev D: libdb4.2)  libdb4.2-dev
 De volgende pakketten zullen worden VERWIJDERD:
   libdb4.4-dev{a} (libdb4.2-dev C: libdb-dev P<- libdb-dev)

           Zoals hierboven getoond wordt, zal deze optie ook beschrijven
           waarom pakketten verwijderd worden. In dit voorbeeld conflicteert
           libdb4.2-dev met libdb-dev, waarin door libdb-dev voorzien wordt.

           Dit argument komt overeen met de configuratieoptie
           Aptitude::CmdLine::Show-Why en geeft dezelfde informatie weer als
           die welke door aptitude why en aptitude why-not berekend wordt.

   -w breedte, --width breedte

           Geef aan welke schermbreedte gebruikt moet worden voor de uitvoer
           van de commando's search en versions (in de commandoregelmodus).

           Standaard en als de uitvoer rechtstreeks op de terminal te zien
           is, wordt de terminalbreedte gebruikt. Als de uitvoer omgeleid
           wordt of door een pijp gestuurd wordt, wordt een zeer grote
           "ongelimiteerde" lijnbreedte gebruikt en wordt deze optie
           genegeerd.

           Dit komt overeen met de configuratieoptie
           Aptitude::CmdLine::Package-Display-Width

   -y, --assume-yes

           Neem aan dat de gebruiker “ja” zou antwoorden als er een
           ja/nee-vraag gesteld zou worden. Meer bepaald onderdrukt dit de
           vraag die getoond wordt bij het installeren, opwaarderen of
           verwijderen van pakketten. Vragen in verband met
           “gevaarlijke”acties, zoals het verwijderen van essentiële
           pakketten, zullen nog steeds weergegeven worden. Deze optie heeft
           voorrang op -P.

           Dit komt overeen met de configuratieoptie
           Aptitude::CmdLine::Assume-Yes.

   -Z

           Toon voor elk individueel pakket dat geïnstalleerd, opgewaardeerd
           of verwijderd zal worden, hoeveel schijfruimte gebruikt of
           vrijgemaakt zal worden.

           Dit komt overeen met de configuratieoptie
           Aptitude::CmdLine::Show-Size-Changes.

   De volgende opties zijn van toepassing op de visuele modus van het
   programma, maar zijn in de eerste plaats voor intern gebruik bedoeld.
   Normaal gezien zult u ze zelf niet moeten gebruiken.

   --autoclean-on-startup

           Verwijdert bij het opstarten van het programma oude gedownloade
           bestanden (het equivalent voor het opstarten van het programma en
           onmiddellijk Acties → Verouderde bestanden wissen selecteren). U
           kunt deze optie niet tegelijkertijd gebruiken met
           “--clean-on-startup”, “-i” of “-u”.

   --clean-on-startup

           Ruimt de pakketcache op bij het opstarten van het programma (het
           equivalent voor het programma opstarten en onmiddellijk Acties →
           Pakketcache opruimen selecteren). U kunt deze optie niet
           tegelijkertijd gebruiken met “--autoclean-on-startup”, “-i” of
           “-u”.

   -i

           Geeft bij het opstarten van het programma een voorafbeelding van
           de downloads (het equivalent voor het opstarten van het programma
           en onmiddellijk op “g” drukken). U kunt deze optie niet
           tegelijkertijd gebruiken met “--autoclean-on-startup”,
           “--clean-on-startup” of “-u”.

   -S bestandsnaam

           Haalt de uitgebreide statusinformatie op uit bestandsnaam in
           plaats van uit het standaard statusbestand.

   -u

           Begint bij het opstarten van het programma onmiddellijk de
           pakketlijst bij te werken. U kunt deze optie niet tegelijkertijd
           gebruiken met “--autoclean-on-startup”, “--clean-on-startup” of
           “-i”.

Omgeving

   HOME

           Indien $HOME/.aptitude bestaat, zal aptitude zijn
           configuratiebestand opslaan in $HOME/.aptitude/config. Anders zal
           het op zoek gaan naar de thuismap van de huidige gebruiker via
           getpwuid(2) en zijn configuratiebestand daar plaatsen.

   PAGER

           Indien deze omgevingsvariabele ingesteld werd, zal aptitude
           daarvan gebruik maken om de logs met wijzigingen (changelogs) weer
           te geven wanneer “aptitude changelog” uitgevoerd wordt. Indien hij
           niet ingesteld is, zal teruggevallen worden op more, wat de
           standaard is.

   TMP

           Indien er geen waarde ingesteld is voor TMPDIR, zal aptitude zijn
           tijdelijk bestanden plaatsen in TMP als die variabele ingesteld
           werd. Anders zal het ze opslaan in /tmp.

   TMPDIR

           aptitude zal zijn tijdelijke bestanden plaatsen in de map die door
           deze omgevingsvariabele aangeduid wordt. Indien er geen waarde
           voor TMPDIR ingesteld werd, zal TMP gebruikt worden. Als ook TMP
           niet ingesteld is, zal aptitude /tmp gebruiken.

Bestanden

   /var/lib/aptitude/pkgstates

           Het bestand waarin de toestand van pakketten en sommige
           pakketvlaggen opgeslagen worden.

   /etc/apt/apt.conf, /etc/apt/apt.conf.d/*, ~/.aptitude/config

           De configuratiebestanden voor aptitude. ~/.aptitude/config heeft
           voorrang op /etc/apt/apt.conf. Zie apt.conf(5) voor documentatie
           over de indeling en de inhoud van deze bestanden.

Zie ook

   apt-get(8), apt(8), /usr/share/doc/aptitude/html/taalcode/index.html van
   het pakket aptitude-doc-taalcode

   --------------------------------------------------------------------------

Name

   aptitude-create-state-bundle — de huidige toestand van aptitude
   samenbundelen

Samenvatting

   aptitude-create-state-bundle [opties...] uitvoerbestand

Omschrijving

   [Opmerking] Opmerking
               Dit commando is hoofdzakelijk bedoeld voor intern gebruik en
               voor het rapporteren van bugs in uitzonderlijke gevallen. In
               normale omstandigheden is het niet bedoeld voor gewone
               gebruikers.

   aptitude-create-state-bundle maakt een gecomprimeerd archief aan waarin de
   bestanden opgeslagen worden die nodig zijn om de huidige toestand van het
   pakketarchief te repliceren. De volgende bestanden en mappen worden in de
   bundel opgenomen:

     * $HOME/.aptitude

     * /var/lib/aptitude

     * /var/lib/apt

     * /var/cache/apt/*.bin

     * /etc/apt

     * /var/lib/dpkg/status

   De uitvoer van dit programma kan gebruikt worden als een argument voor
   aptitude-run-state-bundle(1).

Opties

   --force-bzip2

           Omzeil het volgens de automatische detectie te gebruiken
           compressiealgoritme. Standaard gebruikt
           aptitude-create-state-bundle bzip2(1) als het beschikbaar is en
           anders gzip(1). Met het opgeven van deze optie wordt het gebruik
           van bzip2 afgedwongen, zelfs als blijkt dat het niet beschikbaar
           is.

   --force-gzip

           Omzeil het volgens de automatisch detectie te gebruiken
           compressiealgoritme. Standaard gebruikt
           aptitude-create-state-bundle bzip2(1) als het beschikbaar is en
           anders gzip(1). Met het opgeven van deze optie wordt het gebruik
           van gzip afgedwongen, zelfs als bzip2 beschikbaar is.

   --help

           Geef in het kort weer wat het gebruik van dit programma is en
           breek dan af.

   --print-inputs

           Toon een lijst met bestanden en mappen die het programma zou
           verpakken mocht het een bundel maken, in plaats van echt een
           bundel te maken.

Bestandsindeling

   Het bundelbestand is gewoon een tar(1)-bestand dat met behulp van bzip2(1)
   of gzip(1) gecomprimeerd werd en waarbij de bestandsbomen van de invoer
   “.” als basis hebben.

Zie ook

   aptitude-run-state-bundle(1), aptitude(8), apt(8)

   --------------------------------------------------------------------------

Name

   aptitude-run-state-bundle — pak een statusbundel van aptitude uit en
   gebruik dit om er aptitude op uit te voeren.

Samenvatting

   aptitude-run-state-bundle [opties...] invoerbestand [ programma
   [argumenten...]]

Omschrijving

   [Opmerking] Opmerking
               Dit commando is hoofdzakelijk bedoeld voor intern gebruik en
               voor het rapporteren van bugs in uitzonderlijke gevallen. In
               normale omstandigheden is het niet bedoeld voor gewone
               gebruikers.

   aptitude-run-state-bundle pakt de opgegeven statusbundel van aptitude die
   met aptitude-create-state-bundle(1) aangemaakt werd, uit in een tijdelijke
   map, voert daarop programma uit met de opgegeven argumenten en verwijdert
   nadien de tijdelijke map. Indien programma niet opgegeven wordt, wordt
   teruggevallen op aptitude(8), wat de standaard is.

Opties

   De volgende opties mogen op de commandoregel aan het invoerbestand
   voorafgaan. Opties die na het invoerbestand staan worden geïnterpreteerd
   als argumenten voor aptitude.

   --append-args

           Plaats de opties die de locatie van de statusbundel vermelden, aan
           het eind van de commandoregel bij het uitvoeren van programma, in
           de plaats van aan het begin (standaard worden opties aan het begin
           geplaatst).

   --help

           Toon een korte samenvatting van het gebruik.

   --prepend-args

           Plaats de opties die de locatie van de statusbundel vermelden, aan
           het begin van de commandoregel bij het uitvoeren van programma, en
           hef eventuele eerdere --append-args-instructies op (standaard
           worden opties aan het begin geplaatst).

   --no-clean

           Verwijder de uitgepakte statusmap niet na het uitvoeren van
           aptitude. Het kan zijn dat u dit bijvoorbeeld wilt gebruiken als u
           een probleem wilt onderzoeken dat optreedt bij het wijzigen van
           het statusbestand van aptitude. Als aptitude afsluit, zal de naam
           van de statusmap weergegeven worden, zodat u er later naartoe kunt
           gaan.

           Deze optie wordt automatisch geactiveerd door --statedir.

   --really-clean

           Verwijder de statusmap na het uitvoeren vanaptitude, zelfs al werd
           --no-clean of --statedir opgegeven.

   --statedir

           Behandel het invoerbestand niet als statusbundel maar als een
           uitgepakte statusbundel. U kunt dit bijvoorbeeld gebruiken om
           gebruik te maken van een statusmap die aangemaakt werd bij een
           eerdere uitvoering van het programma met de optie --no-clean.

   --unpack

           Pak het invoerbestand naar een tijdelijke map uit, maar voer het
           programma aptitude niet echt uit.

Zie ook

   aptitude-create-state-bundle(1), aptitude(8), apt(8)

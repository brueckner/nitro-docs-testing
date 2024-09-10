��    9      �              �  8   �  E   �  6   ,  :   c  <   �  S   �  /   /  B   _  	   �     �  ]   �  �     `   �     Z  Q   j  m   �    *  F   B	  �   �	  *   ,
  �   W
  i   '     �  -  �  �   �     g  a   �  a   I    �  #  �  ;  �  
   '  
   2     =     M  j   \  [   �  �   #  �   �     �  Y   �     �  H     �   X  �   �  �   �  %  x  T   �  ?  �  '  3  Q   [  )   �  �   �  �   l  T   6  z   �        4   "  T   <"  >   �"  6   �"  >   #  Y   F#  5   �#  Y   �#  	   0$     :$  }   N$  �   �$  m   �%     8&  Q   Q&  x   �&  (  '  I   E(  �   �(  ?   G)    �)  �   �*  
   +  {  $+  �   �,  �   j-  f   �-  g   U.  6  �.  �  �/  _  �2     4  
   4     4     ,4  o   ;4  j   �4  �   5  �   �5  %   �6  J   �6     27  _   K7  �   �7  �   W8    -9  �  F:  Z   �<  �  ,=  h  �>  W   @  3   q@  �   �@  �   =A  N   B  �   eB   **Q:** Does the Nitrophone work with my carrier network? **Q:** How can I check, if my NitroPhone has been hacked/compromised? **Q:** What is a *Kill Switch* and how to activate it? **Q:** What is and how to activate *PIN Layout Scrambling* **Q:** Where can I get further information about GrapheneOS? **Q:** Why do I get "Warning: Your device is loading a different operating system"? **Q:** Why is OEM unlocking enabled by default? *Long press on the respective app icon -> app info -> permissions* App Store Background Images Backup: The integrated backup (Seedvault) and Nextcloud. Choose Settings -> System -> Backup. Browser: The pre-installed browser Vanadium is hardened and therefore recommended for high security. For better ad blocking, `Bromite <https://github.com/bromite/bromite/releases/latest>`_ browser is recommended instead. By default you have a secure smartphone, already pre-installed with all the most necessary apps. Compatible Apps Contacts and calendar synchronization: DAVx5 supports CalDAV, CardDAV and WebCAL. Download all 5 files from `com.android.vending <https://apps.grapheneos.org/packages/com.android.vending/>`_. Earlier there was a list, but as the Play Service implementation progresses, most of the apps should work, although there are still some not working, a list will be available `here <https://github.com/Peter-Easton/GrapheneOS-Knowledge/tree/master/App%20Incompatibility%20List>`_. Email: K9-mail and OpenKeyChain (for OpenPGP encryption) or FairEmail. For extra hardening (optional): Go to Settings -> System -> Developer Options and disable the "OEM unlocking" setting. Afterwards disable the "Developer Options". For more details, see the following pages: For very high security requirements, you should use as few apps as possible to provide a small attack surface. If instead you want to use the NitroPhone as an everyday smartphone with more apps we recommend: From the home screen, select: *Settings -> Apps -> Google Play services and disable battery optimization* Getting Started Google claims `all major carriers`_ should work with the Pixel phones. Nevertheless there might be exceptions, obviously we cannot check `all` carriers around the world. Best practice, is to check if you find some tests/experience stories about the Pixel 4a together with your planned carrier network. If the apps in F-Droid are not enough for you, open F-Droid and install Aurora Store. In Aurora Store, you can install all apps from Google Play Store. If you want to check the integrity of the operating system, you can use `remote verification <https://attestation.app/about>`_. Install `com.google.android.gms <https://apps.grapheneos.org/packages/com.google.android.gms/>`_. Install `com.google.android.gsf <https://apps.grapheneos.org/packages/com.google.android.gsf/>`_. Install the `F-Droid <https://f-droid.org/F-Droid.apk>`_ App Store. This has exclusively open source apps that do without drastic tracking and without advertising. Here you will find thousands of apps from a wide variety of fields. If you are looking for an app, check F-Droid first. Kill Switches, which erase all the phone's data when triggered, are very risky in practice as they could be triggered unintentionally. Therefore, the NitroPhone instead has the feature to automatically shut down and restart when inactive for a set period of time. This puts the phone in a secure state where all data is encrypted, no data is in RAM, and the phone can only be unlocked with the legitimate PIN or password. To enable, select: *Settings -> Security -> Auto reboot -> select the idle time duration after which the phone should reboot* Many apps work without Google Play Services. However, if you want to use apps that require Google Play Services, you can install `Google Play Services in a sandbox <https://grapheneos.org/usage#sandboxed-play-services>`_ as follows. In the future, an installer will be provided to simplify the installation process. Messenger: NitroPhone NitroPhone Apps NitroPhone FAQ One-time password generator (2FA, OTP): `Aegis Authenticator <https://github.com/beemdevelopment/Aegis>`_. Open F-Droid and install Split APKs Installer (SAI). (Also available from the Aurora Store) Open Split APKs Installer and install all five files you downloaded in step 3. **Note:** The correct base file has probably been renamed to ``base (2).apk``. Open the Google Play Store once and press "Sign in" to start the initialization. You don't have to finish the sign in and a real login is not necessary. This is solely to initialize the software. Permissions of Individual Apps Please familiarize yourself with `using your GrapheneOS <https://grapheneos.org/usage>`_. Recommended Apps Regarding camera app, see `here <https://grapheneos.org/usage#camera>`_. Set up a six-digit PIN to protect the phone. In cooperation with the security chip, this will ensure high security while maintaining good usability. Shortly after the phone is turned on, the warning "Your device is loading a different operating system" is displayed. This warning indicates that no ordinary Google Android is running and can be ignored. The Google Play Store cannot install and update apps due to the sandbox. Instead, always use F-Droid (for open source apps) or Aurora Store (for apps from Google Play Store) to install apps. The only real purpose of the OEM Unlocking setting is `anti-theft protection <https://grapheneos.org/faq#anti-theft>`_ which is not implemented by GrapheneOS. OEM unlocking controls whether the device can be unlocked via boot loader. In the later case all user data is wiped. If OEM Unlocking is disabled, someone can still boot up in recovery mode, enter the menu, wipe data, then boot the OS and enable OEM unlocking. Therefore it doesn't really increase the security but `disabling it <index.html>`_ reduces the potential physical attack surface. To check or change the permissions on network access and sensors for a specific app: To make it difficult for strangers to read the PIN when typing it in, you can display the PIN layout in a random order. Additionally, we recommend a `privacy screen <https://shop.nitrokey.com/shop/product/privacyscreen-for-nitrophone-1-194>`_. To enable, select: *Settings -> Security -> PIN scrambling -> Scramble PIN* To prevent some apps from accessing Google Play Services, install Google Play Services in a separate profile. To do this, create a new dedicated user profile and install the Google Play Services there. Using a work profile together with *Shelter* is also possible, but without as much isolation. VPN: Orbot uses the free TOR network. Mullvad VPN and IVPN are paid VPN services. You can use these nice background images: `Briar <https://briarproject.org/>`_ is a peer-to-peer messenger without any server at all, which can be used without internet with contacts nearby. `Element <https://element.io/>`_ does not require a central infrastructure and allows the use of own servers. An own account can be registered for free at `NitroChat <https://nitro.chat>`_ for example. `Here <https://grapheneos.org/faq>`_ you can find further information on GrapheneOS. `Signal <https://signal.org/android/apk/>`_ is secure and now widely used. It can also be downloaded without an app store. Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-02-14 13:22+0100
PO-Revision-Date: 2022-03-12 11:38+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: sk
Language-Team: Slovak <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-nitrophone/sk/>
Plural-Forms: nplurals=3; plural=(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **Q:** Funguje Nitrophone v sieti môjho operátora? **Q:** Ako môžem skontrolovať, či bol môj NitroPhone hacknutý/kompromitovaný? **Otázka:** Čo je to *spínač zabitia* a ako ho aktivovať? **Q:** Čo je a ako aktivovať *PIN Layout Scrambling* **Q:** Kde môžem získať ďalšie informácie o GrapheneOS? **Q:** Prečo dostávam "Varovanie: Vaše zariadenie načítava iný operačný systém"? **Q:** Prečo je odomykanie OEM predvolene povolené? *Dlhé stlačenie príslušnej ikony aplikácie -> informácie o aplikácii -> povolenia* App Store Obrázky na pozadí Zálohovanie: Zálohovanie: Integrované zálohovanie (Seedvault) a Nextcloud. Vyberte Nastavenia -> Systém -> Zálohovanie. Prehliadač: Predinštalovaný prehliadač Vanadium je zabezpečený, a preto sa odporúča pre vysokú bezpečnosť. Pre lepšie blokovanie reklám sa namiesto neho odporúča prehliadač `Bromite <https://github.com/bromite/bromite/releases/latest>`_. V predvolenom nastavení máte zabezpečený smartfón s predinštalovanými najpotrebnejšími aplikáciami. Kompatibilné aplikácie Synchronizácia kontaktov a kalendára: DAVx5 podporuje CalDAV, CardDAV a WebCAL. Stiahnite si všetkých 5 súborov z `com.android.vending <https://apps.grapheneos.org/packages/com.android.vending/>`_. Predtým bol k dispozícii zoznam, ale s postupujúcou implementáciou služby Play by mala väčšina aplikácií fungovať, hoci niektoré stále nefungujú, zoznam bude k dispozícii `tu <https://github.com/Peter-Easton/GrapheneOS-Knowledge/tree/master/App%20Incompatibility%20List>%20List>`_. E-mail: K9-mail a OpenKeyChain (pre šifrovanie OpenPGP) alebo FairEmail. Na dodatočné spevnenie (voliteľné): Prejdite do Nastavenia -> Systém -> Možnosti pre vývojárov a vypnite nastavenie "OEM unlocking". Potom vypnite "Možnosti pre vývojárov". Podrobnejšie informácie nájdete na nasledujúcich stranách: Pri veľmi vysokých požiadavkách na bezpečnosť by ste mali používať čo najmenej aplikácií, aby ste vytvorili malý priestor na útoky. Ak chcete namiesto toho používať NitroPhone ako každodenný smartfón s väčším počtom aplikácií, odporúčame: Na domovskej obrazovke vyberte: Vyberte položku *Nastavenia -> Aplikácie -> Služby Google Play a vypnite optimalizáciu batérie*. Začíname Spoločnosť Google tvrdí, že `s telefónmi Pixel by mali fungovať všetci hlavní operátori. Napriek tomu sa môžu vyskytnúť výnimky, samozrejme, nemôžeme overiť všetkých operátorov na celom svete. Najlepším postupom je skontrolovať, či ste našli nejaké testy/príbehy o skúsenostiach s telefónom Pixel 4a spolu so sieťou vášho plánovaného operátora. Ak vám aplikácie v aplikácii F-Droid nestačia, otvorte aplikáciu F-Droid a nainštalujte aplikáciu Aurora Store. V obchode Aurora môžete nainštalovať všetky aplikácie z obchodu Google Play. Ak chcete skontrolovať integritu operačného systému, môžete použiť ` vzdialené overenie <https://attestation.app/about>`_. Inštalácia `com.google.android.gms <https://apps.grapheneos.org/packages/com.google.android.gms/>`_. Nainštalujte `com.google.android.gsf <https://apps.grapheneos.org/packages/com.google.android.gsf/>`_. Nainštalujte `F-Droid <https://f-droid.org/F-Droid.apk>`_ App Store. Ten obsahuje výlučne aplikácie s otvoreným zdrojovým kódom, ktoré sa zaobídu bez drastického sledovania a bez reklamy. Nájdete tu tisíce aplikácií z najrôznejších oblastí. Ak hľadáte aplikáciu, najprv si pozrite F-Droid. Spínače Kill Switch, ktoré po spustení vymažú všetky údaje telefónu, sú v praxi veľmi riskantné, pretože by sa mohli spustiť neúmyselne. Preto je NitroPhone namiesto toho vybavený funkciou automatického vypnutia a opätovného spustenia pri nečinnosti počas nastaveného času. Tým sa telefón uvedie do bezpečného stavu, v ktorom sú všetky údaje zašifrované, v pamäti RAM sa nenachádzajú žiadne údaje a telefón možno odomknúť len pomocou legitímneho kódu PIN alebo hesla. Ak chcete túto funkciu povoliť, vyberte položku: *Nastavenia -> Zabezpečenie -> Automatický reštart -> vyberte dobu nečinnosti, po ktorej sa má telefón reštartovať*. Mnohé aplikácie fungujú bez služby Google Play. Ak však chcete používať aplikácie, ktoré vyžadujú Služby Google Play, môžete nainštalovať `Služby Google Play do pieskoviska <https://grapheneos.org/usage#sandboxed-play-services>`_ takto. V budúcnosti bude k dispozícii inštalačný program, ktorý zjednoduší proces inštalácie. Posol: NitroPhone Aplikácie NitroPhone NitroPhone FAQ Generátor jednorazových hesiel (2FA, OTP): `Aegis Authenticator <https://github.com/beemdevelopment/Aegis>`_. Otvorte aplikáciu F-Droid a nainštalujte Split APKs Installer (SAI). (K dispozícii aj v obchode Aurora) Otvorte Split APK Installer a nainštalujte všetkých päť súborov, ktoré ste stiahli v kroku 3. **Poznámka:** Správny základný súbor bol pravdepodobne premenovaný na ``base (2).apk``. Otvorte raz Obchod Google Play a stlačte tlačidlo "Prihlásiť sa", čím spustíte inicializáciu. Prihlásenie nemusíte dokončiť a skutočné prihlásenie nie je potrebné. Toto slúži výlučne na inicializáciu softvéru. Oprávnenia jednotlivých aplikácií Zoznámte sa s `používaním GrapheneOS <https://grapheneos.org/usage>`_. Odporúčané aplikácie Pokiaľ ide o aplikáciu fotoaparátu, pozrite si ` tu <https://grapheneos.org/usage#camera>`_. Nastavte šesťmiestny kód PIN na ochranu telefónu. V spolupráci s bezpečnostným čipom sa tak zabezpečí vysoká bezpečnosť pri zachovaní dobrej použiteľnosti. Krátko po zapnutí telefónu sa zobrazí upozornenie "Vaše zariadenie načítava iný operačný systém". Toto upozornenie znamená, že nie je spustený bežný systém Google Android a môžete ho ignorovať. V obchode Google Play nie je možné inštalovať a aktualizovať aplikácie kvôli pieskovisku. Namiesto toho vždy používajte na inštaláciu aplikácií program F-Droid (pre aplikácie s otvoreným zdrojovým kódom) alebo Aurora Store (pre aplikácie z obchodu Google Play). Jediným skutočným účelom nastavenia OEM Unlocking je ` ochrana proti krádeži <https://grapheneos.org/faq#anti-theft>`_, ktorú GrapheneOS neimplementuje. OEM unlocking (Odomknutie OEM) riadi, či je možné zariadenie odomknúť prostredníctvom zavádzača. V neskoršom prípade sa vymažú všetky používateľské údaje. Ak je odomykanie OEM zakázané, niekto môže stále spustiť systém v režime obnovenia, vstúpiť do ponuky, vymazať údaje, potom spustiť operačný systém a povoliť odomykanie OEM. Preto to'v skutočnosti nezvyšuje bezpečnosť, ale `vypnutie <index.html>`_ znižuje potenciálny povrch fyzického útoku. Kontrola alebo zmena oprávnení na prístup k sieti a senzorom pre konkrétnu aplikáciu: Ak chcete cudzím osobám sťažiť prečítanie kódu PIN pri jeho zadávaní, môžete zobraziť rozloženie kódu PIN v náhodnom poradí. Okrem toho odporúčame `prístupnú obrazovku <https://shop.nitrokey.com/shop/product/privacyscreen-for-nitrophone-1-194>`_. Ak chcete túto funkciu zapnúť, vyberte položku: *Nastavenia -> Zabezpečenie -> Šifrovanie PIN -> Šifrovať PIN*. Ak chcete niektorým aplikáciám zabrániť v prístupe k Službám Google Play, nainštalujte Služby Google Play do samostatného profilu. Ak to chcete urobiť, vytvorte nový vyhradený používateľský profil a nainštalujte do neho služby Google Play. Použitie pracovného profilu spolu so službou *Shelter* je tiež možné, ale bez takej izolácie. VPN: Orbot používa bezplatnú sieť TOR. Mullvad VPN a IVPN sú platené služby VPN. Môžete použiť tieto pekné obrázky na pozadí: `Briar <https://briarproject.org/>`_ je peer-to-peer messenger bez akéhokoľvek servera, ktorý možno používať bez internetu s kontaktmi v okolí. `Element <https://element.io/>`_ nevyžaduje centrálnu infraštruktúru a umožňuje používať vlastné servery. Vlastný účet je možné bezplatne zaregistrovať napríklad na `NitroChat <https://nitro.chat>`_. `Tu <https://grapheneos.org/faq>`_ nájdete ďalšie informácie o GrapheneOS. `Signál <https://signal.org/android/apk/>`_ je bezpečný a v súčasnosti široko používaný. Dá sa stiahnuť aj bez obchodu s aplikáciami. 
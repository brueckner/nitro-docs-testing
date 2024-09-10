��    \      �              �  2  �  !     9   2  @  l     �  �   �    �	  d  �
     J     �  K   �  *   "  5   M  3   �  )   �  '   �  !   	     +  5   G  &   }     �     �  &   �  '   �  !   &      H  -   i  4   �  -   �  =   �  �   8  2        7  �   N  �   K     3     A     S     e     {     �     �     �     �     �     �  �     �  �  �   �  
   L  
   W     b  <   q  �   �  �   �  �   n  _     �   v  d   T    �     �     �  <   �       ;   5     q     �    �  �   �    m   #  q!  �   �"  N  [#    �$  �   �%  |   �&  "   '  d   ;'     �'  D   �'     (     (  
   8(     C(     K(     S(     [(     c(     k(     s(     {(  �  (  b  i*  "   �+  <   �+  E  ,,     r-  
  �-  +  �.  n  �/  �   81     �1  T   �1  0   "2  4   S2  1   �2  (   �2  $   �2  '   3  "   03  :   S3  +   �3     �3     �3  *   �3  .   4  #   E4  (   i4  1   �4  L   �4  3   5  E   E5  �   �5  2   ]6     �6  8  �6  �   �7     �8     �8     �8     9     9     -9     B9     [9     t9     �9     �9  �   �9  �  o:  �   h<  
   -=  
   8=     C=  @   R=    �=  �   �>  �   ?  e   3@  �   �@  v   �A  "  B     1C     ?C  B   QC     �C  B   �C     �C     D  -  D  �   9F     G  S  @H  �   �I  ]  rJ  ,  �K  *  �L  �   (N  -   �N  �   �N     YO  J   vO     �O     �O  
   �O     �O     P     P     P     P     %P     -P     5P   **Admin PIN:** The admin PIN is at least 8-digits long and is used to change contents/settings of the Nitrokey. That is to say after initializing the Nitrokey you probably won't need this PIN too often (e.g. if you want to add another password to the password safe of the Nitrokey Pro or Nitrokey Storage). **Administrator PIN:** "12345678" **Firmware Password** (Nitrokey Storage only): "12345678" **Firmware password:** The firmware password should meet general password recommandations (e.g. use alphabetic characters, digits and special characters or use a usfficiently long password). The firmware password is needed to update the firmware of the Nitrokey Storage. See further instructions for update process here. **Letter and Registered Mail**: **Nitrokey HSM2:** The security controler's hardware and operating system are Common Criteria certified (`Security Target`_; `HSM2 Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP JCOP 3 P60"). **Nitrokey HSM:** The security controler's hardware and operating system are Common Criteria certified (`HSM Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP J3A080 v2.4.1 Secure Smart Card Controller (JCOP v2.4.1)"). **Nitrokey Pro 1+2:** The security controler's hardware is Common Criteria certified (`Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP Smart Card Controller P5CD081V1A and its major configurations P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A and P5CD016V1A each with IC dedicated Software"). **Nitrokey Storage 1+2:** `Cure53`_ has performed an `independent security audit`_ of the hardware, firmware, and Nitrokey App. **Parcel**: **Q:** Do Nitrokeys contain a secure chip or just a normal microcontroller? **Q:** How fast is encryption and signing? **Q:** How good is the Random Number Generator (RNG)? **Q:** How is the Bitcoin exchange rate calculated? **Q:** How large is the storage capacity? **Q:** How long does the shipping take? **Q:** How many keys can I store? **Q:** How to return goods? **Q:** Is Nitrokey Common Criteria or FIPS certified? **Q:** Is there a Right of Withdrawal? **Q:** Is there a warranty? **Q:** Pricing and VAT **Q:** What are the default passwords? **Q:** What can I use the Nitrokey for? **Q:** What is the Admin PIN for? **Q:** What is the User PIN for? **Q:** What is the maximum length of the PIN? **Q:** What is user/admin/firmware PIN/password for? **Q:** Which Operating Systems are supported? **Q:** Which algorithms and maximum key length are supported? **SO PIN:** The SO PIN is used in the Nitrokey HSM only and is something like a "master" PIN with special properties. Please read this instructions carefully to understand the SO PIN of the Nitrokey HSM. **SO-PIN** (Nitrokey HSM only): "3537363231383830" **User PIN:** "123456" **User PIN:** The user PIN is at least 6-digits long and is used to get access to the contect of the Nitrokey. This is the PIN you will use a lot in every day use e.g. for decrypting messages, for unlocking your encrypted storage (NK Storage only) etc. At the time of ordering, our system takes the exchange rate from blockchain.info and adds 10% on top of it. The 10% are for our handling fees (exchanging Bitcoins back to Euro) and for the risk implicated by floating exchange rate. Brainpool 192 Brainpool 256-320 Brainpool 384-521 EU: 2-5 business days EU: 5-10 business days Frequently Asked Questions Generic Nitrokeys FAQ Germany: 1-3 business days Germany: 2-5 business days HSM HSM2 If you want to have a backup of your keys, you need to think about it when creating the keys. More information and options for the key creation can be found in our :doc:`documentation <../pro/linux/openpgp>`. In case of a hardware defect, you can contact us and we will send you a shipping label. Pack the device in an air cushion envelope (not in an ordinary envelope!). Include the delivery slip or printout of the invoice with the shipment. Add a note of the reason for the return, e.g. "Withdrawal of the purchase" or "Exchange due to defect". It is sufficient to note the reason in handwriting on the enclosed invoice or delivery note. Address the mailing to our address. It depends. No one can copy the keys which are stored on the Nitrokey. But depending on the key creation process you can still store a backup of the keys elsewhere. NIST-P 192 NIST-P 256 NIST-P 384-521 Nitrokey HSM can store 20 RSA-2048 and 31 ECC-256 key pairs. Nitrokey Pro's and Storage's PINs can be up to 20 digits long and can consist of numbers, characters and special characters. Note: When using GnuPG or OpenSC, 32 character long PINs can be used but aren't supported by Nitrokey App. Nitrokey Pro, Nitrokey HSM and Nitrokey Storage contain a tamper resistant smart card. To some extent this also applies to Nitrokey U2F but it's of lower quality. Nitrokey Start is implemented in the microprocessor. Nitrokey Pro, Nitrokey Start, Nitrokey HSM and Nitrokey U2F don't contain storage capability for ordinary data (it can only store cryptographic keys and certificates). Nitrokey Storage can store and encrypt 8, 32, or 64 GB of data (depending on particular model). Nitrokey Storage's PINs can be up to 20 digits long and can consist of numbers, characters and special characters. Note: When using GnuPG or OpenSC, 32 character long PINs can be used but aren't supported by Nitrokey App. Nitrokey U2F stores a single ECC key pair but can be used with an unlimited amount of user accounts. Nitrokey uses PINs instead of passwords. The main difference is that the hardware limits the amount of tries to three while a limit doesn't exist for passwords. Because of this, a short PIN is still secure and there is not need to choose a long and complex PIN. Pro + Storage Pro 2 + Storage 2 See the `frontpage`_ for an overview of supported use cases. See the following table: See the relevant product faq for details: (@todo add links) Shop and Delivery FAQ Start The Nitrokey GmbH has a heterogeneous customer base, private and enterprise customers, from Germany as well as inside and outside of the EU. With the pricing we want to ensure that all customers pay a uniform rate. For example, a large international corporation should pay just as much as a German private customer. Accordingly, the gross price (incl. VAT) for German private customers equals the net price (excluding VAT) for EU enterprise customers and all customers outside of the EU. This approach has been audited and is legally correct. The Nitrokey Pro, Nitrokey Start and Nitrokey Storage can store three RSA key pairs. All keys use the same identity but are used for different purposes: authentication, encryption and signing. The admin PIN can have up to 20 digits and other characters (e.g. alphabetic and special characters). But as the admin PIN is blocked as soon three wrong PIN attempts were done, it is sufficiently secure to only have 8 digits PIN. The default PIN is 12345678. The admin PIN is at least 8-digits long and is used to change contents/settings of the Nitrokey. That is to say after initializing the Nitrokey you probably won't need this PIN too often (e.g. if you want to add another password to the password safe of the Nitrokey Pro or Nitrokey Storage). The firmware password is never blocked. An attacker could try to guess the password and would have unlimited attempts. Therefore you must choose a strong password. The default password is 12345678. The security controler's hardware is Common Criteria certified (`Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP Smart Card Controller P5CD081V1A and its major configurations P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A and P5CD016V1A each with IC dedicated Software"). The user PIN can have up to 20 digits and other characters (e.g. alphabetic and special characters). But as the user PIN is blocked as soon three wrong PIN attempts were done, it is sufficiently secure to only have a 6 digits PIN. The default PIN is 123456. The user PIN is at least 6-digits long and is used to get access to the contect of the Nitrokey. This is the PIN you will use a lot in every day use e.g. for decrypting messages, for unlocking your encrypted storage (NK Storage only) etc. There is a Right for most customers. Further details can be found here (https://www.nitrokey.com/right-withdrawal-consumers) To return a goods (e.g. Nitrokey): We strongly recommend to change these PINs/password to user-chosen values before using the Nitrokey. Windows, Linux, and Mac OS X. Windows, Linux, and Mac OS X. Also some support (FIDO2) for Android. World wide: 2-3 weeks World wide: 5-10 business days curve25519 rsa1024 rsa2048 rsa3072 rsa4096 secp192 secp256 secp521 ✓ Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-10-06 01:52+0200
PO-Revision-Date: 2022-01-10 10:21+0000
Last-Translator: Ben (Weblate Admin) <ben@dotplex.com>
Language: nl
Language-Team: Dutch <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-shared-faqs/nl/>
Plural-Forms: nplurals=2; plural=n != 1;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **Admin PIN:** De admin PIN is minstens 8 cijfers lang en wordt gebruikt om inhoud/instellingen van de Nitrokey te wijzigen. Dat wil zeggen dat u na het initialiseren van de Nitrokey deze PIN waarschijnlijk'niet al te vaak nodig zult hebben (bijv. als u een ander wachtwoord wilt toevoegen aan de wachtwoordkluis van de Nitrokey Pro of Nitrokey Storage). **Administrateur PIN:** "12345678" **Firmware wachtwoord** (alleen Nitrokey opslag): "12345678" **Het firmware wachtwoord moet voldoen aan de algemene wachtwoord aanbevelingen (bijv. gebruik alfabetische tekens, cijfers en speciale tekens of gebruik een wachtwoord dat lang genoeg is). Het firmware wachtwoord is nodig om de firmware van de Nitrokey Storage te updaten. Zie verdere instructies voor het updateproces hier. **Brief en aangetekende post**: *Nitrokey HSM2:**De hardware en het besturingssysteem van de security controler's zijn Common Criteria gecertificeerd (`Security Target`_; `HSM2 Report`_; Zie `hier`_, klik "ICs, Smart Cards and Smart Card-Related Devices and Systems" en zoek naar "NXP JCOP 3 P60"). **Nitrokey HSM:**De hardware en het besturingssysteem van de beveiligingscontroller's zijn Common Criteria-gecertificeerd (`HSM-verslag`_; zie `hier`_, klik op "ICs, Smart Cards and Smart Card-Related Devices and Systems" en zoek naar "NXP J3A080 v2.4.1 Secure Smart Card Controller (JCOP v2.4.1)"). *Nitrokey Pro 1+2:**De hardware van de security controler's is Common Criteria gecertificeerd (`Report`_; Zie `hier`_, klik "ICs, Smart Cards and Smart Card-Related Devices and Systems" en zoek naar "NXP Smart Card Controller P5CD081V1A en zijn belangrijkste configuraties P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A en P5CD016V1A elk met IC dedicated Software"). **Nitrokey Storage 1+2:** `Cure53`_ heeft een `onafhankelijke beveiligingsaudit`_ van de hardware, firmware, en Nitrokey App uitgevoerd. **Parcel**: **Q:** Bevatten Nitrokeys een beveiligde chip of gewoon een normale microcontroller? **Q:** Hoe snel is versleutelen en ondertekenen? **Q:** Hoe goed is de Random Number Generator (RNG)? **V:** Hoe wordt de Bitcoin-wisselkoers berekend? **Q:** Hoe groot is de opslagcapaciteit? **Q:** Hoe lang duurt de verzending? **Q:** Hoeveel sleutels kan ik opslaan? **Q:** Hoe retourneer ik goederen? **Q:** Is Nitrokey Common Criteria of FIPS gecertificeerd? **Q:** Bestaat er een recht van herroeping? **Q:** Is er een garantie? **Q:** Prijzen en BTW **Q:** Wat zijn de standaard wachtwoorden? **Q:** Waar kan ik de Nitrokey voor gebruiken? **Q:** Waarvoor dient de Admin PIN? **Q:** Waarvoor dient de gebruikers-PIN? **Q:** Wat is de maximale lengte van de PIN-code? **Q:** Waarvoor dient de PIN/het wachtwoord van de gebruiker/admin/firmware? **Q:** Welke besturingssystemen worden ondersteund? **Q:** Welke algoritmen en maximale sleutellengte worden ondersteund? **SO PIN:** De SO PIN wordt alleen in de Nitrokey HSM gebruikt en is zoiets als een "master" PIN met speciale eigenschappen. Lees deze instructies zorgvuldig door om de SO PIN van de Nitrokey HSM te begrijpen. **SO-PIN** (alleen Nitrokey HSM): "35373632313830" **Gebruikers PIN:** "123456" **Gebruikers-PIN:** De gebruikers-PIN is minstens 6 cijfers lang en wordt gebruikt om toegang te krijgen tot de Nitrokey-contect. Dit is de PIN die u vaak in het dagelijks gebruik zult gebruiken, bijv. voor het ontsleutelen van berichten, voor het ontgrendelen van uw versleutelde opslag (alleen NK Storage) enz. Op het moment van bestellen, neemt ons systeem de wisselkoers van blockchain.info en voegt 10% er bovenop. De 10% zijn voor onze administratiekosten (het terugwisselen van Bitcoins naar Euro) en voor het risico van de zwevende wisselkoers. Brainpool 192 Brainpool 256-320 Brainpool 384-521 EU: 2-5 werkdagen EU: 5-10 werkdagen Vaak gestelde vragen Generische Nitrokeys FAQ Duitsland: 1-3 werkdagen Duitsland: 2-5 werkdagen HSM HSM2 Als u een backup van uw sleutels wil, moet u daaraan denken bij het aanmaken van de sleutels. Meer informatie en opties voor het aanmaken van sleutels kan je vinden in onze :doc:`documentatie <../pro/linux/openpgp>`. In geval van een hardwaredefect kunt u contact met ons opnemen en zullen wij u een verzendlabel toesturen. Verpak het apparaat in een luchtkussenenveloppe (niet in een gewone enveloppe!). Voeg de afleverbon of afdruk van de factuur bij de zending. Voeg een notitie toe van de reden van de retourzending, bijv. "Terugtrekking van de aankoop" of "Omruiling wegens defect". Het is voldoende om de reden in handschrift op de bijgevoegde factuur of afleverbon te vermelden. Adresseer de mailing aan ons adres. Dat hangt ervan af. Niemand kan de sleutels kopiëren die op de Nitrokey zijn opgeslagen. Maar afhankelijk van het sleutelcreatieproces kunt u nog steeds een backup van de sleutels elders opslaan. NIST-P 192 NIST-P 256 NIST-P 384-521 Nitrokey HSM kan 20 RSA-2048 en 31 ECC-256 sleutelparen opslaan. Nitrokey Pro's en Storage's PINs kunnen tot 20 cijfers lang zijn en kunnen bestaan uit cijfers, tekens en speciale tekens. Opmerking: Bij gebruik van GnuPG of OpenSC kunnen PIN's van 32 tekens worden gebruikt, maar'worden niet ondersteund door Nitrokey App. Nitrokey Pro, Nitrokey HSM en Nitrokey Storage bevatten een fraudebestendige smartcard. Tot op zekere hoogte geldt dit ook voor Nitrokey U2F, maar die'is van mindere kwaliteit. Nitrokey Start is geïmplementeerd in de microprocessor. Nitrokey Pro, Nitrokey Start, Nitrokey HSM en Nitrokey U2F bevatten geen opslagmogelijkheid voor gewone gegevens (het kan alleen cryptografische sleutels en certificaten opslaan). Nitrokey Storage kan 8, 32 of 64 GB aan gegevens opslaan en versleutelen (afhankelijk van het model). Nitrokey Storage's PINs kunnen tot 20 cijfers lang zijn en kunnen bestaan uit cijfers, tekens en speciale tekens. Opmerking: Bij gebruik van GnuPG of OpenSC kunnen PIN's van 32 tekens lang worden gebruikt, maar'worden niet ondersteund door Nitrokey App. Nitrokey U2F slaat een enkel ECC sleutelpaar op, maar kan gebruikt worden met een onbeperkt aantal gebruikersaccounts. Nitrokey gebruikt pincodes in plaats van wachtwoorden. Het belangrijkste verschil is dat de hardware het aantal pogingen beperkt tot drie, terwijl er voor wachtwoorden geen limiet bestaat. Hierdoor is een korte PIN nog steeds veilig en is het niet nodig een lange en complexe PIN te kiezen. Pro + Storage Pro 2 + Storage 2 Zie de `frontpage`_ voor een overzicht van ondersteunde use-cases. Zie de volgende tabel: Zie de relevante product faq voor details: (@todo links toevoegen) Winkel en levering FAQ Start Nitrokey GmbH heeft een heterogene klantenkring, particuliere en zakelijke klanten, zowel uit Duitsland als van binnen en buiten de EU. Met de prijsstelling willen we ervoor zorgen dat alle klanten een uniform tarief betalen. Zo moet bijvoorbeeld een grote internationale onderneming evenveel betalen als een Duitse particuliere klant. Daarom is de brutoprijs (incl. BTW) voor Duitse particuliere klanten gelijk aan de nettoprijs (excl. BTW) voor zakelijke klanten in de EU en alle klanten buiten de EU. Deze aanpak is gecontroleerd en is juridisch correct. De Nitrokey Pro, Nitrokey Start en Nitrokey Storage kunnen drie RSA sleutelparen opslaan. Alle sleutels hebben dezelfde identiteit, maar worden voor verschillende doeleinden gebruikt: authenticatie, versleuteling en ondertekening. De admin PIN kan tot 20 cijfers en andere tekens (bv. alfabetische en speciale tekens) bevatten. Maar aangezien de admin-PIN wordt geblokkeerd zodra drie verkeerde PIN-pogingen zijn gedaan, is het voldoende veilig om slechts een PIN van 8 cijfers te hebben. De standaard PIN is 12345678. De admin PIN is minstens 8 cijfers lang en wordt gebruikt om inhoud/instellingen van de Nitrokey te wijzigen. Dat wil zeggen dat u na het initialiseren van de Nitrokey deze PIN waarschijnlijk'niet al te vaak nodig zult hebben (bijv. als u een ander wachtwoord wilt toevoegen aan de wachtwoordkluis van de Nitrokey Pro of Nitrokey Storage). Het wachtwoord van de firmware wordt nooit geblokkeerd. Een aanvaller kan proberen het wachtwoord te raden en zou onbeperkte pogingen hebben. Daarom moet u een sterk wachtwoord kiezen. Het standaardwachtwoord is 12345678. De hardware van de veiligheidscontroller's is Common Criteria gecertificeerd (`Report`_; Zie `hier`_, klik "ICs, Smart Cards and Smart Card-Related Devices and Systems" en zoek naar "NXP Smart Card Controller P5CD081V1A en zijn belangrijkste configuraties P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A en P5CD016V1A elk met IC dedicated Software"). De gebruikers-PIN kan tot 20 cijfers en andere tekens (bv. alfabetische en speciale tekens) omvatten. Maar aangezien de gebruikers-PIN wordt geblokkeerd zodra drie verkeerde PIN-pogingen zijn gedaan, is het voldoende veilig om slechts een PIN van 6 cijfers te hebben. De standaard PIN-code is 123456. De gebruikers-PIN is minstens 6 cijfers lang en wordt gebruikt om toegang te krijgen tot de inhoud van de Nitrokey. Dit is de PIN die u vaak in het dagelijks gebruik zult gebruiken, bijv. voor het ontsleutelen van berichten, voor het ontgrendelen van uw versleutelde opslag (alleen NK Storage) enz. Er is een recht voor de meeste klanten. Verdere details zijn hier te vinden (https://www.nitrokey.com/right-withdrawal-consumers) Om goederen terug te brengen (b.v. Nitrokey): Wij raden ten sterkste aan om deze PIN/paswoord te wijzigen in door de gebruiker gekozen waarden voordat u de Nitrokey gebruikt. Windows, Linux, en Mac OS X. Windows, Linux, en Mac OS X. Ook enige ondersteuning (FIDO2) voor Android. Wereldwijd: 2-3 weken Wereldwijd: 5-10 werkdagen curve25519 RSA1024 RSA2048 rsa3072 RSA4096 secp192 secp256 secp521 ✓ 
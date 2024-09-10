��    \      �              �  2  �  !     9   2  @  l     �  �   �    �	  d  �
     J     �  K   �  *   "  5   M  3   �  )   �  '   �  !   	     +  5   G  &   }     �     �  &   �  '   �  !   &      H  -   i  4   �  -   �  =   �  �   8  2        7  �   N  �   K     3     A     S     e     {     �     �     �     �     �     �  �     �  �  �   �  
   L  
   W     b  <   q  �   �  �   �  �   n  _     �   v  d   T    �     �     �  <   �       ;   5     q     �    �  �   �    m   #  q!  �   �"  N  [#    �$  �   �%  |   �&  "   '  d   ;'     �'  D   �'     (     (  
   8(     C(     K(     S(     [(     c(     k(     s(     {(  �  (  b  d*  &   �+  8   �+  R  ',     z-  �   �-    �.  h  �/     1  
   �1  T   �1  /   �1  1   2  -   N2  %   |2  (   �2  (   �2  $   �2  <   3  !   V3     x3      �3  &   �3  '   �3  "   4  $   %4  2   J4  6   }4  -   �4  A   �4  �   $5  5   �5     -6    K6  �   R7     O8     ]8     o8     �8     �8     �8  0   �8     �8     9     &9     *9  �   /9  �  :  �   �;  
   �<  
   �<     �<  <   �<  �   =  �   >  �   �>  `   �?  �   @  a   �@  )  QA     {B     �B  N   �B     �B  P   C  .   UC     �C  �  �C  �   �E    HF  G  cG  �   �H  Q  xI    �J  �   �K     �L  +   NM     zM     �M  L   N     cN     {N  
   �N     �N     �N     �N     �N     �N     �N     �N     �N   **Admin PIN:** The admin PIN is at least 8-digits long and is used to change contents/settings of the Nitrokey. That is to say after initializing the Nitrokey you probably won't need this PIN too often (e.g. if you want to add another password to the password safe of the Nitrokey Pro or Nitrokey Storage). **Administrator PIN:** "12345678" **Firmware Password** (Nitrokey Storage only): "12345678" **Firmware password:** The firmware password should meet general password recommandations (e.g. use alphabetic characters, digits and special characters or use a usfficiently long password). The firmware password is needed to update the firmware of the Nitrokey Storage. See further instructions for update process here. **Letter and Registered Mail**: **Nitrokey HSM2:** The security controler's hardware and operating system are Common Criteria certified (`Security Target`_; `HSM2 Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP JCOP 3 P60"). **Nitrokey HSM:** The security controler's hardware and operating system are Common Criteria certified (`HSM Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP J3A080 v2.4.1 Secure Smart Card Controller (JCOP v2.4.1)"). **Nitrokey Pro 1+2:** The security controler's hardware is Common Criteria certified (`Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP Smart Card Controller P5CD081V1A and its major configurations P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A and P5CD016V1A each with IC dedicated Software"). **Nitrokey Storage 1+2:** `Cure53`_ has performed an `independent security audit`_ of the hardware, firmware, and Nitrokey App. **Parcel**: **Q:** Do Nitrokeys contain a secure chip or just a normal microcontroller? **Q:** How fast is encryption and signing? **Q:** How good is the Random Number Generator (RNG)? **Q:** How is the Bitcoin exchange rate calculated? **Q:** How large is the storage capacity? **Q:** How long does the shipping take? **Q:** How many keys can I store? **Q:** How to return goods? **Q:** Is Nitrokey Common Criteria or FIPS certified? **Q:** Is there a Right of Withdrawal? **Q:** Is there a warranty? **Q:** Pricing and VAT **Q:** What are the default passwords? **Q:** What can I use the Nitrokey for? **Q:** What is the Admin PIN for? **Q:** What is the User PIN for? **Q:** What is the maximum length of the PIN? **Q:** What is user/admin/firmware PIN/password for? **Q:** Which Operating Systems are supported? **Q:** Which algorithms and maximum key length are supported? **SO PIN:** The SO PIN is used in the Nitrokey HSM only and is something like a "master" PIN with special properties. Please read this instructions carefully to understand the SO PIN of the Nitrokey HSM. **SO-PIN** (Nitrokey HSM only): "3537363231383830" **User PIN:** "123456" **User PIN:** The user PIN is at least 6-digits long and is used to get access to the contect of the Nitrokey. This is the PIN you will use a lot in every day use e.g. for decrypting messages, for unlocking your encrypted storage (NK Storage only) etc. At the time of ordering, our system takes the exchange rate from blockchain.info and adds 10% on top of it. The 10% are for our handling fees (exchanging Bitcoins back to Euro) and for the risk implicated by floating exchange rate. Brainpool 192 Brainpool 256-320 Brainpool 384-521 EU: 2-5 business days EU: 5-10 business days Frequently Asked Questions Generic Nitrokeys FAQ Germany: 1-3 business days Germany: 2-5 business days HSM HSM2 If you want to have a backup of your keys, you need to think about it when creating the keys. More information and options for the key creation can be found in our :doc:`documentation <../pro/linux/openpgp>`. In case of a hardware defect, you can contact us and we will send you a shipping label. Pack the device in an air cushion envelope (not in an ordinary envelope!). Include the delivery slip or printout of the invoice with the shipment. Add a note of the reason for the return, e.g. "Withdrawal of the purchase" or "Exchange due to defect". It is sufficient to note the reason in handwriting on the enclosed invoice or delivery note. Address the mailing to our address. It depends. No one can copy the keys which are stored on the Nitrokey. But depending on the key creation process you can still store a backup of the keys elsewhere. NIST-P 192 NIST-P 256 NIST-P 384-521 Nitrokey HSM can store 20 RSA-2048 and 31 ECC-256 key pairs. Nitrokey Pro's and Storage's PINs can be up to 20 digits long and can consist of numbers, characters and special characters. Note: When using GnuPG or OpenSC, 32 character long PINs can be used but aren't supported by Nitrokey App. Nitrokey Pro, Nitrokey HSM and Nitrokey Storage contain a tamper resistant smart card. To some extent this also applies to Nitrokey U2F but it's of lower quality. Nitrokey Start is implemented in the microprocessor. Nitrokey Pro, Nitrokey Start, Nitrokey HSM and Nitrokey U2F don't contain storage capability for ordinary data (it can only store cryptographic keys and certificates). Nitrokey Storage can store and encrypt 8, 32, or 64 GB of data (depending on particular model). Nitrokey Storage's PINs can be up to 20 digits long and can consist of numbers, characters and special characters. Note: When using GnuPG or OpenSC, 32 character long PINs can be used but aren't supported by Nitrokey App. Nitrokey U2F stores a single ECC key pair but can be used with an unlimited amount of user accounts. Nitrokey uses PINs instead of passwords. The main difference is that the hardware limits the amount of tries to three while a limit doesn't exist for passwords. Because of this, a short PIN is still secure and there is not need to choose a long and complex PIN. Pro + Storage Pro 2 + Storage 2 See the `frontpage`_ for an overview of supported use cases. See the following table: See the relevant product faq for details: (@todo add links) Shop and Delivery FAQ Start The Nitrokey GmbH has a heterogeneous customer base, private and enterprise customers, from Germany as well as inside and outside of the EU. With the pricing we want to ensure that all customers pay a uniform rate. For example, a large international corporation should pay just as much as a German private customer. Accordingly, the gross price (incl. VAT) for German private customers equals the net price (excluding VAT) for EU enterprise customers and all customers outside of the EU. This approach has been audited and is legally correct. The Nitrokey Pro, Nitrokey Start and Nitrokey Storage can store three RSA key pairs. All keys use the same identity but are used for different purposes: authentication, encryption and signing. The admin PIN can have up to 20 digits and other characters (e.g. alphabetic and special characters). But as the admin PIN is blocked as soon three wrong PIN attempts were done, it is sufficiently secure to only have 8 digits PIN. The default PIN is 12345678. The admin PIN is at least 8-digits long and is used to change contents/settings of the Nitrokey. That is to say after initializing the Nitrokey you probably won't need this PIN too often (e.g. if you want to add another password to the password safe of the Nitrokey Pro or Nitrokey Storage). The firmware password is never blocked. An attacker could try to guess the password and would have unlimited attempts. Therefore you must choose a strong password. The default password is 12345678. The security controler's hardware is Common Criteria certified (`Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP Smart Card Controller P5CD081V1A and its major configurations P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A and P5CD016V1A each with IC dedicated Software"). The user PIN can have up to 20 digits and other characters (e.g. alphabetic and special characters). But as the user PIN is blocked as soon three wrong PIN attempts were done, it is sufficiently secure to only have a 6 digits PIN. The default PIN is 123456. The user PIN is at least 6-digits long and is used to get access to the contect of the Nitrokey. This is the PIN you will use a lot in every day use e.g. for decrypting messages, for unlocking your encrypted storage (NK Storage only) etc. There is a Right for most customers. Further details can be found here (https://www.nitrokey.com/right-withdrawal-consumers) To return a goods (e.g. Nitrokey): We strongly recommend to change these PINs/password to user-chosen values before using the Nitrokey. Windows, Linux, and Mac OS X. Windows, Linux, and Mac OS X. Also some support (FIDO2) for Android. World wide: 2-3 weeks World wide: 5-10 business days curve25519 rsa1024 rsa2048 rsa3072 rsa4096 secp192 secp256 secp521 ✓ Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-10-06 01:52+0200
PO-Revision-Date: 2022-01-10 16:10+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: da
Language-Team: Danish <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-shared-faqs/da/>
Plural-Forms: nplurals=2; plural=n != 1;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **Admin PIN-kode:** Admin PIN-koden er mindst 8 cifre lang og bruges til at ændre indholdet/indstillingerne på Nitrokey. Det vil sige, at efter initialisering af Nitrokey vil du sandsynligvis ikke få brug for denne PIN-kode for ofte (f.eks. hvis du ønsker at tilføje en anden adgangskode til adgangskodeboksen i Nitrokey Pro eller Nitrokey Storage). **Administrator PIN-kode:** "12345678" **Firmware Password** (kun Nitrokey Storage): "12345678" **Firmwareadgangskode:** Firmwareadgangskoden skal opfylde de generelle anbefalinger for adgangskoder (f.eks. brug alfabetiske tegn, cifre og specialtegn eller brug en tilstrækkelig lang adgangskode). Firmwareadgangskoden er nødvendig for at opdatere Nitrokey Storage's firmware. Se yderligere instruktioner om opdateringsprocessen her. **Brev og anbefalet brev**: **Nitrokey HSM2:** Sikkerhedskontrollen's hardware og operativsystem er Common Criteria-certificeret (`Security Target`_; `HSM2 Report`_; Se `her`_, klik på "ICs, Smart Cards and Smart Card-Related Devices and Systems" og søg efter "NXP JCOP 3 P60"). **Nitrokey HSM:** Sikkerhedsstyringen og operativsystemet er Common Criteria-certificeret (`HSM-rapport`_; se `her`_, klik på "IC'er, Smart Cards og Smart Card-relaterede enheder og systemer" og søg efter "NXP J3A080 v2.4.1 Secure Smart Card Controller (JCOP v2.4.1)"). **Nitrokey Pro 1+2:** Sikkerhedskontrollen's hardware er Common Criteria-certificeret (`Rapport`_; Se `her`_, klik på "IC'er, Smart Cards og Smart Card-relaterede enheder og systemer" og søg efter "NXP Smart Card Controller P5CD081V1A og dens hovedkonfigurationer P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A og P5CD016V1A hver med IC dedikeret software"). **Nitrokey Storage 1+2:** `Cure53`_ har udført en `uafhængig sikkerhedsrevision`_ af hardwaren, firmwaren og Nitrokey App'en. **Pakke**: **Q:** Indeholder Nitrokeys en sikker chip eller bare en almindelig mikrocontroller? **Q:** Hvor hurtigt er kryptering og signering? **Q:** Hvor god er Random Number Generator (RNG)? **Q:** Hvordan beregnes Bitcoin-vekselkursen? **Q:** Hvor stor er lagerkapaciteten? **Q:** Hvor lang tid tager forsendelsen? **Q:** Hvor mange nøgler kan jeg gemme? **Q:** Hvordan returnerer jeg varer? **Q:** Er Nitrokey Common Criteria- eller FIPS-certificeret? **Q:** Er der en fortrydelsesret? **Q:** Er der en garanti? **Q:** Prisfastsættelse og moms **Q:** Hvad er standardadgangskoderne? **Q:** Hvad kan jeg bruge Nitrokey til? **Q:** Hvad er Admin PIN-kode til? **Q:** Hvad er bruger-PIN-koden til? **Q:** Hvad er den maksimale længde af PIN-koden? **Q:** Hvad er bruger/admin/firmware PIN/password til? **Q:** Hvilke operativsystemer understøttes? **Q:** Hvilke algoritmer og maksimal nøglelængde understøttes? **SO PIN:** SO PIN-koden bruges kun i Nitrokey HSM og er noget i retning af en "master" PIN-kode med særlige egenskaber. Læs venligst denne vejledning omhyggeligt for at forstå SO PIN-koden for Nitrokey HSM. **SO-PIN** (kun Nitrokey HSM): "35373632323138383830" **Bruger-PIN-kode:** "123456" **Bruger-PIN:** Bruger-PIN-koden er mindst 6 cifre lang og bruges til at få adgang til Nitrokey's område. Dette er den PIN-kode, som du vil bruge meget i daglig brug, f.eks. til at dekryptere beskeder, til at låse dit krypterede lager op (kun NK Storage) osv. På bestillingstidspunktet tager vores system vekselkursen fra blockchain.info og lægger 10% o oveni den. De 10% aer for vores håndteringsgebyrer (veksling af Bitcoins tilbage til euro) og for den risiko, der er forbundet med den flydende valutakurs. Brainpool 192 Brainpool 256-320 Brainpool 384-521 EU: 2-5 arbejdsdage EU: 5-10 arbejdsdage Ofte stillede spørgsmål Ofte stillede spørgsmål om generiske Nitrokeys Tyskland: 1-3 hverdage Tyskland: 2-5 arbejdsdage HSM HSM2 Hvis du vil have en sikkerhedskopi af dine nøgler, skal du tænke på det, når du opretter nøglerne. Du kan finde flere oplysninger og muligheder for oprettelse af nøgler i vores :doc:`documentation <../pro/linux/openpgp>`. I tilfælde af en defekt hardware kan du kontakte os, og vi sender dig en forsendelseslabel. Pak enheden ind i en luftpudekuvert (ikke i en almindelig kuvert!). Vedlæg følgesedlen eller udskrift af fakturaen med forsendelsen. Tilføj en note om årsagen til returneringen, f.eks. "Fortrydelse af købet" eller "Ombytning på grund af defekt". Det er tilstrækkeligt at notere årsagen med håndskrift på den vedlagte faktura eller følgeseddel. Send postforsendelsen til vores adresse. Det afhænger af det. Ingen kan kopiere de nøgler, der er gemt på Nitrokey. Men afhængigt af nøgleoprettelsesprocessen kan du stadig gemme en sikkerhedskopi af nøglerne et andet sted. NIST-P 192 NIST-P 256 NIST-P 384-521 Nitrokey HSM kan gemme 20 RSA-2048- og 31 ECC-256-nøglepar. Nitrokey Pro's og Storage's PIN-koder kan være op til 20 cifre lange og kan bestå af tal, tegn og specialtegn. Bemærk: Når du bruger GnuPG eller OpenSC, kan der bruges pinkoder med 32 tegn, men de understøttes ikke af Nitrokey App. Nitrokey Pro, Nitrokey HSM og Nitrokey Storage indeholder et chipkort, der er beskyttet mod manipulation. Til en vis grad gælder dette også for Nitrokey U2F, men det er af lavere kvalitet. Nitrokey Start er implementeret i mikroprocessoren. Nitrokey Pro, Nitrokey Start, Nitrokey HSM og Nitrokey U2F indeholder ikke mulighed for lagring af almindelige data (de kan kun lagre kryptografiske nøgler og certifikater). Nitrokey Storage kan lagre og kryptere 8, 32 eller 64 GB data (afhængigt af den enkelte model). Nitrokey Storage's PIN-koder kan være op til 20 cifre lange og kan bestå af tal, tegn og specialtegn. Bemærk: Når du bruger GnuPG eller OpenSC, kan der bruges pinkoder med 32 tegn, men de understøttes ikke af Nitrokey App. Nitrokey U2F gemmer et enkelt ECC-nøglepar, men kan bruges med et ubegrænset antal brugerkonti. Nitrokey bruger PIN-koder i stedet for adgangskoder. Den største forskel er, at hardwaren begrænser antallet af forsøg til tre, mens der ikke findes en grænse for adgangskoder. På grund af dette er en kort pinkode stadig sikker, og der er ikke behov for at vælge en lang og kompleks pinkode. Pro + opbevaring Pro 2 + opbevaring 2 Se `forside`_ for at få en oversigt over understøttede anvendelsestilfælde. Se følgende tabel: Se den relevante produktfaq for at få flere oplysninger: (@todo tilføje links) Ofte stillede spørgsmål om butik og levering Start Nitrokey GmbH har en heterogen kundebase, private og erhvervskunder, fra Tyskland samt inden for og uden for EU. Med prisfastsættelsen ønsker vi at sikre, at alle kunder betaler en ensartet pris. F.eks. skal en stor international virksomhed betale lige så meget som en tysk privatkunde. Derfor er bruttoprisen (inkl. moms) for tyske privatkunder lig med nettoprisen (ekskl. moms) for virksomhedskunder fra EU og alle kunder uden for EU. Denne fremgangsmåde er blevet revideret og er juridisk korrekt. Nitrokey Pro, Nitrokey Start og Nitrokey Storage kan gemme tre RSA-nøglepar. Alle nøgler bruger den samme identitet, men bruges til forskellige formål: autentificering, kryptering og signering. Admin-PIN-koden kan have op til 20 cifre og andre tegn (f.eks. alfabetiske og specialtegn). Men da administrator-PIN-koden blokeres, så snart der er foretaget tre forkerte PIN-forsøg, er det tilstrækkeligt sikkert kun at have en 8-cifret PIN-kode. Standard-PIN-koden er 12345678. Admin-PIN-koden er mindst 8 cifre lang og bruges til at ændre indholdet/indstillingerne på Nitrokey. Det vil sige, at efter initialisering af Nitrokey vil du sandsynligvis ikke få brug for denne PIN-kode for ofte (f.eks. hvis du vil tilføje en anden adgangskode til adgangskodeboksen i Nitrokey Pro eller Nitrokey Storage). Firmwareadgangskoden er aldrig blokeret. En angriber kan forsøge at gætte adgangskoden og har et ubegrænset antal forsøg. Du skal derfor vælge en stærk adgangskode. Standardadgangskoden er 12345678. Sikkerhedskontrollen's hardware er Common Criteria-certificeret (`Report`_; se `her`_, klik på "IC'er, Smart Cards og Smart Card-relaterede enheder og systemer" og søg efter "NXP Smart Card Controller P5CD081V1A og dens hovedkonfigurationer P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A og P5CD016V1A hver med IC dedikeret software"). Bruger-PIN-koden kan have op til 20 cifre og andre tegn (f.eks. alfabetiske og specialtegn). Men da bruger-PIN-koden blokeres, så snart der er gjort tre forkerte PIN-forsøg, er det tilstrækkeligt sikkert kun at have en 6-cifret PIN-kode. Standard-PIN-koden er 123456. Bruger-PIN-koden er mindst 6 cifre lang og bruges til at få adgang til Nitrokey's område. Det er den PIN-kode, du vil bruge meget i dagligdagen, f.eks. til at dekryptere beskeder, til at låse op for dit krypterede lager (kun NK Storage) osv. Der er en ret for de fleste kunder. Yderligere oplysninger kan findes her (https://www.nitrokey.com/right-withdrawal-consumers) For at returnere en vare (f.eks. Nitrokey): Vi anbefaler på det kraftigste, at du ændrer disse PIN-koder/adgangskoder til brugervalgte værdier, før du bruger Nitrokey. Windows, Linux og Mac OS X. Windows, Linux og Mac OS X. Der er også en vis støtte (FIDO2) til Android. I hele verden: 2-3 uger Verden over: 5-10 arbejdsdage curve25519 rsa1024 rsa2048 rsa3072 rsa4096 secp192 secp256 secp521 ✓ 
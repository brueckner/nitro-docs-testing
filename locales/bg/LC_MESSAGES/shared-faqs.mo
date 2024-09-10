��    \      �              �  2  �  !     9   2  @  l     �  �   �    �	  d  �
     J     �  K   �  *   "  5   M  3   �  )   �  '   �  !   	     +  5   G  &   }     �     �  &   �  '   �  !   &      H  -   i  4   �  -   �  =   �  �   8  2        7  �   N  �   K     3     A     S     e     {     �     �     �     �     �     �  �     �  �  �   �  
   L  
   W     b  <   q  �   �  �   �  �   n  _     �   v  d   T    �     �     �  <   �       ;   5     q     �    �  �   �    m   #  q!  �   �"  N  [#    �$  �   �%  |   �&  "   '  d   ;'     �'  D   �'     (     (  
   8(     C(     K(     S(     [(     c(     k(     s(     {(  �  (  Y  g*  ?   �,  \   -  �  ^-  2   �/  g  0  �  �1    3  �   5     �5  �   �5  i   �6  _   �6  W   X7  Q   �7  ?   8  A   B8  -   �8  S   �8  7   9  $   >9     c9  G   }9  B   �9  W   :  \   `:  S   �:  �   ;  M   �;  q   �;     b<  ;   �=  7   �=    �=  z  @     �A     �A     �A     �A      �A  *   �A  L   (B  +   uB  +   �B     �B     �B  �  �B  x  ]D  b  �G  
   9I  
   DI     OI  �   ^I  �  �I  S  �K    M  �   N  �  �N  �   �P  �  LQ     ,S     GS  �   fS  +   �S  �   T  R   �T     �T  u  �T  b  sX  �  �Y    �[  g  �]  6  T_  �  �a  �  nc  �   ?e  4   f  �   ;f     g  g   .g  2   �g  .   �g     �g     h     h     h      h     (h     0h     8h     @h   **Admin PIN:** The admin PIN is at least 8-digits long and is used to change contents/settings of the Nitrokey. That is to say after initializing the Nitrokey you probably won't need this PIN too often (e.g. if you want to add another password to the password safe of the Nitrokey Pro or Nitrokey Storage). **Administrator PIN:** "12345678" **Firmware Password** (Nitrokey Storage only): "12345678" **Firmware password:** The firmware password should meet general password recommandations (e.g. use alphabetic characters, digits and special characters or use a usfficiently long password). The firmware password is needed to update the firmware of the Nitrokey Storage. See further instructions for update process here. **Letter and Registered Mail**: **Nitrokey HSM2:** The security controler's hardware and operating system are Common Criteria certified (`Security Target`_; `HSM2 Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP JCOP 3 P60"). **Nitrokey HSM:** The security controler's hardware and operating system are Common Criteria certified (`HSM Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP J3A080 v2.4.1 Secure Smart Card Controller (JCOP v2.4.1)"). **Nitrokey Pro 1+2:** The security controler's hardware is Common Criteria certified (`Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP Smart Card Controller P5CD081V1A and its major configurations P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A and P5CD016V1A each with IC dedicated Software"). **Nitrokey Storage 1+2:** `Cure53`_ has performed an `independent security audit`_ of the hardware, firmware, and Nitrokey App. **Parcel**: **Q:** Do Nitrokeys contain a secure chip or just a normal microcontroller? **Q:** How fast is encryption and signing? **Q:** How good is the Random Number Generator (RNG)? **Q:** How is the Bitcoin exchange rate calculated? **Q:** How large is the storage capacity? **Q:** How long does the shipping take? **Q:** How many keys can I store? **Q:** How to return goods? **Q:** Is Nitrokey Common Criteria or FIPS certified? **Q:** Is there a Right of Withdrawal? **Q:** Is there a warranty? **Q:** Pricing and VAT **Q:** What are the default passwords? **Q:** What can I use the Nitrokey for? **Q:** What is the Admin PIN for? **Q:** What is the User PIN for? **Q:** What is the maximum length of the PIN? **Q:** What is user/admin/firmware PIN/password for? **Q:** Which Operating Systems are supported? **Q:** Which algorithms and maximum key length are supported? **SO PIN:** The SO PIN is used in the Nitrokey HSM only and is something like a "master" PIN with special properties. Please read this instructions carefully to understand the SO PIN of the Nitrokey HSM. **SO-PIN** (Nitrokey HSM only): "3537363231383830" **User PIN:** "123456" **User PIN:** The user PIN is at least 6-digits long and is used to get access to the contect of the Nitrokey. This is the PIN you will use a lot in every day use e.g. for decrypting messages, for unlocking your encrypted storage (NK Storage only) etc. At the time of ordering, our system takes the exchange rate from blockchain.info and adds 10% on top of it. The 10% are for our handling fees (exchanging Bitcoins back to Euro) and for the risk implicated by floating exchange rate. Brainpool 192 Brainpool 256-320 Brainpool 384-521 EU: 2-5 business days EU: 5-10 business days Frequently Asked Questions Generic Nitrokeys FAQ Germany: 1-3 business days Germany: 2-5 business days HSM HSM2 If you want to have a backup of your keys, you need to think about it when creating the keys. More information and options for the key creation can be found in our :doc:`documentation <../pro/linux/openpgp>`. In case of a hardware defect, you can contact us and we will send you a shipping label. Pack the device in an air cushion envelope (not in an ordinary envelope!). Include the delivery slip or printout of the invoice with the shipment. Add a note of the reason for the return, e.g. "Withdrawal of the purchase" or "Exchange due to defect". It is sufficient to note the reason in handwriting on the enclosed invoice or delivery note. Address the mailing to our address. It depends. No one can copy the keys which are stored on the Nitrokey. But depending on the key creation process you can still store a backup of the keys elsewhere. NIST-P 192 NIST-P 256 NIST-P 384-521 Nitrokey HSM can store 20 RSA-2048 and 31 ECC-256 key pairs. Nitrokey Pro's and Storage's PINs can be up to 20 digits long and can consist of numbers, characters and special characters. Note: When using GnuPG or OpenSC, 32 character long PINs can be used but aren't supported by Nitrokey App. Nitrokey Pro, Nitrokey HSM and Nitrokey Storage contain a tamper resistant smart card. To some extent this also applies to Nitrokey U2F but it's of lower quality. Nitrokey Start is implemented in the microprocessor. Nitrokey Pro, Nitrokey Start, Nitrokey HSM and Nitrokey U2F don't contain storage capability for ordinary data (it can only store cryptographic keys and certificates). Nitrokey Storage can store and encrypt 8, 32, or 64 GB of data (depending on particular model). Nitrokey Storage's PINs can be up to 20 digits long and can consist of numbers, characters and special characters. Note: When using GnuPG or OpenSC, 32 character long PINs can be used but aren't supported by Nitrokey App. Nitrokey U2F stores a single ECC key pair but can be used with an unlimited amount of user accounts. Nitrokey uses PINs instead of passwords. The main difference is that the hardware limits the amount of tries to three while a limit doesn't exist for passwords. Because of this, a short PIN is still secure and there is not need to choose a long and complex PIN. Pro + Storage Pro 2 + Storage 2 See the `frontpage`_ for an overview of supported use cases. See the following table: See the relevant product faq for details: (@todo add links) Shop and Delivery FAQ Start The Nitrokey GmbH has a heterogeneous customer base, private and enterprise customers, from Germany as well as inside and outside of the EU. With the pricing we want to ensure that all customers pay a uniform rate. For example, a large international corporation should pay just as much as a German private customer. Accordingly, the gross price (incl. VAT) for German private customers equals the net price (excluding VAT) for EU enterprise customers and all customers outside of the EU. This approach has been audited and is legally correct. The Nitrokey Pro, Nitrokey Start and Nitrokey Storage can store three RSA key pairs. All keys use the same identity but are used for different purposes: authentication, encryption and signing. The admin PIN can have up to 20 digits and other characters (e.g. alphabetic and special characters). But as the admin PIN is blocked as soon three wrong PIN attempts were done, it is sufficiently secure to only have 8 digits PIN. The default PIN is 12345678. The admin PIN is at least 8-digits long and is used to change contents/settings of the Nitrokey. That is to say after initializing the Nitrokey you probably won't need this PIN too often (e.g. if you want to add another password to the password safe of the Nitrokey Pro or Nitrokey Storage). The firmware password is never blocked. An attacker could try to guess the password and would have unlimited attempts. Therefore you must choose a strong password. The default password is 12345678. The security controler's hardware is Common Criteria certified (`Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP Smart Card Controller P5CD081V1A and its major configurations P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A and P5CD016V1A each with IC dedicated Software"). The user PIN can have up to 20 digits and other characters (e.g. alphabetic and special characters). But as the user PIN is blocked as soon three wrong PIN attempts were done, it is sufficiently secure to only have a 6 digits PIN. The default PIN is 123456. The user PIN is at least 6-digits long and is used to get access to the contect of the Nitrokey. This is the PIN you will use a lot in every day use e.g. for decrypting messages, for unlocking your encrypted storage (NK Storage only) etc. There is a Right for most customers. Further details can be found here (https://www.nitrokey.com/right-withdrawal-consumers) To return a goods (e.g. Nitrokey): We strongly recommend to change these PINs/password to user-chosen values before using the Nitrokey. Windows, Linux, and Mac OS X. Windows, Linux, and Mac OS X. Also some support (FIDO2) for Android. World wide: 2-3 weeks World wide: 5-10 business days curve25519 rsa1024 rsa2048 rsa3072 rsa4096 secp192 secp256 secp521 ✓ Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-10-06 01:52+0200
PO-Revision-Date: 2022-01-10 16:10+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: bg
Language-Team: Bulgarian <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-shared-faqs/bg/>
Plural-Forms: nplurals=2; plural=n != 1;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **ПИН код на администратора:** ПИН кодът на администратора е дълъг най-малко 8 цифри и се използва за промяна на съдържанието/настройките на Nitrokey. Това означава, че след инициализирането на Nitrokey вероятно няма да'се нуждаете от този ПИН твърде често (напр. ако искате да добавите друга парола в сейфа за пароли на Nitrokey Pro или Nitrokey Storage). **ПИН код на администратора:** "12345678" **Парола за твърд софтуер** (само за Nitrokey Storage): "12345678" **Парола за фърмуера:** Паролата за фърмуера трябва да отговаря на общите препоръки за парола (напр. да използва буквени знаци, цифри и специални знаци или да използва достатъчно дълга парола). Паролата за фърмуера е необходима за актуализиране на фърмуера на устройството за съхранение Nitrokey. Вижте допълнителни инструкции за процеса на актуализация тук. **Писмо и препоръчана поща**: **Nitrokey HSM2:** хардуерът и операционната система на контролера за сигурност са сертифицирани по Common Criteria (`Security Target`_; `HSM2 Report`_; Виж `тук`_, кликни върху "ICs, Smart Cards and Smart Card-Related Devices and Systems" и търси "NXP JCOP 3 P60"). **Nitrokey HSM:** Хардуерът и операционната система на контролера за сигурност са сертифицирани по Common Criteria (`HSM Report`_; Вижте `тук`_, кликнете върху "ICs, Smart Cards and Smart Card-Related Devices and Systems" и потърсете "NXP J3A080 v2.4.1 Secure Smart Card Controller (JCOP v2.4.1)"). **Nitrokey Pro 1+2:** Хардуерът на контролера за сигурност е сертифициран по Common Criteria (`Report`_; Виж `тук`_, кликни върху "ICs, Smart Cards and Smart Card-Related Devices and Systems" и потърсете "NXP Smart Card Controller P5CD081V1A и неговите основни конфигурации P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A и P5CD016V1A, всяка от които със специален софтуер за ИС"). **Нитрокей Storage 1+2:** `Cure53`_ е извършила `независим одит на сигурността`_ на хардуера, фърмуера и приложението Nitrokey. **Парцел**: **Отговор:** Нитрокеите съдържат ли защитен чип или просто обикновен микроконтролер? **В:** Колко бързо се извършва криптирането и подписването? **В:** Колко добър е генераторът на случайни числа (RNG)? **В:** Как се изчислява обменният курс на биткойн? **Q:** Колко голям е капацитетът за съхранение? **Q:** Колко време отнема доставката? **В:** Колко ключа мога да съхранявам? **Q:** Как да върна стоките? **В:** Сертифициран ли е Nitrokey по Common Criteria или FIPS? **В:** Има ли право на оттегляне? **Q:** Има ли гаранция? **Q:** Цени и ДДС **В:** Какви са паролите по подразбиране? **В:** За какво мога да използвам Nitrokey? **В:** За какво служи ПИН кодът на администратора? **В:** За какво се използва ПИН кодът на потребителя? **В:** Каква е максималната дължина на ПИН кода? **В:** За какво служи ПИН кодът/паролата на потребителя/администратора/фирмуера? **В:** Кои операционни системи се поддържат? **В:** Кои алгоритми и максимална дължина на ключа се поддържат? **SO PIN:** SO PIN се използва само в Nitrokey HSM и е нещо като "главен" PIN със специални свойства. Моля, прочетете внимателно тези инструкции, за да разберете SO PIN на Nitrokey HSM. **SO-PIN** (само за Nitrokey HSM): "3537363231383830" **ПИН код на потребителя:** "123456" **ПИН код на потребителя:** ПИН кодът на потребителя е дълъг най-малко 6 цифри и се използва за достъп до съдържанието на Nitrokey. Това е ПИН кодът, който ще използвате много често при ежедневна употреба, напр. за декриптиране на съобщения, за отключване на криптираното хранилище (само за NK Storage) и др. По време на поръчката нашата система взема обменния курс от blockchain.info и добавя 10% oкъм него. Тези 10% a са за нашите такси за обработка (обмен на биткойни обратно в евро) и за риска, свързан с плаващия обменен курс. Brainpool 192 Brainpool 256-320 Brainpool 384-521 ЕС: 2-5 работни дни ЕС: 5-10 работни дни Често задавани въпроси Често задавани въпроси за генерични Nitrokeys Германия: 1-3 работни дни Германия: 2-5 работни дни HSM HSM2 Ако искате да имате резервно копие на ключовете си, трябва да помислите за това още при създаването им. Повече информация и опции за създаването на ключове можете да намерите в нашата :doc:`документация <../pro/linux/openpgp>`. В случай на хардуерен дефект можете да се свържете с нас и ние ще ви изпратим етикет за доставка. Опаковайте устройството в плик с въздушна възглавница (не в обикновен плик!). Приложете към пратката разписката за доставка или разпечатката на фактурата. Добавете бележка за причината за връщането, например "Отказ от покупка" или "Замяна поради дефект". Достатъчно е причината да бъде отбелязана ръкописно върху приложената фактура или товарителница. Адресирайте пратката на нашия адрес. Зависи. Никой не може да копира ключовете, които се съхраняват в Nitrokey. Но в зависимост от процеса на създаване на ключове все пак можете да съхранявате резервно копие на ключовете на друго място. NIST-P 192 NIST-P 256 NIST-P 384-521 Nitrokey HSM може да съхранява 20 двойки ключове RSA-2048 и 31 двойки ключове ECC-256. ПИН кодовете на Nitrokey Pro's и Storage's могат да бъдат с дължина до 20 цифри и да се състоят от цифри, символи и специални знаци. Забележка: Когато използвате GnuPG или OpenSC, могат да се използват ПИН кодове с дължина 32 символа, но те не се поддържат от приложението Nitrokey. Nitrokey Pro, Nitrokey HSM и Nitrokey Storage съдържат устойчива на подправяне смарт карта. До известна степен това се отнася и за Nitrokey U2F, но тя е с по-ниско качество. Nitrokey Start е реализирана в микропроцесора. Nitrokey Pro, Nitrokey Start, Nitrokey HSM и Nitrokey U2F не съдържат възможност за съхранение на обикновени данни (могат да съхраняват само криптографски ключове и сертификати). Nitrokey Storage може да съхранява и криптира 8, 32 или 64 GB данни (в зависимост от конкретния модел). ПИН кодовете на Nitrokey Storage' могат да бъдат с дължина до 20 цифри и да се състоят от цифри, знаци и специални символи. Забележка: Когато използвате GnuPG или OpenSC, могат да се използват ПИН кодове с дължина 32 символа, но те не се поддържат от приложението Nitrokey. Nitrokey U2F съхранява една двойка ключове ECC, но може да се използва с неограничен брой потребителски акаунти. Nitrokey използва ПИН кодове вместо пароли. Основната разлика е, че хардуерът ограничава броя на опитите до три, докато при паролите такова ограничение не съществува. Поради тази причина краткият ПИН все още е сигурен и не е необходимо да избирате дълъг и сложен ПИН. Pro + съхранение Pro 2 + съхранение 2 Вижте `първата страница`_ за преглед на поддържаните случаи на употреба. Вижте следната таблица: За повече информация вижте съответната информация за продукта: (@todo add links) Често задавани въпроси за магазин и доставка Начало Nitrokey GmbH има разнородна клиентска база - частни и корпоративни клиенти от Германия, както и от и извън ЕС. С ценообразуването искаме да гарантираме, че всички клиенти плащат еднаква цена. Например, голяма международна корпорация трябва да плаща точно толкова, колкото и германски частен клиент. Съответно брутната цена (с ДДС) за германски частни клиенти е равна на нетната цена (без ДДС) за корпоративни клиенти от ЕС и всички клиенти извън ЕС. Този подход е одитиран и е правно коректен. Nitrokey Pro, Nitrokey Start и Nitrokey Storage могат да съхраняват три двойки ключове RSA. Всички ключове използват една и съща идентичност, но се използват за различни цели: удостоверяване, криптиране и подписване. ПИН кодът на администратора може да съдържа до 20 цифри и други знаци (напр. буквени и специални знаци). Но тъй като ПИН кодът на администратора се блокира при три грешни опита за въвеждане на ПИН код, достатъчно сигурно е да има само 8 цифри ПИН код. ПИН кодът по подразбиране е 12345678. Администраторският PIN код е дълъг поне 8 цифри и се използва за промяна на съдържанието/настройките на Nitrokey. Това означава, че след инициализирането на Nitrokey вероятно няма да'се нуждаете от този ПИН твърде често (напр. ако искате да добавите друга парола в сейфа за пароли на Nitrokey Pro или Nitrokey Storage). Паролата на фърмуера никога не се блокира. Нападателят може да се опита да отгатне паролата и ще има неограничен брой опити. Затова трябва да изберете силна парола. Паролата по подразбиране е 12345678. Хардуерът на контролера за сигурност е сертифициран по Common Criteria (`Доклад`_; Вижте `тук`_, щракнете върху "ИС, смарт карти и свързани със смарт карти устройства и системи" и потърсете "NXP Smart Card Controller P5CD081V1A и неговите основни конфигурации P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A и P5CD016V1A, всяка от които със специален софтуер за ИС"). Потребителският ПИН код може да съдържа до 20 цифри и други символи (напр. буквени и специални символи). Но тъй като потребителският ПИН се блокира при три грешни опита за въвеждане на ПИН, достатъчно сигурно е да има само 6-цифрен ПИН. ПИН кодът по подразбиране е 123456. Потребителският PIN код е дълъг най-малко 6 цифри и се използва за достъп до съдържанието на Nitrokey. Това е ПИН кодът, който ще използвате често в ежедневието, например за декриптиране на съобщения, за отключване на криптираното хранилище (само за NK Storage) и т.н. За повечето клиенти има право. Допълнителна информация можете да намерите тук (https://www.nitrokey.com/right-withdrawal-consumers). Връщане на стока (напр. Nitrokey): Силно препоръчваме да промените тези ПИН кодове/пароли с избрани от потребителя стойности, преди да използвате Nitrokey. Windows, Linux и Mac OS X. Windows, Linux и Mac OS X. Също така известна поддръжка (FIDO2) за Android. В световен мащаб: 2-3 седмици В цял свят: 5-10 работни дни крива25519 rsa1024 rsa2048 rsa3072 rsa4096 secp192 secp256 secp521 ✓ 
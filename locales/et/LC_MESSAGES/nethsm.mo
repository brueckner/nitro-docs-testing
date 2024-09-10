��    S      �              L  �   M  q     [   y  �   �    �  k   �  +   	  %   B	  5   h	  _   �	  _   �	  4  ^
  )   �  1   �     �  ^  �  o   V     �  
   �  
   �     �  V     %   Y  �               �   *  �   �  M   �     	  �     �   �  w  �     +  e   :  !   �  �   �  V   �      �          %     4  	   C  �   M     "  F   )  �   p  �   N  .   �  7     '   V     ~     �  "   �  >  �            r     !   �  �   �  O   �  �  �  V   �  �   �  �   �  8   P   A   �   P   �   E   !  �   b!  |  "  �   �#  f   6$    �$  .   �%  �   �%     e&    m&     o'  ;   '  �   �'     _(  �  �(  �   �*  {   �+  k   ,  �   ,  �   s-  o   f.  ,   �.  $   /  ,   (/  a   U/  a   �/  L  0  -   f1  ;   �1     �1  ^  �1  x   <3     �3     �3     �3     �3  [   �3  &   U4  �   |4     
5  
   !5  �   ,5  �   �5  C   �6     
7  �   7  �   �7    �8     O:  g   b:  $   �:  �   �:  V   �;  ,   &<     S<     g<     t<     �<  �   �<     p=  O   w=  �   �=  �   �>  9   e?  7   �?  /   �?  !   @     )@      0@  @  Q@     �A     �A  r   �A  4   .B  �   cB  T   \C  �  �C  b   bE  �   �E  �   sF  9   G  A   HG  T   �G  B   �G  �   "H  �  �H  �   ;J  m   �J    YK  2   qL  ~   �L  	   #M  �   -M     N  >   1N  �   pN  �   O   *R-Administrator*: A user account with this Role has access to all operations provided by the REST API, with the exception of key usage operations, i.e. message signing and decryption. *R-Backup*: A user account with this Role has access to the operations required to initiate a system backup only. *R-Metrics*: A user account with this Role has access to read-only metrics operations only. *R-Operator*: A user account with this Role has access to all key usage operations, a read-only subset of key management operations and user management operations allowing changes to their own account only. A new NetHSM needs to be provisioned first with passphrases and the current time. The *Admin Passphrase* is the *Administrator*’s passphrase, which is the super user of the NetHSM. The *Unlock Passphrase* is used to encrypt NetHSM’s confidential data store. A public NetHSM demo instance is available at `nethsmdemo.nitrokey.com <https://nethsmdemo.nitrokey.com>`_. Accessing a NetHSM using the PKCS#11 driver Accessing a NetHSM using the REST API Accessing a NetHSM with the nitropy command line tool After creating a key (here: ID 23) with the according mechanism, you can use it for decryption: After creating a key (here: ID 42) with the according mechanism, you can use it for decryption: Alternatively you can run the `NetHSM Docker container <https://hub.docker.com/r/nitrokey/nethsm>`_ locally. The NetHSM container requires nested virtualization for strong separation with other containers. Thus, to start a NetHSM container you need a Linux host with /dev/kvm available. Execute this command: Alternatively, you can cancel the update: And then use ``openssl`` to verify the signature: Backups Before we start, we store the host name of the NetHSM instance in the ``NETHSM_HOST`` environment variable.  You can use the public NetHSM demo instance ``nethsmdemo.nitrokey.com`` or run a local demo instance using the NetHSM docker image, see the `Development and Testing </index.html#development-and-testing>`_ section of the NetHSM documentation. Connect the NetHSM's ETH3 port with the network. Don't use the ETH0 port because it allows wider system access. Create a User Decrypting Decryption Development and Testing Download the `PKCS#11 driver <https://github.com/Nitrokey/nethsm-pkcs11>`_ for NetHSM. First, let’s see what we have here: For a complete list of available key algorithms and key mechanisms, see the API documentation for the KeyAlgorithm_ and KeyMechanism_ types. Generate Keys Getting Started If you use a NetHSM demo instance with a self-signed certificate, for example using the Docker image, you will have to use the ``--insecure``/``-k`` option for ``curl`` to skip the certificate check. If you use a NetHSM demo instance with a self-signed certificate, for example using the Docker image, you will have to use the ``--no-verify-tls`` option for ``nitropy`` to skip the certificate check. If you want to continue with the installation, you can now commit the update: Import Keys In *Attended Boot* mode the *Unlock Passphrase* needs to be entered during each start which is used to encrypt the data store. For security reasons this mode is recommended. In *Unattended Boot* mode no Unlock Passphrase is required, therefore the NetHSM can start unattended and the data store is stored unencrypted. Use this mode if your availability requirements can’t be fulfilled with *Attended Boot* mode. In this guide, we want to use an RSA key to decrypt data using PKCS #1 and to sign data with PSS using SHA256.  So let’s generate a new key on the NetHSM. Make sure to use the ``RSA`` algorithm and to select the ``RSA_Signature_PSS_SHA256`` and ``RSA_Decryption_PKCS1`` key mechanisms.  If you don’t specify a key ID, the NetHSM will generate a random ID for the new key. Initialization Instead of generating a key on the NetHSM, you can also import existing private keys into the NetHSM: Integration to Custom Application It is possible to crate a backup of the NetHSM that captures both the configuration and the stored keys.  In order to create a backup, you first have to set a backup passphrase that is used to encrypt the backup file: It is possible to set and query certificates for the keys stored on a NetHSM instance: Key Certificate Signing Requests Key Certificates Key Management Key Operations List Keys Modify the configuration file ``p11nethsm.conf`` according to your setup (e.g. address, operator name) and store it in ``$HOME/.nitrokey``, ``/etc/nitrokey/``, or in the folder where your application is executed. NetHSM NetHSM can be used in *Attended Boot* mode and *Unattended Boot* mode. Note: In a future release another Role will be implemented which is allowed to /keys/ POST, /keys/generate POST, /keys/{KeyID} PUT & DELETE, /keys/{KeyID}/cert PUT & DELETE in addition to what R-Operator is allowed to do. Now create a new user with the operator role that can be used to sign and decrypt data.  Note that the NetHSM assigns a random user ID if we don’t specify it. Now we can use the NetHSM to decrypt the data: Now you have to create a user with the *R-Backup* role: Or switch back to *Attended Boot* mode: Retrieve the current mode: Roles See what the device’s status is: Separation of duties can be implemented by using the available Roles. Each user account configured on the NetHSM has one of the following Roles assigned to it. Following is a high-level description of the operations allowed by individual Roles, for endpoint-specific details please refer to the REST API documentation. Show Key Details Signing Similarily, we can sign data using the key on the NetHSM.  For RSA and ECDSA, we have to calculate a digest first: Switch to *Unattended Boot* mode: The NetHSM appliance is available at address 192.168.1.1. Access and initialize the NetHSM using `nitropy command line tool <cli.html>`_. Alternatively, the `REST API <api.html>`_ and `PKCS#11 driver <pkcs11.html>`_ can be used. The NetHSM demo instance at ``nethsmdemo.nitrokey.com`` is already provisioned. The NetHSM supports RSA, ED25519 and ECDSA keys.  When creating a key, you have to select both the key algorithm and the key mechanisms to use.  RSA keys can be used for decryption (with the modes raw, PKCS #1 and OAEP with MD5, SHA1, SHA224, SHA256, SHA384 or SHA512) and for signatures (with the modes PKCS #1 and PSS with MD5, SHA1, SHA224, SHA256, SHA384 or SHA512).  The other algorithms only support the signature mechanism. The NetHSM supports generating Certificate Signing Requests (CSR) for the stored keys: The ``-i``/``--include`` option causes ``curl`` to print the HTTP status code and the response headers.  The ``-w '\n'``/``--write-out '\n'`` option adds a newline after the response body. The generated client code, in this example JavaScript, will be created in the ``./out/`` directory. This folder also contains the necessary documentation how to use it. Then can you generate the backup and write it to a file: Then we can create a signature from this digest using the NetHSM: Then you can generate the NetHSM client for your programming language like this: This backup file can be restored on an unprovisioned NetHSM instance: This driver is still an early Proof of Concept implementation that only implements the functions that are necessary for operating TLS servers like for example an HTTPS server. This tutorial demonstrates how to access the NetHMS via REST API. The interface is `documented here <https://nethsmdemo.nitrokey.com/api_docs/index.html#docs/summary/summary>`_ and it's specification is available as `RAML <https://nethsmdemo.nitrokey.com/api_docs/nethsm-api.raml>`_ and as `OpenAPI (Swagger) <https://nethsmdemo.nitrokey.com/api_docs/gen_nethsm_api_oas20.json>`_. This tutorial demonstrates how to access the NetHMS via `nitropy <https://github.com/Nitrokey/pynitrokey>`_ command line tool, which you need to download and install. To be able to use the key with ``openssl``, we export it as a PEM file and store it as ``public.pem``: To integrate the NetHSM into own custom applications client libraries are available for almost all programming languages, including JavaScript, C++ and Python for example. Therefore we recommend using `OpenAPI Generator <https://github.com/OpenAPITools/openapi-generator>`_. To list all the available languages, you enter To make sure that the key has been created and has the correct algorithm and mechanism settings, we can query all keys on the NetHSM: Updates Updates for the NetHSM can be installed in a two-step process.  First you have to upload the update image to the NetHSM.  The image is then checked and validated.  If the validation is successful, the release notes for the update are returned by the NetHSM: User Management We can also query the public key of the generated key pair: We can encrypt data for the key stored on the NetHSM using ``openssl``. (``public.pem`` is the public key file that we created in the `Show Key Details`_ section.) We can inspect the key with ``openssl`` and use it for encryption or signature verification (as described in the next section): Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-01-05 12:32+0100
PO-Revision-Date: 2022-01-11 15:11+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: et
Language-Team: Estonian <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-nethsm/et/>
Plural-Forms: nplurals=2; plural=n != 1;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 *R-administraator*: Selle rolliga kasutajakontol on juurdepääs kõikidele REST API poolt pakutavatele toimingutele, välja arvatud võtmete kasutamise toimingud, st sõnumite allkirjastamine ja dekrüpteerimine. *R-Backup*: Selle rolliga kasutajakontol on juurdepääs ainult süsteemi varundamise algatamiseks vajalikele toimingutele. *R-Metrics*: Selle rolliga kasutajakontol on juurdepääs ainult lugemisõigusega meetrikaoperatsioonidele. *R-operaator*: Selle rolliga kasutajakontol on juurdepääs kõikidele võtmekasutuse toimingutele, võtmehalduse toimingute ainult lugemiseks mõeldud alamhulgale ja kasutajahalduse toimingutele, mis võimaldavad muudatusi ainult oma kontole. Uus NetHSM tuleb kõigepealt varustada paroolfraasidega ja praeguse ajaga. *Admin Passphrase* on *Administraatori* salasõna, mis on NetHSMi ülemkasutaja. *Unlock Passphrase* kasutatakse NetHSMi konfidentsiaalse andmehoidla krüpteerimiseks. Avalik NetHSMi demoinstants on saadaval aadressil `nethsmdemo.nitrokey.com <https://nethsmdemo.nitrokey.com>`_. Juurdepääs NetHSMile PKCS#11 draiveri abil Juurdepääs NetHSMile REST API abil Juurdepääs NetHSMile käsurea nitropy abil Pärast võtme (siin: ID 23) loomist vastava mehhanismiga saate seda kasutada dekrüpteerimiseks: Pärast võtme (siin: ID 42) loomist vastava mehhanismiga saate seda kasutada dekrüpteerimiseks: Alternatiivina võite käivitada `NetHSM Docker-konteinerit <https://hub.docker.com/r/nitrokey/nethsm>`_ lokaalselt. NetHSM konteiner nõuab nested virtualiseerimist, et see oleks tugevalt eraldatud teistest konteineritest. Seega on NetHSM konteineri käivitamiseks vaja Linuxi host'i, kus on saadaval /dev/kvm. Sooritage see käsk: Teise võimalusena saate uuenduse tühistada: Ja seejärel kasutage ``openssl`` allkirja kontrollimiseks: Varukoopiaid Enne alustamist salvestame NetHSMi instantsi hostinime keskkonnamuutujasse ``NETHSM_HOST``.  Võite kasutada avalikku NetHSM-i demoinstantsi ``nethsmdemo.nitrokey.com`` või käivitada lokaalset demoinstantsi, kasutades NetHSM-i docker image'i, vt NetHSM-i dokumentatsiooni jaotist `Ettevalmistus ja testimine </index.html#development-and-testing>`_. Ühendage NetHSM'i ETH3 port võrguga. Ärge kasutage ETH0-porti, sest see võimaldab laiemat juurdepääsu süsteemile. Loo kasutaja Dekrüpteerimine Dekrüpteerimine Arendus ja testimine Laadige alla `PKCS#11 draiver <https://github.com/Nitrokey/nethsm-pkcs11>`_ NetHSM-i jaoks. Kõigepealt vaatame, mis meil siin on: Olemasolevate võtmealgoritmide ja võtmemehhanismide täieliku loetelu leiate tüübi KeyAlgorithm_ ja KeyMechanism_ API-dokumentatsioonist. Võtmete genereerimine Alustamine Kui kasutate NetHSMi demoinstantsi, millel on isesigneeritud sertifikaat, näiteks kasutades Dockeri kujutist, peate kasutama ``--insecure``/``-k`` valikut ``curl``, et jätta sertifikaadi kontroll vahele. Kui kasutate NetHSMi demoinstantsi isesigneeritud sertifikaadiga, näiteks kasutades Dockeri kujutist, peate kasutama ``--no-verify-tls`` valikut ``nitropy``, et jätta sertifikaadi kontrollimine vahele. Kui soovite paigaldamist jätkata, saate nüüd uuenduse kinnitada: Impordi võtmed Režiimis *Attended Boot* tuleb iga käivitamise ajal sisestada *Unlock Passphrase*, mida kasutatakse andmesalvestuse krüpteerimiseks. Turvalisuse huvides on see režiim soovitatav. Režiimil *Unattended Boot* ei ole lukustamata salasõna vaja, seega võib NetHSM käivituda järelevalveta ja andmesalvestus salvestatakse krüpteerimata. Kasutage seda režiimi, kui teie kättesaadavusnõudeid ei saa täita režiimiga *Attended Boot*. Selles juhendis tahame kasutada RSA-võtit andmete dekrüpteerimiseks PKCS #1 abil ja andmete allkirjastamiseks PSS-iga, kasutades SHA256.  Seega genereerime NetHSMis uue võtme. Veendume, et kasutame ``RSA`` algoritmi ja valime ``RSA_Signature_PSS_SHA256`` ja ``RSA_Decryption_PKCS1`` võtmehhanismid.  Kui te ei määra võtme ID-d, genereerib NetHSM uue võtme jaoks juhusliku ID. Initsialiseerimine Selle asemel, et genereerida võti NetHSMis, võite ka olemasolevaid privaatvõtmeid NetHSMi importida: Integratsioon kohandatud rakendusega On võimalik luua NetHSMi varukoopia, mis salvestab nii konfiguratsiooni kui ka salvestatud võtmed.  Varukoopia loomiseks tuleb kõigepealt määrata varukoopia salasõna, mida kasutatakse varukoopiafaili krüpteerimiseks: NetHSMi instantsi salvestatud võtmete sertifikaate on võimalik määrata ja pärida: Võtmesertifikaadi allkirjastamise taotlused Võtmesertifikaadid Võtmehaldus Peamised toimingud Loetelu võtmed Muuda konfiguratsioonifaili ``p11nethsm.conf`` vastavalt oma seadistusele (nt. aadress, operaatori nimi) ja salvestage see ``$HOME/.nitrokey``, ``/etc/nitrokey/`` või sellesse kausta, kus teie rakendust täidetakse. NetHSM NetHSMi saab kasutada *Attended Boot* režiimis ja *Unattended Boot* režiimis. Märkus: Tulevases versioonis rakendatakse veel üks roll, mis lubab /keys/ POST, /keys/generate POST, /keys/{KeyID} PUT & DELETE, /keys/{KeyID}/cert PUT & DELETE lisaks sellele, mida R-Operatoril on lubatud teha. Nüüd looge uus kasutaja operaatori rolliga, mida saab kasutada andmete allkirjastamiseks ja dekrüpteerimiseks.  Pange tähele, et NetHSM määrab juhusliku kasutajatunnuse, kui me seda ei määra. Nüüd saame andmete dekrüpteerimiseks kasutada NetHSMi: Nüüd peate looma kasutaja, kellel on *R-Backup* roll: Või lülitage tagasi režiimi *Attended Boot*: Praeguse režiimi väljavõtmine: Rollid Vaadake, milline on seadme olek: Ülesannete lahususe saab rakendada olemasolevate rollide abil. Igale NetHSMi konfigureeritud kasutajakontole on määratud üks järgmistest rollidest. Järgnevalt on esitatud üksikute rollide poolt lubatud toimingute kõrgetasemeline kirjeldus, lõpp-punktispetsiifilisi üksikasju leiate REST API dokumentatsioonist. Näita võtme üksikasju Allkirjastamine Samamoodi saame andmeid allkirjastada NetHSMi võtme abil.  RSA ja ECDSA puhul peame kõigepealt arvutama digesti: Lülita ümber *Vaheldatud käivitamise* režiimile: NetHSM-seade on saadaval aadressil 192.168.1.1. Juurdepääs NetHSMile ja selle initsialiseerimine toimub `nitroopia käsurea tööriista <cli.html>`_ abil. Alternatiivina võib kasutada `REST API <api.html>`_ ja `PKCS#11 draiverit <pkcs11.html>`_. NetHSM-i demoinstants aadressil ``nethsmdemo.nitrokey.com<x>`` on juba ette nähtud. NetHSM toetab RSA, ED25519 ja ECDSA võtmeid.  Võtme loomisel tuleb valida nii võtmealgoritm kui ka kasutatavad võtmemehhanismid.  RSA võtmeid saab kasutada dekrüpteerimiseks (režiimidega raw, PKCS #1 ja OAEP koos MD5, SHA1, SHA224, SHA256, SHA384 või SHA512) ja allkirjastamiseks (režiimidega PKCS #1 ja PSS koos MD5, SHA1, SHA224, SHA256, SHA384 või SHA512).  Teised algoritmid toetavad ainult allkirjastamise mehhanismi. NetHSM toetab salvestatud võtmete jaoks sertifikaadi allkirjastamistaotluste (CSR) genereerimist: Valik ``-i``/``--include`` põhjustab ``curl`` HTTP staatuskoodi ja vastuspealkirjade printimist.  Valik ``-w '\n'``/``--write-out '\n'`` lisab vastuse keha järele uue rea. Genereeritud kliendikood, antud näites JavaScript, luuakse kataloogis ``./out/``. See kaust sisaldab ka vajalikku dokumentatsiooni, kuidas seda kasutada. Seejärel saate luua varukoopia ja kirjutada selle faili: Seejärel saame sellest digist luua allkirja, kasutades NetHSM-i: Seejärel saate genereerida NetHSMi kliendi oma programmeerimiskeele jaoks niimoodi: Seda varukoopiafaili saab taastada NetHSMi varundamata instantsil: See draiver on veel varajane Proof of Concept'i rakendus, mis rakendab ainult TLS-serverite, näiteks HTTPS-serveri käitamiseks vajalikke funktsioone. See õpetus näitab, kuidas pääseda NetHMSi juurde REST API kaudu. Liides on `dokumenteeritud siin <https://nethsmdemo.nitrokey.com/api_docs/index.html#docs/summary/summary>`_ ja see's spetsifikatsioon on saadaval kui `RAML <https://nethsmdemo.nitrokey.com/api_docs/nethsm-api.raml>`_ ja kui `OpenAPI (Swagger) <https://nethsmdemo.nitrokey.com/api_docs/gen_nethsm_api_oas20.json>`_. See õpetus näitab, kuidas pääseda NetHMS-i juurde `nitroopia <https://github.com/Nitrokey/pynitrokey>`_ käsurea tööriista kaudu, mille peate alla laadima ja installima. Et saaksime kasutada võtit ``openssl``, ekspordime selle PEM-failina ja salvestame selle kui ``public.pem``: NetHSMi integreerimiseks oma kohandatud rakendustesse on saadaval kliendiraamatukogud peaaegu kõigi programmeerimiskeelte jaoks, sealhulgas näiteks JavaScript, C++ ja Python. Seetõttu soovitame kasutada `OpenAPI Generator <https://github.com/OpenAPITools/openapi-generator>`_. Kõigi olemasolevate keelte loetlemiseks sisestage Et veenduda, et võti on loodud ja et sellel on õiged algoritmi ja mehhanismi seaded, võime küsida kõiki NetHSMi võtmeid: Uuendused NetHSMi uuendusi saab paigaldada kaheastmelise protsessina.  Esmalt tuleb uuenduse kujutis NetHSMi üles laadida.  Seejärel kontrollitakse ja kinnitatakse kujutis.  Kui valideerimine on edukas, tagastab NetHSM uuenduse väljalaskeandmed: Kasutajate haldamine Samuti saame küsida genereeritud võtmepaari avalikku võtit: NetHSM-i salvestatud võtme andmeid saame krüpteerida, kasutades ``openssl``. (``public.pem`` on avaliku võtme fail, mille me lõime jaotises `Show Key Details`_). Me võime kontrollida võtit ``openssl`` ja kasutada seda krüpteerimiseks või allkirja kontrollimiseks (nagu on kirjeldatud järgmises jaotises): 
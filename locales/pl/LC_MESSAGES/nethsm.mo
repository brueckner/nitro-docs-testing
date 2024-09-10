��    S      �              L  �   M  q     [   y  �   �    �  k   �  +   	  %   B	  5   h	  _   �	  _   �	  4  ^
  )   �  1   �     �  ^  �  o   V     �  
   �  
   �     �  V     %   Y  �               �   *  �   �  M   �     	  �     �   �  w  �     +  e   :  !   �  �   �  V   �      �          %     4  	   C  �   M     "  F   )  �   p  �   N  .   �  7     '   V     ~     �  "   �  >  �            r     !   �  �   �  O   �  �  �  V   �  �   �  �   �  8   P   A   �   P   �   E   !  �   b!  |  "  �   �#  f   6$    �$  .   �%  �   �%     e&    m&     o'  ;   '  �   �'     _(    �(  �   �*  |   �+  a   >,  �   �,    �-  �   �.  H   '/  =   p/  V   �/  ^   0  ^   d0  Q  �0  -   2  9   C2     }2  v  �2  �   4     �4     �4     �4     �4  T   �4     &5  �   E5     �5     �5  �   �5  �   �6  Q   �7     8  �   )8  2  9  �  8:     �;  �   �;  "   y<    �<  d   �=  '   >     @>     U>     k>     }>  �   �>     k?  J   r?  �   �?  �   �@  4   eA  8   �A  ;   �A  "   B     2B  %   7B  �  ]B     �C     �C  �   D  *   �D  )  �D  `   �E  �  WF  _   H  �   qH  �   (I  H   �I  E   J  i   cJ  R   �J  �    K  �  �K  �   �M  h   �N    �N  I   �O  �   ;P     �P    �P     �Q  G   R  �   MR  �   S   *R-Administrator*: A user account with this Role has access to all operations provided by the REST API, with the exception of key usage operations, i.e. message signing and decryption. *R-Backup*: A user account with this Role has access to the operations required to initiate a system backup only. *R-Metrics*: A user account with this Role has access to read-only metrics operations only. *R-Operator*: A user account with this Role has access to all key usage operations, a read-only subset of key management operations and user management operations allowing changes to their own account only. A new NetHSM needs to be provisioned first with passphrases and the current time. The *Admin Passphrase* is the *Administrator*’s passphrase, which is the super user of the NetHSM. The *Unlock Passphrase* is used to encrypt NetHSM’s confidential data store. A public NetHSM demo instance is available at `nethsmdemo.nitrokey.com <https://nethsmdemo.nitrokey.com>`_. Accessing a NetHSM using the PKCS#11 driver Accessing a NetHSM using the REST API Accessing a NetHSM with the nitropy command line tool After creating a key (here: ID 23) with the according mechanism, you can use it for decryption: After creating a key (here: ID 42) with the according mechanism, you can use it for decryption: Alternatively you can run the `NetHSM Docker container <https://hub.docker.com/r/nitrokey/nethsm>`_ locally. The NetHSM container requires nested virtualization for strong separation with other containers. Thus, to start a NetHSM container you need a Linux host with /dev/kvm available. Execute this command: Alternatively, you can cancel the update: And then use ``openssl`` to verify the signature: Backups Before we start, we store the host name of the NetHSM instance in the ``NETHSM_HOST`` environment variable.  You can use the public NetHSM demo instance ``nethsmdemo.nitrokey.com`` or run a local demo instance using the NetHSM docker image, see the `Development and Testing </index.html#development-and-testing>`_ section of the NetHSM documentation. Connect the NetHSM's ETH3 port with the network. Don't use the ETH0 port because it allows wider system access. Create a User Decrypting Decryption Development and Testing Download the `PKCS#11 driver <https://github.com/Nitrokey/nethsm-pkcs11>`_ for NetHSM. First, let’s see what we have here: For a complete list of available key algorithms and key mechanisms, see the API documentation for the KeyAlgorithm_ and KeyMechanism_ types. Generate Keys Getting Started If you use a NetHSM demo instance with a self-signed certificate, for example using the Docker image, you will have to use the ``--insecure``/``-k`` option for ``curl`` to skip the certificate check. If you use a NetHSM demo instance with a self-signed certificate, for example using the Docker image, you will have to use the ``--no-verify-tls`` option for ``nitropy`` to skip the certificate check. If you want to continue with the installation, you can now commit the update: Import Keys In *Attended Boot* mode the *Unlock Passphrase* needs to be entered during each start which is used to encrypt the data store. For security reasons this mode is recommended. In *Unattended Boot* mode no Unlock Passphrase is required, therefore the NetHSM can start unattended and the data store is stored unencrypted. Use this mode if your availability requirements can’t be fulfilled with *Attended Boot* mode. In this guide, we want to use an RSA key to decrypt data using PKCS #1 and to sign data with PSS using SHA256.  So let’s generate a new key on the NetHSM. Make sure to use the ``RSA`` algorithm and to select the ``RSA_Signature_PSS_SHA256`` and ``RSA_Decryption_PKCS1`` key mechanisms.  If you don’t specify a key ID, the NetHSM will generate a random ID for the new key. Initialization Instead of generating a key on the NetHSM, you can also import existing private keys into the NetHSM: Integration to Custom Application It is possible to crate a backup of the NetHSM that captures both the configuration and the stored keys.  In order to create a backup, you first have to set a backup passphrase that is used to encrypt the backup file: It is possible to set and query certificates for the keys stored on a NetHSM instance: Key Certificate Signing Requests Key Certificates Key Management Key Operations List Keys Modify the configuration file ``p11nethsm.conf`` according to your setup (e.g. address, operator name) and store it in ``$HOME/.nitrokey``, ``/etc/nitrokey/``, or in the folder where your application is executed. NetHSM NetHSM can be used in *Attended Boot* mode and *Unattended Boot* mode. Note: In a future release another Role will be implemented which is allowed to /keys/ POST, /keys/generate POST, /keys/{KeyID} PUT & DELETE, /keys/{KeyID}/cert PUT & DELETE in addition to what R-Operator is allowed to do. Now create a new user with the operator role that can be used to sign and decrypt data.  Note that the NetHSM assigns a random user ID if we don’t specify it. Now we can use the NetHSM to decrypt the data: Now you have to create a user with the *R-Backup* role: Or switch back to *Attended Boot* mode: Retrieve the current mode: Roles See what the device’s status is: Separation of duties can be implemented by using the available Roles. Each user account configured on the NetHSM has one of the following Roles assigned to it. Following is a high-level description of the operations allowed by individual Roles, for endpoint-specific details please refer to the REST API documentation. Show Key Details Signing Similarily, we can sign data using the key on the NetHSM.  For RSA and ECDSA, we have to calculate a digest first: Switch to *Unattended Boot* mode: The NetHSM appliance is available at address 192.168.1.1. Access and initialize the NetHSM using `nitropy command line tool <cli.html>`_. Alternatively, the `REST API <api.html>`_ and `PKCS#11 driver <pkcs11.html>`_ can be used. The NetHSM demo instance at ``nethsmdemo.nitrokey.com`` is already provisioned. The NetHSM supports RSA, ED25519 and ECDSA keys.  When creating a key, you have to select both the key algorithm and the key mechanisms to use.  RSA keys can be used for decryption (with the modes raw, PKCS #1 and OAEP with MD5, SHA1, SHA224, SHA256, SHA384 or SHA512) and for signatures (with the modes PKCS #1 and PSS with MD5, SHA1, SHA224, SHA256, SHA384 or SHA512).  The other algorithms only support the signature mechanism. The NetHSM supports generating Certificate Signing Requests (CSR) for the stored keys: The ``-i``/``--include`` option causes ``curl`` to print the HTTP status code and the response headers.  The ``-w '\n'``/``--write-out '\n'`` option adds a newline after the response body. The generated client code, in this example JavaScript, will be created in the ``./out/`` directory. This folder also contains the necessary documentation how to use it. Then can you generate the backup and write it to a file: Then we can create a signature from this digest using the NetHSM: Then you can generate the NetHSM client for your programming language like this: This backup file can be restored on an unprovisioned NetHSM instance: This driver is still an early Proof of Concept implementation that only implements the functions that are necessary for operating TLS servers like for example an HTTPS server. This tutorial demonstrates how to access the NetHMS via REST API. The interface is `documented here <https://nethsmdemo.nitrokey.com/api_docs/index.html#docs/summary/summary>`_ and it's specification is available as `RAML <https://nethsmdemo.nitrokey.com/api_docs/nethsm-api.raml>`_ and as `OpenAPI (Swagger) <https://nethsmdemo.nitrokey.com/api_docs/gen_nethsm_api_oas20.json>`_. This tutorial demonstrates how to access the NetHMS via `nitropy <https://github.com/Nitrokey/pynitrokey>`_ command line tool, which you need to download and install. To be able to use the key with ``openssl``, we export it as a PEM file and store it as ``public.pem``: To integrate the NetHSM into own custom applications client libraries are available for almost all programming languages, including JavaScript, C++ and Python for example. Therefore we recommend using `OpenAPI Generator <https://github.com/OpenAPITools/openapi-generator>`_. To list all the available languages, you enter To make sure that the key has been created and has the correct algorithm and mechanism settings, we can query all keys on the NetHSM: Updates Updates for the NetHSM can be installed in a two-step process.  First you have to upload the update image to the NetHSM.  The image is then checked and validated.  If the validation is successful, the release notes for the update are returned by the NetHSM: User Management We can also query the public key of the generated key pair: We can encrypt data for the key stored on the NetHSM using ``openssl``. (``public.pem`` is the public key file that we created in the `Show Key Details`_ section.) We can inspect the key with ``openssl`` and use it for encryption or signature verification (as described in the next section): Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-01-05 12:32+0100
PO-Revision-Date: 2022-01-11 15:11+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: pl
Language-Team: Polish <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-nethsm/pl/>
Plural-Forms: nplurals=3; plural=n==1 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 *R-Administrator*: Konto użytkownika z tą Rolą ma dostęp do wszystkich operacji udostępnianych przez REST API, z wyjątkiem operacji użycia kluczy, tj. podpisywania i deszyfrowania wiadomości. *R-Backup*: Konto użytkownika z tą Rolą ma dostęp tylko do operacji wymaganych do zainicjowania kopii zapasowej systemu. *R-Metrics*: Konto użytkownika z tą Rolą ma dostęp tylko do operacji metryk tylko do odczytu. *R-Operator*: Konto użytkownika z tą Rolą ma dostęp do wszystkich operacji użycia kluczy, podzbioru operacji zarządzania kluczami tylko do odczytu oraz operacji zarządzania użytkownikami, umożliwiając zmiany tylko na własnym koncie. Nowy NetHSM musi zostać najpierw zaopatrzony w hasło i aktualny czas. Hasło *Admin Passphrase* to hasło administratora *Administrator*, który jest superużytkownikiem NetHSM. Hasło *Unlock Passphrase* służy do szyfrowania poufnych danych przechowywanych w NetHSM. Publiczna instancja demonstracyjna NetHSM jest dostępna pod adresem `nethsmdemo.nitrokey.com <https://nethsmdemo.nitrokey.com>`_. Uzyskiwanie dostępu do urządzenia NetHSM za pomocą sterownika PKCS#11 Uzyskiwanie dostępu do NetHSM za pomocą interfejsu REST API Uzyskiwanie dostępu do maszyny NetHSM za pomocą narzędzia wiersza polecenia nitropy Po utworzeniu klucza (tu: ID 23) z odpowiednim mechanizmem, można go użyć do odszyfrowania: Po utworzeniu klucza (tu: ID 42) z odpowiednim mechanizmem, można go użyć do odszyfrowania: Alternatywnie można uruchomić lokalnie kontener `NetHSM Docker <https://hub.docker.com/r/nitrokey/nethsm>`_. Kontener NetHSM wymaga zagnieżdżonej wirtualizacji w celu zapewnienia silnej separacji z innymi kontenerami. Dlatego do uruchomienia kontenera NetHSM potrzebny jest host linuksowy z dostępnym /dev/kvm. Wykonaj to polecenie: Alternatywnie można anulować aktualizację: A następnie użyj ``openssl``, aby zweryfikować podpis: Kopie zapasowe Zanim zaczniemy, zapiszemy nazwę hosta instancji NetHSM w zmiennej środowiskowej ``NETHSM_HOST``.  Możesz użyć publicznej instancji demonstracyjnej NetHSM ``nethsmdemo.nitrokey.com`` lub uruchomić lokalną instancję demonstracyjną za pomocą obrazu docker NetHSM, zobacz sekcję `Development and Testing </index.html#development-and-testing>`_ w dokumentacji NetHSM. Podłącz port ETH3 urządzenia NetHSM'do sieci. Nie należy używać portu ETH0, ponieważ umożliwia on szerszy dostęp do systemu. Utwórz użytkownika Odszyfrowywanie Odszyfrowanie Rozwój i testowanie Pobierz sterownik `PKCS#11 <https://github.com/Nitrokey/nethsm-pkcs11>`_ dla NetHSM. Najpierw zobaczmy, co tu mamy: Pełna lista dostępnych algorytmów klucza i mechanizmów klucza znajduje się w dokumentacji API dla typów KeyAlgorithm_ i KeyMechanism_. Generowanie kluczy Rozpoczęcie pracy W przypadku korzystania z instancji demonstracyjnej NetHSM z certyfikatem samopodpisanym, na przykład przy użyciu obrazu Docker, trzeba będzie użyć opcji ``--insecure``/``-k`` dla ``curl``, aby pominąć sprawdzanie certyfikatu. Jeśli używasz instancji demonstracyjnej NetHSM z samopodpisanym certyfikatem, na przykład przy użyciu obrazu Docker, będziesz musiał użyć opcji ``--no-verify-tls`` dla ``nitropy``, aby pominąć sprawdzanie certyfikatu. Jeśli chcesz kontynuować instalację, możesz teraz zatwierdzić aktualizację: Klucze importowe W trybie *Attended Boot* *Unlock Passphrase* [hasło odblokowujące] musi być wpisywane przy każdym starcie, co jest wykorzystywane do szyfrowania magazynu danych. Ze względów bezpieczeństwa ten tryb jest zalecany. W trybie *Unattended Boot* nie jest wymagane hasło odblokowujące, dlatego urządzenie NetHSM może być uruchamiane bez nadzoru, a magazyn danych jest przechowywany w niezaszyfrowanej postaci. Użyj tego trybu, jeśli wymagania dotyczące dostępności nie mogą być spełnione w trybie *Attended Boot*. W tym poradniku chcemy użyć klucza RSA do odszyfrowania danych za pomocą PKCS #1 oraz do podpisania danych za pomocą PSS przy użyciu SHA256.  Wygenerujmy więc nowy klucz na NetHSM. Pamiętaj, aby użyć algorytmu ``RSA`` i wybrać mechanizmy klucza ``RSA_Signature_PSS_SHA256`` i ``RSA_Decryption_PKCS1``.  Jeśli nie zostanie określony identyfikator klucza, mechanizm NetHSM wygeneruje losowy identyfikator dla nowego klucza. Inicjalizacja Zamiast generować klucz w urządzeniu NetHSM, można również zaimportować istniejące klucze prywatne do urządzenia NetHSM: Integracja z aplikacjami własnymi Możliwe jest utworzenie kopii zapasowej NetHSM, która będzie zawierała zarówno konfigurację, jak i przechowywane klucze.  Aby utworzyć kopię zapasową, należy najpierw ustawić frazę hasła kopii zapasowej, która będzie używana do szyfrowania pliku kopii zapasowej: Możliwe jest ustawianie i odpytywanie certyfikatów dla kluczy przechowywanych na instancji NetHSM: Żądania podpisania certyfikatu klucza Kluczowe certyfikaty Zarządzanie kluczami Kluczowe operacje Lista kluczy Zmodyfikuj plik konfiguracyjny ``p11nethsm.conf`` zgodnie ze swoją konfiguracją (np. adres, nazwa operatora) i zapisz go w ``$HOME/.nitrokey``, ``/etc/nitrokey/``, lub w folderze, w którym jest wykonywana Twoja aplikacja. NetHSM NetHSM może być używany w trybie *Attended Boot* lub *Unattended Boot*. Uwaga: W przyszłym wydaniu zostanie zaimplementowana kolejna Rola, która będzie mogła /keys/ POST, /keys/generate POST, /keys/{KeyID} PUT & DELETE, /keys/{KeyID}/cert PUT & DELETE oprócz tego co może robić R-Operator. Teraz utwórz nowego użytkownika z rolą operatora, który będzie mógł podpisywać i odszyfrowywać dane.  Zauważ, że NetHSM przypisuje losowy identyfikator użytkownika, jeśli go nie podamy. Teraz możemy użyć NetHSM do odszyfrowania danych: Teraz należy utworzyć użytkownika z rolą *R-Backup*: Lub przełączyć się z powrotem do trybu *Attended Boot*: Uzyskanie bieżącego trybu pracy: Role Zobacz, jaki jest status urządzenia: Rozdzielenie obowiązków można zrealizować za pomocą dostępnych ról (Roles). Każde konto użytkownika skonfigurowane na NetHSM ma przypisaną jedną z poniższych Role. Poniżej przedstawiono ogólny opis operacji, które mogą być wykonywane przez poszczególne role. Szczegółowe informacje dotyczące poszczególnych punktów końcowych znajdują się w dokumentacji REST API. Pokaż szczegóły klucza Podpisywanie dokumentów Podobnie możemy podpisywać dane za pomocą klucza znajdującego się w NetHSM.  W przypadku RSA i ECDSA musimy najpierw obliczyć skrót: Przełączenie do trybu *Unattended Boot*: Urządzenie NetHSM appliance jest dostępne pod adresem 192.168.1.1. Uzyskaj dostęp do urządzenia NetHSM i zainicjuj jego działanie za pomocą `narzędzia wiersza poleceńnitropy <cli.html>`_. Alternatywnie można użyć interfejsu `REST API <api.html>`_ i ` sterownika PKCS#11 <pkcs11.html>`_. Instancja demonstracyjna NetHSM pod adresem ``nethsmdemo.nitrokey.com`` jest już udostępniona. NetHSM obsługuje klucze RSA, ED25519 i ECDSA.  Podczas tworzenia klucza należy wybrać zarówno algorytm klucza jak i mechanizmy, które mają być użyte.  Klucze RSA mogą być używane do odszyfrowywania (w trybach raw, PKCS #1 i OAEP z MD5, SHA1, SHA224, SHA256, SHA384 lub SHA512) oraz do podpisywania (w trybach PKCS #1 i PSS z MD5, SHA1, SHA224, SHA256, SHA384 lub SHA512).  Pozostałe algorytmy obsługują tylko mechanizm podpisu. NetHSM obsługuje generowanie żądań podpisania certyfikatu (CSR) dla przechowywanych kluczy: Opcja ``-i``/``--include`` powoduje, że ``curl`` drukuje kod statusu HTTP i nagłówki odpowiedzi.  Opcja ``-w '\n'``/``--write-out '\n'`` dodaje nową linię po treści odpowiedzi. Wygenerowany kod klienta, w tym przykładzie JavaScript, zostanie utworzony w katalogu ``./out/``. Katalog ten zawiera również niezbędną dokumentację jak go używać. Następnie można wygenerować kopię zapasową i zapisać ją do pliku: Następnie możemy utworzyć podpis z tego skrótu za pomocą NetHSM: Następnie możesz wygenerować klienta NetHSM dla swojego języka programowania w następujący sposób: Ten plik kopii zapasowej można przywrócić na nieobsługiwanej instancji NetHSM: Ten sterownik jest jeszcze wczesną implementacją Proof of Concept, która implementuje tylko te funkcje, które są konieczne do obsługi serwerów TLS, jak np. serwer HTTPS. Ten tutorial demonstruje jak uzyskać dostęp do NetHMS poprzez REST API. Interfejs jest `udokumentowany tutaj <https://nethsmdemo.nitrokey.com/api_docs/index.html#docs/summary/summary>`_, a jego specyfikacja jest dostępna jako `RAML <https://nethsmdemo.nitrokey.com/api_docs/nethsm-api.raml>`_;a jego specyfikacja jest dostępna jako `RAML <https://nethsmdemo.nitrokey.com/api_docs/nethsm-api.raml>`_ oraz jako `OpenAPI (Swagger) <https://nethsmdemo.nitrokey.com/api_docs/gen_nethsm_api_oas20.json>`_. Ten tutorial demonstruje jak uzyskać dostęp do NetHMS poprzez `nitropy <https://github.com/Nitrokey/pynitrokey>`_ narzędzie wiersza poleceń, które należy pobrać i zainstalować. Aby móc użyć klucza z ``openssl``, eksportujemy go jako plik PEM i przechowujemy jako ``public.pem``: Aby zintegrować NetHSM z własnymi aplikacjami, dostępne są biblioteki klienckie dla prawie wszystkich języków programowania, w tym JavaScript, C++ i Python. Dlatego zalecamy użycie `OpenAPI Generator <https://github.com/OpenAPITools/openapi-generator>`_. Aby wyświetlić listę wszystkich dostępnych języków, należy wpisać Aby upewnić się, że klucz został utworzony i ma poprawne ustawienia algorytmu i mechanizmu, możemy odpytać wszystkie klucze w NetHSM: Aktualizacje Aktualizacje dla NetHSM można instalować w dwóch etapach.  Najpierw należy przesłać obraz aktualizacji do urządzenia NetHSM.  Następnie obraz jest sprawdzany i zatwierdzany.  Jeżeli weryfikacja przebiegnie pomyślnie, NetHSM odsyła informacje o wydaniu aktualizacji: Zarządzanie użytkownikami Możemy również zapytać o klucz publiczny wygenerowanej pary kluczy: Możemy zaszyfrować dane dla klucza przechowywanego na NetHSM przy użyciu ``openssl``. (``public.pem`` to plik klucza publicznego, który utworzyliśmy w sekcji `Show Key Details`_). Klucz możemy sprawdzić za pomocą ``openssl`` i użyć go do szyfrowania lub weryfikacji podpisu (jak opisano w następnym rozdziale): 
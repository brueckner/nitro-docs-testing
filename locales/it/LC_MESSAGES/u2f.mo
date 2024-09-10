��    d      <              \     ]     y     �  3   �  7   �          9     R  	   r  5   |  G   �  �   �  ]   �  {   	     �	     �	     �	    �	  
   �
     �
            6   -  +   d  �   �  
   ,  �   7  b    �   q  �   :  A  �  �   (  �   �  �   <  �   �  N   �  i   #     �     �  �   �  �   Y     8     J     g     �  �   �  �   1  Z     �   w  D     )   R  �   |  �   >  P   �     :  �   F     2  )   ?  L   i  �   �  ;   C  ;     �   �  2   c  >   �    �  d   �   �   X!  �   �!  �  �"    Y$  Q   w%  �   �%  �   �&  �   j'  =  �'  �   0)  M   �)     D*     T*  /   t*  (   �*  :   �*     +  C   +  �   R+  &   ,  �   ?,  o   �,  �   `-  ~   �-  �   o.  -   �.  C  ,/  �   p0  �   K1    2  }   '3  �   �3  �  y4     W6     s6     �6  :   �6  ;   �6     $7     A7  )   W7  	   �7  ;   �7  P   �7  �   8  _   �8     +9     �9      �9      �9    :  
   ';      2;     S;     l;  8   �;  6   �;  �   �;  
   �<  �   �<  �  �=  �   ?  �   �?  @  �@  �   �B  �   pC  �   �C  �   �D  N   �E     F  
   �F     �F  �   �F  �   YG     MH     _H     {H     �H  �   �H  �   CI  U   =J  �   �J  L   >K  6   �K  �   �K  �   �L  R   ?M  
   �M  �   �M  	   �N  6   �N  R   �N  �   $O  ;   �O  G   �O  �   9P  3   �P  D   Q  1  cQ  �   �R  �   S  �   �S  �  �T  +  �V  \   �W  �   X  �   Y  �   �Y  M  ^Z  �   �[  Z   �\     �\  "   �\  5   ]  '   Q]  9   y]     �]  A   �]  �   �]  #   �^  �   _  {   �_  �   )`  {   �`  �   Aa  .   �a  \  �a  �   Zc  �   2d  %  e  �   .f  �   �f   (Nitrokey FIDO U2F - Linux) (Nitrokey FIDO U2F - Windows) (Nitrokey FIDO U2F - macOS) 1. Create a backup user and give it root privileges 2. Set up the ``rules`` to recognize the Nitrokey FIDO2 3. Install ``libpam-u2f`` 4. Prepare the Directory 5. Generate the U2F config file 6. Backup 7. Modify the Pluggable Authentication Module ``PAM`` After copying the file, restart udev via ``sudo service udev restart``. After the PAM module modification, you will be able to test your configuration right away, but it is recommended to reboot your computer, and unplug/replug the Nitrokey FIDO2. Alternatively you can build ``libpam-u2f`` from `Git <https://github.com/phoeagon/pam-u2f>`_. Alternatively you can just modify the ``/etc/pam.d/sudo`` file if you wish to use FIDO U2F when using the ``sudo`` command. And add the following lines: And plug your Nitrokey FIDO2. And restart ``udev`` service By modifying ``/etc/pam.d/common-auth`` file, you will be able to use you Nitrokey FIDO for 2nd factor authentication for graphic login and ``sudo``. Note: ``common-auth`` should be modified by adding the additional configuration line at the end of the file. CLI method Choose your operating system: Click for more options Control flags Create ``.config/Nitrokey/`` under your home directory Desktop Login and Linux User Authentication For individual user configuration you should point to the home directory in the next step, or not include the ``authfile`` option in the PAM configuration. GUI method If ``required`` or ``requisite`` is set, the failure of U2F authentication will cause a failure of the overall authentication. Failure will occur when the configured Nitrokey FIDO is not plugged, lost or destroyed. If the Nitrokey is not accepted immediately, you may need to copy this file `41-nitrokey.rules <https://www.nitrokey.com/sites/default/files/41-nitrokey.rules>`_ to ``etc/udev/rules.d/``. In very rare cases, the system will need the `older version <https://raw.githubusercontent.com/Nitrokey/libnitrokey/master/data/41-nitrokey_old.rules>`_ of this file. If you need more information about Control Flags in the ``PAM`` configuration line, you may see the last section of this guide to understand the difference, and the implications of using each of them. If you often forget to insert the key, ``prompt`` option make ``pam_u2f`` print ``Insert your U2F device, then press ENTER.`` and give you a chance to insert the Nitrokey. If you want to login to you computer using `Nitrokey Pro 2, <https://shop.nitrokey.com/shop/product/nk-pro-2-nitrokey-pro-2-3>`_ `Nitrokey Storage 2 <https://shop.nitrokey.com/shop/product/nitrokey-storage-2-56>`_ and `Nitrokey Start <https://shop.nitrokey.com/shop/product/nk-sta-nitrokey-start-6>`_ you can visit the instructions for Windows available `here <https://www.nitrokey.com/documentation/applications#p:nitrokey-pro&a:computer-login&os:windows>`_, and for Linux `here <https://www.nitrokey.com/documentation/applications#p:nitrokey-pro&a:computer-login&os:linux>`_. If you wish to use FIDO U2F authentication solely for Gnome’s graphic login, you might prefer to modify the\ ``/etc/pam.d/gdm-password`` If you would like to be prompted to touch the Nitrokey, ``cue`` option will make ``pam_u2f`` print ``Please touch the device.`` message. In case you prefer to setup U2F for a single user, and are locked out of your user session, you would still be able to login with the ``<backup_user>``, and proceed with the maintenance. In step 7 we have used the ``sufficient`` control flag to determine the behavior of the PAM module when the Nitrokey is plugged or not. However it is possible to change this behavior by using the following control flags: In the left corner click on ``Unlock`` and that would prompt for your password In the lower left corner click on ``Show Applications`` and type settings in the search bar as following: Instructions Introduction It is recommended to first test the instructions with a single user. For this purpose the previous command takes the ``-u`` option, to specify a user, like in the example below: Log in to the website and enable two-factor authentication in your account settings. (In most cases you will find a link to the documentation of the supported web service at `dongleauth.com <https://www.dongleauth.com/>`_) Nitrokey FIDO U2F Nitrokey FIDO U2F with Linux Nitrokey FIDO U2F with Windows Nitrokey FIDO U2F with macOS Nitrokey FIDO2 configured following `these instructions <https://www.nitrokey.com/documentation/installation#p:nitrokey-fido-u2f&os:linux>`_. Note, the output will be much longer, but sensitive parts have been removed here. For better security, and once the config file generated, we will move the ``.config/Nitrokey`` directory under the ``etc/`` directory with this command: On Ubuntu 20.04 it is possible to download directly ``libpam-u2f`` from the official repos Once done with the preparation, we can start to configure the computer to use the Nitrokey FIDO2 for 2nd factor authentication at login and ``sudo``. Once we modified the ``common-auth``, we can save and exit the file. Once you finish Step 4 you should be done Once you have properly tested the instructions in this guide (and set up a backup), it is recommended to use either the ``required`` or the ``requisite`` control flag instead of ``sufficient``. Once you run the command above, you will need to touch the key while it flashes. Once done, ``pamu2fcfg`` will append its output the ``u2f_keys`` in the following format: Open one of the `websites that support FIDO U2F <https://www.dongleauth.com/>`_. PAM modules Register your Nitrokey FIDO U2F in the account settings by touching the button to activate the Nitrokey FIDO U2F. After you have successfully configured the device, you must activate the Nitrokey FIDO U2F this way each time you log in. Requirements Scroll down in the right bar to ``Users`` Select ``Administrator`` and enter the user name and password of your choice Since we are using Central Authentication Mapping, we need to tell ``pam_u2f`` the location of the file to use with the ``authfile`` option. The Nitrokey App can not be used for the Nitrokey FIDO U2F. The Nitrokey FIDO U2F can be used with any current browser. The Nitrokey FIDO U2F supports **two-factor authentication (2FA)**. With two-factor authentication (2FA), the Nitrokey FIDO U2F is checked in addition to the password. The Output should be something like the following: The file under ``.config/Nitrokey`` must be named ``u2f_keys`` The final step is configure the PAM module files under ``/etc/pam.d/``. In this guide we will modify the ``common-auth`` file as it handles the authentication settings which are common to all services, but other options are possible. You can modify the file with the following command: The first time you plug in the Nitrokey FIDO U2F Windows may need some time to configure the device. The flags ``required`` and ``requisite`` provide a tighter access control, and will make the Nitrokey FIDO2 necessary to login, and/or use the configured service. The following guide can potentially lock you out of your computer. You should be aware of these risks, as it is recommended to first use the instructions below on a secondary computer, or after a full backup. The secure access to such a central software is especially important and can now be realized with the Nitrokey. For this purpose, access is protected by two-factor authentication (2FA) and critical users are given a Nitrokey. From now on the Nitrokey will be checked during user login in addition to the user password. Phishing attacks are thus foiled and your critical company data is protected. The two-factor authentication can be carried out using one-time passwords (TOTP, RFC 6238) and FIDO U2F, thus enabling Nitrokey Pro, Nitrokey Storage and Nitrokey FIDO U2F to be used. It is also possible to configure authentication centrally and to activate it only for selected users. There are several PAM modules files that can be modified according to your needs: This guide will walk you through the configuration of Linux to use FIDO Universal 2nd Factor, i.e. FIDO U2F with ``libpam-u2f`` and `Nitrokey FIDO2 <https://shop.nitrokey.com/shop/product/nk-fi2-nitrokey-fido2-55>`_. This solution was developed together with our partner `initOS <https://www.initos.com/>`_, who are specialized in the development and customization of Odoo. If you are interested, please contact us. This step is optional, however it is advised to have a backup Nitrokey in the case of loss, theft or destruction of your Nitrokey FIDO. To generate the configuration file we will use the ``pamu2fcfg`` utility that comes with the ``libpam-u2f``. For convenience, we will directly write the output of the utility to the ``u2f_keys`` file under ``.config/Nitrokey``. First plug your Nitrokey FIDO2 (if you did not already), and enter the following command: To set up a backup key, repeat the procedure above, and use ``pamu2fcfg -n``. This will omit the ``<username>`` field, and the output can be appended to the line with your ``<username>`` like this: To verify that the library is properly installed enter the following command: Troubleshooting Two-Factor Authentication (2FA) Two-factor authentication for ERP software Odoo Ubuntu 20.04 with Gnome Display Manager. Under ``/etc/udev/rules.d`` download ``41-nitrokey.rules`` Usage Video: Two-Factor-Authentication with the Nitrokey FIDO U2F in Odoo You can also test your configuration by logging out of the user session and logging back. A similar screen should be displayed once you you unplug/replug yout Nitrokey FIDO2 and type your password: You can do so by using these commands: You can test the configuration by typing ``sudo ls`` in the terminal. You should be prompted the message ``Please touch the device.`` and have a similar output on the terminal: You might lose access to your data after configuring `PAM modules <http://www.linux-pam.org/Linux-PAM-html/>`_. You will also lose the ability to use ``sudo`` if you set up Central Authentication Mapping *and* used the ``required`` or ``requisite`` flags. You will lose access to your computer if you mis-configured the PAM module *and* used the ``required`` or ``requisite`` flags. `Checkout <https://www.nitrokey.com/documentation/applications#p:nitrokey-fido-u2f&os:all>`_ the various use cases and supported applications. `Contact <https://www.nitrokey.com/contact>`_ `Odoo <https://www.odoo.com/>`_ is a powerful ERP (Enterprise Resource Planning) software for companies of all sizes. Odoo is available as open source and contains modules for CRM, website/e-commerce, accounting, financial accounting, production, warehouse management, project management, document management, among others. ``optional``: The success or failure of this module is only important if it is the only module in the stack associated with this service+type. The ``optional`` flag is considered to be safe to use for testing purposes. ``required``: This is the most critical flag. The module result must be successful for authentication to continue. This flag can lock you out of your computer if you do not have access to the Nitrokey. ``requisite``: Similar to ``required`` however, in the case where a specific module returns a failure, control is directly returned to the application, or to the superior PAM stack. This flag can also lock you out of your computer if you do not have access to the Nitrokey. ``sufficient``: The module result is ignored if it fails. The ``sufficient`` flag considered to be safe for testing purposes. `nouserok` will ensure that you can still login using the username and password, you might want to remove this at some point once the setup is working and you don't want regular username & password based logins. Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-01-17 14:16+0100
PO-Revision-Date: 2022-01-17 15:10+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: it
Language-Team: Italian <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-u2f/it/>
Plural-Forms: nplurals=2; plural=n != 1;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 (Nitrokey FIDO U2F - Linux) (Nitrokey FIDO U2F - Windows) (Nitrokey FIDO U2F - macOS) 1. Creare un utente di backup e dargli i privilegi di root 2. Impostare il ``rules`` per riconoscere il Nitrokey FIDO2 3. Installare ``libpam-u2f`` 4. Preparare l'elenco 5. Generare il file di configurazione U2F 6. Backup 7. Modificare il modulo di autenticazione pluggable ``PAM`` Dopo aver copiato il file, riavviare udev tramite ``sudo service udev restart``. Dopo la modifica del modulo PAM, sarete in grado di testare subito la vostra configurazione, ma si raccomanda di riavviare il computer e di scollegare/ricollegare Nitrokey FIDO2. In alternativa potete costruire ``libpam-u2f`` da `Git <https://github.com/phoeagon/pam-u2f>`_. In alternativa puoi semplicemente modificare il file ``/etc/pam.d/sudo`` se vuoi usare FIDO U2F quando usi il comando ``sudo``. E aggiungere le seguenti linee: E collega il tuo Nitrokey FIDO2. E riavviare il servizio ``udev`` Modificando il file ``/etc/pam.d/common-auth``, sarete in grado di utilizzare Nitrokey FIDO per l'autenticazione a secondo fattore per il login grafico e ``sudo``. Nota: ``common-auth`` deve essere modificato aggiungendo la linea di configurazione supplementare alla fine del file. Metodo CLI Scegli il tuo sistema operativo: Clicca per altre opzioni Bandiere di controllo Creare ``.config/Nitrokey/`` sotto la tua home directory Accesso al desktop e autenticazione degli utenti Linux Per la configurazione dei singoli utenti si dovrebbe puntare alla directory home nel prossimo passo, o non includere l'opzione ``authfile`` nella configurazione PAM. Metodo GUI Se ``required`` o ``requisite`` è impostato, il fallimento dell'autenticazione U2F causerà un fallimento dell'autenticazione generale. Il fallimento avverrà quando la Nitrokey FIDO configurata non è collegata, persa o distrutta. Se la Nitrokey non viene accettata immediatamente, potrebbe essere necessario copiare questo file `41-nitrokey.rules <https://www.nitrokey.com/sites/default/files/41-nitrokey.rules>`_ a ``etc/udev/rules.d/``. In casi molto rari, il sistema avrà bisogno della ` versione più vecchia <https://raw.githubusercontent.com/Nitrokey/libnitrokey/master/data/41-nitrokey_old.rules>`_ di questo file. Se hai bisogno di maggiori informazioni sui Control Flags nella linea di configurazione ``PAM``, puoi vedere l'ultima sezione di questa guida per capire la differenza, e le implicazioni dell'uso di ciascuno di essi. Se dimenticate spesso di inserire la chiave, ``prompt`` opzione fare ``pam_u2f`` stampare ``Insert your U2F device, then press ENTER.`` e darvi la possibilità di inserire la Nitrokey. Se volete accedere al vostro computer usando `Nitrokey Pro 2, <https://shop.nitrokey.com/shop/product/nk-pro-2-nitrokey-pro-2-3>`_ `Nitrokey Storage 2 <https://shop.nitrokey.com/shop/product/nitrokey-storage-2-56>`_ e `Nitrokey Start <https://shop.nitrokey.com/shop/product/nk-sta-nitrokey-start-6>`_ potete visitare le istruzioni per Windows disponibili ` qui <https://www.nitrokey.com/documentation/applications#p:nitrokey-pro&a:computer-login&os:windows>`_, e per Linux ` qui <https://www.nitrokey.com/documentation/applications#p:nitrokey-pro&a:computer-login&os:linux>`_. Se vuoi usare l'autenticazione FIDO U2F solo per il login grafico di Gnome, potresti preferire modificare il ``/etc/pam.d/gdm-password`` Se volete essere invitati a toccare la Nitrokey, ``cue`` opzione farà ``pam_u2f`` stampare ``Please touch the device.`` messaggio. Nel caso in cui si preferisca impostare U2F per un singolo utente, e si è bloccati dalla propria sessione utente, si sarebbe ancora in grado di accedere con il ``<backup_user>``, e procedere con la manutenzione. Nel passo 7 abbiamo usato il ``sufficient`` flag di controllo per determinare il comportamento del modulo PAM quando la Nitrokey è inserita o meno. Tuttavia è possibile cambiare questo comportamento utilizzando i seguenti flag di controllo: Nell'angolo sinistro clicca su ``Unlock`` e questo richiederà la tua password Nell'angolo in basso a sinistra cliccate su ``Show Applications`` e digitate le impostazioni nella barra di ricerca come segue: Istruzioni Introduzione Si raccomanda di testare prima le istruzioni con un solo utente. A questo scopo il comando precedente prende l'opzione ``-u``, per specificare un utente, come nell'esempio seguente: Accedi al sito web e abilita l'autenticazione a due fattori nelle impostazioni del tuo account. (Nella maggior parte dei casi troverete un link alla documentazione del servizio web supportato su `dongleauth.com <https://www.dongleauth.com/>`_) Nitrokey FIDO U2F Nitrokey FIDO U2F con Linux Nitrokey FIDO U2F con Windows Nitrokey FIDO U2F con macOS Nitrokey FIDO2 configurato seguendo ` queste istruzioni <https://www.nitrokey.com/documentation/installation#p:nitrokey-fido-u2f&os:linux>`_. Nota, l'output sarà molto più lungo, ma le parti sensibili sono state rimosse qui. Per maggiore sicurezza, e una volta generato il file di configurazione, sposteremo la directory ``.config/Nitrokey`` sotto la directory ``etc/`` con questo comando: Su Ubuntu 20.04 è possibile scaricare direttamente ``libpam-u2f`` dai repo ufficiali Una volta terminata la preparazione, possiamo iniziare a configurare il computer per utilizzare Nitrokey FIDO2 per l'autenticazione a secondo fattore al login e ``sudo``. Una volta modificato il ``common-auth``, possiamo salvare e uscire dal file. Una volta terminato il passo 4 si dovrebbe aver finito Una volta che avete provato correttamente le istruzioni di questa guida (e impostato un backup), si raccomanda di usare il ``required`` o il ``requisite`` flag di controllo invece di ``sufficient``. Una volta eseguito il comando di cui sopra, dovrete toccare il tasto mentre lampeggia. Una volta fatto, ``pamu2fcfg`` aggiungerà al suo output il ``u2f_keys`` nel seguente formato: Aprire uno dei ` siti web che supportano FIDO U2F <https://www.dongleauth.com/>`_. Moduli PAM Registra il tuo Nitrokey FIDO U2F nelle impostazioni dell'account toccando il pulsante per attivare il Nitrokey FIDO U2F. Dopo aver configurato con successo il dispositivo, devi attivare Nitrokey FIDO U2F in questo modo ogni volta che accedi. Requisiti Scorri in basso nella barra di destra fino a ``Users`` Seleziona ``Administrator`` e inserisci il nome utente e la password di tua scelta Dato che stiamo usando il Central Authentication Mapping, dobbiamo dire a ``pam_u2f`` la posizione del file da usare con l'opzione ``authfile``. L'App Nitrokey non può essere usata per Nitrokey FIDO U2F. Nitrokey FIDO U2F può essere utilizzato con qualsiasi browser attuale. Nitrokey FIDO U2F supporta **l'autenticazione a due fattori (2FA)**. Con l'autenticazione a due fattori (2FA), la Nitrokey FIDO U2F viene controllata in aggiunta alla password. L'output dovrebbe essere qualcosa come il seguente: Il file sotto ``.config/Nitrokey`` deve essere chiamato ``u2f_keys`` Il passo finale è configurare i file del modulo PAM sotto ``/etc/pam.d/``. In questa guida modificheremo il file ``common-auth`` poiché gestisce le impostazioni di autenticazione che sono comuni a tutti i servizi, ma sono possibili altre opzioni. È possibile modificare il file con il seguente comando: La prima volta che si collega il Nitrokey FIDO U2F Windows potrebbe aver bisogno di un po' di tempo per configurare il dispositivo. Le bandiere ``required`` e ``requisite`` forniscono un controllo di accesso più stretto, e renderanno necessaria la Nitrokey FIDO2 per effettuare il login, e/o utilizzare il servizio configurato. La seguente guida può potenzialmente bloccarvi fuori dal vostro computer. Dovresti essere consapevole di questi rischi, in quanto si raccomanda di utilizzare prima le istruzioni che seguono su un computer secondario, o dopo un backup completo. L'accesso sicuro a un tale software centrale è particolarmente importante e ora può essere realizzato con la Nitrokey. A questo scopo, l'accesso è protetto dall'autenticazione a due fattori (2FA) e gli utenti critici ricevono una Nitrokey. D'ora in poi la Nitrokey sarà controllata durante il login dell'utente in aggiunta alla password dell'utente. Gli attacchi di phishing vengono così sventati e i vostri dati aziendali critici sono protetti. L'autenticazione a due fattori può essere effettuata tramite password monouso (TOTP, RFC 6238) e FIDO U2F, permettendo così di utilizzare Nitrokey Pro, Nitrokey Storage e Nitrokey FIDO U2F. È anche possibile configurare l'autenticazione a livello centrale e attivarla solo per utenti selezionati. Ci sono diversi file di moduli PAM che possono essere modificati secondo le vostre esigenze: Questa guida vi guiderà attraverso la configurazione di Linux per utilizzare FIDO Universal 2nd Factor, cioè FIDO U2F con ``libpam-u2f`` e `Nitrokey FIDO2 <https://shop.nitrokey.com/shop/product/nk-fi2-nitrokey-fido2-55>`_. Questa soluzione è stata sviluppata insieme al nostro partner `initOS <https://www.initos.com/>`_, specializzato nello sviluppo e nella personalizzazione di Odoo. Se siete interessati, contattateci. Questo passo è facoltativo, tuttavia si consiglia di avere una Nitrokey di riserva in caso di perdita, furto o distruzione della tua Nitrokey FIDO. Per generare il file di configurazione useremo l'utility ``pamu2fcfg`` che viene fornita con il ``libpam-u2f``. Per comodità, scriveremo direttamente l'output dell'utility nel file ``u2f_keys`` sotto ``.config/Nitrokey``. Per prima cosa collegate il vostro Nitrokey FIDO2 (se non l'avete già fatto), e inserite il seguente comando: Per impostare una chiave di riserva, ripetete la procedura sopra, e usate ``pamu2fcfg -n``. Questo ometterà il campo ``<username>``, e l'output può essere aggiunto alla linea con il tuo ``<username>`` come questo: Per verificare che la libreria sia correttamente installata, digitate il seguente comando: Risoluzione dei problemi Autenticazione a due fattori (2FA) Autenticazione a due fattori per il software ERP Odoo Ubuntu 20.04 con Gnome Display Manager. Sotto ``/etc/udev/rules.d`` scarica ``41-nitrokey.rules`` Uso Video: Autenticazione a due fattori con Nitrokey FIDO U2F in Odoo Puoi anche testare la tua configurazione uscendo dalla sessione utente e rientrandovi. Una schermata simile dovrebbe essere visualizzata una volta che hai scollegato/ricollegato il tuo Nitrokey FIDO2 e digitato la tua password: Potete farlo usando questi comandi: Potete testare la configurazione digitando ``sudo ls`` nel terminale. Dovrebbe comparire il messaggio ``Please touch the device.`` ed avere un output simile sul terminale: Potreste perdere l'accesso ai vostri dati dopo aver configurato i moduli `PAM <http://www.linux-pam.org/Linux-PAM-html/>`_. Perderai anche la capacità di usare ``sudo`` se hai impostato la Mappatura dell'autenticazione centrale *e* hai usato i flag ``required`` o ``requisite``. Perderai l'accesso al tuo computer se hai configurato male il modulo PAM *e* hai usato i flag ``required`` o ``requisite``. `Checkout <https://www.nitrokey.com/documentation/applications#p:nitrokey-fido-u2f&os:all>`_ i vari casi d'uso e le applicazioni supportate. `Contatto <https://www.nitrokey.com/contact>`_ `Odoo <https://www.odoo.com/>`_ è un potente software ERP (Enterprise Resource Planning) per aziende di tutte le dimensioni. Odoo è disponibile come open source e contiene moduli per CRM, sito web/e-commerce, contabilità, contabilità finanziaria, produzione, gestione del magazzino, gestione dei progetti, gestione dei documenti, tra gli altri. ``optional``: Il successo o il fallimento di questo modulo è importante solo se è l'unico modulo nello stack associato a questo servizio+tipo. Il flag ``optional`` è considerato sicuro da usare per scopi di test. ``required``: Questo è il flag più critico. Il risultato del modulo deve avere successo perché l'autenticazione continui. Questo flag può bloccarvi fuori dal vostro computer se non avete accesso alla Nitrokey. ``requisite``: Simile a ``required`` tuttavia, nel caso in cui un modulo specifico restituisca un fallimento, il controllo viene restituito direttamente all'applicazione, o allo stack PAM superiore. Questo flag può anche bloccarvi fuori dal vostro computer se non avete accesso alla Nitrokey. ``sufficient``: Il risultato del modulo viene ignorato se fallisce. Il flag ``sufficient`` è considerato sicuro ai fini dei test. `nouserok` farà in modo che tu possa ancora fare il login usando il nome utente e la password, potresti volerlo rimuovere ad un certo punto una volta che la configurazione funziona e non vuoi più avere un regolare login basato su nome utente e password. 
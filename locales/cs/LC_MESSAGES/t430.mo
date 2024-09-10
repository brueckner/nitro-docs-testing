��    A      $              ,     -     H  "   g  T   �  �   �     o  !   �  v   �  �   '  z   �  �   2     �  a     &   p  �  �  �   X
      1  Q   R     �     �     �  �   �  K   �  L   �  �   %  �   �  �   �  �   �  �        �  Q   �  �   7     �     �     �  7     [   G     �  P   �  �   �  /   �  /   �     �  V     C   b     �  �  �  �  O  �   �  �   �  �   �  �  Y  �   0  Q   �  �   .               ;  u  R  f   �     /      3      <      E   �  N      N"     i"  *   �"  M   �"  �   #  !   �#  .   �#     �#  �   Z$  �   �$  �   �%     >&  f   ]&  3   �&  �  �&  �   �(     �)  `   �)  $   8*     ]*     i*  �   �*  X   2+  Z   �+  �   �+  �   �,  �   �-  �   l.  �   /     �/  }   �/  �   v0     1  +   1  '   >1  <   f1  h   �1  	   2  Y   2  �   p2  =   �2  D   93     ~3  G   �3  `   �3     G4  �  _4  �  �5  �   �7  �   F8  �   C9  �  :  �   �;  Z   �<  �   �<     �=  #   �=  #   !>  �  E>  p   �?     Q@     U@     a@     m@   (Nitrokey T430 - Qubes OS) (Nitrokey T430 - Ubuntu Linux) Add “Network controler” device After purchase, the passwords are set to a default value and must be changed by you: After that, please follow `these instructions from step 3 onwards `system update <https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__. Behavior After a System Update Change Disk Encryption Passphrase Change the PINs of your Nitrokey as `described here <https://docs.nitrokey.com/pro/change-user-and-admin-pin.html>`__. Change the passphrase for disk encryption as `described here <https://docs.nitrokey.com/x230/ubuntu/change-disk-encryption-passphrase.html>`__. Change the passphrase for the hard disk encryption by running “sudo cryptsetup luksChangeKey /dev/sda2” in a terminal. Check each screw individually to see if its individual appearance matches the photo. It is best to use a magnifying glass or macro lens for this purpose. The screws are numbered as follows. Choose your operating system: Click on the Nitrokey icon on the left side of the screen to open the pre-installed Nitrokey App. Click “OK” and restart the system. Each boot the code is generated on the Nitropad and the Nitrokey, if its connected. It is allowed to run 10 boots without loosing the synchronization between the devices, after which the bad code signal is shown, regardless of the rest of the system being in a correct state. If you are sure the system was not beign tampered with (e.g. the Nitropad was booted more than 10 times without the Nitrokey), you can safely reset the system’s warning. Each time you start the NitroPad, you should - if possible - connect your Nitrokey. If the Nitrokey is plugged in and the system has not been modified, the following screen will appear when the NitroPad is turned on. Enter the your account password. Enter “PleaseChangeMe” as the current passphrase and select a secure new one. Generate new TOTP/HOTP secret Getting Started Go to Devices tab How the boot process may look like if the system has been changed (for example after an update) and what error messages may otherwise occur is described further below. If Qubes doesn’t boot as shown below, please execute the following steps: If Ubuntu doesn’t boot as shown below, please execute the following steps: If the bag or the screws do not match the photos sent, an unauthorized opening of your NitroPad cannot be excluded. In this case please contact us to arrange further action. If the information on the NitroPad does not match the information on the Nitrokey, the background would turn red and the message “Invalid Code” would appear. This could indicate that manipulation has taken place. If you have ordered the unit with the option “sealed screws and sealed bag”, please `verify the sealing <verify-sealed-hardware.html>`__ before unpacking. If you do not know what this means, skip this section. If you ordered your NitroPad with sealed screws and in a sealed bag, it allows you to check if the NitroPad has been tampered with during shipping. In case the Network Manager icon is not shown and when starting a VM an error like “Domain sys-net has failed to start: PCI device dom0:03_00.0 does not exist” is shown, proceed as follows: Invalid Code Left click on the gears and select “Change Passphrase” from the context menu. Next, the system will prompt you to enter the passphrase to decrypt the hard disk. The passphrase is initially “PleaseChangeMe”. |image3| NitroPad T430 NitroPad X230 with Qubes OS NitroPad X230 with Ubuntu Linux Open menu -> Service: sys-net -> sys-net: Qube Settings Open the pre-installed Nitrokey App and change the PINs of your Nitrokey as described here. Options Please connect the Nitrokey and execute the following from the main boot screen: Press Enter (“Default Boot”) after booting the system, provided the NitroPad has not shown any errors and the Nitrokey is lit green (see above). Remove “Unknown device” from the right side Restart your Laptop and go to Options. |image5| Secure Starting Procedure Select the field that says “Luks”. Afterwards it should have an orange background. Select “Update Checksums and sign all files on /boot”. |image6| TPM/TOTP/HOTP Options That’s why it’s important to restart your NitroPad under controlled conditions after a system update. Only when the new status has been confirmed can you leave the device unattended again. Otherwise, you will not be able to distinguish a possible attack from a system update. Detailed instructions for a system update can be `found here <https://docs.nitrokey.com/x230/qubes/system-update.html>`__. That’s why it’s important to restart your NitroPad under controlled conditions after a system update. Only when the new status has been confirmed can you leave the device unattended again. Otherwise, you will not be able to distinguish a possible attack from a system update. Detailed instructions for a system update can be `found here <https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__. The NitroPad X230 can also be started without the Nitrokey. If you don’t have the Nitrokey with you, but are sure that the hardware has not been manipulated, you can boot your system without checking. The NitroPad firmware checks certain system files for changes. If your operating system has updated important components, you will be warned the next time you boot the NitroPad. This could look like this, for example: The bag and all screws on the bottom of the device have been sealed. For the bag and each of these screws you have received a photo by e-mail. The orientation of the photos is such that the battery is on top. The box marked in red contains the information that the BIOS has not been changed and that the shared secret of the NitroPad and the Nitrokey match. But this information is not sufficient, because an attacker could have faked it. If at the same time the Nitrokey also flashes green, everything is fine. An attacker would have to have had access to the NitroPad and Nitrokey to achieve this result. It is therefore important that you do not leave both devices unattended. The system will then guide you through the process of creating a user account. After that you should have successfully booted the system and could already use it normally. This example shows a sealed screw whose glitter represents an individual pattern. To change the passphrase for disk encryption, first click on “Activities” in the upper left corner and enter “disk” in the search bar. Then select the “Disks” program that appears in the middle of the screen. Troubleshooting Verification of Sealed Hardware Verify Sealed Hardware With the NitroPad X230, malicious changes to the BIOS, operating system, and software can be easily detected. For example, if you left your NitroPad in a hotel room, you can use your Nitrokey to check if it has been tampered with while you were away. If an attacker modifies the NitroPad’s firmware or operating system, the Nitrokey will detect this (instructions below). and follow the on-screen guide. After that the secret and counter should be both reset to a new value. img |image1| |image2| |image4| Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-03-18 14:53+0100
PO-Revision-Date: 2022-01-11 11:10+0000
Last-Translator: Ben (Weblate Admin) <ben@dotplex.com>
Language: cs
Language-Team: Czech <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-t430/cs/>
Plural-Forms: nplurals=3; plural=(n==1) ? 0 : (n>=2 && n<=4) ? 1 : 2;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 (Nitrokey T430 - Qubes OS) (Nitrokey T430 - Ubuntu Linux) Přidání zařízení "Network controler" Po zakoupení jsou hesla nastavena na výchozí hodnotu a musíte je změnit: Poté postupujte podle `těchto pokynů od kroku 3 `aktualizace systému <https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__. Chování po aktualizaci systému Změna přístupové fráze šifrování disku Změňte kódy PIN svého klíče Nitrokey podle `popisu zde <https://docs.nitrokey.com/pro/change-user-and-admin-pin.html>`__. Změňte přístupovou frázi pro šifrování disku podle ` popsaného zde <https://docs.nitrokey.com/x230/ubuntu/change-disk-encryption-passphrase.html>`__. Změňte přístupovou frázi pro šifrování pevného disku spuštěním příkazu "sudo cryptsetup luksChangeKey /dev/sda2" v terminálu. Zkontrolujte každý šroub zvlášť, zda jeho vzhled odpovídá fotografii. K tomuto účelu je nejlepší použít lupu nebo makroobjektiv. Šrouby jsou očíslovány následovně. Vyberte si operační systém: Kliknutím na ikonu Nitrokey na levé straně obrazovky otevřete předinstalovanou aplikaci Nitrokey. Klikněte na tlačítko "OK" a restartujte systém. Při každém spuštění se kód vygeneruje na zařízení Nitropad a Nitrokey, pokud je připojeno. Je povoleno provést 10 spuštění bez ztráty synchronizace mezi zařízeními, po kterých se zobrazí signál špatného kódu bez ohledu na to, že zbytek systému je ve správném stavu. Pokud jste si jisti, že se systémem nebylo manipulováno (např. Nitropad byl spuštěn více než 10krát bez Nitrokey), můžete varování systému bezpečně resetovat. Při každém spuštění zařízení NitroPad byste měli - pokud je to možné - připojit klíč Nitrokey. Pokud je klíč Nitrokey připojen a systém nebyl upraven, zobrazí se po zapnutí zařízení NitroPad následující obrazovka. Zadejte heslo k účtu. Jako aktuální přístupovou frázi zadejte "PleaseChangeMe" a vyberte novou bezpečnou frázi. Generování nové tajenky TOTP/HOTP Začínáme Přejděte na kartu Zařízení Jak může proces spouštění vypadat, pokud byl systém změněn (například po aktualizaci), a jaká chybová hlášení se jinak mohou objevit, je popsáno níže. Pokud se systém Qubes nespustí, jak je uvedeno níže, proveďte následující kroky: Pokud se Ubuntu nespustí podle níže uvedeného návodu, proveďte následující kroky: Pokud sáček nebo šrouby neodpovídají zaslaným fotografiím, nelze vyloučit neoprávněné otevření zařízení NitroPad. V takovém případě nás prosím kontaktujte a domluvte se na dalším postupu. Pokud by se informace na zařízení NitroPad neshodovaly s informacemi na klíči Nitrokey, pozadí by zčervenalo a objevila by se zpráva "Invalid Code". To by mohlo znamenat, že došlo k manipulaci. Pokud jste si objednali jednotku s možností "zapečetěné šrouby a zapečetěný sáček", zkontrolujte před vybalením `zapečetění <verify-sealed-hardware.html>`__. Pokud nevíte, co to znamená, přeskočte tuto část. Pokud jste si NitroPad objednali se zapečetěnými šrouby a v zapečetěném sáčku, můžete zkontrolovat, zda s NitroPadem nebylo během přepravy manipulováno. V případě, že se ikona Správce sítě nezobrazí a při spuštění virtuálního počítače se zobrazí chyba typu "Domain sys-net has failed to start: dom0:03_00.0 does not exist", postupujte následovně: Neplatný kód Klikněte levým tlačítkem myši na ozubená kola a z kontextové nabídky vyberte možnost "Změnit přístupovou frázi". Poté vás systém vyzve k zadání přístupové fráze pro dešifrování pevného disku. Heslo je zpočátku "PleaseChangeMe". |obrázek3| NitroPad T430 NitroPad X230 s operačním systémem Qubes NitroPad X230 se systémem Ubuntu Linux Otevřít menu -> Service: sys-net -> sys-net: Qube Settings Otevřete předinstalovanou aplikaci Nitrokey a změňte kódy PIN klíče Nitrokey podle tohoto popisu. Možnosti Připojte Nitrokey a na hlavní spouštěcí obrazovce proveďte následující příkaz: Po zavedení systému stiskněte Enter ("Default Boot"), pokud NitroPad nevykazuje žádné chyby a Nitrokey svítí zeleně (viz výše). Odstranění položky "Neznámé zařízení" z pravé strany Restartujte notebook a přejděte do nabídky Možnosti. |obrázek5| Postup bezpečného spuštění Vyberte pole s nápisem "Luks". Poté by mělo mít oranžové pozadí. Vyberte možnost "Aktualizovat kontrolní součty a podepsat všechny soubory v /boot". |image6| Možnosti TPM/TOTP/HOTP Proto je důležité po aktualizaci systému restartovat zařízení NitroPad za kontrolovaných podmínek. Teprve po potvrzení nového stavu můžete zařízení opět ponechat bez dozoru. V opačném případě nebudete schopni rozlišit případný útok od aktualizace systému. Podrobné pokyny k aktualizaci systému naleznete `zde <https://docs.nitrokey.com/x230/qubes/system-update.html>`__. Proto je důležité po aktualizaci systému restartovat zařízení NitroPad za kontrolovaných podmínek. Teprve po potvrzení nového stavu můžete zařízení opět ponechat bez dozoru. V opačném případě nebudete schopni rozlišit případný útok od aktualizace systému. Podrobné pokyny k aktualizaci systému naleznete `zde <https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__. Zařízení NitroPad X230 lze spustit i bez klíče Nitrokey. Pokud nemáte klíč Nitrokey u sebe, ale jste si jisti, že s hardwarem nebylo manipulováno, můžete systém spustit bez kontroly. Firmware zařízení NitroPad kontroluje změny některých systémových souborů. Pokud operační systém aktualizoval důležité součásti, budete při příštím spuštění zařízení NitroPad upozorněni. To může vypadat například takto: Sáček a všechny šrouby na spodní straně zařízení byly zapečetěny. U sáčku a každého z těchto šroubů jste e-mailem obdrželi fotografii. Orientace fotografií je taková, že baterie je nahoře. Červeně označené pole obsahuje informaci, že systém BIOS nebyl změněn a že sdílené tajemství zařízení NitroPad a klíče Nitrokey se shoduje. Tato informace však není dostatečná, protože útočník ji mohl zfalšovat. Pokud současně zeleně bliká i Nitrokey, je vše v pořádku. Útočník by musel mít přístup k zařízení NitroPad a klíči Nitrokey, aby dosáhl tohoto výsledku. Je proto důležité, abyste nenechávali obě zařízení bez dozoru. Systém vás poté provede procesem vytvoření uživatelského účtu. Poté byste měli úspěšně spustit systém a již jej můžete normálně používat. Tento příklad ukazuje uzavřený šroub, jehož třpyt představuje individuální vzor. Chcete-li změnit přístupovou frázi pro šifrování disku, klikněte nejprve na položku "Aktivity" v levém horním rohu a do vyhledávacího řádku zadejte "disk". Poté vyberte program "Disky", který se zobrazí uprostřed obrazovky. Řešení problémů Ověření zapečetěného hardwaru Ověření zapečetěného hardwaru S počítačem NitroPad X230 lze snadno odhalit škodlivé změny v systému BIOS, operačním systému a softwaru. Pokud jste například nechali svůj NitroPad v hotelovém pokoji, můžete pomocí klíče Nitrokey zkontrolovat, zda s ním nebylo během vaší nepřítomnosti manipulováno. Pokud útočník upraví firmware nebo operační systém zařízení NitroPad, Nitrokey to zjistí (pokyny níže). a postupujte podle pokynů na obrazovce. Poté by měly být tajenka i počítadlo resetovány na novou hodnotu. img |obrázek1| |obrázek2| |obrázek4| 
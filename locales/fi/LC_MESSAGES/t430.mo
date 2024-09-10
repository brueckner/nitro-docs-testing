��    A      $              ,     -     H  "   g  T   �  �   �     o  !   �  v   �  �   '  z   �  �   2     �  a     &   p  �  �  �   X
      1  Q   R     �     �     �  �   �  K   �  L   �  �   %  �   �  �   �  �   �  �        �  Q   �  �   7     �     �     �  7     [   G     �  P   �  �   �  /   �  /   �     �  V     C   b     �  �  �  �  O  �   �  �   �  �   �  �  Y  �   0  Q   �  �   .               ;  u  R  f   �     /      3      <      E   �  N      -"     H"  "   g"  L   �"  �   �"  5   e#     �#  {   �#  �   7$  s   �$  �   3%      �%  j   &  5   �&  �  �&  �   �(     m)  V   �)     �)     �)     *  �   %*  L   �*  M   5+  �   �+  �   C,  �   �,  �   �-  �   n.     4/  S   G/  �   �/     20     @0     `0  :   0  h   �0     #1  I   /1  �   y1  +   !2  P   M2      �2  Y   �2  X   3     r3  �  �3  �  A5  �   �6    �7  �   �8  �  �9  �   �;  U   M<  �   �<     i=  )   x=     �=  x  �=  s   :?     �?     �?     �?     �?   (Nitrokey T430 - Qubes OS) (Nitrokey T430 - Ubuntu Linux) Add “Network controler” device After purchase, the passwords are set to a default value and must be changed by you: After that, please follow `these instructions from step 3 onwards `system update <https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__. Behavior After a System Update Change Disk Encryption Passphrase Change the PINs of your Nitrokey as `described here <https://docs.nitrokey.com/pro/change-user-and-admin-pin.html>`__. Change the passphrase for disk encryption as `described here <https://docs.nitrokey.com/x230/ubuntu/change-disk-encryption-passphrase.html>`__. Change the passphrase for the hard disk encryption by running “sudo cryptsetup luksChangeKey /dev/sda2” in a terminal. Check each screw individually to see if its individual appearance matches the photo. It is best to use a magnifying glass or macro lens for this purpose. The screws are numbered as follows. Choose your operating system: Click on the Nitrokey icon on the left side of the screen to open the pre-installed Nitrokey App. Click “OK” and restart the system. Each boot the code is generated on the Nitropad and the Nitrokey, if its connected. It is allowed to run 10 boots without loosing the synchronization between the devices, after which the bad code signal is shown, regardless of the rest of the system being in a correct state. If you are sure the system was not beign tampered with (e.g. the Nitropad was booted more than 10 times without the Nitrokey), you can safely reset the system’s warning. Each time you start the NitroPad, you should - if possible - connect your Nitrokey. If the Nitrokey is plugged in and the system has not been modified, the following screen will appear when the NitroPad is turned on. Enter the your account password. Enter “PleaseChangeMe” as the current passphrase and select a secure new one. Generate new TOTP/HOTP secret Getting Started Go to Devices tab How the boot process may look like if the system has been changed (for example after an update) and what error messages may otherwise occur is described further below. If Qubes doesn’t boot as shown below, please execute the following steps: If Ubuntu doesn’t boot as shown below, please execute the following steps: If the bag or the screws do not match the photos sent, an unauthorized opening of your NitroPad cannot be excluded. In this case please contact us to arrange further action. If the information on the NitroPad does not match the information on the Nitrokey, the background would turn red and the message “Invalid Code” would appear. This could indicate that manipulation has taken place. If you have ordered the unit with the option “sealed screws and sealed bag”, please `verify the sealing <verify-sealed-hardware.html>`__ before unpacking. If you do not know what this means, skip this section. If you ordered your NitroPad with sealed screws and in a sealed bag, it allows you to check if the NitroPad has been tampered with during shipping. In case the Network Manager icon is not shown and when starting a VM an error like “Domain sys-net has failed to start: PCI device dom0:03_00.0 does not exist” is shown, proceed as follows: Invalid Code Left click on the gears and select “Change Passphrase” from the context menu. Next, the system will prompt you to enter the passphrase to decrypt the hard disk. The passphrase is initially “PleaseChangeMe”. |image3| NitroPad T430 NitroPad X230 with Qubes OS NitroPad X230 with Ubuntu Linux Open menu -> Service: sys-net -> sys-net: Qube Settings Open the pre-installed Nitrokey App and change the PINs of your Nitrokey as described here. Options Please connect the Nitrokey and execute the following from the main boot screen: Press Enter (“Default Boot”) after booting the system, provided the NitroPad has not shown any errors and the Nitrokey is lit green (see above). Remove “Unknown device” from the right side Restart your Laptop and go to Options. |image5| Secure Starting Procedure Select the field that says “Luks”. Afterwards it should have an orange background. Select “Update Checksums and sign all files on /boot”. |image6| TPM/TOTP/HOTP Options That’s why it’s important to restart your NitroPad under controlled conditions after a system update. Only when the new status has been confirmed can you leave the device unattended again. Otherwise, you will not be able to distinguish a possible attack from a system update. Detailed instructions for a system update can be `found here <https://docs.nitrokey.com/x230/qubes/system-update.html>`__. That’s why it’s important to restart your NitroPad under controlled conditions after a system update. Only when the new status has been confirmed can you leave the device unattended again. Otherwise, you will not be able to distinguish a possible attack from a system update. Detailed instructions for a system update can be `found here <https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__. The NitroPad X230 can also be started without the Nitrokey. If you don’t have the Nitrokey with you, but are sure that the hardware has not been manipulated, you can boot your system without checking. The NitroPad firmware checks certain system files for changes. If your operating system has updated important components, you will be warned the next time you boot the NitroPad. This could look like this, for example: The bag and all screws on the bottom of the device have been sealed. For the bag and each of these screws you have received a photo by e-mail. The orientation of the photos is such that the battery is on top. The box marked in red contains the information that the BIOS has not been changed and that the shared secret of the NitroPad and the Nitrokey match. But this information is not sufficient, because an attacker could have faked it. If at the same time the Nitrokey also flashes green, everything is fine. An attacker would have to have had access to the NitroPad and Nitrokey to achieve this result. It is therefore important that you do not leave both devices unattended. The system will then guide you through the process of creating a user account. After that you should have successfully booted the system and could already use it normally. This example shows a sealed screw whose glitter represents an individual pattern. To change the passphrase for disk encryption, first click on “Activities” in the upper left corner and enter “disk” in the search bar. Then select the “Disks” program that appears in the middle of the screen. Troubleshooting Verification of Sealed Hardware Verify Sealed Hardware With the NitroPad X230, malicious changes to the BIOS, operating system, and software can be easily detected. For example, if you left your NitroPad in a hotel room, you can use your Nitrokey to check if it has been tampered with while you were away. If an attacker modifies the NitroPad’s firmware or operating system, the Nitrokey will detect this (instructions below). and follow the on-screen guide. After that the secret and counter should be both reset to a new value. img |image1| |image2| |image4| Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-03-18 14:53+0100
PO-Revision-Date: 2022-01-11 15:11+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: fi
Language-Team: Finnish <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-t430/fi/>
Plural-Forms: nplurals=2; plural=n != 1;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 (Nitrokey T430 - Qubes OS) (Nitrokey T430 - Ubuntu Linux) Lisää "Network controler" -laite Oston jälkeen salasanat asetetaan oletusarvoon, ja sinun on vaihdettava ne: Noudata tämän jälkeen `ohjeita vaiheesta 3 alkaen `järjestelmän päivitys <https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__. Käyttäytyminen järjestelmän päivityksen jälkeen Vaihda levyn salauksen salasana Muuta Nitrokey-avaimesi PIN-koodit `kuvauksen mukaisesti <https://docs.nitrokey.com/pro/change-user-and-admin-pin.html>`__. Muuta levyn salauksen salasana `kuvauksen mukaisesti <https://docs.nitrokey.com/x230/ubuntu/change-disk-encryption-passphrase.html>`__. Muuta kiintolevyn salauksen salasana suorittamalla terminaalissa komento "sudo cryptsetup luksChangeKey /dev/sda2". Tarkista jokainen ruuvi yksitellen, vastaako sen ulkonäkö kuvan mukaista ulkonäköä. Tähän tarkoitukseen on parasta käyttää suurennuslasia tai makrolinssiä. Ruuvit on numeroitu seuraavasti. Valitse käyttöjärjestelmäsi: Avaa esiasennettu Nitrokey-sovellus napsauttamalla näytön vasemmassa reunassa olevaa Nitrokey-kuvaketta. Napsauta "OK" ja käynnistä järjestelmä uudelleen. Koodi luodaan jokaisella käynnistyskerralla Nitropadiin ja Nitrokeyyn, jos se on liitetty. On sallittua suorittaa 10 käynnistystä menettämättä laitteiden välistä synkronointia, minkä jälkeen huonon koodin signaali näytetään riippumatta siitä, onko muu järjestelmä oikeassa tilassa. Jos olet varma, että järjestelmää ei ole peukaloitu (esim. Nitropad on käynnistetty yli 10 kertaa ilman Nitrokeyta), voit turvallisesti nollata järjestelmän varoituksen. Aina kun käynnistät NitroPadin, sinun on - jos mahdollista - kytkettävä Nitrokey. Jos Nitrokey on kytketty ja järjestelmää ei ole muutettu, seuraava näyttö tulee näkyviin, kun NitroPad käynnistetään. Syötä tilisi salasana. Kirjoita "PleaseChangeMe" nykyiseksi salasanaksi ja valitse uusi turvallinen salasana. Luo uusi TOTP/HOTP-salaisuus Aloittaminen Siirry Laitteet-välilehdelle Jäljempänä kuvataan tarkemmin, miltä käynnistysprosessi voi näyttää, jos järjestelmää on muutettu (esimerkiksi päivityksen jälkeen), ja mitä virheilmoituksia voi muutoin esiintyä. Jos Qubes ei käynnisty alla esitetyllä tavalla, suorita seuraavat vaiheet: Jos Ubuntu ei käynnisty alla esitetyllä tavalla, suorita seuraavat vaiheet: Jos pussi tai ruuvit eivät vastaa lähetettyjä kuvia, NitroPadin luvatonta avaamista ei voida sulkea pois. Ota tässä tapauksessa yhteyttä meihin, jotta voimme sopia jatkotoimenpiteistä. Jos NitroPadin tiedot eivät vastaa Nitrokey-avaimen tietoja, tausta muuttuu punaiseksi ja näyttöön tulee viesti "Invalid Code". Tämä voi merkitä, että manipulointia on tapahtunut. Jos olet tilannut laitteen vaihtoehdolla "sinetöidyt ruuvit ja sinetöity pussi", tarkista `sinetöinti <verify-sealed-hardware.html>`__ ennen pakkauksen purkamista. Jos et tiedä, mitä tämä tarkoittaa, ohita tämä kohta. Jos tilasit NitroPadin sinetöidyillä ruuveilla ja sinetöidyssä pussissa, voit tarkistaa, onko NitroPadia peukaloitu kuljetuksen aikana. Jos Verkonhallinta-kuvaketta ei näytetä ja VM:ää käynnistettäessä tulee virheilmoitus, kuten "Domain sys-net has failed to start": PCI-laite dom0:03_00.0 ei ole olemassa", toimi seuraavasti: Virheellinen koodi Napsauta hammasrattaita vasemmalla ja valitse kontekstivalikosta "Vaihda salasana". Seuraavaksi järjestelmä pyytää sinua syöttämään salasanan kiintolevyn salauksen purkamiseksi. Tunnuslause on aluksi "PleaseChangeMe". |image3| NitroPad T430 NitroPad X230 Qubes OS:n kanssa NitroPad X230 Ubuntu Linuxilla Avaa valikko -> Palvelu: sys-net -> sys-net: Qube Settings Avaa esiasennettu Nitrokey-sovellus ja vaihda Nitrokey-sovelluksen PIN-koodit tässä kuvatulla tavalla. Vaihtoehdot Kytke Nitrokey ja suorita seuraavat komennot pääkäynnistysnäytöltä: Paina Enter-näppäintä ("Default Boot") järjestelmän käynnistyksen jälkeen, jos NitroPad ei ole näyttänyt virheitä ja Nitrokey palaa vihreänä (katso yllä). Poista "Tuntematon laite" oikealta puolelta Käynnistä kannettava tietokone uudelleen ja siirry kohtaan Asetukset. |image5| Turvallinen käynnistysmenettely Valitse kenttä, jossa lukee "Luks". Sen jälkeen sen pitäisi olla oranssilla taustalla. Valitse "Päivitä tarkistussummat ja allekirjoita kaikki tiedostot /bootissa". |image6| TPM/TOTP/HOTP-vaihtoehdot Siksi on tärkeää käynnistää NitroPad uudelleen valvotuissa olosuhteissa järjestelmäpäivityksen jälkeen. Vasta kun uusi tila on vahvistettu, voit jättää laitteen jälleen ilman valvontaa. Muussa tapauksessa et pysty erottamaan mahdollista hyökkäystä järjestelmäpäivityksestä. Yksityiskohtaiset ohjeet järjestelmäpäivitystä varten löytyvät `täältä <https://docs.nitrokey.com/x230/qubes/system-update.html>`__. Siksi on tärkeää käynnistää NitroPad uudelleen valvotuissa olosuhteissa järjestelmäpäivityksen jälkeen. Vasta kun uusi tila on vahvistettu, voit jättää laitteen jälleen ilman valvontaa. Muussa tapauksessa et pysty erottamaan mahdollista hyökkäystä järjestelmäpäivityksestä. Yksityiskohtaiset ohjeet järjestelmäpäivitystä varten löytyvät täältä ` <https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__. NitroPad X230 voidaan käynnistää myös ilman Nitrokey-avainta. Jos sinulla ei ole Nitrokey-avainta mukanasi, mutta olet varma, että laitteistoa ei ole manipuloitu, voit käynnistää järjestelmän tarkistamatta sitä. NitroPadin laiteohjelmisto tarkistaa tietyt järjestelmätiedostot muutosten varalta. Jos käyttöjärjestelmäsi on päivittänyt tärkeitä osia, saat varoituksen, kun käynnistät NitroPadin seuraavan kerran. Tämä voi näyttää esimerkiksi seuraavalta: Pussi ja kaikki laitteen pohjassa olevat ruuvit on sinetöity. Pussista ja jokaisesta ruuvista on lähetetty kuva sähköpostitse. Kuvien suuntaus on sellainen, että akku on ylhäällä. Punaisella merkitty ruutu sisältää tiedot siitä, että BIOSia ei ole muutettu ja että NitroPadin ja Nitrokey:n jaettu salaisuus täsmää. Nämä tiedot eivät kuitenkaan riitä, koska hyökkääjä on voinut väärentää ne. Jos samaan aikaan myös Nitrokey vilkkuu vihreänä, kaikki on kunnossa. Hyökkääjällä olisi pitänyt olla pääsy NitroPadiin ja Nitrokeyyn, jotta hän olisi voinut saavuttaa tämän tuloksen. Siksi on tärkeää, ettet jätä molempia laitteita ilman valvontaa. Järjestelmä opastaa sinut tämän jälkeen käyttäjätilin luomisessa. Tämän jälkeen sinun pitäisi olla onnistuneesti käynnistänyt järjestelmä ja voit jo käyttää sitä normaalisti. Tässä esimerkissä on suljettu ruuvi, jonka kimallus edustaa yksittäistä kuviota. Jos haluat vaihtaa levyn salauksen salasanan, napsauta ensin vasemmassa yläkulmassa olevaa "Toimintaa" ja kirjoita hakupalkkiin "disk". Valitse sitten näytön keskelle ilmestyvä "Levyt"-ohjelma. Vianmääritys Sinetöityjen laitteistojen tarkastaminen Tarkista sinetöity laitteisto NitroPad X230:n avulla BIOSin, käyttöjärjestelmän ja ohjelmistojen haitalliset muutokset voidaan havaita helposti. Jos esimerkiksi jätit NitroPadin hotellihuoneeseen, voit tarkistaa Nitrokey-avaimen avulla, onko sitä peukaloitu poissa ollessasi. Jos hyökkääjä muuttaa NitroPadin laiteohjelmistoa tai käyttöjärjestelmää, Nitrokey havaitsee tämän (ohjeet alla). ja seuraa näytön ohjeita. Tämän jälkeen salaisuuden ja laskurin pitäisi olla molemmat nollattu uuteen arvoon. img |image1| |image2| |image4| 
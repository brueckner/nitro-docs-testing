��    A      $              ,     -     H  "   g  T   �  �   �     o  !   �  v   �  �   '  z   �  �   2     �  a     &   p  �  �  �   X
      1  Q   R     �     �     �  �   �  K   �  L   �  �   %  �   �  �   �  �   �  �        �  Q   �  �   7     �     �     �  7     [   G     �  P   �  �   �  /   �  /   �     �  V     C   b     �  �  �  �  O  �   �  �   �  �   �  �  Y  �   0  Q   �  �   .               ;  u  R  f   �     /      3      <      E   �  N      /"     J"  >   i"  �   �"  �   I#  L   $  N   g$  �   �$  �   b%  �   *&  B  �&  @   ((  �   i(  R   9)  *  �)  T  �,  ;   .  ~   H.  7   �.  $   �.  5   $/  U  Z/  �   �0  �   g1  r  2  K  �3  x  �4  &  V6  P  }7     �8  �   �8  �   �9     �:     �:     �:  7   �:  �   $;  
   �;  x   <  �   z<  f   p=  W   �=  ;   />  |   k>  �   �>     �?  �  �?  �  �B  -  mE  �  �F  V  aH  �  �I  F  �L  �   �M  �  cN  8   �O  7   P  ;   WP  �  �P  �   4S     �S     �S     T     T   (Nitrokey T430 - Qubes OS) (Nitrokey T430 - Ubuntu Linux) Add “Network controler” device After purchase, the passwords are set to a default value and must be changed by you: After that, please follow `these instructions from step 3 onwards `system update <https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__. Behavior After a System Update Change Disk Encryption Passphrase Change the PINs of your Nitrokey as `described here <https://docs.nitrokey.com/pro/change-user-and-admin-pin.html>`__. Change the passphrase for disk encryption as `described here <https://docs.nitrokey.com/x230/ubuntu/change-disk-encryption-passphrase.html>`__. Change the passphrase for the hard disk encryption by running “sudo cryptsetup luksChangeKey /dev/sda2” in a terminal. Check each screw individually to see if its individual appearance matches the photo. It is best to use a magnifying glass or macro lens for this purpose. The screws are numbered as follows. Choose your operating system: Click on the Nitrokey icon on the left side of the screen to open the pre-installed Nitrokey App. Click “OK” and restart the system. Each boot the code is generated on the Nitropad and the Nitrokey, if its connected. It is allowed to run 10 boots without loosing the synchronization between the devices, after which the bad code signal is shown, regardless of the rest of the system being in a correct state. If you are sure the system was not beign tampered with (e.g. the Nitropad was booted more than 10 times without the Nitrokey), you can safely reset the system’s warning. Each time you start the NitroPad, you should - if possible - connect your Nitrokey. If the Nitrokey is plugged in and the system has not been modified, the following screen will appear when the NitroPad is turned on. Enter the your account password. Enter “PleaseChangeMe” as the current passphrase and select a secure new one. Generate new TOTP/HOTP secret Getting Started Go to Devices tab How the boot process may look like if the system has been changed (for example after an update) and what error messages may otherwise occur is described further below. If Qubes doesn’t boot as shown below, please execute the following steps: If Ubuntu doesn’t boot as shown below, please execute the following steps: If the bag or the screws do not match the photos sent, an unauthorized opening of your NitroPad cannot be excluded. In this case please contact us to arrange further action. If the information on the NitroPad does not match the information on the Nitrokey, the background would turn red and the message “Invalid Code” would appear. This could indicate that manipulation has taken place. If you have ordered the unit with the option “sealed screws and sealed bag”, please `verify the sealing <verify-sealed-hardware.html>`__ before unpacking. If you do not know what this means, skip this section. If you ordered your NitroPad with sealed screws and in a sealed bag, it allows you to check if the NitroPad has been tampered with during shipping. In case the Network Manager icon is not shown and when starting a VM an error like “Domain sys-net has failed to start: PCI device dom0:03_00.0 does not exist” is shown, proceed as follows: Invalid Code Left click on the gears and select “Change Passphrase” from the context menu. Next, the system will prompt you to enter the passphrase to decrypt the hard disk. The passphrase is initially “PleaseChangeMe”. |image3| NitroPad T430 NitroPad X230 with Qubes OS NitroPad X230 with Ubuntu Linux Open menu -> Service: sys-net -> sys-net: Qube Settings Open the pre-installed Nitrokey App and change the PINs of your Nitrokey as described here. Options Please connect the Nitrokey and execute the following from the main boot screen: Press Enter (“Default Boot”) after booting the system, provided the NitroPad has not shown any errors and the Nitrokey is lit green (see above). Remove “Unknown device” from the right side Restart your Laptop and go to Options. |image5| Secure Starting Procedure Select the field that says “Luks”. Afterwards it should have an orange background. Select “Update Checksums and sign all files on /boot”. |image6| TPM/TOTP/HOTP Options That’s why it’s important to restart your NitroPad under controlled conditions after a system update. Only when the new status has been confirmed can you leave the device unattended again. Otherwise, you will not be able to distinguish a possible attack from a system update. Detailed instructions for a system update can be `found here <https://docs.nitrokey.com/x230/qubes/system-update.html>`__. That’s why it’s important to restart your NitroPad under controlled conditions after a system update. Only when the new status has been confirmed can you leave the device unattended again. Otherwise, you will not be able to distinguish a possible attack from a system update. Detailed instructions for a system update can be `found here <https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__. The NitroPad X230 can also be started without the Nitrokey. If you don’t have the Nitrokey with you, but are sure that the hardware has not been manipulated, you can boot your system without checking. The NitroPad firmware checks certain system files for changes. If your operating system has updated important components, you will be warned the next time you boot the NitroPad. This could look like this, for example: The bag and all screws on the bottom of the device have been sealed. For the bag and each of these screws you have received a photo by e-mail. The orientation of the photos is such that the battery is on top. The box marked in red contains the information that the BIOS has not been changed and that the shared secret of the NitroPad and the Nitrokey match. But this information is not sufficient, because an attacker could have faked it. If at the same time the Nitrokey also flashes green, everything is fine. An attacker would have to have had access to the NitroPad and Nitrokey to achieve this result. It is therefore important that you do not leave both devices unattended. The system will then guide you through the process of creating a user account. After that you should have successfully booted the system and could already use it normally. This example shows a sealed screw whose glitter represents an individual pattern. To change the passphrase for disk encryption, first click on “Activities” in the upper left corner and enter “disk” in the search bar. Then select the “Disks” program that appears in the middle of the screen. Troubleshooting Verification of Sealed Hardware Verify Sealed Hardware With the NitroPad X230, malicious changes to the BIOS, operating system, and software can be easily detected. For example, if you left your NitroPad in a hotel room, you can use your Nitrokey to check if it has been tampered with while you were away. If an attacker modifies the NitroPad’s firmware or operating system, the Nitrokey will detect this (instructions below). and follow the on-screen guide. After that the secret and counter should be both reset to a new value. img |image1| |image2| |image4| Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-03-18 14:53+0100
PO-Revision-Date: 2022-01-11 15:11+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: bg
Language-Team: Bulgarian <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-t430/bg/>
Plural-Forms: nplurals=2; plural=n != 1;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 (Nitrokey X230 - Qubes OS) (Nitrokey X230 - Ubuntu Linux) Добавяне на устройство "Network controler" След покупката паролите са зададени по подразбиране и трябва да бъдат променени от вас: След това следвайте `тези инструкции от стъпка 3 нататък `системна актуализация <https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__. Поведение след актуализация на системата Промяна на паролата за криптиране на диска Променете ПИН кодовете на своя Nitrokey, както е описано тук ` <https://docs.nitrokey.com/pro/change-user-and-admin-pin.html>`__. Променете паролата за криптиране на диска, както е описано тук ` <https://docs.nitrokey.com/x230/ubuntu/change-disk-encryption-passphrase.html>`__. Променете паролата за криптиране на твърдия диск, като стартирате "sudo cryptsetup luksChangeKey /dev/sda2" в терминала. Проверете всеки винт поотделно дали външният му вид съответства на снимката. За тази цел е най-добре да използвате лупа или макрообектив. Винтовете са номерирани, както следва. Изберете операционната си система: Щракнете върху иконата Nitrokey в лявата част на екрана, за да отворите предварително инсталираното приложение Nitrokey. Щракнете върху "OK" и рестартирайте системата. При всяко зареждане кодът се генерира на Nitropad и на Nitrokey, ако е свързан с него. Позволено е да се извършат 10 зареждания, без да се загуби синхронизацията между устройствата, след което се показва сигнал за лош код, независимо че останалата част от системата е в правилно състояние. Ако сте сигурни, че системата не е била манипулирана (напр. Nitropad е бил стартиран повече от 10 пъти без Nitrokey), можете спокойно да нулирате предупреждението на системата. Всеки път, когато стартирате NitroPad, трябва - ако е възможно - да свържете своя Nitrokey. Ако ключът Nitrokey е свързан и системата не е модифицирана, при включване на NitroPad ще се появи следният екран. Въведете паролата на профила си. Въведете "PleaseChangeMe" като текуща парола и изберете нова сигурна парола. Генериране на нова тайна TOTP/HOTP Започване на работа Отидете в раздела Устройства По-долу е описано как може да изглежда процесът на зареждане, ако системата е била променена (например след актуализация), и какви съобщения за грешки могат да се появят в противен случай. Ако операционната система не се стартира, както е показано по-долу, моля, изпълнете следните стъпки: Ако операционната система не се стартира, както е показано по-долу, моля, изпълнете следните стъпки: Ако чантата или винтовете не съответстват на изпратените снимки, не може да се изключи неразрешено отваряне на вашия NitroPad. В този случай, моля, свържете се с нас, за да организираме по-нататъшни действия. Ако информацията на NitroPad не съвпада с информацията на Nitrokey, фонът ще стане червен и ще се появи съобщението "Invalid Code" (Невалиден код). Това може да означава, че е извършена манипулация. Ако сте поръчали устройството с опцията "запечатани винтове и запечатана торба", моля `проверете запечатването <sealed-hardware.html>`_ преди разопаковането. Ако не знаете какво означава това, пропуснете този раздел. Ако сте поръчали своя NitroPad със запечатани винтове и в запечатана торба, това ви позволява да проверите дали NitroPad не е бил подправен по време на транспортирането. В случай че иконата на мрежовия мениджър не е показана и при стартиране на виртуална машина се появява грешка от типа "Domain sys-net has failed to start: не съществува", процедирайте по следния начин: Невалиден код Щракнете с левия бутон на мишката върху зъбните колела и изберете "Change Passphrase" (Промяна на паролата) от контекстното меню. След това системата ще ви подкани да въведете паролата, за да декриптирате твърдия диск. Първоначално паролата е "PleaseChangeMe". NitroPad T430: NitroPad X230 с Qubes OS NitroPad X230 с Ubuntu Linux Open menu -> Service: sys-net -> sys-net: Qube Settings Отворете предварително инсталираното приложение Nitrokey и променете ПИН-кодовете на вашия Nitrokey, както е описано тук. Опции Свържете Nitrokey и изпълнете следното от главния екран за зареждане: Натиснете Enter ("Default Boot") след стартиране на системата, при условие че NitroPad не е показал никакви грешки и Nitrokey свети в зелено (вж. по-горе). Премахване на "Неизвестно устройство" от дясната страна Рестартирайте лаптопа си и отидете на Options. |image5| Процедура за сигурно стартиране Изберете полето с надпис "Luks". След това то трябва да има оранжев фон. Изберете "Update Checksums and sign all files on /boot" (Актуализиране на контролните суми и подписване на всички файлове в /boot). |image6| Опции за TPM/TOTP/HOTP Ето защо е важно да рестартирате NitroPad в контролирани условия след актуализация на системата. Едва когато новият статус бъде потвърден, можете да оставите устройството отново без надзор. В противен случай няма да можете да разграничите евентуална атака от актуализация на системата. Подробни инструкции за актуализация на системата можете да `намерите тук <https://docs.nitrokey.com/x230/qubes/system-update.html>`__. Ето защо е важно да рестартирате NitroPad в контролирани условия след актуализация на системата. Едва когато новият статус бъде потвърден, можете да оставите устройството отново без надзор. В противен случай няма да можете да разграничите евентуална атака от актуализация на системата. Подробни инструкции за актуализация на системата можете да `намерите тук <https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__. NitroPad може да се стартира и без Nitrokey. Ако нямате Nitrokey със себе си, но сте сигурни, че хардуерът не е бил манипулиран, можете да стартирате системата, без да проверявате. Вграденият софтуер на NitroPad проверява определени системни файлове за промени. Ако операционната ви система е актуализирала важни компоненти, ще бъдете предупредени при следващото зареждане на NitroPad. Това може да изглежда например по следния начин: Чантата и всички винтове на дъното на устройството са запечатани. За чантата и всеки от тези винтове сте получили снимка по имейл. Ориентацията на снимките е такава, че батерията е отгоре. Полето, отбелязано в червено, съдържа информация, че BIOS не е променен и че споделената тайна на NitroPad и Nitrokey съвпада. Но тази информация не е достатъчна, тъй като нападателят би могъл да я фалшифицира. Ако в същото време и Nitrokey мига в зелено, всичко е наред. За да постигне този резултат, нападателят трябва да е имал достъп до NitroPad и Nitrokey. Затова е важно да не оставяте двете устройства без надзор. След това системата ще ви насочи към процеса на създаване на потребителски акаунт. След това трябва да сте стартирали успешно системата и вече да можете да я използвате нормално. Този пример показва запечатан винт, чийто блясък представлява индивидуален модел. За да промените паролата за криптиране на диска, първо щракнете върху "Дейности" в горния ляв ъгъл и въведете "disk" в лентата за търсене. След това изберете програмата "Дискове", която се появява в средата на екрана. Отстраняване на неизправности Проверка на запечатан хардуер Проверка на запечатания хардуер С помощта на NitroPad лесно се откриват злонамерени промени в BIOS, операционната система и софтуера. Например, ако сте оставили своя NitroPad в хотелска стая, можете да използвате своя Nitrokey, за да проверите дали са били извършени промени в него, докато сте отсъствали. Ако нападател модифицира фърмуера или операционната система на NitroPad, Nitrokey ще открие това (инструкции по-долу). и следвайте ръководството на екрана. След това тайната и броячът трябва да бъдат нулирани до нова стойност. img |image1| |image2| |image4| 
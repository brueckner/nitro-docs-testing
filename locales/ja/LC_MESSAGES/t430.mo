Þ    A      $              ,     -     H  "   g  T        ß     o  !     v   °     '  z   ·  ½   2     ð  a     &   p  À    Ø   X
      1  Q   R     ¤     Â     Ò  §   ä  K     L   Ø  ­   %  Ø   Ó  Õ   ¬       Á        Ø  Q   å     7     Å     Ó     ï  7     [   G     £  P   «     ü  /     /   Á     ñ  V     C   b     ¦    ¼    O  Ê   ã  Ù   ®  Ð     Ö  Y  «   0  Q   Ü  Ü   .               ;  u  R  f   È     /      3      <      E   Ú  N      )"     D"  ?   c"     £"     +#  6   Ë#  0   $     3$  ¹   Æ$  ¥   %  Ø   &&  )   ÿ&     )'  =   ¯'  4  í'  ò   "*  K   +  ~   a+  -   à+     ,     ,  ®   :,  b   é,  c   L-  Å   °-  ß   v.    V/  Ç   h0    01     52  ~   H2  Ù   Ç2     ¡3     ¯3  (   Î3  B   ÷3     :4     É4  Y   Ù4  Ò   35  -   6  \   46     6  i   §6  Q   7     c7    7    9  ï   ;  B  <  ç   Ê=  r  ²>  Ì   %A  c   òA    VB  !   qC  *   C  *   ¾C  Ë  éC  ´   µE     jF     nF     }F     F   (Nitrokey T430 - Qubes OS) (Nitrokey T430 - Ubuntu Linux) Add âNetwork controlerâ device After purchase, the passwords are set to a default value and must be changed by you: After that, please follow `these instructions from step 3 onwards `system update <https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__. Behavior After a System Update Change Disk Encryption Passphrase Change the PINs of your Nitrokey as `described here <https://docs.nitrokey.com/pro/change-user-and-admin-pin.html>`__. Change the passphrase for disk encryption as `described here <https://docs.nitrokey.com/x230/ubuntu/change-disk-encryption-passphrase.html>`__. Change the passphrase for the hard disk encryption by running âsudo cryptsetup luksChangeKey /dev/sda2â in a terminal. Check each screw individually to see if its individual appearance matches the photo. It is best to use a magnifying glass or macro lens for this purpose. The screws are numbered as follows. Choose your operating system: Click on the Nitrokey icon on the left side of the screen to open the pre-installed Nitrokey App. Click âOKâ and restart the system. Each boot the code is generated on the Nitropad and the Nitrokey, if its connected. It is allowed to run 10 boots without loosing the synchronization between the devices, after which the bad code signal is shown, regardless of the rest of the system being in a correct state. If you are sure the system was not beign tampered with (e.g.Â the Nitropad was booted more than 10 times without the Nitrokey), you can safely reset the systemâs warning. Each time you start the NitroPad, you should - if possible - connect your Nitrokey. If the Nitrokey is plugged in and the system has not been modified, the following screen will appear when the NitroPad is turned on. Enter the your account password. Enter âPleaseChangeMeâ as the current passphrase and select a secure new one. Generate new TOTP/HOTP secret Getting Started Go to Devices tab How the boot process may look like if the system has been changed (for example after an update) and what error messages may otherwise occur is described further below. If Qubes doesnât boot as shown below, please execute the following steps: If Ubuntu doesnât boot as shown below, please execute the following steps: If the bag or the screws do not match the photos sent, an unauthorized opening of your NitroPad cannot be excluded. In this case please contact us to arrange further action. If the information on the NitroPad does not match the information on the Nitrokey, the background would turn red and the message âInvalid Codeâ would appear. This could indicate that manipulation has taken place. If you have ordered the unit with the option âsealed screws and sealed bagâ, please `verify the sealing <verify-sealed-hardware.html>`__ before unpacking. If you do not know what this means, skip this section. If you ordered your NitroPad with sealed screws and in a sealed bag, it allows you to check if the NitroPad has been tampered with during shipping. In case the Network Manager icon is not shown and when starting a VM an error like âDomain sys-net has failed to start: PCI device dom0:03_00.0 does not existâ is shown, proceed as follows: Invalid Code Left click on the gears and select âChange Passphraseâ from the context menu. Next, the system will prompt you to enter the passphrase to decrypt the hard disk. The passphrase is initially âPleaseChangeMeâ. |image3| NitroPad T430 NitroPad X230 with Qubes OS NitroPad X230 with Ubuntu Linux Open menu -> Service: sys-net -> sys-net: Qube Settings Open the pre-installed Nitrokey App and change the PINs of your Nitrokey as described here. Options Please connect the Nitrokey and execute the following from the main boot screen: Press Enter (âDefault Bootâ) after booting the system, provided the NitroPad has not shown any errors and the Nitrokey is lit green (see above). Remove âUnknown deviceâ from the right side Restart your Laptop and go to Options. |image5| Secure Starting Procedure Select the field that says âLuksâ. Afterwards it should have an orange background. Select âUpdate Checksums and sign all files on /bootâ. |image6| TPM/TOTP/HOTP Options Thatâs why itâs important to restart your NitroPad under controlled conditions after a system update. Only when the new status has been confirmed can you leave the device unattended again. Otherwise, you will not be able to distinguish a possible attack from a system update. Detailed instructions for a system update can be `found here <https://docs.nitrokey.com/x230/qubes/system-update.html>`__. Thatâs why itâs important to restart your NitroPad under controlled conditions after a system update. Only when the new status has been confirmed can you leave the device unattended again. Otherwise, you will not be able to distinguish a possible attack from a system update. Detailed instructions for a system update can be `found here <https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__. The NitroPad X230 can also be started without the Nitrokey. If you donât have the Nitrokey with you, but are sure that the hardware has not been manipulated, you can boot your system without checking. The NitroPad firmware checks certain system files for changes. If your operating system has updated important components, you will be warned the next time you boot the NitroPad. This could look like this, for example: The bag and all screws on the bottom of the device have been sealed. For the bag and each of these screws you have received a photo by e-mail. The orientation of the photos is such that the battery is on top. The box marked in red contains the information that the BIOS has not been changed and that the shared secret of the NitroPad and the Nitrokey match. But this information is not sufficient, because an attacker could have faked it. If at the same time the Nitrokey also flashes green, everything is fine. An attacker would have to have had access to the NitroPad and Nitrokey to achieve this result. It is therefore important that you do not leave both devices unattended. The system will then guide you through the process of creating a user account. After that you should have successfully booted the system and could already use it normally. This example shows a sealed screw whose glitter represents an individual pattern. To change the passphrase for disk encryption, first click on âActivitiesâ in the upper left corner and enter âdiskâ in the search bar. Then select the âDisksâ program that appears in the middle of the screen. Troubleshooting Verification of Sealed Hardware Verify Sealed Hardware With the NitroPad X230, malicious changes to the BIOS, operating system, and software can be easily detected. For example, if you left your NitroPad in a hotel room, you can use your Nitrokey to check if it has been tampered with while you were away. If an attacker modifies the NitroPadâs firmware or operating system, the Nitrokey will detect this (instructions below). and follow the on-screen guide. After that the secret and counter should be both reset to a new value. img |image1| |image2| |image4| Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-03-18 14:53+0100
PO-Revision-Date: 2022-01-06 20:42+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: ja
Language-Team: Japanese <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-t430/ja/>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 (Nitrokey T430 - Qubes OS) (Nitrokey T430 - Ubuntu Linux) ãããã¯ã¼ã¯ã³ã³ãã­ã¼ã©ã¼ãããã¤ã¹ã®è¿½å  è³¼å¥å¾ããã¹ã¯ã¼ãã¯åæå¤ã«è¨­å®ããã¦ããããå®¢æ§ãèªèº«ã§å¤æ´ãã¦ããã ãå¿è¦ãããã¾ãã ãã®å¾ã`ã¹ããã3ä»¥éã®æç¤ºã«å¾ã£ã¦ã`system update <https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__ãè¡ã£ã¦ãã ããã ã·ã¹ãã ã¢ãããã¼ãå¾ã®åä½ã«ã¤ãã¦ ãã£ã¹ã¯æå·åãã¹ãã¬ã¼ãºã®å¤æ´ Nitrokeyã®PINããããã«è¨è¼ããã¦ãã`ã®ããã«å¤æ´ãã¾ã<https://docs.nitrokey.com/pro/change-user-and-admin-pin.html>`__ã ãã£ã¹ã¯æå·åç¨ã®ãã¹ãã¬ã¼ãºããããã§èª¬æãã` <https://docs.nitrokey.com/x230/ubuntu/change-disk-encryption-passphrase.html>`__ã®ããã«å¤æ´ãã¾ãã ã¿ã¼ããã«ã§ãsudo cryptsetup luksChangeKey /dev/sda2ããå®è¡ãã¦ããã¼ããã£ã¹ã¯ã®æå·åã®ããã®ãã¹ãã¬ã¼ãºãå¤æ´ãã¾ãã ããããã®ãã¸ã®å¤è¦³ãåçã¨ä¸è´ãã¦ãããã©ãããç¢ºèªãã¾ããè«ç¼é¡ããã¯ã­ã¬ã³ãºãä½¿ãã¨ããã§ãããããã¸ã«ã¯ä»¥ä¸ã®ãããªçªå·ãã¤ãã¦ãã¾ãã ãä½¿ãã®OSããé¸ã³ãã ããã ç»é¢å·¦ã®Nitrokeyã¢ã¤ã³ã³ãã¯ãªãã¯ããã¨ãããªã¤ã³ã¹ãã¼ã«ããã¦ããNitrokeyã¢ããªãéãã¾ãã OK "ãã¯ãªãã¯ããã·ã¹ãã ãåèµ·åãã¾ãã èµ·åãããã³ã«ã³ã¼ããNitropadã¨Nitrokeyï¼æ¥ç¶ããã¦ããå ´åï¼ã§çæããã¾ããããã¤ã¹éã®åæãå¤±ããã¨ãªã10åã®èµ·åãå¯è½ã§ããã®å¾ã¯ã·ã¹ãã ã®æ®ãã®é¨åãæ­£ããç¶æã§ãããã©ããã«ããããããä¸è¯ã³ã¼ãä¿¡å·ãè¡¨ç¤ºããã¾ããã·ã¹ãã ãä¸æ­£ã«æä½ããã¦ããªããã¨ãç¢ºèªã§ããå ´åï¼Nitrokeyãä½¿ç¨ããã«Nitropadã10åä»¥ä¸èµ·åããå ´åãªã©ï¼ãã·ã¹ãã ã®è­¦åãå®å¨ã«ãªã»ãããããã¨ãã§ãã¾ãã NitroPadãèµ·åãããã³ã«ãå¯è½ã§ããã°Nitrokeyãæ¥ç¶ãã¦ãã ãããNitrokeyãæ¥ç¶ãããã·ã¹ãã ãå¤æ´ããã¦ããªãå ´åãNitroPadã®é»æºãå¥ããã¨æ¬¡ã®ãããªç»é¢ãè¡¨ç¤ºããã¾ãã ãå®¢æ§ã®ã¢ã«ã¦ã³ãã®ãã¹ã¯ã¼ããå¥åãã¦ãã ããã ç¾å¨ã®ãã¹ãã¬ã¼ãºã¨ãã¦ "PleaseChangeMe "ãå¥åããå®å¨ãªæ°ãããã¹ãã¬ã¼ãºãé¸æãã¾ãã æ°ããTOTP/HOTPã·ã¼ã¯ã¬ããã®çæ ã¯ããã« ããã¤ã¹ãã¿ãã«ç§»å ã·ã¹ãã ãå¤æ´ãããå ´åï¼ã¢ãããã¼ãå¾ãªã©ï¼ã®ãã¼ããã­ã»ã¹ã®æ§å­ããã¨ã©ã¼ã¡ãã»ã¼ã¸ã®åå®¹ã«ã¤ãã¦ã¯å¾è¿°ãã¾ãã ä»¥ä¸ã®ããã«Qubesãèµ·åããªãå ´åã¯ãä»¥ä¸ã®æé ãå®è¡ãã¦ãã ããã ä¸å³ã®ããã«Ubuntuãèµ·åããªãå ´åã¯ãä»¥ä¸ã®æé ãå®è¡ãã¦ãã ããã éããã¦ããåçã¨è¢ããã¸ãä¸è´ããªãå ´åãNitroPadã®ä¸æ­£éå°ãå¦å®ã§ãã¾ããããã®ãããªå ´åã¯ããææ°ã§ããå¼ç¤¾ã¾ã§ãé£çµ¡ãã ããã NitroPadã®æå ±ã¨Nitrokeyã®æå ±ãä¸è´ããªãå ´åãèæ¯ãèµ¤ããªãããInvalid Codeãã¨ããã¡ãã»ã¼ã¸ãè¡¨ç¤ºããã¾ããããã¯ãæä½ãè¡ããããã¨ãç¤ºãå¯è½æ§ãããã ãªãã·ã§ã³ã®ãå°å°ããããã¸ã¨å°å°ãããè¢ãã§æ¬æ©ãæ³¨æãããå ´åãéæ¢±åã«`å°å°ã®ç¢ºèª<verify-sealed-hardware.html>`__ãè¡ã£ã¦ãã ããããã®æå³ãããããªãæ¹ã¯ããã®é ãèª­ã¿é£ã°ãã¦ãã ããã ãã¸ãå°å°ãããç¶æã§NitroPadãæ³¨æããå¯å°ãããè¢ã«å¥ã£ã¦ããã°ãééä¸­ã«NitroPadãæ¹ããããã¦ããªããã©ãããç¢ºèªãããã¨ãã§ãã¾ãã ãããã¯ã¼ã¯ããã¼ã¸ã£ã¼ã®ã¢ã¤ã³ã³ãè¡¨ç¤ºããããVMã®èµ·åæã«ãDomain sys-net has failed to start:PCI device dom0:03_00.0 does not exist "ãªã©ã®ã¨ã©ã¼ãè¡¨ç¤ºãããå ´åã¯ãä»¥ä¸ã®æé ã§å¯¾å¦ãã¦ãã ããã ç¡å¹ãªã³ã¼ã æ­¯è»ã®ä¸ã§å·¦ã¯ãªãã¯ããã³ã³ãã­ã¹ãã¡ãã¥ã¼ããããã¹ãã¬ã¼ãºã®å¤æ´ããé¸æãã¾ãã æ¬¡ã«ããã¼ããã£ã¹ã¯ãå¾©å·åããããã®ãã¹ãã¬ã¼ãºãå¥åããç»é¢ãè¡¨ç¤ºããã¾ãããã¹ãã¬ã¼ãºã¯åæç¶æã§ã¯ãPleaseChangeMeãã¨ãªã£ã¦ãã¾ãã|ã¤ã¡ã¼ã¸3 NitroPad T430 Qubes OSæ­è¼ã®NitroPad X230 Ubuntu Linuxãæ­è¼ããNitroPad X230 ã¡ãã¥ã¼ãéã -> Service: sys-net -> sys-net:Qubeã®è¨­å® ããªã¤ã³ã¹ãã¼ã«ããã¦ããNitrokeyã¢ããªãéãããã¡ãã®èª¬æã«å¾ã£ã¦Nitrokeyã®PINãå¤æ´ãã¦ãã ããã ãªãã·ã§ã³ Nitrokeyãæ¥ç¶ããã¡ã¤ã³ãã¼ãç»é¢ããä»¥ä¸ãå®è¡ãã¦ãã ããã ã·ã¹ãã ãèµ·åããå¾ãNitroPadã«ã¨ã©ã¼ãè¡¨ç¤ºããããNitrokeyãç·è²ã«ç¹ç¯ãã¦ããã°ãEnterã­ã¼ï¼ãããã©ã«ããã¼ããï¼ãæ¼ãã¦ãã ããï¼ä¸è¨åç§ï¼ã å³å´ã®ãä¸æãªããã¤ã¹ããåé¤ ãã¼ããã½ã³ã³ãåèµ·åããããªãã·ã§ã³ããéãã¾ãã|ã¤ã¡ã¼ã¸5 ç¢ºå®ãªèµ·åæé  Luks "ã¨æ¸ãããæ¬ãé¸æãã¾ãããã®å¾ãèæ¯ããªã¬ã³ã¸è²ã«ãªãã¯ãã§ãã Update Checksums and sign all files on /boot "ãé¸æãã¾ãã|ã¤ã¡ã¼ã¸6 TPM/TOTP/HOTPãªãã·ã§ã³ ãã®ãããã·ã¹ãã ã¢ãããã¼ãã®å¾ã¯ãç®¡çãããç¶æã§NitroPadãåèµ·åãããã¨ãéè¦ã§ããæ°ããã¹ãã¼ã¿ã¹ãç¢ºèªããã¦åãã¦ãããã¤ã¹ãåã³ç¡äººã«ãããã¨ãã§ãã¾ããããããªãã¨ãæ»æã®å¯è½æ§ã¨ã·ã¹ãã ã¢ãããã¼ããåºå¥ãããã¨ãã§ããªããªãã¾ããã·ã¹ãã ã»ã¢ãããã¼ãã®è©³ç´°ãªæé ã¯ã`ãã¡ãã®<https://docs.nitrokey.com/x230/qubes/system-update.html>`__ã«è¨è¼ããã¦ãã¾ãã ãã®ãããã·ã¹ãã ã¢ãããã¼ãã®å¾ã¯ãç®¡çãããç¶æã§NitroPadãåèµ·åãããã¨ãéè¦ã§ããæ°ããã¹ãã¼ã¿ã¹ãç¢ºèªããã¦åãã¦ãããã¤ã¹ãåã³ç¡äººã«ãããã¨ãã§ãã¾ããããããªãã¨ãæ»æã®å¯è½æ§ã¨ã·ã¹ãã ã¢ãããã¼ããåºå¥ãããã¨ãã§ããªããªãã¾ããã·ã¹ãã ã»ã¢ãããã¼ãã®è©³ç´°ãªæé ã¯ã`ãã¡ãã®<https://docs.nitrokey.com/x230/ubuntu/system-update.html>`__ã«ããã¾ãã NitroPad X230ã¯ãNitrokeyããªãã¦ãèµ·åã§ãã¾ããNitrokeyãæåã«ãªãã¦ãããã¼ãã¦ã§ã¢ãæä½ããã¦ããªããã¨ãç¢ºèªã§ããã°ãç¢ºèªããã«ã·ã¹ãã ãèµ·åãããã¨ãã§ãã¾ãã NitroPadã®ãã¡ã¼ã ã¦ã§ã¢ã¯ãç¹å®ã®ã·ã¹ãã ãã¡ã¤ã«ã®å¤æ´ããã§ãã¯ãã¾ãããªãã¬ã¼ãã£ã³ã°ã·ã¹ãã ãéè¦ãªã³ã³ãã¼ãã³ããæ´æ°ããå ´åã¯ãæ¬¡åNitroPadãèµ·åããã¨ãã«è­¦åãè¡¨ç¤ºããã¾ããããã¯ãä¾ãã°æ¬¡ã®ãããªãã®ã§ãã è¢ã¨æ¬ä½åºé¢ã®ãã¹ã¦ã®ãã¸ãå°å°ããã¦ãã¾ããè¢ã¨åãã¸ã«ã¤ãã¦ã¯ãã¡ã¼ã«ã§åçããéããã¦ãã¾ããåçã®åãã¯ãããããªã¼ãä¸ã«ãªãããã«ãªã£ã¦ãã¾ãã èµ¤è²ã§è¡¨ç¤ºãããããã¯ã¹ã«ã¯ãBIOSãå¤æ´ããã¦ããªããã¨ã¨ãNitroPadã¨Nitrokeyã®å±æç§å¯ãä¸è´ãã¦ããã¨ããæå ±ãå¥ã£ã¦ãã¾ãããããããã®æå ±ã ãã§ã¯ååã§ã¯ããã¾ããããªããªããæ»æèã¯ãããå½é ãããã¨ãã§ããããã§ããåæã«Nitrokeyãç·è²ã«ç¹æ»ãã¦ããã°ããã¹ã¦ã¯åé¡ããã¾ãããæ»æèããã®çµæãå¾ãããã«ã¯ãNitroPadã¨Nitrokeyã«ã¢ã¯ã»ã¹ããå¿è¦ãããã¾ãããããã£ã¦ãä¸¡æ¹ã®ããã¤ã¹ãæ¾ç½®ããªãããã«ãããã¨ãéè¦ã§ãã ãã®å¾ãã·ã¹ãã ãã¦ã¼ã¶ã¼ã¢ã«ã¦ã³ãã®ä½æãã­ã»ã¹ãæ¡åãã¦ããã¾ãããã®å¾ãã·ã¹ãã ã®èµ·åã«æåããéå¸¸éãä½¿ç¨ã§ããããã«ãªãã¾ãã ãã®ä¾ã§ã¯ãã·ã¼ã«ããããã¸ã®è¼ããåãã®ãã¿ã¼ã³ãè¡¨ãã¦ãã¾ãã ãã£ã¹ã¯æå·åã®ãã¹ãã¬ã¼ãºãå¤æ´ããã«ã¯ãã¾ããå·¦ä¸ã®ãã¢ã¯ãã£ããã£ããã¯ãªãã¯ããæ¤ç´¢ãã¼ã«ããã£ã¹ã¯ãã¨å¥åãã¾ãããã®å¾ãç»é¢ä¸­å¤®ã«è¡¨ç¤ºãããããã£ã¹ã¯ããã­ã°ã©ã ãé¸æãã¾ãã ãã©ãã«ã·ã¥ã¼ãã£ã³ã° å¯å°ããããã¼ãã¦ã§ã¢ã®æ¤è¨¼ å¯å°ããããã¼ãã¦ã§ã¢ã®ç¢ºèª NitroPad X230ã§ã¯ãBIOSãOSãã½ããã¦ã§ã¢ã¸ã®æªæããå¤æ´ãç°¡åã«æ¤ç¥ãããã¨ãã§ãã¾ããä¾ãã°ãNitroPadãããã«ã®é¨å±ã«ç½®ãã¦ããå ´åãçå®ä¸­ã«æ¹ããããã¦ããªããã©ãããNitrokeyã§ç¢ºèªãããã¨ãã§ãã¾ããæ»æèãNitroPadã®ãã¡ã¼ã ã¦ã§ã¢ããªãã¬ã¼ãã£ã³ã°ã·ã¹ãã ãå¤æ´ããå ´åãNitrokeyããããæ¤ç¥ãã¾ãï¼ä»¥ä¸ã®æé ï¼ã ãã¯ãªãã¯ãã¦ãç»é¢ã®ã¬ã¤ãã«å¾ã£ã¦ãã ããããã®å¾ãã·ã¼ã¯ã¬ããã¨ã«ã¦ã³ã¿ã¼ã®ä¸¡æ¹ãæ°ããå¤ã«ãªã»ãããããã¯ãã§ãã img |ã¤ã¡ã¼ã¸1 |ã¤ã¡ã¼ã¸2 |ã¤ã¡ã¼ã¸4 
��    %      D              l  9   m     �  �   �  L   �  �     �   �  c   ^  /  �  �   �  �   �  8  P  #   �	     �	     �	  �   �	  �   {
  ?        M     U     a     u     �     �  �   �  �   i  >   �  �   )  Q   �  S   =  #   �     �  W   �  I   $  0   n  ?   �      �  �     1   �     $    :  B   B  x   �  �   �  k   �  )  7  �   a  n   2  �   �     �     �     �  �   �  �   }  @        T     \     p  !   �     �     �  �   �  ~   z  8   �  �   2  Z   �  T   U  (   �     �  W   �  B   A  2   �  @   �     �   **Q:** What is the default hard-disk encryption password? Booting from USB drive Booting this USB drive entirely erases all data on the hard disk or SSD of the NitroPad without further warning. Don’t boot this USB drive on any computer which contains data you want to keep. Make sure to format the USB drive after the intended use. Change the passphrase for disk encryption by opening a terminal and execute: Check each screw individually to see if its individual appearance matches the photo. It is best to use a magnifying glass or macro lens for this purpose. Connect the USB drive to a black USB 2.0 socket (blue USB 3.0 don't work!), start the PC and keep pressing DEL until you see the firmware menu. Choose Boot Menu and select your USB drive. Connect the USB drive to your NitroPad and start it. In Heads menu select Boot Options -> USB Boot. Download one of the operating system images: `Ubuntu Linux <https://www.nitrokey.com/files/ci/nitropc/ubuntu-oem/>`_, `Qubes OS <https://www.nitrokey.com/files/ci/nitropc/qubes-oem/>`_, `Debian <https://www.nitrokey.com/files/ci/nitropc/debian-oem/>`_, `Linux Mint <https://linuxmint.com/download.php>`_ During boot of the system the error "Failed to start Load Kernel Modules" is displayed. `This is a known issue <https://github.com/QubesOS/qubes-issues/issues/2638>`_ which is not critical and can be ignored. During boot, the system will prompt you to enter the passphrase to decrypt the hard disk. Enter the default passphrase “PleaseChangeMe”. During boot, the system will prompt you to enter the passphrase to decrypt the hard disk. Enter the default passphrase “PleaseChangeMe”. The system will then guide you through the process of creating a user account. After that you should have successfully booted the system and could already use it normally. Failed to start Load Kernel Modules First check the: Getting Started If the bag or the screws do not match the photos sent, an unauthorized opening of your NitroPC cannot be excluded. In this case please contact us to arrange further action. If you ordered your NitroPC with sealed screws and in a sealed bag, it allows you to check if the NitroPC has been tampered with during shipping. Linux: ``dd``, `balenaEtcher <https://www.balena.io/etcher/>`_; NitroPC NitroPC FAQ NitroPC with Debian NitroPC with Qubes OS NitroPC with Ubuntu Operating System Reinstallation Optional: Download hash sum and `verify <https://proprivacy.com/guides/how-why-and-when-you-should-hash-check#how-to-hash-check>`_ the downloaded operating system image. The bag and all screws of the device have been sealed. For the bag and each of these screws you have received a photo by e-mail. The default NitroPC disk encryption password: "PleaseChangeMe" The system has a user account setup already. Choose it and login with the default passphrase "PleaseChangeMe". You may keep using the existing user account or create you a new one, as you like. This example shows a sealed screw whose glitter represents an individual pattern. To avoid accidential overwriting of valuable data, format the USB drive afterwards. Using WIFI (with RTL8821ce chipset) Verify Sealed Hardware Windows: `Rufus <https://rufus.ie/>`_, `balenaEtcher <https://www.balena.io/etcher/>`_; Write the operating system image to any USB drive. Possible applications: `Sign the boot partition. <system-update.html>`_ macOS: ``dd``, `balenaEtcher <https://www.balena.io/etcher/>`_. or choose your operating system: Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-01-13 22:26+0100
PO-Revision-Date: 2022-01-10 14:11+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: zh_CN
Language-Team: Chinese (Simplified) <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-nitropc/zh_Hans/>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **问：**默认的硬盘加密密码是什么？ 从USB驱动器启动 启动这个USB驱动器会完全删除NitroPad硬盘或固态硬盘上的所有数据，而不会有进一步的警告。请不要在任何含有你想保留的数据的电脑上启动该USB驱动器。请确保在使用完USB驱动器后对其进行格式化。 通过打开一个终端并执行，改变磁盘加密的口令。 逐一检查每颗螺丝，看其各自的外观是否与照片相符。为此，最好使用放大镜或微距镜头。 将USB驱动器连接到一个黑色的USB2.0插座上（蓝色的USB3.0不起作用！），启动电脑并一直按DEL键，直到你看到固件菜单。选择启动菜单并选择你的USB驱动器。 将USB驱动器连接到你的NitroPad上并启动它。在头部菜单中选择启动选项-> USB启动。 下载其中一个操作系统图像。`Ubuntu Linux <https://www.nitrokey.com/files/ci/nitropc/ubuntu-oem/>`_, `Qubes OS <https://www.nitrokey.com/files/ci/nitropc/qubes-oem/>`_,`Debian <https://www.nitrokey.com/files/ci/nitropc/debian-oem/>`_, `Linux Mint <https://linuxmint.com/download.php>`_. 在系统启动过程中，显示错误"Failed to start Load Kernel Modules"。`这是一个已知的问题 <https://github.com/QubesOS/qubes-issues/issues/2638>`_这不是关键问题，可以忽略不计。 在启动过程中，系统会提示你输入密码来解密硬盘。输入默认的口令 "PleaseChangeMe"。 在启动过程中，系统会提示你输入密码来解密硬盘。输入默认的口令 "PleaseChangeMe"。然后，系统将引导你完成创建用户账户的过程。之后，你应该已经成功启动了系统，并且已经可以正常使用。 启动加载内核模块失败 首先检查一下。 入门 如果袋子或螺丝与发送的照片不一致，不能排除你的NitroPC被擅自打开。在这种情况下，请联系我们以安排进一步的行动。 如果你订购的NitroPC带有密封的螺丝并装在一个密封的袋子里，它可以让你检查NitroPC在运输过程中是否被篡改过。 Linux。``dd``, `balenaEtcher <https://www.balena.io/etcher/>`_; NitroPC NitroPC常见问题 使用Debian的NitroPC 带有Qubes操作系统的NitroPC 带有Ubuntu的NitroPC 操作系统的重新安装 可选的。下载哈希值和`验证<https://proprivacy.com/guides/how-why-and-when-you-should-hash-check#how-to-hash-check>`_下载的操作系统镜像。 袋子和设备的所有螺丝都已密封。对于袋子和每个螺丝，你已经通过电子邮件收到了一张照片。 默认的NitroPC磁盘加密密码："PleaseChangeMe"。 该系统已经设置了一个用户账户。选择它并使用默认的口令"PleaseChangeMe"登录。你可以继续使用现有的用户账户，或者根据你的意愿创建一个新的账户。 这个例子显示了一个密封的螺丝，其闪光点代表了一个单独的图案。 为了避免有价值的数据被意外覆盖，请在事后格式化USB驱动器。 使用WIFI（使用RTL8821ce芯片组） 核实密封的硬件 窗口。`Rufus <https://rufus.ie/>`_, `balenaEtcher <https://www.balena.io/etcher/>`_; 将操作系统镜像写入任何USB驱动器。可能的应用。 `在启动分区上签名。<system-update.html>`_ macOS。``dd``, `balenaEtcher <https://www.balena.io/etcher/>`_. 或选择你的操作系统。 
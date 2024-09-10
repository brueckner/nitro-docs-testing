��    \      �              �  2  �  !     9   2  @  l     �  �   �    �	  d  �
     J     �  K   �  *   "  5   M  3   �  )   �  '   �  !   	     +  5   G  &   }     �     �  &   �  '   �  !   &      H  -   i  4   �  -   �  =   �  �   8  2        7  �   N  �   K     3     A     S     e     {     �     �     �     �     �     �  �     �  �  �   �  
   L  
   W     b  <   q  �   �  �   �  �   n  _     �   v  d   T    �     �     �  <   �       ;   5     q     �    �  �   �    m   #  q!  �   �"  N  [#    �$  �   �%  |   �&  "   '  d   ;'     �'  D   �'     (     (  
   8(     C(     K(     S(     [(     c(     k(     s(     {(  �  (    u*  $   �+  :   �+  �   �+     �,  �   �,  �   �-  F  �.  u   '0     �0  U   �0  +   1  :   -1  .   h1  "   �1  %   �1  +   �1     2  :   &2     a2     �2     �2  "   �2  .   �2  .   3  "   <3  +   _3  7   �3  %   �3  4   �3  �   4  :   �4     �4  �   	5  �   �5  	   �6     �6     �6     �6     �6     7  !   7     17     J7     c7     g7  �   l7  u  ;8  �   �9  
   M:  
   X:     c:  C   r:  �   �:  �   {;  �   E<  \   �<  �   /=  N   �=  �   =>     -?     ;?  6   K?     �?  .   �?     �?     �?  �  �?  �   �A  �   �B  �   qC  �   pD  2  'E  �   ZF  �   QG  �   H      �H  ]   �H     'I  I   EI     �I  "   �I     �I     �I     �I     �I     �I     �I     �I     J     J   **Admin PIN:** The admin PIN is at least 8-digits long and is used to change contents/settings of the Nitrokey. That is to say after initializing the Nitrokey you probably won't need this PIN too often (e.g. if you want to add another password to the password safe of the Nitrokey Pro or Nitrokey Storage). **Administrator PIN:** "12345678" **Firmware Password** (Nitrokey Storage only): "12345678" **Firmware password:** The firmware password should meet general password recommandations (e.g. use alphabetic characters, digits and special characters or use a usfficiently long password). The firmware password is needed to update the firmware of the Nitrokey Storage. See further instructions for update process here. **Letter and Registered Mail**: **Nitrokey HSM2:** The security controler's hardware and operating system are Common Criteria certified (`Security Target`_; `HSM2 Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP JCOP 3 P60"). **Nitrokey HSM:** The security controler's hardware and operating system are Common Criteria certified (`HSM Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP J3A080 v2.4.1 Secure Smart Card Controller (JCOP v2.4.1)"). **Nitrokey Pro 1+2:** The security controler's hardware is Common Criteria certified (`Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP Smart Card Controller P5CD081V1A and its major configurations P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A and P5CD016V1A each with IC dedicated Software"). **Nitrokey Storage 1+2:** `Cure53`_ has performed an `independent security audit`_ of the hardware, firmware, and Nitrokey App. **Parcel**: **Q:** Do Nitrokeys contain a secure chip or just a normal microcontroller? **Q:** How fast is encryption and signing? **Q:** How good is the Random Number Generator (RNG)? **Q:** How is the Bitcoin exchange rate calculated? **Q:** How large is the storage capacity? **Q:** How long does the shipping take? **Q:** How many keys can I store? **Q:** How to return goods? **Q:** Is Nitrokey Common Criteria or FIPS certified? **Q:** Is there a Right of Withdrawal? **Q:** Is there a warranty? **Q:** Pricing and VAT **Q:** What are the default passwords? **Q:** What can I use the Nitrokey for? **Q:** What is the Admin PIN for? **Q:** What is the User PIN for? **Q:** What is the maximum length of the PIN? **Q:** What is user/admin/firmware PIN/password for? **Q:** Which Operating Systems are supported? **Q:** Which algorithms and maximum key length are supported? **SO PIN:** The SO PIN is used in the Nitrokey HSM only and is something like a "master" PIN with special properties. Please read this instructions carefully to understand the SO PIN of the Nitrokey HSM. **SO-PIN** (Nitrokey HSM only): "3537363231383830" **User PIN:** "123456" **User PIN:** The user PIN is at least 6-digits long and is used to get access to the contect of the Nitrokey. This is the PIN you will use a lot in every day use e.g. for decrypting messages, for unlocking your encrypted storage (NK Storage only) etc. At the time of ordering, our system takes the exchange rate from blockchain.info and adds 10% on top of it. The 10% are for our handling fees (exchanging Bitcoins back to Euro) and for the risk implicated by floating exchange rate. Brainpool 192 Brainpool 256-320 Brainpool 384-521 EU: 2-5 business days EU: 5-10 business days Frequently Asked Questions Generic Nitrokeys FAQ Germany: 1-3 business days Germany: 2-5 business days HSM HSM2 If you want to have a backup of your keys, you need to think about it when creating the keys. More information and options for the key creation can be found in our :doc:`documentation <../pro/linux/openpgp>`. In case of a hardware defect, you can contact us and we will send you a shipping label. Pack the device in an air cushion envelope (not in an ordinary envelope!). Include the delivery slip or printout of the invoice with the shipment. Add a note of the reason for the return, e.g. "Withdrawal of the purchase" or "Exchange due to defect". It is sufficient to note the reason in handwriting on the enclosed invoice or delivery note. Address the mailing to our address. It depends. No one can copy the keys which are stored on the Nitrokey. But depending on the key creation process you can still store a backup of the keys elsewhere. NIST-P 192 NIST-P 256 NIST-P 384-521 Nitrokey HSM can store 20 RSA-2048 and 31 ECC-256 key pairs. Nitrokey Pro's and Storage's PINs can be up to 20 digits long and can consist of numbers, characters and special characters. Note: When using GnuPG or OpenSC, 32 character long PINs can be used but aren't supported by Nitrokey App. Nitrokey Pro, Nitrokey HSM and Nitrokey Storage contain a tamper resistant smart card. To some extent this also applies to Nitrokey U2F but it's of lower quality. Nitrokey Start is implemented in the microprocessor. Nitrokey Pro, Nitrokey Start, Nitrokey HSM and Nitrokey U2F don't contain storage capability for ordinary data (it can only store cryptographic keys and certificates). Nitrokey Storage can store and encrypt 8, 32, or 64 GB of data (depending on particular model). Nitrokey Storage's PINs can be up to 20 digits long and can consist of numbers, characters and special characters. Note: When using GnuPG or OpenSC, 32 character long PINs can be used but aren't supported by Nitrokey App. Nitrokey U2F stores a single ECC key pair but can be used with an unlimited amount of user accounts. Nitrokey uses PINs instead of passwords. The main difference is that the hardware limits the amount of tries to three while a limit doesn't exist for passwords. Because of this, a short PIN is still secure and there is not need to choose a long and complex PIN. Pro + Storage Pro 2 + Storage 2 See the `frontpage`_ for an overview of supported use cases. See the following table: See the relevant product faq for details: (@todo add links) Shop and Delivery FAQ Start The Nitrokey GmbH has a heterogeneous customer base, private and enterprise customers, from Germany as well as inside and outside of the EU. With the pricing we want to ensure that all customers pay a uniform rate. For example, a large international corporation should pay just as much as a German private customer. Accordingly, the gross price (incl. VAT) for German private customers equals the net price (excluding VAT) for EU enterprise customers and all customers outside of the EU. This approach has been audited and is legally correct. The Nitrokey Pro, Nitrokey Start and Nitrokey Storage can store three RSA key pairs. All keys use the same identity but are used for different purposes: authentication, encryption and signing. The admin PIN can have up to 20 digits and other characters (e.g. alphabetic and special characters). But as the admin PIN is blocked as soon three wrong PIN attempts were done, it is sufficiently secure to only have 8 digits PIN. The default PIN is 12345678. The admin PIN is at least 8-digits long and is used to change contents/settings of the Nitrokey. That is to say after initializing the Nitrokey you probably won't need this PIN too often (e.g. if you want to add another password to the password safe of the Nitrokey Pro or Nitrokey Storage). The firmware password is never blocked. An attacker could try to guess the password and would have unlimited attempts. Therefore you must choose a strong password. The default password is 12345678. The security controler's hardware is Common Criteria certified (`Report`_; See `here`_, click "ICs, Smart Cards and Smart Card-Related Devices and Systems" and search for "NXP Smart Card Controller P5CD081V1A and its major configurations P5CC081V1A, P5CN081V1A, P5CD041V1A, P5CD021V1A and P5CD016V1A each with IC dedicated Software"). The user PIN can have up to 20 digits and other characters (e.g. alphabetic and special characters). But as the user PIN is blocked as soon three wrong PIN attempts were done, it is sufficiently secure to only have a 6 digits PIN. The default PIN is 123456. The user PIN is at least 6-digits long and is used to get access to the contect of the Nitrokey. This is the PIN you will use a lot in every day use e.g. for decrypting messages, for unlocking your encrypted storage (NK Storage only) etc. There is a Right for most customers. Further details can be found here (https://www.nitrokey.com/right-withdrawal-consumers) To return a goods (e.g. Nitrokey): We strongly recommend to change these PINs/password to user-chosen values before using the Nitrokey. Windows, Linux, and Mac OS X. Windows, Linux, and Mac OS X. Also some support (FIDO2) for Android. World wide: 2-3 weeks World wide: 5-10 business days curve25519 rsa1024 rsa2048 rsa3072 rsa4096 secp192 secp256 secp521 ✓ Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2021-10-06 01:52+0200
PO-Revision-Date: 2023-02-12 12:24+0000
Last-Translator: Anonymous <noreply@weblate.org>
Language: zh_CN
Language-Team: Chinese (Simplified) <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-shared-faqs/zh_Hans/>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 **管理密码：**管理密码至少有8位数，用于改变硝基钥匙的内容/设置。也就是说，在初始化Nitrokey后，你可能不会经常需要这个PIN码（例如，如果你想在Nitrokey Pro或Nitrokey Storage的密码箱中添加另一个密码）。 **管理员密码：** "12345678"。 **固件密码**（仅限Nitrokey存储）："12345678"。 **固件密码：**固件密码应符合一般的密码建议（例如，使用字母、数字和特殊字符或使用足够长的密码）。更新Nitrokey存储器的固件时需要固件密码。请参阅更新过程的进一步说明。 ** 信件和挂号信**。 **Nitrokey HSM2。**安全控制器'的硬件和操作系统通过了Common Criteria认证（`安全目标`_；`HSM2报告`_；见`这里`_，点击"IC，智能卡和智能卡相关设备和系统"；并搜索"；NXP JCOP 3 P60"；）。 **Nitrokey HSM：**安全控制器'的硬件和操作系统通过了通用标准认证（`HSM报告`_；见`这里`_，点击"IC，智能卡和智能卡相关设备和系统"并搜索"恩智浦J3A080 v2.4.1安全智能卡控制器（JCOP v2.4.1）"）。 **Nitrokey Pro 1+2。**安全控制器'的硬件通过了Common Criteria认证（`报告`_；见`这里`_，点击"IC，智能卡和智能卡相关的设备和系统"。并搜索"恩智浦智能卡控制器P5CD081V1A及其主要配置P5CC081V1A、P5CN081V1A、P5CD041V1A、P5CD021V1A和P5CD016V1A各自的IC专用软件"）。 **Nitrokey存储1+2：** `Cure53`_已经对硬件、固件和Nitrokey应用程序进行了`独立的安全审计`_。 **包裹**。 **问：**硝基钥匙是否包含安全芯片或只是一个普通的微控制器？ **问：**加密和签名的速度如何？ **问：**随机数字发生器（RNG）的性能如何？ **问：**比特币汇率是如何计算的？ **问：**存储容量有多大？ **问：**运输需要多长时间？ **问：**我可以存储多少个钥匙？ **问：**如何退货？ **问：**Nitrokey是否经过通用标准或FIPS认证？ **问：**是否有撤诉权？ **问：**是否有保证？ **问：**定价和增值税 **问：**默认密码是什么？ **问：**我可以用硝基钥匙做什么？ **问：**管理密码是用来做什么的？ **问：**用户密码是什么？ **问：**密码的最大长度是多少？ **问：**用户/管理员/固件PIN/密码是什么？ **问：**支持哪些操作系统？ **问：**支持哪些算法和最大密钥长度？ **SO PIN:** SO PIN仅用于Nitrokey HSM，它类似于具有特殊属性的"主" PIN。请仔细阅读本说明以了解Nitrokey HSM的SO PIN。 **SO-PIN**（仅限Nitrokey HSM）："3537363231383830"。 **用户密码：**"123456"。 **用户PIN码：**用户PIN码至少有6位数字，用于进入Nitrokey的保护范围。这是你在日常使用中经常用到的密码，例如解密信息，解锁你的加密存储空间（仅限NK存储）等。 在订购时，我们的系统从blockchain.info获取汇率，并在此基础上增加10% o。这10% a是我们的手续费（将比特币兑换成欧元）和浮动汇率所带来的风险。 脑池192 脑库 256-320 脑库 384-521 欧盟：2-5个工作日 欧盟：5-10个工作日 常见问题 通用硝化甘油的常见问题 德国：1-3个工作日 德国：2-5个工作日 HSM HSM2 如果你想对你的钥匙进行备份，你需要在创建钥匙时考虑到这一点。更多关于密钥创建的信息和选项可以在我们的 :doc:`documentation <../pro/linux/openpgp>`中找到。 如果是硬件缺陷，你可以联系我们，我们会给你发一个运输标签。用气垫信封包装设备（不要用普通信封！）。随货附上送货单或发票的打印件。添加退货原因的说明，例如："撤回购买"或"因缺陷而换货"。只要在所附的发票或送货单上手写说明原因即可。请将邮件寄到我们的地址。 这取决于。没有人可以复制存储在Nitrokey上的钥匙。但根据钥匙的创建过程，你仍然可以在其他地方存储钥匙的备份。 NIST-P 192 NIST-P 256 NIST-P 384-521 Nitrokey HSM可以存储20个RSA-2048和31个ECC-256的密钥对。 Nitrokey Pro和Storage的PIN码可长达20位，可由数字、字符和特殊字符组成。注意：当使用GnuPG或OpenSC时，可以使用32个字符的PIN码，但不被Nitrokey App支持。 Nitrokey Pro、Nitrokey HSM和Nitrokey Storage包含一个防篡改智能卡。在某种程度上，这也适用于Nitrokey U2F，但它的质量较低。Nitrokey Start是在微处理器中实现的。 Nitrokey Pro、Nitrokey Start、Nitrokey HSM和Nitrokey U2F不包含普通数据的存储能力（它只能存储加密密钥和证书）。 Nitrokey Storage可以存储和加密8、32或64GB的数据（取决于特定的型号）。 Nitrokey Storage的PIN码可长达20位，可由数字、字符和特殊字符组成。注意：当使用GnuPG或OpenSC时，可以使用32个字符的PIN码，但不被Nitrokey App支持。 Nitrokey U2F存储一个ECC密钥对，但可用于无限量的用户账户。 Nitrokey使用PIN码而不是密码。主要区别在于，硬件将尝试的次数限制为三次，而密码则不存在限制。正因为如此，一个简短的PIN码仍然是安全的，没有必要选择一个长而复杂的PIN码。 专业+存储 专业2+存储2 请参阅`frontpage`_以了解支持的用例概述。 见下表。 详见相关产品的FAQ。(@todo添加链接) 购物和送货常见问题 开始 Nitrokey GmbH拥有一个异质性的客户群，包括私人和企业客户，来自德国以及欧盟内部和外部。在定价方面，我们希望确保所有客户支付统一的费用。例如，一个大型的国际公司应该和一个德国私人客户支付同样的费用。因此，德国私人客户的总价格（包括增值税）等于欧盟企业客户和欧盟以外所有客户的净价格（不包括增值税）。这种方法已经过审计，在法律上是正确的。 Nitrokey Pro、Nitrokey Start和Nitrokey Storage可以存储三个RSA密钥对。所有的钥匙都使用相同的身份，但用于不同的目的：认证、加密和签名。 管理密码最多可以有20位数字和其他字符（如字母和特殊字符）。但是，由于只要有三次错误的PIN尝试，管理PIN就会被阻止，所以只有8位数的PIN就足够安全了。默认的PIN码是12345678。 管理密码至少有8位数，用于改变硝基钥匙的内容/设置。也就是说，在初始化Nitrokey后，你可能不会经常需要这个PIN码（例如，如果你想在Nitrokey Pro或Nitrokey Storage的密码箱中添加另一个密码）。 固件密码永远不会被封锁。攻击者可以尝试猜测密码，而且会有无限次的尝试。因此，你必须选择一个强大的密码。默认的密码是12345678。 该安全控制器'的硬件通过了Common Criteria认证（`报告`_；见`这里`_，点击"IC，智能卡和智能卡相关的设备和系统"。并搜索"恩智浦智能卡控制器P5CD081V1A及其主要配置P5CC081V1A、P5CN081V1A、P5CD041V1A、P5CD021V1A和P5CD016V1A各自的IC专用软件"）。 用户密码可以有多达20位数字和其他字符（如字母和特殊字符）。但是，由于用户的PIN码在尝试了三次错误的PIN码后就会被阻止，所以只有6位数的PIN码就足够安全了。默认的PIN码是123456。 用户PIN码至少有6位数，用于进入Nitrokey的保护范围。这是你在日常使用中经常用到的密码，例如解密信息、解锁加密的存储空间（仅限NK存储）等。 对大多数客户来说，都有一个权利。进一步的细节可以在这里找到（https://www.nitrokey.com/right-withdrawal-consumers）。 退回货物（如Nitrokey）。 我们强烈建议在使用Nitrokey之前，将这些PIN码/密码改为用户选择的值。 Windows、Linux和Mac OS X。 Windows、Linux和Mac OS X。还有一些对安卓的支持（FIDO2）。 世界范围内：2-3周 世界范围内。5-10个工作日 曲线25519 rsa1024 rsa2048 rsa3072 rsa4096 secp192 secp256 secp521 ✓ 
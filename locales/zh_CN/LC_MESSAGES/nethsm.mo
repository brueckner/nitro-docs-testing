��    S      �              L  �   M  q     [   y  �   �    �  k   �  +   	  %   B	  5   h	  _   �	  _   �	  4  ^
  )   �  1   �     �  ^  �  o   V     �  
   �  
   �     �  V     %   Y  �               �   *  �   �  M   �     	  �     �   �  w  �     +  e   :  !   �  �   �  V   �      �          %     4  	   C  �   M     "  F   )  �   p  �   N  .   �  7     '   V     ~     �  "   �  >  �            r     !   �  �   �  O   �  �  �  V   �  �   �  �   �  8   P   A   �   P   �   E   !  �   b!  |  "  �   �#  f   6$    �$  .   �%  �   �%     e&    m&     o'  ;   '  �   �'     _(  �  �(  �   �*  Y   n+  S   �+  �   ,  �   �,  h   �-     �-     .  %   8.  \   ^.  [   �.    /  $   10  &   V0     }0  6  �0  k   �1     '2     :2     A2     H2  P   X2  0   �2  w   �2     R3     _3  �   f3  �   4  9   �4     �4  �   �4  �   �5  a  �6  	   �7  W   �7     G8  �   f8  B   9     W9     p9     }9     �9  	   �9    �9     �:  J   �:  �   �:  �   �;  0   �<  =   �<  '   �<     '=     ==  !   D=  �   f=     b>     u>     |>  )   �>  �   &?  H   �?  y  ,@  B   �A  �   �A  �   �B  9   !C  E   [C  E   �C  E   �C  �   -D  Z  �D  �   F  g   �F     G  0   	H  ~   :H     �H  �   �H     �I  3   �I  �   �I  e   kJ   *R-Administrator*: A user account with this Role has access to all operations provided by the REST API, with the exception of key usage operations, i.e. message signing and decryption. *R-Backup*: A user account with this Role has access to the operations required to initiate a system backup only. *R-Metrics*: A user account with this Role has access to read-only metrics operations only. *R-Operator*: A user account with this Role has access to all key usage operations, a read-only subset of key management operations and user management operations allowing changes to their own account only. A new NetHSM needs to be provisioned first with passphrases and the current time. The *Admin Passphrase* is the *Administrator*’s passphrase, which is the super user of the NetHSM. The *Unlock Passphrase* is used to encrypt NetHSM’s confidential data store. A public NetHSM demo instance is available at `nethsmdemo.nitrokey.com <https://nethsmdemo.nitrokey.com>`_. Accessing a NetHSM using the PKCS#11 driver Accessing a NetHSM using the REST API Accessing a NetHSM with the nitropy command line tool After creating a key (here: ID 23) with the according mechanism, you can use it for decryption: After creating a key (here: ID 42) with the according mechanism, you can use it for decryption: Alternatively you can run the `NetHSM Docker container <https://hub.docker.com/r/nitrokey/nethsm>`_ locally. The NetHSM container requires nested virtualization for strong separation with other containers. Thus, to start a NetHSM container you need a Linux host with /dev/kvm available. Execute this command: Alternatively, you can cancel the update: And then use ``openssl`` to verify the signature: Backups Before we start, we store the host name of the NetHSM instance in the ``NETHSM_HOST`` environment variable.  You can use the public NetHSM demo instance ``nethsmdemo.nitrokey.com`` or run a local demo instance using the NetHSM docker image, see the `Development and Testing </index.html#development-and-testing>`_ section of the NetHSM documentation. Connect the NetHSM's ETH3 port with the network. Don't use the ETH0 port because it allows wider system access. Create a User Decrypting Decryption Development and Testing Download the `PKCS#11 driver <https://github.com/Nitrokey/nethsm-pkcs11>`_ for NetHSM. First, let’s see what we have here: For a complete list of available key algorithms and key mechanisms, see the API documentation for the KeyAlgorithm_ and KeyMechanism_ types. Generate Keys Getting Started If you use a NetHSM demo instance with a self-signed certificate, for example using the Docker image, you will have to use the ``--insecure``/``-k`` option for ``curl`` to skip the certificate check. If you use a NetHSM demo instance with a self-signed certificate, for example using the Docker image, you will have to use the ``--no-verify-tls`` option for ``nitropy`` to skip the certificate check. If you want to continue with the installation, you can now commit the update: Import Keys In *Attended Boot* mode the *Unlock Passphrase* needs to be entered during each start which is used to encrypt the data store. For security reasons this mode is recommended. In *Unattended Boot* mode no Unlock Passphrase is required, therefore the NetHSM can start unattended and the data store is stored unencrypted. Use this mode if your availability requirements can’t be fulfilled with *Attended Boot* mode. In this guide, we want to use an RSA key to decrypt data using PKCS #1 and to sign data with PSS using SHA256.  So let’s generate a new key on the NetHSM. Make sure to use the ``RSA`` algorithm and to select the ``RSA_Signature_PSS_SHA256`` and ``RSA_Decryption_PKCS1`` key mechanisms.  If you don’t specify a key ID, the NetHSM will generate a random ID for the new key. Initialization Instead of generating a key on the NetHSM, you can also import existing private keys into the NetHSM: Integration to Custom Application It is possible to crate a backup of the NetHSM that captures both the configuration and the stored keys.  In order to create a backup, you first have to set a backup passphrase that is used to encrypt the backup file: It is possible to set and query certificates for the keys stored on a NetHSM instance: Key Certificate Signing Requests Key Certificates Key Management Key Operations List Keys Modify the configuration file ``p11nethsm.conf`` according to your setup (e.g. address, operator name) and store it in ``$HOME/.nitrokey``, ``/etc/nitrokey/``, or in the folder where your application is executed. NetHSM NetHSM can be used in *Attended Boot* mode and *Unattended Boot* mode. Note: In a future release another Role will be implemented which is allowed to /keys/ POST, /keys/generate POST, /keys/{KeyID} PUT & DELETE, /keys/{KeyID}/cert PUT & DELETE in addition to what R-Operator is allowed to do. Now create a new user with the operator role that can be used to sign and decrypt data.  Note that the NetHSM assigns a random user ID if we don’t specify it. Now we can use the NetHSM to decrypt the data: Now you have to create a user with the *R-Backup* role: Or switch back to *Attended Boot* mode: Retrieve the current mode: Roles See what the device’s status is: Separation of duties can be implemented by using the available Roles. Each user account configured on the NetHSM has one of the following Roles assigned to it. Following is a high-level description of the operations allowed by individual Roles, for endpoint-specific details please refer to the REST API documentation. Show Key Details Signing Similarily, we can sign data using the key on the NetHSM.  For RSA and ECDSA, we have to calculate a digest first: Switch to *Unattended Boot* mode: The NetHSM appliance is available at address 192.168.1.1. Access and initialize the NetHSM using `nitropy command line tool <cli.html>`_. Alternatively, the `REST API <api.html>`_ and `PKCS#11 driver <pkcs11.html>`_ can be used. The NetHSM demo instance at ``nethsmdemo.nitrokey.com`` is already provisioned. The NetHSM supports RSA, ED25519 and ECDSA keys.  When creating a key, you have to select both the key algorithm and the key mechanisms to use.  RSA keys can be used for decryption (with the modes raw, PKCS #1 and OAEP with MD5, SHA1, SHA224, SHA256, SHA384 or SHA512) and for signatures (with the modes PKCS #1 and PSS with MD5, SHA1, SHA224, SHA256, SHA384 or SHA512).  The other algorithms only support the signature mechanism. The NetHSM supports generating Certificate Signing Requests (CSR) for the stored keys: The ``-i``/``--include`` option causes ``curl`` to print the HTTP status code and the response headers.  The ``-w '\n'``/``--write-out '\n'`` option adds a newline after the response body. The generated client code, in this example JavaScript, will be created in the ``./out/`` directory. This folder also contains the necessary documentation how to use it. Then can you generate the backup and write it to a file: Then we can create a signature from this digest using the NetHSM: Then you can generate the NetHSM client for your programming language like this: This backup file can be restored on an unprovisioned NetHSM instance: This driver is still an early Proof of Concept implementation that only implements the functions that are necessary for operating TLS servers like for example an HTTPS server. This tutorial demonstrates how to access the NetHMS via REST API. The interface is `documented here <https://nethsmdemo.nitrokey.com/api_docs/index.html#docs/summary/summary>`_ and it's specification is available as `RAML <https://nethsmdemo.nitrokey.com/api_docs/nethsm-api.raml>`_ and as `OpenAPI (Swagger) <https://nethsmdemo.nitrokey.com/api_docs/gen_nethsm_api_oas20.json>`_. This tutorial demonstrates how to access the NetHMS via `nitropy <https://github.com/Nitrokey/pynitrokey>`_ command line tool, which you need to download and install. To be able to use the key with ``openssl``, we export it as a PEM file and store it as ``public.pem``: To integrate the NetHSM into own custom applications client libraries are available for almost all programming languages, including JavaScript, C++ and Python for example. Therefore we recommend using `OpenAPI Generator <https://github.com/OpenAPITools/openapi-generator>`_. To list all the available languages, you enter To make sure that the key has been created and has the correct algorithm and mechanism settings, we can query all keys on the NetHSM: Updates Updates for the NetHSM can be installed in a two-step process.  First you have to upload the update image to the NetHSM.  The image is then checked and validated.  If the validation is successful, the release notes for the update are returned by the NetHSM: User Management We can also query the public key of the generated key pair: We can encrypt data for the key stored on the NetHSM using ``openssl``. (``public.pem`` is the public key file that we created in the `Show Key Details`_ section.) We can inspect the key with ``openssl`` and use it for encryption or signature verification (as described in the next section): Project-Id-Version: Nitrokey Documentation
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2022-01-05 12:32+0100
PO-Revision-Date: 2022-01-26 11:44+0000
Last-Translator: Ben (Weblate Admin) <ben@dotplex.com>
Language: zh_CN
Language-Team: Chinese (Simplified) <https://translate.nitrokey.com/projects/nitrokey-documentation/documentation-nethsm/zh_Hans/>
Plural-Forms: nplurals=1; plural=0;
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.12.1
 *R-Administrator*。拥有此角色的用户账户可以访问REST API提供的所有操作，但密钥使用操作除外，即消息签署和解密。 *R-Backup*:拥有此角色的用户账户只能访问启动系统备份所需的操作。 *R-Metrics*。拥有此角色的用户账户只能访问只读的度量衡操作。 *R-Operator*:拥有此角色的用户账户可以访问所有的钥匙使用操作，只读的钥匙管理操作子集和用户管理操作，只允许对他们自己的账户进行更改。 一个新的NetHSM需要首先配置口令和当前时间。管理员口令*是*管理员*的口令，是NetHSM的超级用户。解锁口令*用于加密NetHSM的机密数据存储。 在`nethsmdemo.nitrokey.com<https://nethsmdemo.nitrokey.com>`_上有一个公共的NetHSM演示实例。 使用PKCS#11驱动访问NetHSM 使用REST API访问NetHSM 用nitropy命令行工具访问NetHSM 在用相应的机制创建一个密钥（这里：ID 23）后，你可以用它来解密。 在用相应的机制创建一个密钥（这里：ID42）后，你可以用它来解密。 另外，你可以在本地运行`NetHSM Docker容器<https://hub.docker.com/r/nitrokey/nethsm>`_。NetHSM容器需要嵌套的虚拟化，以便与其他容器进行强分离。因此，要启动一个NetHSM容器，你需要一个有/dev/kvm的Linux主机。执行这个命令。 或者，你也可以取消更新。 然后用``openssl``来验证签名。 备份 在开始之前，我们在``NETHSM_HOST``环境变量中存储NetHSM实例的主机名称。  你可以使用公共的NetHSM演示实例``nethsmdemo.nitrokey.com``或者使用NetHSM docker镜像运行一个本地演示实例，见NetHSM文档的`开发和测试</index.html#development-and-testing>`_部分。 将NetHSM的ETH3端口与网络连接。不要使用ETH0端口，因为它允许更广泛的系统访问。 创建一个用户 解密 解密 开发和测试 下载`PKCS#11驱动<https://github.com/Nitrokey/nethsm-pkcs11>`_用于NetHSM。 首先，让我们看看我们这里有什么。 关于可用的密钥算法和密钥机制的完整列表，请参见KeyAlgorithm_和KeyMechanism_类型的API文档。 生成钥匙 入门 如果你使用带有自签名证书的NetHSM演示实例，例如使用Docker镜像。你必须使用``--insecure`/``-k``的选项来跳过证书检查。 如果你使用带有自签名证书的NetHSM演示实例，例如使用Docker镜像，你将不得不使用``--no-verify-tls``选项来跳过证书检查。 如果你想继续安装，你现在可以提交更新。 进口钥匙 在*Attended Boot*模式下，每次启动时都需要输入*Unlock Passphrase*，用于加密数据存储。出于安全考虑，建议使用这种模式。 在*无人值守启动*模式下，不需要解锁密码，因此NetHSM可以在无人值守的情况下启动，而且数据存储是不加密的。如果你的可用性要求无法通过*无人值守启动*模式得到满足，请使用这种模式。 在本指南中，我们想用RSA密钥用PKCS #1解密数据，用PSS用SHA256签署数据。  因此，让我们在NetHSM上生成一个新的密钥。确保使用``RSA``算法，并选择``RSA_Signature_PSS_SHA256`和``RSA_Decryption_PKCS1`</x>`密钥机制。  如果你没有指定一个密钥ID，NetHSM将为新的密钥生成一个随机的ID。 初始化 你也可以将现有的私钥导入NetHSM，而不是在NetHSM上生成一个密钥。 集成到自定义应用程序 有可能建立一个NetHSM的备份，同时捕获配置和存储的密钥。  为了创建一个备份，你首先要设置一个备份口令，用来加密备份文件。 可以为存储在NetHSM实例上的密钥设置和查询证书。 密钥证书签名请求 关键证书 关键管理 关键业务 列表键 根据你的设置（例如，地址）修改配置文件``p11nethsm.conf``，并将其存储在``$HOME/.nitrokey`中。地址、操作员名称），并将其存储在``$HOME/.nitrokey`，``/etc/nitrokey/``，或在执行你的应用程序的文件夹中。 NetHSM NetHSM可以在*Attended Boot*模式和*Unattended Boot*模式下使用。 注意：在未来的版本中，将实现另一个角色，允许/keys/ POST, /keys/generate POST, /keys/{KeyID} PUT & DELETE, /keys/{KeyID}/cert PUT & DELETE。PUT & DELETE, /keys/{KeyID}/cert PUT & DELETE 除了R-Operator允许做的以外。 现在创建一个具有操作员角色的新用户，可以用来签署和解密数据。  注意，如果我们不指定，NetHSM会随机分配一个用户ID。 现在我们可以使用NetHSM来解密数据。 现在你必须创建一个具有*R-Backup*角色的用户。 或者切换回*Attended Boot*模式。 检索当前模式。 角色 看看设备的状态是什么。 职责分工可以通过使用可用的角色来实现。在NetHSM上配置的每个用户账户都有一个分配给它的下列角色。以下是各个角色所允许的操作的高级描述，关于终端的具体细节，请参考REST API文档。 显示关键细节 签署 同样地，我们可以使用NetHSM上的密钥来签署数据。  对于RSA和ECDSA，我们必须先计算出一个摘要。 切换到*无人值守的启动*模式。 NetHSM设备的地址是192.168.1.1。使用`nitropy命令行工具<cli.html>`_访问并初始化NetHSM。另外，也可以使用`REST API <api.html>`_和`PKCS#11驱动 <pkcs11.html>`_。 位于``nethsmdemo.nitrokey.com``的NetHSM演示实例已经被配置。 NetHSM支持RSA、ED25519和ECDSA密钥。  当创建一个密钥时，你必须选择密钥算法和使用的密钥机制。  RSA密钥可用于解密（模式为原始、PKCS #1和OAEP，采用MD5、SHA1、SHA224、SHA256、SHA384或SHA512）和签名（模式为PKCS #1和PSS，采用MD5、SHA1、SHA224、SHA256、SHA384或SHA512）。  其他算法只支持签名机制。 NetHSM支持为存储的密钥生成证书签名请求（CSR）。 ``-i``/``--include``选项导致``curl``打印 HTTP 状态代码和响应头文件。  ``-w '\n'``/``--write-out '\n'``选项在响应体后增加一个换行。 生成的客户端代码，在本例中为JavaScript，将在``./out/``目录下创建。这个文件夹也包含了如何使用它的必要文档。 然后你是否可以生成备份并将其写入文件。 然后我们可以使用NetHSM从这个摘要中创建一个签名。 然后你可以像这样为你的编程语言生成NetHSM客户端。 这个备份文件可以在一个未配置的NetHSM实例上恢复。 这个驱动仍然是一个早期的概念验证实现，只实现了操作TLS服务器（例如HTTPS服务器）所需的功能。 本教程演示了如何通过REST API访问NetHMS。该接口`记录在此<https://nethsmdemo.nitrokey.com/api_docs/index.html#docs/summary/summary>`_，并且它'的规范可作为`RAML <https://nethsmdemo.nitrokey.com/api_docs/nethsm-api.raml>`_和`OpenAPI（Swagger） <https://nethsmdemo.nitrokey.com/api_docs/gen_nethsm_api_oas20.json>`_。 本教程演示了如何通过`nitropy <https://github.com/Nitrokey/pynitrokey>`_命令行工具访问NetHMS，你需要下载和安装该工具。 为了能够用``openssl``使用密钥，我们将其导出为PEM文件，并存储为``public.pem``。 为了将NetHSM集成到自己的自定义应用程序中，几乎所有的编程语言都可以使用客户端库，例如包括JavaScript、C++和Python。因此我们推荐使用`OpenAPI Generator <https://github.com/OpenAPITools/openapi-generator>`_。 要列出所有可用的语言，你可以输入 为了确保钥匙已经被创建，并且具有正确的算法和机制设置，我们可以查询NetHSM上的所有钥匙。 更新 NetHSM的更新可以通过两步来安装。  首先，你必须将更新图像上传到NetHSM。  然后对镜像进行检查和验证。  如果验证成功，NetHSM会返回更新的发行说明。 用户管理 我们还可以查询生成的密钥对的公钥。 我们可以使用``openssl``对存储在NetHSM上的密钥进行数据加密。(``public.pem``是我们在`显示密钥细节`_部分创建的公钥文件。) 我们可以用``openssl``检查密钥，并将其用于加密或签名验证（如下节所述）。 
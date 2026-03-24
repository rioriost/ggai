class Ggai < Formula
  include Language::Python::Virtualenv

  desc "Helper for GeoGuessr training using OpenAI"
  homepage "https://github.com/rioriost/ggai"
  url "https://github.com/rioriost/ggai/releases/download/0.5.7/ggai-0.5.7.tar.gz"
  sha256 "16c57371839c90d3d85aded4a186aac2a147317eab6838391cd2e0b6bba2918b"
  license "MIT"

  depends_on "python@3.14"
  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/78/b6/6307fbef88d9b5ee7421e68d78a9f162e0da4900bc5f5793f6d3d0e34fb8/annotated_types-0.7.0-py3-none-any.whl"
    sha256 "1f02e8b43a8fbbc3f3e0d4f0f4bfc8131bcb4eebe8849b8e5c773f3a1c582a53"
  end
  resource "anyio" do
    url "https://files.pythonhosted.org/packages/38/0e/27be9fdef66e72d64c0cdc3cc2823101b80585f8119b5c112c2e8f5f7dab/anyio-4.12.1-py3-none-any.whl"
    sha256 "d405828884fc140aa80a3c667b8beed277f1dfedec42ba031bd6ac3db606ab6c"
  end
  resource "certifi" do
    url "https://files.pythonhosted.org/packages/9a/3c/c17fb3ca2d9c3acff52e30b309f538586f9f5b9c9cf454f3845fc9af4881/certifi-2026.2.25-py3-none-any.whl"
    sha256 "027692e4402ad994f1c42e52a4997a9763c646b73e4096e4d5d6db8af1d6f0fa"
  end
  resource "distro" do
    url "https://files.pythonhosted.org/packages/12/b3/231ffd4ab1fc9d679809f356cebee130ac7daa00d6d6f3206dd4fd137e9e/distro-1.9.0-py3-none-any.whl"
    sha256 "7bffd925d65168f85027d8da9af6bddab658135b840670a223589bc0c8ef02b2"
  end
  resource "h11" do
    url "https://files.pythonhosted.org/packages/04/4b/29cac41a4d98d144bf5f6d33995617b185d14b22401f75ca86f384e87ff1/h11-0.16.0-py3-none-any.whl"
    sha256 "63cf8bbe7522de3bf65932fda1d9c2772064ffb3dae62d55932da54b31cb6c86"
  end
  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/7e/f5/f66802a942d491edb555dd61e3a9961140fd64c90bce1eafd741609d334d/httpcore-1.0.9-py3-none-any.whl"
    sha256 "2d400746a40668fc9dec9810239072b40b4484b640a8c38fd654a024c7a1bf55"
  end
  resource "httpx" do
    url "https://files.pythonhosted.org/packages/2a/39/e50c7c3a983047577ee07d2a9e53faf5a69493943ec3f6a384bdc792deb2/httpx-0.28.1-py3-none-any.whl"
    sha256 "d909fcccc110f8c7faf814ca82a9a4d816bc5a6dbfea25d6591d6985b8ba59ad"
  end
  resource "idna" do
    url "https://files.pythonhosted.org/packages/0e/61/66938bbb5fc52dbdf84594873d5b51fb1f7c7794e9c0f5bd885f30bc507b/idna-3.11-py3-none-any.whl"
    sha256 "771a87f49d9defaf64091e6e6fe9c18d4833f140bd19464795bc32d966ca37ea"
  end
  resource "jiter" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/cd/8f/5482a7677731fd44881f0204981ce2d7175db271f82cba2085dd2212e095/jiter-0.13.0-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "9776ebe51713acf438fd9b4405fcd86893ae5d03487546dae7f34993217f8a91"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/6e/f5/f1997e987211f6f9bd71b8083047b316208b4aca0b529bb5f8c96c89ef3e/jiter-0.13.0-cp314-cp314-macosx_10_12_x86_64.whl"
      sha256 "cc5223ab19fe25e2f0bf2643204ad7318896fe3729bf12fde41b77bfc4fafff0"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/4e/c1/e4693f107a1789a239c759a432e9afc592366f04e901470c2af89cfd28e1/jiter-0.13.0-cp314-cp314-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "0c365005b05505a90d1c47856420980d0237adf82f70c4aff7aebd3c1cc143ad"
    else
      url "https://files.pythonhosted.org/packages/0d/5e/4ec91646aee381d01cdb9974e30882c9cd3b8c5d1079d6b5ff4af522439a/jiter-0.13.0.tar.gz"
      sha256 "f2839f9c2c7e2dffc1bc5929a510e14ce0a946be9365fd1219e7ef342dae14f4"
    end
  end
  resource "openai" do
    url "https://files.pythonhosted.org/packages/d0/b1/35b6f9c8cf9318e3dbb7146cc82dab4cf61182a8d5406fc9b50864362895/openai-2.29.0-py3-none-any.whl"
    sha256 "b7c5de513c3286d17c5e29b92c4c98ceaf0d775244ac8159aeb1bddf840eb42a"
  end
  resource "pillow" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/05/30/5db1236b0d6313f03ebf97f5e17cda9ca060f524b2fcc875149a8360b21c/pillow-12.1.1-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "f7ed2c6543bad5a7d5530eb9e78c53132f93dfa44a28492db88b41cdab885202"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/59/04/dc5c3f297510ba9a6837cbb318b87dd2b8f73eb41a43cc63767f65cb599c/pillow-12.1.1-cp314-cp314-macosx_10_15_x86_64.whl"
      sha256 "2815a87ab27848db0321fb78c7f0b2c8649dee134b7f2b80c6a45c6831d75ccd"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/70/f1/f14d5b8eeb4b2cd62b9f9f847eb6605f103df89ef619ac68f92f748614ea/pillow-12.1.1-cp314-cp314-manylinux2014_x86_64.manylinux_2_17_x86_64.whl"
      sha256 "d6e4571eedf43af33d0fc233a382a76e849badbccdf1ac438841308652a08e1f"
    else
      url "https://files.pythonhosted.org/packages/1f/42/5c74462b4fd957fcd7b13b04fb3205ff8349236ea74c7c375766d6c82288/pillow-12.1.1.tar.gz"
      sha256 "9ad8fa5937ab05218e2b6a4cff30295ad35afd2f83ac592e68c0d871bb0fdbc4"
    end
  end
  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/5a/87/b70ad306ebb6f9b585f114d0ac2137d792b48be34d732d60e597c2f8465a/pydantic-2.12.5-py3-none-any.whl"
    sha256 "e561593fccf61e8a20fc46dfc2dfe075b8be7d0188df33f221ad1f0139180f9d"
  end
  resource "pydantic-core" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/74/1a/145646e5687e8d9a1e8d09acb278c8535ebe9e972e1f162ed338a622f193/pydantic_core-2.41.5-cp314-cp314-macosx_11_0_arm64.whl"
      sha256 "1d1d9764366c73f996edd17abb6d9d7649a7eb690006ab6adbda117717099b14"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/ea/28/46b7c5c9635ae96ea0fbb779e271a38129df2550f763937659ee6c5dbc65/pydantic_core-2.41.5-cp314-cp314-macosx_10_12_x86_64.whl"
      sha256 "3f37a19d7ebcdd20b96485056ba9e8b304e27d9904d233d7b1015db320e51f0a"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/4c/d2/ef2074dc020dd6e109611a8be4449b98cd25e1b9b8a303c2f0fca2f2bcf7/pydantic_core-2.41.5-cp314-cp314-manylinux_2_17_x86_64.manylinux2014_x86_64.whl"
      sha256 "22f0fb8c1c583a3b6f24df2470833b40207e907b90c928cc8d3594b76f874375"
    else
      url "https://files.pythonhosted.org/packages/71/70/23b021c950c2addd24ec408e9ab05d59b035b39d97cdc1130e1bce647bb6/pydantic_core-2.41.5.tar.gz"
      sha256 "08daa51ea16ad373ffd5e7606252cc32f07bc72b28284b6bc9c6df804816476e"
    end
  end
  resource "pyobjc" do
    url "https://files.pythonhosted.org/packages/ef/00/1085de7b73abf37ec27ad59f7a1d7a406e6e6da45720bced2e198fdf1ddf/pyobjc-12.1-py3-none-any.whl"
    sha256 "6f8c36cf87b1159d2ca1aa387ffc3efcd51cc3da13ef47c65f45e6d9fbccc729"
  end
  resource "pyobjc-core" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/25/98/9f4ed07162de69603144ff480be35cd021808faa7f730d082b92f7ebf2b5/pyobjc_core-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "844515f5d86395b979d02152576e7dee9cc679acc0b32dc626ef5bda315eaa43"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/25/98/9f4ed07162de69603144ff480be35cd021808faa7f730d082b92f7ebf2b5/pyobjc_core-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "844515f5d86395b979d02152576e7dee9cc679acc0b32dc626ef5bda315eaa43"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/b8/b6/d5612eb40be4fd5ef88c259339e6313f46ba67577a95d86c3470b951fce0/pyobjc_core-12.1.tar.gz"
      sha256 "2bb3903f5387f72422145e1466b3ac3f7f0ef2e9960afa9bcd8961c5cbf8bd21"
    else
      url "https://files.pythonhosted.org/packages/b8/b6/d5612eb40be4fd5ef88c259339e6313f46ba67577a95d86c3470b951fce0/pyobjc_core-12.1.tar.gz"
      sha256 "2bb3903f5387f72422145e1466b3ac3f7f0ef2e9960afa9bcd8961c5cbf8bd21"
    end
  end
  resource "pyobjc-framework-Accessibility" do
    url "https://files.pythonhosted.org/packages/2d/87/8ca40428d05a668fecc638f2f47dba86054dbdc35351d247f039749de955/pyobjc_framework_accessibility-12.1.tar.gz"
    sha256 "5ff362c3425edc242d49deec11f5f3e26e565cefb6a2872eda59ab7362149772"
  end
  resource "pyobjc-framework-Accounts" do
    url "https://files.pythonhosted.org/packages/ac/70/5f9214250f92fbe2e07f35778875d2771d612f313af2a0e4bacba80af28e/pyobjc_framework_accounts-12.1-py2.py3-none-any.whl"
    sha256 "e1544ad11a2f889a7aaed649188d0e76d58595a27eec07ca663847a7adb21ae5"
  end
  resource "pyobjc-framework-AddressBook" do
    url "https://files.pythonhosted.org/packages/18/28/0404af2a1c6fa8fd266df26fb6196a8f3fb500d6fe3dab94701949247bea/pyobjc_framework_addressbook-12.1.tar.gz"
    sha256 "c48b740cf981103cef1743d0804a226d86481fcb839bd84b80e9a586187e8000"
  end
  resource "pyobjc-framework-AdServices" do
    url "https://files.pythonhosted.org/packages/ad/13/f7796469b25f50750299c4b0e95dc2f75c7c7fc4c93ef2c644f947f10529/pyobjc_framework_adservices-12.1-py2.py3-none-any.whl"
    sha256 "9ca3c55e35b2abb3149a0bce5de9a1f7e8ee4f8642036910ca8586ab2e161538"
  end
  resource "pyobjc-framework-AdSupport" do
    url "https://files.pythonhosted.org/packages/cd/1a/3e90d5a09953bde7b60946cd09cca1411aed05dea855cb88cb9e944c7006/pyobjc_framework_adsupport-12.1-py2.py3-none-any.whl"
    sha256 "97dcd8799dd61f047bb2eb788bbde81f86e95241b5e5173a3a61cfc05b5598b1"
  end
  resource "pyobjc-framework-AppleScriptKit" do
    url "https://files.pythonhosted.org/packages/3b/70/6c399c6ebc37a4e48acf63967e0a916878aedfe420531f6d739215184c0c/pyobjc_framework_applescriptkit-12.1-py2.py3-none-any.whl"
    sha256 "b955fc017b524027f635d92a8a45a5fd9fbae898f3e03de16ecd94aa4c4db987"
  end
  resource "pyobjc-framework-AppleScriptObjC" do
    url "https://files.pythonhosted.org/packages/3e/5f/9ce6706399706930eb29c5308037109c30cfb36f943a6df66fdf38cc842a/pyobjc_framework_applescriptobjc-12.1-py2.py3-none-any.whl"
    sha256 "79068f982cc22471712ce808c0a8fd5deea11258fc8d8c61968a84b1962a3d10"
  end
  resource "pyobjc-framework-ApplicationServices" do
    url "https://files.pythonhosted.org/packages/be/6a/d4e613c8e926a5744fc47a9e9fea08384a510dc4f27d844f7ad7a2d793bd/pyobjc_framework_applicationservices-12.1.tar.gz"
    sha256 "c06abb74f119bc27aeb41bf1aef8102c0ae1288aec1ac8665ea186a067a8945b"
  end
  resource "pyobjc-framework-AppTrackingTransparency" do
    url "https://files.pythonhosted.org/packages/19/b2/90120b93ecfb099b6af21696c26356ad0f2182bdef72b6cba28aa6472ca6/pyobjc_framework_apptrackingtransparency-12.1-py2.py3-none-any.whl"
    sha256 "23a98ade55495f2f992ecf62c3cbd8f648cbd68ba5539c3f795bf66de82e37ca"
  end
  resource "pyobjc-framework-ARKit" do
    url "https://files.pythonhosted.org/packages/21/1e/64c55b409243b3eb9abc7a99e7b27ad4e16b9e74bc4b507fb7e7b81fd41a/pyobjc_framework_arkit-12.1-py2.py3-none-any.whl"
    sha256 "f6d39e28d858ee03f052d6780a552247e682204382dbc090f1d3192fa1b21493"
  end
  resource "pyobjc-framework-AudioVideoBridging" do
    url "https://files.pythonhosted.org/packages/9f/51/f81581e7a3c5cb6c9254c6f1e1ee1d614930493761dec491b5b0d49544b9/pyobjc_framework_audiovideobridging-12.1.tar.gz"
    sha256 "6230ace6bec1f38e8a727c35d054a7be54e039b3053f98e6dd8d08d6baee2625"
  end
  resource "pyobjc-framework-AuthenticationServices" do
    url "https://files.pythonhosted.org/packages/6c/18/86218de3bf67fc1d810065f353d9df70c740de567ebee8550d476cb23862/pyobjc_framework_authenticationservices-12.1.tar.gz"
    sha256 "cef71faeae2559f5c0ff9a81c9ceea1c81108e2f4ec7de52a98c269feff7a4b6"
  end
  resource "pyobjc-framework-AutomaticAssessmentConfiguration" do
    url "https://files.pythonhosted.org/packages/e4/24/080afe8189c47c4bb3daa191ccfd962400ca31a67c14b0f7c2d002c2e249/pyobjc_framework_automaticassessmentconfiguration-12.1.tar.gz"
    sha256 "2b732c02d9097682ca16e48f5d3b10056b740bc091e217ee4d5715194c8970b1"
  end
  resource "pyobjc-framework-Automator" do
    url "https://files.pythonhosted.org/packages/7e/08/362bf6ac2bba393c46cf56078d4578b692b56857c385e47690637a72f0dd/pyobjc_framework_automator-12.1.tar.gz"
    sha256 "7491a99347bb30da3a3f744052a03434ee29bee3e2ae520576f7e796740e4ba7"
  end
  resource "pyobjc-framework-AVFoundation" do
    url "https://files.pythonhosted.org/packages/cd/42/c026ab308edc2ed5582d8b4b93da6b15d1b6557c0086914a4aabedd1f032/pyobjc_framework_avfoundation-12.1.tar.gz"
    sha256 "eda0bb60be380f9ba2344600c4231dd58a3efafa99fdc65d3673ecfbb83f6fcb"
  end
  resource "pyobjc-framework-AVKit" do
    url "https://files.pythonhosted.org/packages/34/a9/e44db1a1f26e2882c140f1d502d508b1f240af9048909dcf1e1a687375b4/pyobjc_framework_avkit-12.1.tar.gz"
    sha256 "a5c0ddb0cb700f9b09c8afeca2c58952d554139e9bb078236d2355b1fddfb588"
  end
  resource "pyobjc-framework-AVRouting" do
    url "https://files.pythonhosted.org/packages/6e/83/15bf6c28ec100dae7f92d37c9e117b3b4ee6b4873db062833e16f1cfd6c4/pyobjc_framework_avrouting-12.1.tar.gz"
    sha256 "6a6c5e583d14f6501df530a9d0559a32269a821fc8140e3646015f097155cd1c"
  end
  resource "pyobjc-framework-BackgroundAssets" do
    url "https://files.pythonhosted.org/packages/34/d1/e917fba82790495152fd3508c5053827658881cf7e9887ba60def5e3f221/pyobjc_framework_backgroundassets-12.1.tar.gz"
    sha256 "8da34df9ae4519c360c429415477fdaf3fbba5addbc647b3340b8783454eb419"
  end
  resource "pyobjc-framework-BrowserEngineKit" do
    url "https://files.pythonhosted.org/packages/5d/b9/39f9de1730e6f8e73be0e4f0c6087cd9439cbe11645b8052d22e1fb8e69b/pyobjc_framework_browserenginekit-12.1.tar.gz"
    sha256 "6a1a34a155778ab55ab5f463e885f2a3b4680231264e1fe078e62ddeccce49ed"
  end
  resource "pyobjc-framework-BusinessChat" do
    url "https://files.pythonhosted.org/packages/53/88/4c727424b05efa33ed7f6c45e40333e5a8a8dc5bb238e34695addd68463b/pyobjc_framework_businesschat-12.1-py2.py3-none-any.whl"
    sha256 "f66ce741507b324de3c301d72ba0cfa6aaf7093d7235972332807645c118cc29"
  end
  resource "pyobjc-framework-CalendarStore" do
    url "https://files.pythonhosted.org/packages/fa/70/f68aebdb7d3fa2dec2e9da9e9cdaa76d370de326a495917dbcde7bb7711e/pyobjc_framework_calendarstore-12.1-py2.py3-none-any.whl"
    sha256 "18533e0fcbcdd29ee5884dfbd30606710f65df9b688bf47daee1438ee22e50cc"
  end
  resource "pyobjc-framework-CallKit" do
    url "https://files.pythonhosted.org/packages/1a/c0/1859d4532d39254df085309aff55b85323576f00a883626325af40da4653/pyobjc_framework_callkit-12.1.tar.gz"
    sha256 "fd6dc9688b785aab360139d683be56f0844bf68bf5e45d0eb770cb68221083cc"
  end
  resource "pyobjc-framework-Carbon" do
    url "https://files.pythonhosted.org/packages/a4/9e/91853c8f98b9d5bccf464113908620c94cc12c2a3e4625f3ce172e3ea4bc/pyobjc_framework_carbon-12.1-py2.py3-none-any.whl"
    sha256 "f8b719b3c7c5cf1d61ac7c45a8a70b5e5e5a83fa02f5194c2a48a7e81a3d1b7f"
  end
  resource "pyobjc-framework-CFNetwork" do
    url "https://files.pythonhosted.org/packages/d2/6a/f5f0f191956e187db85312cbffcc41bf863670d121b9190b4a35f0d36403/pyobjc_framework_cfnetwork-12.1.tar.gz"
    sha256 "2d16e820f2d43522c793f55833fda89888139d7a84ca5758548ba1f3a325a88d"
  end
  resource "pyobjc-framework-Cinematic" do
    url "https://files.pythonhosted.org/packages/c9/a0/cd85c827ce5535c08d936e5723c16ee49f7ff633f2e9881f4f58bf83e4ce/pyobjc_framework_cinematic-12.1-py2.py3-none-any.whl"
    sha256 "c003543bb6908379680a93dfd77a44228686b86c118cf3bc930f60241d0cd141"
  end
  resource "pyobjc-framework-ClassKit" do
    url "https://files.pythonhosted.org/packages/ac/ef/67815278023b344a79c7e95f748f647245d6f5305136fc80615254ad447c/pyobjc_framework_classkit-12.1.tar.gz"
    sha256 "8d1e9dd75c3d14938ff533d88b72bca2d34918e4461f418ea323bfb2498473b4"
  end
  resource "pyobjc-framework-CloudKit" do
    url "https://files.pythonhosted.org/packages/35/71/cbef7179bf1a594558ea27f1e5ad18f5c17ef71a8a24192aae16127bc849/pyobjc_framework_cloudkit-12.1-py2.py3-none-any.whl"
    sha256 "875e37bf1a2ce3d05c2492692650104f2d908b56b71a0aedf6620bc517c6c9ca"
  end
  resource "pyobjc-framework-Cocoa" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/59/bb/f777cc9e775fc7dae77b569254570fe46eb842516b3e4fe383ab49eab598/pyobjc_framework_cocoa-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "03342a60fc0015bcdf9b93ac0b4f457d3938e9ef761b28df9564c91a14f0129a"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/59/bb/f777cc9e775fc7dae77b569254570fe46eb842516b3e4fe383ab49eab598/pyobjc_framework_cocoa-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "03342a60fc0015bcdf9b93ac0b4f457d3938e9ef761b28df9564c91a14f0129a"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/02/a3/16ca9a15e77c061a9250afbae2eae26f2e1579eb8ca9462ae2d2c71e1169/pyobjc_framework_cocoa-12.1.tar.gz"
      sha256 "5556c87db95711b985d5efdaaf01c917ddd41d148b1e52a0c66b1a2e2c5c1640"
    else
      url "https://files.pythonhosted.org/packages/02/a3/16ca9a15e77c061a9250afbae2eae26f2e1579eb8ca9462ae2d2c71e1169/pyobjc_framework_cocoa-12.1.tar.gz"
      sha256 "5556c87db95711b985d5efdaaf01c917ddd41d148b1e52a0c66b1a2e2c5c1640"
    end
  end
  resource "pyobjc-framework-Collaboration" do
    url "https://files.pythonhosted.org/packages/2a/66/1507de01f1e2b309f8e11553a52769e4e2e9939ed770b5b560ef5bc27bc1/pyobjc_framework_collaboration-12.1-py2.py3-none-any.whl"
    sha256 "182d6e6080833b97f9bef61738ae7bacb509714538f0d7281e5f0814c804b315"
  end
  resource "pyobjc-framework-ColorSync" do
    url "https://files.pythonhosted.org/packages/e8/e1/82e45c712f43905ee1e6d585180764e8fa6b6f1377feb872f9f03c8c1fb8/pyobjc_framework_colorsync-12.1-py2.py3-none-any.whl"
    sha256 "41e08d5b9a7af4b380c9adab24c7ff59dfd607b3073ae466693a3e791d8ffdc9"
  end
  resource "pyobjc-framework-CompositorServices" do
    url "https://files.pythonhosted.org/packages/f9/34/5a2de8d531dbb88023898e0b5d2ce8edee14751af6c70e6103f6aa31a669/pyobjc_framework_compositorservices-12.1-py2.py3-none-any.whl"
    sha256 "9ef22d4eacd492e13099b9b8936db892cdbbef1e3d23c3484e0ed749f83c4984"
  end
  resource "pyobjc-framework-Contacts" do
    url "https://files.pythonhosted.org/packages/4b/a0/ce0542d211d4ea02f5cbcf72ee0a16b66b0d477a4ba5c32e00117703f2f0/pyobjc_framework_contacts-12.1.tar.gz"
    sha256 "89bca3c5cf31404b714abaa1673577e1aaad6f2ef49d4141c6dbcc0643a789ad"
  end
  resource "pyobjc-framework-ContactsUI" do
    url "https://files.pythonhosted.org/packages/cd/0c/7bb7f898456a81d88d06a1084a42e374519d2e40a668a872b69b11f8c1f9/pyobjc_framework_contactsui-12.1.tar.gz"
    sha256 "aaeca7c9e0c9c4e224d73636f9a558f9368c2c7422155a41fd4d7a13613a77c1"
  end
  resource "pyobjc-framework-CoreAudio" do
    url "https://files.pythonhosted.org/packages/84/d1/0b884c5564ab952ff5daa949128c64815300556019c1bba0cf2ca752a1a0/pyobjc_framework_coreaudio-12.1.tar.gz"
    sha256 "a9e72925fcc1795430496ce0bffd4ddaa92c22460a10308a7283ade830089fe1"
  end
  resource "pyobjc-framework-CoreAudioKit" do
    url "https://files.pythonhosted.org/packages/41/1c/5c7e39b9361d4eec99b9115b593edd9825388acd594cb3b4519f8f1ac12c/pyobjc_framework_coreaudiokit-12.1.tar.gz"
    sha256 "b83624f8de3068ab2ca279f786be0804da5cf904ff9979d96007b69ef4869e1e"
  end
  resource "pyobjc-framework-CoreBluetooth" do
    url "https://files.pythonhosted.org/packages/4b/25/d21d6cb3fd249c2c2aa96ee54279f40876a0c93e7161b3304bf21cbd0bfe/pyobjc_framework_corebluetooth-12.1.tar.gz"
    sha256 "8060c1466d90bbb9100741a1091bb79975d9ba43911c9841599879fc45c2bbe0"
  end
  resource "pyobjc-framework-CoreData" do
    url "https://files.pythonhosted.org/packages/3e/c5/8cd46cd4f1b7cf88bdeed3848f830ea9cdcc4e55cd0287a968a2838033fb/pyobjc_framework_coredata-12.1.tar.gz"
    sha256 "1e47d3c5e51fdc87a90da62b97cae1bc49931a2bb064db1305827028e1fc0ffa"
  end
  resource "pyobjc-framework-CoreHaptics" do
    url "https://files.pythonhosted.org/packages/25/f4/f469d6a9cac7c195f3d08fa65f94c32dd1dcf97a54b481be648fb3a7a5f3/pyobjc_framework_corehaptics-12.1-py2.py3-none-any.whl"
    sha256 "a3b07d36ddf5c86a9cdaa411ab53d09553d26ea04fc7d4f82d21a84f0fc05fc0"
  end
  resource "pyobjc-framework-CoreLocation" do
    url "https://files.pythonhosted.org/packages/cc/79/b75885e0d75397dc2fe1ed9ca80be2b64c18b817f5fb924277cb1bf7b163/pyobjc_framework_corelocation-12.1.tar.gz"
    sha256 "3674e9353f949d91dde6230ad68f6d5748a7f0424751e08a2c09d06050d66231"
  end
  resource "pyobjc-framework-CoreMedia" do
    url "https://files.pythonhosted.org/packages/da/7d/5ad600ff7aedfef8ba8f51b11d9aaacdf247b870bd14045d6e6f232e3df9/pyobjc_framework_coremedia-12.1.tar.gz"
    sha256 "166c66a9c01e7a70103f3ca44c571431d124b9070612ef63a1511a4e6d9d84a7"
  end
  resource "pyobjc-framework-CoreMediaIO" do
    url "https://files.pythonhosted.org/packages/08/8e/23baee53ccd6c011c965cff62eb55638b4088c3df27d2bf05004105d6190/pyobjc_framework_coremediaio-12.1.tar.gz"
    sha256 "880b313b28f00b27775d630174d09e0b53d1cdbadb74216618c9dd5b3eb6806a"
  end
  resource "pyobjc-framework-CoreMIDI" do
    url "https://files.pythonhosted.org/packages/75/96/2d583060a71a73c8a7e6d92f2a02675621b63c1f489f2639e020fae34792/pyobjc_framework_coremidi-12.1.tar.gz"
    sha256 "3c6f1fd03997c3b0f20ab8545126b1ce5f0cddcc1587dffacad876c161da8c54"
  end
  resource "pyobjc-framework-CoreML" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/bc/5c/510ae8e3663238d32e653ed6a09ac65611dd045a7241f12633c1ab48bb9b/pyobjc_framework_coreml-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a04a96e512ecf6999aa9e1f60ad5635cb9d1cd839be470341d8d1541797baef6"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/bc/5c/510ae8e3663238d32e653ed6a09ac65611dd045a7241f12633c1ab48bb9b/pyobjc_framework_coreml-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "a04a96e512ecf6999aa9e1f60ad5635cb9d1cd839be470341d8d1541797baef6"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/30/2d/baa9ea02cbb1c200683cb7273b69b4bee5070e86f2060b77e6a27c2a9d7e/pyobjc_framework_coreml-12.1.tar.gz"
      sha256 "0d1a4216891a18775c9e0170d908714c18e4f53f9dc79fb0f5263b2aa81609ba"
    else
      url "https://files.pythonhosted.org/packages/30/2d/baa9ea02cbb1c200683cb7273b69b4bee5070e86f2060b77e6a27c2a9d7e/pyobjc_framework_coreml-12.1.tar.gz"
      sha256 "0d1a4216891a18775c9e0170d908714c18e4f53f9dc79fb0f5263b2aa81609ba"
    end
  end
  resource "pyobjc-framework-CoreMotion" do
    url "https://files.pythonhosted.org/packages/2c/eb/abef7d405670cf9c844befc2330a46ee59f6ff7bac6f199bf249561a2ca6/pyobjc_framework_coremotion-12.1.tar.gz"
    sha256 "8e1b094d34084cc8cf07bedc0630b4ee7f32b0215011f79c9e3cd09d205a27c7"
  end
  resource "pyobjc-framework-CoreServices" do
    url "https://files.pythonhosted.org/packages/4c/b3/52338a3ff41713f7d7bccaf63bef4ba4a8f2ce0c7eaff39a3629d022a79a/pyobjc_framework_coreservices-12.1.tar.gz"
    sha256 "fc6a9f18fc6da64c166fe95f2defeb7ac8a9836b3b03bb6a891d36035260dbaa"
  end
  resource "pyobjc-framework-CoreSpotlight" do
    url "https://files.pythonhosted.org/packages/99/d0/88ca73b0cf23847af463334989dd8f98e44f801b811e7e1d8a5627ec20b4/pyobjc_framework_corespotlight-12.1.tar.gz"
    sha256 "57add47380cd0bbb9793f50a4a4b435a90d4ebd2a33698e058cb353ddfb0d068"
  end
  resource "pyobjc-framework-CoreText" do
    url "https://files.pythonhosted.org/packages/29/da/682c9c92a39f713bd3c56e7375fa8f1b10ad558ecb075258ab6f1cdd4a6d/pyobjc_framework_coretext-12.1.tar.gz"
    sha256 "e0adb717738fae395dc645c9e8a10bb5f6a4277e73cba8fa2a57f3b518e71da5"
  end
  resource "pyobjc-framework-CoreWLAN" do
    url "https://files.pythonhosted.org/packages/88/71/739a5d023566b506b3fd3d2412983faa95a8c16226c0dcd0f67a9294a342/pyobjc_framework_corewlan-12.1.tar.gz"
    sha256 "a9d82ec71ef61f37e1d611caf51a4203f3dbd8caf827e98128a1afaa0fd2feb5"
  end
  resource "pyobjc-framework-CryptoTokenKit" do
    url "https://files.pythonhosted.org/packages/6b/7c/d03ff4f74054578577296f33bc669fce16c7827eb1a553bb372b5aab30ca/pyobjc_framework_cryptotokenkit-12.1.tar.gz"
    sha256 "c95116b4b7a41bf5b54aff823a4ef6f4d9da4d0441996d6d2c115026a42d82f5"
  end
  resource "pyobjc-framework-DataDetection" do
    url "https://files.pythonhosted.org/packages/70/1c/5d2f941501e84da8fef8ef3fd378b5c083f063f083f97dd3e8a07f0404b3/pyobjc_framework_datadetection-12.1-py2.py3-none-any.whl"
    sha256 "4dc8e1d386d655b44b2681a4a2341fb2fc9addbf3dda14cb1553cd22be6a5387"
  end
  resource "pyobjc-framework-DeviceCheck" do
    url "https://files.pythonhosted.org/packages/c5/d8/1f1b13fa4775b6474c9ad0f4b823953eaeb6c11bd6f03fa8479429b36577/pyobjc_framework_devicecheck-12.1-py2.py3-none-any.whl"
    sha256 "ffd58148bdef4a1ee8548b243861b7d97a686e73808ca0efac5bef3c430e4a15"
  end
  resource "pyobjc-framework-DeviceDiscoveryExtension" do
    url "https://files.pythonhosted.org/packages/7e/0c/005fe8db1e19135f493a3de8c8d38031e1ad2d626de4ef89f282acf4aff7/pyobjc_framework_devicediscoveryextension-12.1-py2.py3-none-any.whl"
    sha256 "d6d6b606d27d4d88efc0bed4727c375e749149b360290c3ad2afc52337739a1b"
  end
  resource "pyobjc-framework-DictionaryServices" do
    url "https://files.pythonhosted.org/packages/e7/13/ab308e934146cfd54691ddad87e572cd1edb6659d795903c4c75904e2d7d/pyobjc_framework_dictionaryservices-12.1-py2.py3-none-any.whl"
    sha256 "578854eec17fa473ac17ab30050a7bbb2ab69f17c5c49b673695254c3e88ad4b"
  end
  resource "pyobjc-framework-DiscRecording" do
    url "https://files.pythonhosted.org/packages/c4/87/8bd4544793bfcdf507174abddd02b1f077b48fab0004b3db9a63142ce7e9/pyobjc_framework_discrecording-12.1.tar.gz"
    sha256 "6defc8ea97fb33b4d43870c673710c04c3dc48be30cdf78ba28191a922094990"
  end
  resource "pyobjc-framework-DiscRecordingUI" do
    url "https://files.pythonhosted.org/packages/f2/4e/76016130c27b98943c5758a05beab3ba1bc9349ee881e1dfc509ea954233/pyobjc_framework_discrecordingui-12.1-py2.py3-none-any.whl"
    sha256 "6544ef99cad3dee95716c83cb207088768b6ecd3de178f7e1b17df5997689dfd"
  end
  resource "pyobjc-framework-DiskArbitration" do
    url "https://files.pythonhosted.org/packages/48/65/c1f54c47af17cb6b923eab85e95f22396c52f90ee8f5b387acffad9a99ea/pyobjc_framework_diskarbitration-12.1-py2.py3-none-any.whl"
    sha256 "54caf3079fe4ae5ac14466a9b68923ee260a1a88a8290686b4a2015ba14c2db6"
  end
  resource "pyobjc-framework-DVDPlayback" do
    url "https://files.pythonhosted.org/packages/29/7d/22c07c28fab1f15f0d364806e39a6ca63c737c645fe7e98e157878b5998c/pyobjc_framework_dvdplayback-12.1-py2.py3-none-any.whl"
    sha256 "af911cc222272a55b46a1a02a46a355279aecfd8132231d8d1b279e252b8ad4c"
  end
  resource "pyobjc-framework-EventKit" do
    url "https://files.pythonhosted.org/packages/f4/35/142f43227627d6324993869d354b9e57eb1e88c4e229e2271592254daf25/pyobjc_framework_eventkit-12.1-py2.py3-none-any.whl"
    sha256 "3d2d36d5bd9e0a13887a6ac7cdd36675985ebe2a9cb3cdf8cec0725670c92c60"
  end
  resource "pyobjc-framework-ExceptionHandling" do
    url "https://files.pythonhosted.org/packages/0b/ad/8e05acf3635f20ea7d878be30d58a484c8b901a8552c501feb7893472f86/pyobjc_framework_exceptionhandling-12.1-py2.py3-none-any.whl"
    sha256 "2f1eae14cf0162e53a0888d9ffe63f047501fe583a23cdc9c966e89f48cf4713"
  end
  resource "pyobjc-framework-ExecutionPolicy" do
    url "https://files.pythonhosted.org/packages/51/2c/f10352398f10f244401ab8f53cabd127dc3f5dbbfc8de83464661d716671/pyobjc_framework_executionpolicy-12.1-py2.py3-none-any.whl"
    sha256 "c3a9eca3bd143cf202787dd5e3f40d954c198f18a5e0b8b3e2fcdd317bf33a52"
  end
  resource "pyobjc-framework-ExtensionKit" do
    url "https://files.pythonhosted.org/packages/9a/d4/e9b1f74d29ad9dea3d60468d59b80e14ed3a19f9f7a25afcbc10d29c8a1e/pyobjc_framework_extensionkit-12.1.tar.gz"
    sha256 "773987353e8aba04223dbba3149253db944abfb090c35318b3a770195b75da6d"
  end
  resource "pyobjc-framework-ExternalAccessory" do
    url "https://files.pythonhosted.org/packages/8e/35/86c097ae2fdf912c61c1276e80f3e090a3fc898c75effdf51d86afec456b/pyobjc_framework_externalaccessory-12.1.tar.gz"
    sha256 "079f770a115d517a6ab87db1b8a62ca6cdf6c35ae65f45eecc21b491e78776c0"
  end
  resource "pyobjc-framework-FileProvider" do
    url "https://files.pythonhosted.org/packages/cc/9a/724b1fae5709f8860f06a6a2a46de568f9bb8bdb2e2aae45b4e010368f51/pyobjc_framework_fileprovider-12.1.tar.gz"
    sha256 "45034e0d00ae153c991aa01cb1fd41874650a30093e77ba73401dcce5534c8ad"
  end
  resource "pyobjc-framework-FileProviderUI" do
    url "https://files.pythonhosted.org/packages/e8/65/cc4397511bd0af91993d6302a2aed205296a9ad626146eefdfc8a9624219/pyobjc_framework_fileproviderui-12.1-py2.py3-none-any.whl"
    sha256 "521a914055089e28631018bd78df4c4f7416e98b4150f861d4a5bc97d5b1ffe4"
  end
  resource "pyobjc-framework-FinderSync" do
    url "https://files.pythonhosted.org/packages/6a/9f/ec7f393e3e2fd11cbdf930d884a0ba81078bdb61920b3cba4f264de8b446/pyobjc_framework_findersync-12.1-py2.py3-none-any.whl"
    sha256 "e07abeca52c486cf14927f617afc27afa7a3828b99fab3ad02355105fb29203e"
  end
  resource "pyobjc-framework-FSEvents" do
    url "https://files.pythonhosted.org/packages/43/17/21f45d2bca2efc72b975f2dfeae7a163dbeabb1236c1f188578403fd4f09/pyobjc_framework_fsevents-12.1.tar.gz"
    sha256 "a22350e2aa789dec59b62da869c1b494a429f8c618854b1383d6473f4c065a02"
  end
  resource "pyobjc-framework-FSKit" do
    url "https://files.pythonhosted.org/packages/a1/55/d00246d6e6d9756e129e1d94bc131c99eece2daa84b2696f6442b8a22177/pyobjc_framework_fskit-12.1.tar.gz"
    sha256 "ec54e941cdb0b7d800616c06ca76a93685bd7119b8aa6eb4e7a3ee27658fc7ba"
  end
  resource "pyobjc-framework-GameCenter" do
    url "https://files.pythonhosted.org/packages/d2/f8/b5fd86f6b722d4259228922e125b50e0a6975120a1c4d957e990fb84e42c/pyobjc_framework_gamecenter-12.1.tar.gz"
    sha256 "de4118f14c9cf93eb0316d49da410faded3609ce9cd63425e9ef878cebb7ea72"
  end
  resource "pyobjc-framework-GameController" do
    url "https://files.pythonhosted.org/packages/21/14/353bb1fe448cd833839fd199ab26426c0248088753e63c22fe19dc07530f/pyobjc_framework_gamecontroller-12.1.tar.gz"
    sha256 "64ed3cc4844b67f1faeb540c7cc8d512c84f70b3a4bafdb33d4663a2b2a2b1d8"
  end
  resource "pyobjc-framework-GameKit" do
    url "https://files.pythonhosted.org/packages/52/7b/d625c0937557f7e2e64200fdbeb867d2f6f86b2f148b8d6bfe085e32d872/pyobjc_framework_gamekit-12.1.tar.gz"
    sha256 "014d032c3484093f1409f8f631ba8a0fd2ff7a3ae23fd9d14235340889854c16"
  end
  resource "pyobjc-framework-GameplayKit" do
    url "https://files.pythonhosted.org/packages/e2/11/c310bbc2526f95cce662cc1f1359bb11e2458eab0689737b4850d0f6acb7/pyobjc_framework_gameplaykit-12.1.tar.gz"
    sha256 "935ebd806d802888969357946245d35a304c530c86f1ffe584e2cf21f0a608a8"
  end
  resource "pyobjc-framework-GameSave" do
    url "https://files.pythonhosted.org/packages/59/ec/93d48cb048a1b35cea559cc9261b07f0d410078b3af029121302faa410d0/pyobjc_framework_gamesave-12.1-py2.py3-none-any.whl"
    sha256 "432e69f8404be9290d42c89caba241a3156ed52013947978ac54f0f032a14ffd"
  end
  resource "pyobjc-framework-HealthKit" do
    url "https://files.pythonhosted.org/packages/af/67/436630d00ba1028ea33cc9df2fc28e081481433e5075600f2ea1ff00f45e/pyobjc_framework_healthkit-12.1.tar.gz"
    sha256 "29c5e5de54b41080b7a4b0207698ac6f600dcb9149becc9c6b3a69957e200e5c"
  end
  resource "pyobjc-framework-ImageCaptureCore" do
    url "https://files.pythonhosted.org/packages/6d/a1/39347381fc7d3cd5ab942d86af347b25c73f0ddf6f5227d8b4d8f5328016/pyobjc_framework_imagecapturecore-12.1.tar.gz"
    sha256 "c4776c59f4db57727389d17e1ffd9c567b854b8db52198b3ccc11281711074e5"
  end
  resource "pyobjc-framework-InputMethodKit" do
    url "https://files.pythonhosted.org/packages/5d/b8/d33dd8b7306029bbbd80525bf833fc547e6a223c494bf69a534487283a28/pyobjc_framework_inputmethodkit-12.1.tar.gz"
    sha256 "f63b6fe2fa7f1412eae63baea1e120e7865e3b68ccfb7d8b0a4aadb309f2b278"
  end
  resource "pyobjc-framework-InstallerPlugins" do
    url "https://files.pythonhosted.org/packages/99/1f/31dca45db3342882a628aa1b27707a283d4dc7ef558fddd2533175a0661a/pyobjc_framework_installerplugins-12.1-py2.py3-none-any.whl"
    sha256 "d2201c81b05bdbe0abf0af25db58dc230802573463bea322f8b2863e37b511d5"
  end
  resource "pyobjc-framework-InstantMessage" do
    url "https://files.pythonhosted.org/packages/c1/38/6ae95b5c87d887c075bd5f4f7cca3d21dafd0a77cfdde870e87ca17579eb/pyobjc_framework_instantmessage-12.1-py2.py3-none-any.whl"
    sha256 "cd91d38e8f356afd726b6ea8c235699316ea90edfd3472965c251efbf4150bc9"
  end
  resource "pyobjc-framework-Intents" do
    url "https://files.pythonhosted.org/packages/f1/a1/3bab6139e94b97eca098e1562f5d6840e3ff10ea1f7fd704a17111a97d5b/pyobjc_framework_intents-12.1.tar.gz"
    sha256 "bd688c3ab34a18412f56e459e9dae29e1f4152d3c2048fcacdef5fc49dfb9765"
  end
  resource "pyobjc-framework-IntentsUI" do
    url "https://files.pythonhosted.org/packages/19/cf/f0e385b9cfbf153d68efe8d19e5ae672b59acbbfc1f9b58faaefc5ec8c9e/pyobjc_framework_intentsui-12.1.tar.gz"
    sha256 "16bdf4b7b91c0d1ec9d5513a1182861f1b5b7af95d4f4218ff7cf03032d57f99"
  end
  resource "pyobjc-framework-IOBluetooth" do
    url "https://files.pythonhosted.org/packages/e4/aa/ca3944bbdfead4201b4ae6b51510942c5a7d8e5e2dc3139a071c74061fdf/pyobjc_framework_iobluetooth-12.1.tar.gz"
    sha256 "8a434118812f4c01dfc64339d41fe8229516864a59d2803e9094ee4cbe2b7edd"
  end
  resource "pyobjc-framework-IOBluetoothUI" do
    url "https://files.pythonhosted.org/packages/e3/c9/69aeda0cdb5d25d30dc4596a1c5b464fc81b5c0c4e28efc54b7e11bde51c/pyobjc_framework_iobluetoothui-12.1-py2.py3-none-any.whl"
    sha256 "a6d8ab98efa3029130577a57ee96b183c35c39b0f1c53a7534f8838260fab993"
  end
  resource "pyobjc-framework-IOSurface" do
    url "https://files.pythonhosted.org/packages/88/ad/793d98a7ed9b775dc8cce54144cdab0df1808a1960ee017e46189291a8f3/pyobjc_framework_iosurface-12.1-py2.py3-none-any.whl"
    sha256 "e784e248397cfebef4655d2c0025766d3eaa4a70474e363d084fc5ce2a4f2a3f"
  end
  resource "pyobjc-framework-iTunesLibrary" do
    url "https://files.pythonhosted.org/packages/de/92/b598694a1713ee46f45c4bfb1a0425082253cbd2b1caf9f8fd50f292b017/pyobjc_framework_ituneslibrary-12.1-py2.py3-none-any.whl"
    sha256 "fb678d7c3ff14c81672e09c015e25880dac278aa819971f4d5f75d46465932ef"
  end
  resource "pyobjc-framework-KernelManagement" do
    url "https://files.pythonhosted.org/packages/94/32/04325a20f39d88d6d712437e536961a9e6a4ec19f204f241de6ed54d1d84/pyobjc_framework_kernelmanagement-12.1-py2.py3-none-any.whl"
    sha256 "926381bfbfbc985c3e6dfcb7004af21bb16ff66ecbc08912b925989a705944ff"
  end
  resource "pyobjc-framework-LatentSemanticMapping" do
    url "https://files.pythonhosted.org/packages/29/8e/74a7eb29b545f294485cd3cf70557b4a35616555fe63021edbb3e0ea4c20/pyobjc_framework_latentsemanticmapping-12.1-py2.py3-none-any.whl"
    sha256 "7d760213b42bc8b1bc1472e1873c0f78ee80f987225978837b1fecdceddbdbf4"
  end
  resource "pyobjc-framework-LaunchServices" do
    url "https://files.pythonhosted.org/packages/08/af/9a0aebaab4c15632dc8fcb3669c68fa541a3278d99541d9c5f966fbc0909/pyobjc_framework_launchservices-12.1-py2.py3-none-any.whl"
    sha256 "e63e78fceeed4d4dc807f9dabd5cf90407e4f552fab6a0d75a8d0af63094ad3c"
  end
  resource "pyobjc-framework-libdispatch" do
    url "https://files.pythonhosted.org/packages/26/e8/75b6b9b3c88b37723c237e5a7600384ea2d84874548671139db02e76652b/pyobjc_framework_libdispatch-12.1.tar.gz"
    sha256 "4035535b4fae1b5e976f3e0e38b6e3442ffea1b8aa178d0ca89faa9b8ecdea41"
  end
  resource "pyobjc-framework-libxpc" do
    url "https://files.pythonhosted.org/packages/16/e4/364db7dc26f235e3d7eaab2f92057f460b39800bffdec3128f113388ac9f/pyobjc_framework_libxpc-12.1.tar.gz"
    sha256 "e46363a735f3ecc9a2f91637750623f90ee74f9938a4e7c833e01233174af44d"
  end
  resource "pyobjc-framework-LinkPresentation" do
    url "https://files.pythonhosted.org/packages/ad/51/226eb45f196f3bf93374713571aae6c8a4760389e1d9435c4a4cc3f38ea4/pyobjc_framework_linkpresentation-12.1-py2.py3-none-any.whl"
    sha256 "853a84c7b525b77b114a7a8d798aef83f528ed3a6803bda12184fe5af4e79a47"
  end
  resource "pyobjc-framework-LocalAuthentication" do
    url "https://files.pythonhosted.org/packages/8d/0e/7e5d9a58bb3d5b79a75d925557ef68084171526191b1c0929a887a553d4f/pyobjc_framework_localauthentication-12.1.tar.gz"
    sha256 "2284f587d8e1206166e4495b33f420c1de486c36c28c4921d09eec858a699d05"
  end
  resource "pyobjc-framework-LocalAuthenticationEmbeddedUI" do
    url "https://files.pythonhosted.org/packages/30/7d/0d46639c7a26b6af928ab4c822cd28b733791e02ac28cc84c3014bcf7dc7/pyobjc_framework_localauthenticationembeddedui-12.1-py2.py3-none-any.whl"
    sha256 "a7ce7b56346597b9f4768be61938cbc8fc5b1292137225b6c7f631b9cde97cd7"
  end
  resource "pyobjc-framework-MailKit" do
    url "https://files.pythonhosted.org/packages/70/8d/3c968b736a3a8bd9d8e870b39b1c772a013eea1b81b89fc4efad9021a6cb/pyobjc_framework_mailkit-12.1-py2.py3-none-any.whl"
    sha256 "536ac0c4ea3560364cd159a6512c3c18a744a12e4e0883c07df0f8a2ff21e3fe"
  end
  resource "pyobjc-framework-MapKit" do
    url "https://files.pythonhosted.org/packages/36/bb/2a668203c20e509a648c35e803d79d0c7f7816dacba74eb5ad8acb186790/pyobjc_framework_mapkit-12.1.tar.gz"
    sha256 "dbc32dc48e821aaa9b4294402c240adbc1c6834e658a07677b7c19b7990533c5"
  end
  resource "pyobjc-framework-MediaAccessibility" do
    url "https://files.pythonhosted.org/packages/a2/0c/7fb5462561f59d739192c6d02ba0fd36ad7841efac5a8398a85a030ef7fc/pyobjc_framework_mediaaccessibility-12.1-py2.py3-none-any.whl"
    sha256 "2ff8845c97dd52b0e5cf53990291e6d77c8a73a7aac0e9235d62d9a4256916d1"
  end
  resource "pyobjc-framework-MediaExtension" do
    url "https://files.pythonhosted.org/packages/d6/aa/1e8015711df1cdb5e4a0aa0ed4721409d39971ae6e1e71915e3ab72423a3/pyobjc_framework_mediaextension-12.1.tar.gz"
    sha256 "44409d63cc7d74e5724a68e3f9252cb62fd0fd3ccf0ca94c6a33e5c990149953"
  end
  resource "pyobjc-framework-MediaLibrary" do
    url "https://files.pythonhosted.org/packages/c2/cd/eeaf8585a343fda5b8cf3b8f144c872d1057c845202098b9441a39b76cb0/pyobjc_framework_medialibrary-12.1-py2.py3-none-any.whl"
    sha256 "1f03ad6802a5c6e19ee3208b065689d3ec79defe1052cb80e00f54e1eff5f2a0"
  end
  resource "pyobjc-framework-MediaPlayer" do
    url "https://files.pythonhosted.org/packages/58/c0/038ee3efd286c0fbc89c1e0cb688f4670ed0e5803aa36e739e79ffc91331/pyobjc_framework_mediaplayer-12.1-py2.py3-none-any.whl"
    sha256 "85d9baec131807bfdf0f4c24d4b943e83cce806ab31c95c7e19c78e3fb7eefc8"
  end
  resource "pyobjc-framework-MediaToolbox" do
    url "https://files.pythonhosted.org/packages/a3/71/be5879380a161f98212a336b432256f307d1dcbaaaeb8ec988aea2ada2cd/pyobjc_framework_mediatoolbox-12.1.tar.gz"
    sha256 "385b48746a5f08756ee87afc14037e552954c427ed5745d7ece31a21a7bad5ab"
  end
  resource "pyobjc-framework-Metal" do
    url "https://files.pythonhosted.org/packages/e7/06/a84f7eb8561d5631954b9458cfca04b690b80b5b85ce70642bc89335f52a/pyobjc_framework_metal-12.1.tar.gz"
    sha256 "bb554877d5ee2bf3f340ad88e8fe1b85baab7b5ec4bd6ae0f4f7604147e3eae7"
  end
  resource "pyobjc-framework-MetalFX" do
    url "https://files.pythonhosted.org/packages/f1/09/ce5c74565677fde66de3b9d35389066b19e5d1bfef9d9a4ad80f0c858c0c/pyobjc_framework_metalfx-12.1.tar.gz"
    sha256 "1551b686fb80083a97879ce0331bdb1d4c9b94557570b7ecc35ebf40ff65c90b"
  end
  resource "pyobjc-framework-MetalKit" do
    url "https://files.pythonhosted.org/packages/14/15/5091147aae12d4011a788b93971c3376aaaf9bf32aa935a2c9a06a71e18b/pyobjc_framework_metalkit-12.1.tar.gz"
    sha256 "14cc5c256f0e3471b412a5b3582cb2a0d36d3d57401a8aa09e433252d1c34824"
  end
  resource "pyobjc-framework-MetalPerformanceShaders" do
    url "https://files.pythonhosted.org/packages/c5/68/58da38e54aa0d8c19f0d3084d8c84e92d54cc8c9254041f07119d86aa073/pyobjc_framework_metalperformanceshaders-12.1.tar.gz"
    sha256 "b198e755b95a1de1525e63c3b14327ae93ef1d88359e6be1ce554a3493755b50"
  end
  resource "pyobjc-framework-MetalPerformanceShadersGraph" do
    url "https://files.pythonhosted.org/packages/e2/c9/5e7fd0d4bc9bdf7b442f36e020677c721ba9b4c1dc1fa3180085f22a4ef9/pyobjc_framework_metalperformanceshadersgraph-12.1-py2.py3-none-any.whl"
    sha256 "85a1c7a6114ada05c7924b3235a1a98c45359410d148097488f15aee5ebb6ab9"
  end
  resource "pyobjc-framework-MetricKit" do
    url "https://files.pythonhosted.org/packages/ba/13/5576ddfbc0b174810a49171e2dbe610bdafd3b701011c6ecd9b3a461de8a/pyobjc_framework_metrickit-12.1.tar.gz"
    sha256 "77841daf6b36ba0c19df88545fd910c0516acf279e6b7b4fa0a712a046eaa9f1"
  end
  resource "pyobjc-framework-MLCompute" do
    url "https://files.pythonhosted.org/packages/ac/f7/4614b9ccd0151795e328b9ed881fbcbb13e577a8ec4ae3507edb1a462731/pyobjc_framework_mlcompute-12.1-py2.py3-none-any.whl"
    sha256 "4f0fc19551d710a03dfc4c7129299897544ff8ea76db6c7539ecc2f9b2571bde"
  end
  resource "pyobjc-framework-ModelIO" do
    url "https://files.pythonhosted.org/packages/b4/11/32c358111b623b4a0af9e90470b198fffc068b45acac74e1ba711aee7199/pyobjc_framework_modelio-12.1.tar.gz"
    sha256 "d041d7bca7c2a4526344d3e593347225b7a2e51a499b3aa548895ba516d1bdbb"
  end
  resource "pyobjc-framework-MultipeerConnectivity" do
    url "https://files.pythonhosted.org/packages/87/35/0d0bb6881004cb238cfd7bf74f4b2e42601a1accdf27b2189ec61cf3a2dc/pyobjc_framework_multipeerconnectivity-12.1.tar.gz"
    sha256 "7123f734b7174cacbe92a51a62b4645cc9033f6b462ff945b504b62e1b9e6c1c"
  end
  resource "pyobjc-framework-NaturalLanguage" do
    url "https://files.pythonhosted.org/packages/ec/d8/715a11111f76c80769cb267a19ecf2a4ac76152a6410debb5a4790422256/pyobjc_framework_naturallanguage-12.1-py2.py3-none-any.whl"
    sha256 "a02ef383ec88948ca28f03ab8995523726b3bc75c49f593b5c89c218bcbce7ce"
  end
  resource "pyobjc-framework-NetFS" do
    url "https://files.pythonhosted.org/packages/7e/6b/8c2f223879edd3e3f030d0a9c9ba812775519c6d0c257e3e7255785ca6e7/pyobjc_framework_netfs-12.1-py2.py3-none-any.whl"
    sha256 "0021f8b141e693d3821524c170e9c645090eb320e80c2935ddb978a6e8b8da81"
  end
  resource "pyobjc-framework-Network" do
    url "https://files.pythonhosted.org/packages/38/13/a71270a1b0a9ec979e68b8ec84b0f960e908b17b51cb3cac246a74d52b6b/pyobjc_framework_network-12.1.tar.gz"
    sha256 "dbf736ff84d1caa41224e86ff84d34b4e9eb6918ae4e373a44d3cb597648a16a"
  end
  resource "pyobjc-framework-NetworkExtension" do
    url "https://files.pythonhosted.org/packages/bf/3e/ac51dbb2efa16903e6af01f3c1f5a854c558661a7a5375c3e8767ac668e8/pyobjc_framework_networkextension-12.1.tar.gz"
    sha256 "36abc339a7f214ab6a05cb2384a9df912f247163710741e118662bd049acfa2e"
  end
  resource "pyobjc-framework-NotificationCenter" do
    url "https://files.pythonhosted.org/packages/c6/12/ae0fe82fb1e02365c9fe9531c9de46322f7af09e3659882212c6bf24d75e/pyobjc_framework_notificationcenter-12.1.tar.gz"
    sha256 "2d09f5ab9dc39770bae4fa0c7cfe961e6c440c8fc465191d403633dccc941094"
  end
  resource "pyobjc-framework-OpenDirectory" do
    url "https://files.pythonhosted.org/packages/d6/e7/3c2dece9c5b28af28a44d72a27b35ea5ffac31fed7cbd8d696ea75dc4a81/pyobjc_framework_opendirectory-12.1-py2.py3-none-any.whl"
    sha256 "b5b5a5cf3cc2fb25147b16b79f046b90e3982bf3ded1b210a993d8cfdba737c4"
  end
  resource "pyobjc-framework-OSAKit" do
    url "https://files.pythonhosted.org/packages/99/10/30a15d7b23e6fcfa63d41ca4c7356c39ff81300249de89c3ff28216a9790/pyobjc_framework_osakit-12.1-py2.py3-none-any.whl"
    sha256 "c49165336856fd75113d2e264a98c6deb235f1bd033eae48f661d4d832d85e6b"
  end
  resource "pyobjc-framework-OSLog" do
    url "https://files.pythonhosted.org/packages/12/42/805c9b4ac6ad25deb4215989d8fc41533d01e07ffd23f31b65620bade546/pyobjc_framework_oslog-12.1.tar.gz"
    sha256 "d0ec6f4e3d1689d5e4341bc1130c6f24cb4ad619939f6c14d11a7e80c0ac4553"
  end
  resource "pyobjc-framework-PassKit" do
    url "https://files.pythonhosted.org/packages/6c/d4/2afb59fb0f99eb2f03888850887e536f1ef64b303fd756283679471a5189/pyobjc_framework_passkit-12.1.tar.gz"
    sha256 "d8c27c352e86a3549bf696504e6b25af5f2134b173d9dd60d66c6d3da53bb078"
  end
  resource "pyobjc-framework-PencilKit" do
    url "https://files.pythonhosted.org/packages/e8/26/daf47dcfced8f7326218dced5c68ed2f3b522ec113329218ce1305809535/pyobjc_framework_pencilkit-12.1-py2.py3-none-any.whl"
    sha256 "33b88e5ed15724a12fd8bf27a68614b654ff739d227e81161298bc0d03acca4f"
  end
  resource "pyobjc-framework-PHASE" do
    url "https://files.pythonhosted.org/packages/ae/9f/1ae45db731e8d6dd3e0b408c3accd0cf3236849e671f95c7c8cf95687240/pyobjc_framework_phase-12.1-py2.py3-none-any.whl"
    sha256 "99a1c1efc6644f5312cce3693117d4e4482538f65ad08fe59e41e2579b67ab17"
  end
  resource "pyobjc-framework-Photos" do
    url "https://files.pythonhosted.org/packages/b8/53/f8a3dc7f711034d2283e289cd966fb7486028ea132a24260290ff32d3525/pyobjc_framework_photos-12.1.tar.gz"
    sha256 "adb68aaa29e186832d3c36a0b60b0592a834e24c5263e9d78c956b2b77dce563"
  end
  resource "pyobjc-framework-PhotosUI" do
    url "https://files.pythonhosted.org/packages/40/a5/14c538828ed1a420e047388aedc4a2d7d9292030d81bf6b1ced2ec27b6e9/pyobjc_framework_photosui-12.1.tar.gz"
    sha256 "9141234bb9d17687f1e8b66303158eccdd45132341fbe5e892174910035f029a"
  end
  resource "pyobjc-framework-PreferencePanes" do
    url "https://files.pythonhosted.org/packages/36/7b/8ceec1ab0446224d685e243e2770c5a5c92285bcab0b9324dbe7a893ae5a/pyobjc_framework_preferencepanes-12.1-py2.py3-none-any.whl"
    sha256 "1b3af9db9e0cfed8db28c260b2cf9a22c15fda5f0ff4c26157b17f99a0e29bbf"
  end
  resource "pyobjc-framework-PushKit" do
    url "https://files.pythonhosted.org/packages/a9/45/de756b62709add6d0615f86e48291ee2bee40223e7dde7bbe68a952593f0/pyobjc_framework_pushkit-12.1.tar.gz"
    sha256 "829a2fc8f4780e75fc2a41217290ee0ff92d4ade43c42def4d7e5af436d8ae82"
  end
  resource "pyobjc-framework-Quartz" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/4a/00/96249c5c7e5aaca5f688ca18b8d8ad05cd7886ebd639b3c71a6a4cadbe75/pyobjc_framework_quartz-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "42d306b07f05ae7d155984503e0fb1b701fecd31dcc5c79fe8ab9790ff7e0de0"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/4a/00/96249c5c7e5aaca5f688ca18b8d8ad05cd7886ebd639b3c71a6a4cadbe75/pyobjc_framework_quartz-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "42d306b07f05ae7d155984503e0fb1b701fecd31dcc5c79fe8ab9790ff7e0de0"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/94/18/cc59f3d4355c9456fc945eae7fe8797003c4da99212dd531ad1b0de8a0c6/pyobjc_framework_quartz-12.1.tar.gz"
      sha256 "27f782f3513ac88ec9b6c82d9767eef95a5cf4175ce88a1e5a65875fee799608"
    else
      url "https://files.pythonhosted.org/packages/94/18/cc59f3d4355c9456fc945eae7fe8797003c4da99212dd531ad1b0de8a0c6/pyobjc_framework_quartz-12.1.tar.gz"
      sha256 "27f782f3513ac88ec9b6c82d9767eef95a5cf4175ce88a1e5a65875fee799608"
    end
  end
  resource "pyobjc-framework-QuickLookThumbnailing" do
    url "https://files.pythonhosted.org/packages/1e/22/7bd07b5b44bf8540514a9f24bc46da68812c1fd6c63bb2d3496e5ea44bf0/pyobjc_framework_quicklookthumbnailing-12.1-py2.py3-none-any.whl"
    sha256 "5efe50b0318188b3a4147681788b47fce64709f6fe0e1b5d020e408ef40ab08e"
  end
  resource "pyobjc-framework-ReplayKit" do
    url "https://files.pythonhosted.org/packages/35/f8/b92af879734d91c1726227e7a03b9e68ab8d9d2bb1716d1a5c29254087f2/pyobjc_framework_replaykit-12.1.tar.gz"
    sha256 "95801fd35c329d7302b2541f2754e6574bf36547ab869fbbf41e408dfa07268a"
  end
  resource "pyobjc-framework-SafariServices" do
    url "https://files.pythonhosted.org/packages/3e/4b/8f896bafbdbfa180a5ba1e21a6f5dc63150c09cba69d85f68708e02866ae/pyobjc_framework_safariservices-12.1.tar.gz"
    sha256 "6a56f71c1e692bca1f48fe7c40e4c5a41e148b4e3c6cfb185fd80a4d4a951897"
  end
  resource "pyobjc-framework-SafetyKit" do
    url "https://files.pythonhosted.org/packages/f4/bf/ad6bf60ceb61614c9c9f5758190971e9b90c45b1c7a244e45db64138b6c2/pyobjc_framework_safetykit-12.1.tar.gz"
    sha256 "0cd4850659fb9b5632fd8ad21f2de6863e8303ff0d51c5cc9c0034aac5db08d8"
  end
  resource "pyobjc-framework-SceneKit" do
    url "https://files.pythonhosted.org/packages/94/8c/1f4005cf0cb68f84dd98b93bbc0974ee7851bb33d976791c85e042dc2278/pyobjc_framework_scenekit-12.1.tar.gz"
    sha256 "1bd5b866f31fd829f26feac52e807ed942254fd248115c7c742cfad41d949426"
  end
  resource "pyobjc-framework-ScreenCaptureKit" do
    url "https://files.pythonhosted.org/packages/2d/7f/73458db1361d2cb408f43821a1e3819318a0f81885f833d78d93bdc698e0/pyobjc_framework_screencapturekit-12.1.tar.gz"
    sha256 "50992c6128b35ab45d9e336f0993ddd112f58b8c8c8f0892a9cb42d61bd1f4c9"
  end
  resource "pyobjc-framework-ScreenSaver" do
    url "https://files.pythonhosted.org/packages/7d/99/7cfbce880cea61253a44eed594dce66c2b2fbf29e37eaedcd40cffa949e9/pyobjc_framework_screensaver-12.1.tar.gz"
    sha256 "c4ca111317c5a3883b7eace0a9e7dd72bc6ffaa2ca954bdec918c3ab7c65c96f"
  end
  resource "pyobjc-framework-ScreenTime" do
    url "https://files.pythonhosted.org/packages/27/06/904174de6170e11b53673cc5844e5f13394eeeed486e0bcdf5288c1b0853/pyobjc_framework_screentime-12.1-py2.py3-none-any.whl"
    sha256 "d34a068ec8ba2704987fcd05c37c9a9392de61d92933e6e71c8e4eaa4dfce029"
  end
  resource "pyobjc-framework-ScriptingBridge" do
    url "https://files.pythonhosted.org/packages/0c/cb/adc0a09e8c4755c2281bd12803a87f36e0832a8fc853a2d663433dbb72ce/pyobjc_framework_scriptingbridge-12.1.tar.gz"
    sha256 "0e90f866a7e6a8aeaf723d04c826657dd528c8c1b91e7a605f8bb947c74ad082"
  end
  resource "pyobjc-framework-SearchKit" do
    url "https://files.pythonhosted.org/packages/72/46/4f9cd3011f47b43b21b2924ab3770303c3f0a4d16f05550d38c5fcb42e78/pyobjc_framework_searchkit-12.1-py2.py3-none-any.whl"
    sha256 "844ce62b7296b19da8db7dedd539d07f7b3fb3bb8b029c261f7bcf0e01a97758"
  end
  resource "pyobjc-framework-Security" do
    url "https://files.pythonhosted.org/packages/80/aa/796e09a3e3d5cee32ebeebb7dcf421b48ea86e28c387924608a05e3f668b/pyobjc_framework_security-12.1.tar.gz"
    sha256 "7fecb982bd2f7c4354513faf90ba4c53c190b7e88167984c2d0da99741de6da9"
  end
  resource "pyobjc-framework-SecurityFoundation" do
    url "https://files.pythonhosted.org/packages/93/1e/349fb71a413b37b1b41e712c7ca180df82144478f8a9a59497d66d0f2ea2/pyobjc_framework_securityfoundation-12.1-py2.py3-none-any.whl"
    sha256 "579cf23e63434226f78ffe0afb8426e971009588e4ad812c478d47dfd558201c"
  end
  resource "pyobjc-framework-SecurityInterface" do
    url "https://files.pythonhosted.org/packages/f9/64/bf5b5d82655112a2314422ee649f1e1e73d4381afa87e1651ce7e8444694/pyobjc_framework_securityinterface-12.1.tar.gz"
    sha256 "deef11ad03be8d9ff77db6e7ac40f6b641ee2d72eaafcf91040537942472e88b"
  end
  resource "pyobjc-framework-SecurityUI" do
    url "https://files.pythonhosted.org/packages/36/7f/eff9ffdd34511cc95a60e5bd62f1cfbcbcec1a5012ef1168161506628c87/pyobjc_framework_securityui-12.1-py2.py3-none-any.whl"
    sha256 "3e988b83c9a2bb0393207eaa030fc023a8708a975ac5b8ea0508cdafc2b60705"
  end
  resource "pyobjc-framework-SensitiveContentAnalysis" do
    url "https://files.pythonhosted.org/packages/95/23/c99568a0d4e38bd8337d52e4ae25a0b0bd540577f2e06f3430c951d73209/pyobjc_framework_sensitivecontentanalysis-12.1-py2.py3-none-any.whl"
    sha256 "faf19d32d4599ac2b18fb1ccdc3e33b2b242bdf34c02e69978bd62d3643ad068"
  end
  resource "pyobjc-framework-ServiceManagement" do
    url "https://files.pythonhosted.org/packages/ee/5d/1009c32189f9cb26da0124b4a60640ed26dd8ad453810594f0cbfab0ff70/pyobjc_framework_servicemanagement-12.1-py2.py3-none-any.whl"
    sha256 "9a2941f16eeb71e55e1cd94f50197f91520778c7f48ad896761f5e78725cc08f"
  end
  resource "pyobjc-framework-SharedWithYou" do
    url "https://files.pythonhosted.org/packages/0f/8b/8ab209a143c11575a857e2111acc5427fb4986b84708b21324cbcbf5591b/pyobjc_framework_sharedwithyou-12.1.tar.gz"
    sha256 "167d84794a48f408ee51f885210c616fda1ec4bff3dd8617a4b5547f61b05caf"
  end
  resource "pyobjc-framework-SharedWithYouCore" do
    url "https://files.pythonhosted.org/packages/55/ef/84059c5774fd5435551ab7ab40b51271cfb9997b0d21f491c6b429fe57a8/pyobjc_framework_sharedwithyoucore-12.1.tar.gz"
    sha256 "0813149eeb755d718b146ec9365eb4ca3262b6af9ff9ba7db2f7b6f4fd104518"
  end
  resource "pyobjc-framework-ShazamKit" do
    url "https://files.pythonhosted.org/packages/ed/2c/8d82c5066cc376de68ad8c1454b7c722c7a62215e5c2f9dac5b33a6c3d42/pyobjc_framework_shazamkit-12.1.tar.gz"
    sha256 "71db2addd016874639a224ed32b2000b858802b0370c595a283cce27f76883fe"
  end
  resource "pyobjc-framework-Social" do
    url "https://files.pythonhosted.org/packages/f6/fb/090867e332d49a1e492e4b8972ac6034d1c7d17cf39f546077f35be58c46/pyobjc_framework_social-12.1-py2.py3-none-any.whl"
    sha256 "2f3b36ba5769503b1bc945f85fd7b255d42d7f6e417d78567507816502ff2b44"
  end
  resource "pyobjc-framework-SoundAnalysis" do
    url "https://files.pythonhosted.org/packages/53/d3/8df5183d52d20d459225d3f5d24f55e01b8cd9fe587ed972e3f20dd18709/pyobjc_framework_soundanalysis-12.1-py2.py3-none-any.whl"
    sha256 "8b2029ab48c1a9772f247f0aea995e8c3ff4706909002a9c1551722769343a52"
  end
  resource "pyobjc-framework-Speech" do
    url "https://files.pythonhosted.org/packages/8d/3d/194cf19fe7a56c2be5dfc28f42b3b597a62ebb1e1f52a7dd9c55b917ac6c/pyobjc_framework_speech-12.1.tar.gz"
    sha256 "2a2a546ba6c52d5dd35ddcfee3fd9226a428043d1719597e8701851a6566afdd"
  end
  resource "pyobjc-framework-SpriteKit" do
    url "https://files.pythonhosted.org/packages/b6/78/d683ebe0afb49f46d2d21d38c870646e7cb3c2e83251f264e79d357b1b74/pyobjc_framework_spritekit-12.1.tar.gz"
    sha256 "a851f4ef5aa65cc9e08008644a528e83cb31021a1c0f17ebfce4de343764d403"
  end
  resource "pyobjc-framework-StoreKit" do
    url "https://files.pythonhosted.org/packages/00/87/8a66a145feb026819775d44975c71c1c64df4e5e9ea20338f01456a61208/pyobjc_framework_storekit-12.1.tar.gz"
    sha256 "818452e67e937a10b5c8451758274faa44ad5d4329df0fa85735115fb0608da9"
  end
  resource "pyobjc-framework-Symbols" do
    url "https://files.pythonhosted.org/packages/f0/ea/6e9af9c750d68109ac54fbffb5463e33a7b54ffe8b9901a5b6b603b7884b/pyobjc_framework_symbols-12.1-py2.py3-none-any.whl"
    sha256 "c72eecbc25f6bfcd39c733067276270057c5aca684be20fdc56def645f2b6446"
  end
  resource "pyobjc-framework-SyncServices" do
    url "https://files.pythonhosted.org/packages/21/91/6d03a988831ddb0fb001b13573560e9a5bcccde575b99350f98fe56a2dd4/pyobjc_framework_syncservices-12.1.tar.gz"
    sha256 "6a213e93d9ce15128810987e4c5de8c73cfab1564ac8d273e6b437a49965e976"
  end
  resource "pyobjc-framework-SystemConfiguration" do
    url "https://files.pythonhosted.org/packages/90/7d/50848df8e1c6b5e13967dee9fb91d3391fe1f2399d2d0797d2fc5edb32ba/pyobjc_framework_systemconfiguration-12.1.tar.gz"
    sha256 "90fe04aa059876a21626931c71eaff742a27c79798a46347fd053d7008ec496e"
  end
  resource "pyobjc-framework-SystemExtensions" do
    url "https://files.pythonhosted.org/packages/12/01/8a706cd3f7dfcb9a5017831f2e6f9e5538298e90052db3bb8163230cbc4f/pyobjc_framework_systemextensions-12.1.tar.gz"
    sha256 "243e043e2daee4b5c46cd90af5fff46b34596aac25011bab8ba8a37099685eeb"
  end
  resource "pyobjc-framework-ThreadNetwork" do
    url "https://files.pythonhosted.org/packages/4f/b8/94b37dd353302c051a76f1a698cf55b5ad50ca061db7f0f332aa9e195766/pyobjc_framework_threadnetwork-12.1-py2.py3-none-any.whl"
    sha256 "07d937748fc54199f5ec04d5a408e8691a870481c11b641785c2adc279dd8e4b"
  end
  resource "pyobjc-framework-UniformTypeIdentifiers" do
    url "https://files.pythonhosted.org/packages/4e/5f/1f10f5275b06d213c9897850f1fca9c881c741c1f9190cea6db982b71824/pyobjc_framework_uniformtypeidentifiers-12.1-py2.py3-none-any.whl"
    sha256 "ec5411e39152304d2a7e0e426c3058fa37a00860af64e164794e0bcffee813f2"
  end
  resource "pyobjc-framework-UserNotifications" do
    url "https://files.pythonhosted.org/packages/90/cd/e0253072f221fa89a42fe53f1a2650cc9bf415eb94ae455235bd010ee12e/pyobjc_framework_usernotifications-12.1.tar.gz"
    sha256 "019ccdf2d400f9a428769df7dba4ea97c02453372bc5f8b75ce7ae54dfe130f9"
  end
  resource "pyobjc-framework-UserNotificationsUI" do
    url "https://files.pythonhosted.org/packages/23/c8/52ac8a879079c1fbf25de8335ff506f7db87ff61e64838b20426f817f5d5/pyobjc_framework_usernotificationsui-12.1-py2.py3-none-any.whl"
    sha256 "11af59dc5abfcb72c08769ab4d7ca32a628527a8ba341786431a0d2dacf31605"
  end
  resource "pyobjc-framework-VideoSubscriberAccount" do
    url "https://files.pythonhosted.org/packages/41/ca/e2f982916267508c1594f1e50d27bf223a24f55a5e175ab7d7822a00997c/pyobjc_framework_videosubscriberaccount-12.1-py2.py3-none-any.whl"
    sha256 "381a5e8a3016676e52b88e38b706559fa09391d33474d8a8a52f20a883104a7b"
  end
  resource "pyobjc-framework-VideoToolbox" do
    url "https://files.pythonhosted.org/packages/b3/5f/6995ee40dc0d1a3460ee183f696e5254c0ad14a25b5bc5fd9bd7266c077b/pyobjc_framework_videotoolbox-12.1.tar.gz"
    sha256 "7adc8670f3b94b086aed6e86c3199b388892edab4f02933c2e2d9b1657561bef"
  end
  resource "pyobjc-framework-Virtualization" do
    url "https://files.pythonhosted.org/packages/3b/6a/9d110b5521d9b898fad10928818c9f55d66a4af9ac097426c65a9878b095/pyobjc_framework_virtualization-12.1.tar.gz"
    sha256 "e96afd8e801e92c6863da0921e40a3b68f724804f888bce43791330658abdb0f"
  end
  resource "pyobjc-framework-Vision" do
    if OS.mac? && Hardware::CPU.arm?
      url "https://files.pythonhosted.org/packages/a7/a4/ee1ef14d6e1df6617e64dbaaa0ecf8ecb9e0af1425613fa633f6a94049c1/pyobjc_framework_vision-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "631add775ed1dafb221a6116137cdcd78432addc16200ca434571c2a039c0e03"
    elsif OS.mac? && Hardware::CPU.intel?
      url "https://files.pythonhosted.org/packages/a7/a4/ee1ef14d6e1df6617e64dbaaa0ecf8ecb9e0af1425613fa633f6a94049c1/pyobjc_framework_vision-12.1-cp314-cp314-macosx_10_15_universal2.whl"
      sha256 "631add775ed1dafb221a6116137cdcd78432addc16200ca434571c2a039c0e03"
    elsif OS.linux?
      url "https://files.pythonhosted.org/packages/c2/5a/08bb3e278f870443d226c141af14205ff41c0274da1e053b72b11dfc9fb2/pyobjc_framework_vision-12.1.tar.gz"
      sha256 "a30959100e85dcede3a786c544e621ad6eb65ff6abf85721f805822b8c5fe9b0"
    else
      url "https://files.pythonhosted.org/packages/c2/5a/08bb3e278f870443d226c141af14205ff41c0274da1e053b72b11dfc9fb2/pyobjc_framework_vision-12.1.tar.gz"
      sha256 "a30959100e85dcede3a786c544e621ad6eb65ff6abf85721f805822b8c5fe9b0"
    end
  end
  resource "pyobjc-framework-WebKit" do
    url "https://files.pythonhosted.org/packages/14/10/110a50e8e6670765d25190ca7f7bfeecc47ec4a8c018cb928f4f82c56e04/pyobjc_framework_webkit-12.1.tar.gz"
    sha256 "97a54dd05ab5266bd4f614e41add517ae62cdd5a30328eabb06792474b37d82a"
  end
  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/e9/44/75a9c9421471a6c4805dbf2356f7c181a29c1879239abab1ea2cc8f38b40/sniffio-1.3.1-py3-none-any.whl"
    sha256 "2f6da418d1f1e0fddd844478f41680e794e6051915791a034ff65e5f100525a2"
  end
  resource "tqdm" do
    url "https://files.pythonhosted.org/packages/16/e1/3079a9ff9b8e11b846c6ac5c8b5bfb7ff225eee721825310c91b3b50304f/tqdm-4.67.3-py3-none-any.whl"
    sha256 "ee1e4c0e59148062281c49d80b25b67771a127c85fc9676d3be5f243206826bf"
  end
  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/18/67/36e9267722cc04a6b9f15c7f3441c2363321a3ea07da7ae0c0707beb2a9c/typing_extensions-4.15.0-py3-none-any.whl"
    sha256 "f0fa19c6845758ab08074a0cfa8b7aecb71c999ca73d62883bc25cc018c4e548"
  end
  resource "typing-inspection" do
    url "https://files.pythonhosted.org/packages/dc/9b/47798a6c91d8bdb567fe2698fe81e0c6b7cb7ef4d13da4114b41d239f65d/typing_inspection-0.4.2-py3-none-any.whl"
    sha256 "4ed1cacbdc298c220f1bd249ed5287caa16f34d44ef4e9c3d0cbad5b521545e7"
  end

  def install
    venv = virtualenv_create(libexec, "python3.14")

    resource("annotated-types").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("anyio").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("certifi").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("distro").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("h11").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("httpcore").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("httpx").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("idna").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("jiter").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("openai").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pillow").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pydantic").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pydantic-core").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname(Dir["*.whl"].first)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-core").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Accessibility").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Accounts").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AddressBook").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AdServices").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AdSupport").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AppleScriptKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AppleScriptObjC").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ApplicationServices").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AppTrackingTransparency").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ARKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AudioVideoBridging").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AuthenticationServices").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AutomaticAssessmentConfiguration").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Automator").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AVFoundation").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AVKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-AVRouting").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-BackgroundAssets").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-BrowserEngineKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-BusinessChat").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CalendarStore").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CallKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Carbon").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CFNetwork").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Cinematic").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ClassKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CloudKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Cocoa").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Collaboration").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ColorSync").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CompositorServices").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Contacts").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ContactsUI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreAudio").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreAudioKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreBluetooth").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreData").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreHaptics").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreLocation").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreMedia").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreMediaIO").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreMIDI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreML").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreMotion").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreServices").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreSpotlight").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreText").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CoreWLAN").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-CryptoTokenKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DataDetection").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DeviceCheck").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DeviceDiscoveryExtension").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DictionaryServices").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DiscRecording").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DiscRecordingUI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DiskArbitration").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-DVDPlayback").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-EventKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ExceptionHandling").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ExecutionPolicy").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ExtensionKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ExternalAccessory").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-FileProvider").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-FileProviderUI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-FinderSync").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-FSEvents").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-FSKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-GameCenter").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-GameController").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-GameKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-GameplayKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-GameSave").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-HealthKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ImageCaptureCore").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-InputMethodKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-InstallerPlugins").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-InstantMessage").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Intents").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-IntentsUI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-IOBluetooth").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-IOBluetoothUI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-IOSurface").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-iTunesLibrary").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-KernelManagement").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-LatentSemanticMapping").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-LaunchServices").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-libdispatch").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-libxpc").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-LinkPresentation").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-LocalAuthentication").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-LocalAuthenticationEmbeddedUI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MailKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MapKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MediaAccessibility").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MediaExtension").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MediaLibrary").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MediaPlayer").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MediaToolbox").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Metal").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MetalFX").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MetalKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MetalPerformanceShaders").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MetalPerformanceShadersGraph").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MetricKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MLCompute").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ModelIO").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-MultipeerConnectivity").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-NaturalLanguage").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-NetFS").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Network").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-NetworkExtension").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-NotificationCenter").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-OpenDirectory").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-OSAKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-OSLog").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-PassKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-PencilKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-PHASE").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Photos").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-PhotosUI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-PreferencePanes").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-PushKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Quartz").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-QuickLookThumbnailing").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ReplayKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SafariServices").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SafetyKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SceneKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ScreenCaptureKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ScreenSaver").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ScreenTime").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ScriptingBridge").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SearchKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Security").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SecurityFoundation").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SecurityInterface").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SecurityUI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SensitiveContentAnalysis").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ServiceManagement").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SharedWithYou").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SharedWithYouCore").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ShazamKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Social").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SoundAnalysis").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Speech").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SpriteKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-StoreKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Symbols").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SyncServices").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SystemConfiguration").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-SystemExtensions").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-ThreadNetwork").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-UniformTypeIdentifiers").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-UserNotifications").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-UserNotificationsUI").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-VideoSubscriberAccount").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-VideoToolbox").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Virtualization").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-Vision").stage do
      if OS.mac? && Hardware::CPU.arm?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.mac? && Hardware::CPU.intel?
        venv.pip_install Pathname(Dir["*.whl"].first)
      elsif OS.linux?
        venv.pip_install Pathname.pwd
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("pyobjc-framework-WebKit").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("sniffio").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("tqdm").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("typing-extensions").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    resource("typing-inspection").stage do
      wheel = Dir["*.whl"].first
      if wheel
        venv.pip_install Pathname(wheel)
      else
        venv.pip_install Pathname.pwd
      end
    end

    venv.pip_install buildpath/"src"
    bin.install_symlink libexec/"bin/ggai"
  end

  test do
    system "#{bin}/ggai", "--help"
  end
end

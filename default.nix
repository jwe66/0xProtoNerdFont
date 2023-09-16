{ stdenvNoCC }:

stdenvNoCC.mkDerivation {
  pname = "0xProto-nf-ttf";
  version = "1.200";

  src = ./.;

  installPhase = ''
    runHook preInstall

    mkdir -p $out/share/fonts
    cp fonts/*.ttf $out/share/fonts

    runHook postInstall
  '';
}

{ mkDerivation, base, stdenv }:
mkDerivation {
  pname = "haskell-nix-example";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [ base ];
  executableHaskellDepends = [ base ];
  doHaddock = false;
  homepage = "https://github.com/rpearce/haskell-nix-example";
  description = "Haskell and nix example project";
  license = stdenv.lib.licenses.bsd3;
}

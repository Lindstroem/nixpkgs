# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, attoparsec, attoparsecConduit, blazeBuilder, conduit
, conduitExtra, dataDefault, HUnit, mmorph, monadControl, mtl
, primitive, resourcet, testFramework, testFrameworkHunit, text
, transformers, unorderedContainers, vector
}:

cabal.mkDerivation (self: {
  pname = "csv-conduit";
  version = "0.6.3";
  sha256 = "1db1wlpl0ryyf8cmkrg1hgz4ggsvzy6z9ayzcc6n6rdywpfi29z4";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    attoparsec attoparsecConduit blazeBuilder conduit conduitExtra
    dataDefault mmorph monadControl mtl primitive resourcet text
    transformers unorderedContainers vector
  ];
  testDepends = [
    HUnit mtl primitive testFramework testFrameworkHunit text
    transformers vector
  ];
  meta = {
    homepage = "http://github.com/ozataman/csv-conduit";
    description = "A flexible, fast, conduit-based CSV parser library for Haskell";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = with self.stdenv.lib.maintainers; [ bergey ];
  };
})

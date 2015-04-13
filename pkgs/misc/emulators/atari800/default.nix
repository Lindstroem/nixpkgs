{ stdenv, fetchurl
, unzip, zlib, SDL, readline, mesa, libX11 }:

with stdenv.lib;
stdenv.mkDerivation rec{
  name = "atari800-${version}";
  version = "3.1.0";
  builder = ./builder.sh;

  src = fetchurl {
    url = "mirror://sourceforge/atari800/atari800/${version}/${name}.tar.gz";
    sha256 = "030yz5l1wyq9l0dmiimiiwpzrjr43whycd409xhhpnrdx76046wh";
  };

  rom = fetchurl {
    url = http://downloads.sourceforge.net/project/atari800/ROM/Original%20XL%20ROM/xf25.zip;
    sha256 = "12jbawxs04i0wm3910n7f3phsybdp8nndxc0xlsnzp8k0k8hmblq";
  };

  buildInputs = [ unzip zlib SDL readline mesa libX11 ];

  configureFlags = "--target=default --with-video=sdl --with-sound=sdl --with-readline --with-opengl --with-x --enable-riodevice";

  meta = {
    homepage = "http://atari800.sourceforge.net/";
    description = "An Atari 8-bit emulator";
    longDescription = ''
      Atari800 is the emulator of Atari 8-bit computer systems and
      5200 game console for Unix, Linux, Amiga, MS-DOS, Atari
      TT/Falcon, MS-Windows, MS WinCE, Sega Dreamcast, Android and
      other systems supported by the SDL library.
    '';
    maintainers = [ maintainers.AndersonTorres ];
    license = licenses.gpl2Plus;    
  };    
}

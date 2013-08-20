INSTALL INSTRUCTIONS
https://github.com/Lokaltog/powerline-fonts
https://powerline.readthedocs.org/en/latest/installation/linux.html#font-installation
====================
1. Download the latest version of PowerlineSymbols and the latest version of
   the fontconfig file.
2. Move PowerlineSymbols.otf to ~/.fonts/ (or another X font directory).
3. Run fc-cache -vf ~/.fonts to update your font cache.
4. Move 10-powerline-symbols.conf to either ~/.fonts.conf.d/ or 
   ~/.config/fontconfig/conf.d/, depending on your fontconfig version.
5. If you don’t see the arrow symbols, please close all instances of your 
   terminal emulator or gvim. You may also have to restart X for the changes to
   take effect. If you still don’t see the arrow symbols, please submit an 
   issue on GitHub.

## Multi-Dialect Modula-2 Support for BBEdit and TextWrangler

This package provides syntax colouring support in BBEdit and TextWrangler for the following dialects:

* PIM Modula-2
* ISO Modula-2
* Modula-2 R10

### Installation

Copy the three codeless language module files

* m2pim.plist
* m2iso.plist
* m2r10.plist

either to the shared application support folder within the application bundle:

```
cp ~/Downloads/m2pim.plist /Applications/Textwrangler.app/Contents/SharedSupport/Language\ Modules/
cp ~/Downloads/m2iso.plist /Applications/Textwrangler.app/Contents/SharedSupport/Language\ Modules/
cp ~/Downloads/m2r10.plist /Applications/Textwrangler.app/Contents/SharedSupport/Language\ Modules/
```

or, alternatively, to the user specific application support folder

```
cp ~/Downloads/m2pim.plist  ~/Library/Application\ Support/TextWrangler/Language\ Modules/
cp ~/Downloads/m2iso.plist  ~/Library/Application\ Support/TextWrangler/Language\ Modules/
cp ~/Downloads/m2r10.plist  ~/Library/Application\ Support/TextWrangler/Language\ Modules/
```

TextWrangler.app must be restarted for the installation to take effect.

### Filetype Detection

If you use a case sensitive filesystem, Textwrangler should automatically detect the Modula-2 dialect by filetype:

* suffixes .DEF and .MOD for the PIM dialect
* suffixes .Def and .Mod for the ISO dialect
* suffixes .def and .mod for the R10 dialect

Otherwise, filetype mappings can be set manually within the application under TextWrangler -> Preferences -> Languages.

+++

# easy-bibcheck
Shell utility function to check and prettify bibtext.

## Debian/Ubuntu install

Run:
```
./install.sh
```

/!\\ Install will copy a script directly in your `/usr/bin`.

### Requirement

- gedit
- bibclean
- xclip

## Usage:

### Without arg:
```
bibcheck
```

This will open a gedit editor, the user paste his bibtext.
Then the file is lint or pretify.
If there is no error the pretify content is copy to the clipboard.

#### Undifined

Undifined behaviour if you write nothing to gedit editor or exit without saving.

### With arg:
```
bibcheck file.bib
```

Do the same but on the first arg file given.

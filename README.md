# Nitrokey's User Documentation

## Text Style Tips

- Use language that everyone can understand and make sure the text has a good flow.
- Use subheadings to organize the text.
- Write short, clear sentences in the active voice.
- Don't leave out any relevant information.
- Remove all filler words.
- Simplify technical language.
- Avoid convoluted sentences.
- Write only in the active and present tense.
- Write concisely, precisely and to the point.
- Add short explanations if something is unclear.
- If possible, use gender-neutral language
- Imagine a style scale from 1 to 10. 10 is the exaggerated language of a US-American marketing salesperson. 1 is the boring, sober language of a German bureaucrat. Write the text in the style of a 3. 

## Tips and Conventions

- See syntax examples in `syntax.rst` and live at https://docs.nitrokey.com/syntax.html 

- Write filenames in lower case and use dashes ("-") instead of spaces.

- If an image is to be used for all languages do not use the Substitution Syntax `|image1|` but directly include the picture with a `figure::` directive.
- To avoid warnings in Sphinx include images with the full path. e.g. `storage/images/hidden-storage-partition.png`

- If different Image are to be used for different languages use the substitution syntax and translate the substitution names in Weblate e.g. translate |Picture1| with |Bild1| |tableau1| etc. and define all substitutions with files pathes at the end of the document.

- For content which is identical for different models or operating  systems, use `include` to avoid duplication of files. Locate those instructions not in but next to the operating system folders.

- On [include directives](https://docutils.sourceforge.io/docs/ref/rst/directives.html#miscellaneous) you can use ``:start-line:`` and ``:end-line:`` to include different parts of a document. 

- Add a subfolder named the same way as the RST with the numbered image files for each guide.

- Avoid plain URLs in text but use hyperlink syntax instead. (see: https://www.sphinx-doc.org/en/master/usage/restructuredtext/basics.html#hyperlinks )

- For internal hyperlinks to a different docs.nitrokey.com product create a duplicate rst using `include` for the content and link this document relatively

- Relative paths (also included and double included) are always evaluated from the path of the final including page. Images within pages that are included elsewhere must therefore always be specified with an absolute path starting with `/` which stands for the root directory of the document.

- After each commit, the CI pushes translations automatically. Therefore always do `git pull` before `git commit ...`

- More information about RST:

  https://www.sphinx-doc.org/en/master/usage/restructuredtext/index.html

  https://docutils.sourceforge.io/docs/ref/rst/directives.html

## Redirect old articles to existing articles

- Add a line to the redirect list in ./_redirects/.htaccess

## Commits (preventing merge conflicts)
Before pushing your changes to the Github repository, commit often and test the result locally by building a preview with Sphinx (see below). Only push your changes upstream when you are sure you will not touch it for the next hour. If content is pushed twice within an hour, merge conflicts may occur on the Weblate server that need to be solved manually (see below). If it's necessary to edit and push content within an hour, you have to wait until Weblate translated the new content. Then push the commit button in Weblate's web interface (https://translate.nitrokey.com/projects/nitrokey-documentation/#repository) and pull locally on your device. Only then you can push upstream again and avoid merge conflict.

## Local Setup (WIP)

Build docker image based on Dockerfile
```bash
sh ./build-container-image.sh
```

Build the docs (incrementally)
```bash
sh ./build-docs.sh
```

Build the docs (incrementally) for a specific language
```bash
sh ./build-docs.sh de
```

Trigger a full build
```bash
sh ./build-docs.sh --full
```

Trigger a full build for a specific language
```bash
sh ./build-docs.sh de --full
```

Purge build files and trigger a full build
```bash
sh ./build-docs.sh --rebuild --full
```

### Local webserver for testing

Spin up nginx with docker to service the static files
```bash
sh ./serve-docs.sh
```

Access the docs via http://localhost:8080/LANG

## Local Preview

Install virtualenv with pip:

```
pip install virtualenv
```

Setup Sphinx and components:

```
make venv
```

For each preview:

```
make
```

Errors about non-existing files in includes can be ignored. Syntax errors and RST files not contained in the TOC are listed.

Open __preview/index.html in the browser.

## Solving Merge Conflicts

Do not push twice an hour to the repo to avoid merge conflicts. Test locally as described above.

1. clone the repo from github
2. get the weblate api key from https://translate.nitrokey.com/accounts/profile/#api
3. add the remote repo 

```
git remote add weblate https://$USERNAME:$APIKEY@translate.nitrokey.com/git/nitrokey-documentation/index/
```
4. Now solve the conflict manually and push upstream e.g.:

```
git remote update weblate
git merge weblate/master
 Auto-merging locales/de/LC_MESSAGES/x230.po
 CONFLICT (content): Merge conflict in locales/de/LC_MESSAGES/x230.po
 Automatic merge failed; fix conflicts and then commit the result.
editor locales/de/LC_MESSAGES/x230.po
  # search for every ">>>>>>>"
  # delete the lines as necessary 
  # save
git status
git add --all
git commit -m "resolve merge conflict"
git push
```

## Manually build language versions when only a file name was changed (weblate did'n trigger the webhook)

```sphinx@translate: $ bash ~/sphinx/nitrokey-documentation/apply_translated_content.sh```


## Manually trigger deepl Translations for all languages and components
Get your Weblate Access Token from https://translate.nitrokey.com/accounts/profile/#api
Update list of components in trigger_deepl.sh
Run it
```
bash trigger_deepl.sh YOURWEBLATEACCESSTOKEN
```

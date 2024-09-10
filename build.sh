#!/bin/bash

# Load Variables
source variables.sh
source environment.sh

# git pull
git pull

# build container image
bash ./build-container-image.sh

# build locales
bash ./build-locales.sh

# add language files to git (add, commit and push)
git add --all
git commit -m "Language Files generated by Sphinx"
git push

# weblate pull
bash trigger_weblatepull.sh $apikey

# trigger deepl
# bash trigger_deepl.sh $apikey

# weblate commit (deepl-translated files)
# bash trigger_weblatecommit.sh $apikey

# weblate push
# bash trigger_weblatepush.sh $apikey

# build docs
bash build-docs.sh de --full --rebuild

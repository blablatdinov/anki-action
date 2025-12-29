#!/bin/bash
# SPDX-FileCopyrightText: Copyright (c) 2023-2026 Almaz Ilaletdinov <a.ilaletdinov@yandex.ru>
# SPDX-License-Identifier: MIT

set -e 
set -x

cd ${GITHUB_WORKSPACE-/w}
ls -la

cd $INPUT_PATH
ls -la

/home/node_modules/mdanki/src/index.js . cards.apkg
cp /github/workspace/anki-cards/cards.apkg /github/workspace
path_to_output='/github/workspace/cards.apkg'
echo "path_to_output=$path_to_output" >> $GITHUB_OUTPUT

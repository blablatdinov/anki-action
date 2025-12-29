# SPDX-FileCopyrightText: Copyright (c) 2023-2026 Almaz Ilaletdinov <a.ilaletdinov@yandex.ru>
# SPDX-License-Identifier: MIT

FROM node:20.5.1-slim

WORKDIR /home
COPY package.json package-lock.json entry.sh /home
RUN npm install
RUN ls -la /home
ENTRYPOINT ["/home/entry.sh"]

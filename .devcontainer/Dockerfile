FROM mcr.microsoft.com/devcontainers/base:bookworm

RUN apt -y update && export DEBIAN_FRONTEND=noninteractive \
&& apt -y install --no-install-recommends \
    # Fonts
    fonts-lmodern \
    # SVG support
    librsvg2-bin \
    # Install Chromium dependencies. Chromium is required by Mermaid.js but the version installed
    # by Quarto doesn't include all the dependencies
    libasound2 \
    libatk-bridge2.0-0 \
    libatk1.0-0 \
    libatspi2.0-0 \
    libcairo2 \
    libcups2 \
    libdrm2 \
    libdbus-1-3 \
    libgbm1 \
    libglib2.0-0 \
    libgtk-3-0 \
    libnspr4 \
    libnss3 \
    libpango-1.0-0 \
    libx11-6 \
    libx11-xcb1 \
    libxcb1 \
    libxcomposite1 \
    libxdamage1 \
    libxext6 \
    libxfixes3 \
    libxkbcommon0 \
    libxrandr2 \
    libxshmfence1 \
    fonts-liberation \
    && apt autoremove -y \
    && apt clean -y && rm -rf /var/lib/apt/lists/*

# Install Source Code Pro font
RUN curl -sSL -o /tmp/fonts-sourcecodepro_1.0_all.deb https://sid.ethz.ch/fonts/sourcecodepro/fonts-sourcecodepro_1.0_all.deb \
    && dpkg -i /tmp/fonts-sourcecodepro_1.0_all.deb \
    && rm /tmp/fonts-sourcecodepro_1.0_all.deb
    
#!/bin/sh
set -eu
# These commits match the inspected plugin versions, independent of Zinit.
mkdir -p /usr/local/share/zsh/plugins
cd /tmp
curl -fsSL --retry 3 https://codeload.github.com/zdharma-continuum/fast-syntax-highlighting/tar.gz/3d574ccf48804b10dca52625df13da5edae7f553 -o highlighting.tar.gz
echo '20481200fdd23fe15df1e4ff77cfa778b2278cd43786befff9e406c031461ae5  highlighting.tar.gz' | sha256sum -c -
mkdir -p /usr/local/share/zsh/plugins/fast-syntax-highlighting
tar xzf highlighting.tar.gz --strip-components=1 -C /usr/local/share/zsh/plugins/fast-syntax-highlighting
curl -fsSL --retry 3 https://codeload.github.com/zsh-users/zsh-autosuggestions/tar.gz/85919cd1ffa7d2d5412f6d3fe437ebdbeeec4fc5 -o suggestions.tar.gz
echo '20665e469e720e674964a66854d5534b9af78cdfd438512746ecd1ade8e819ce  suggestions.tar.gz' | sha256sum -c -
mkdir -p /usr/local/share/zsh-autosuggestions
tar xzf suggestions.tar.gz --strip-components=1 -C /usr/local/share/zsh-autosuggestions
curl -fsSL --retry 3 https://codeload.github.com/zsh-users/zsh-completions/tar.gz/dbaeafd96c3fd9d84c8540f6d87c6b37c4c9173d -o completions.tar.gz
echo 'e124c24f16ec0cdbf727aa8d0c76404550454f9bef6d9991f318d526994844ab  completions.tar.gz' | sha256sum -c -
mkdir -p /usr/local/share/zsh/plugins/zsh-completions
tar xzf completions.tar.gz --strip-components=1 -C /usr/local/share/zsh/plugins/zsh-completions
ln -s /usr/local/share/zsh/plugins/zsh-completions/src /usr/local/share/zsh-completions
# Upstream archives can preserve group-writable directories; satisfy compaudit.
chmod -R go-w /usr/local/share/zsh/plugins /usr/local/share/zsh-autosuggestions
rm -f /tmp/highlighting.tar.gz /tmp/suggestions.tar.gz /tmp/completions.tar.gz

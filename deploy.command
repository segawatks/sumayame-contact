#!/bin/bash
cd "$(dirname "$0")"

if [ ! -d ".git" ]; then
  git init
  git remote add origin https://github.com/segawatks/sumayame-contact.git
  git branch -M main
fi

git add .
git commit -m "update $(date '+%Y-%m-%d %H:%M')"
git push -u origin main

echo ""
echo "✅ Push完了！"
echo "🌐 https://segawatks.github.io/sumayame-contact/"
read -p "Enterキーで閉じる..."

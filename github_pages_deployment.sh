#!/bin/bash
# ============================================================
# ERASMUS+ INTERAKTIF TIMELINE — GitHub Pages Deployment
# ============================================================
# Bu scripti Hetzner sunucunda veya kendi bilgisayarında çalıştır.
# Ön koşul: git kurulu + GitHub hesabına (ByX0000) SSH/HTTPS erişim var.
#
# Sonuç URL: https://byx0000.github.io/erasmus-timeline/
# ============================================================

# ---- ADIM 1: Yeni repo oluştur ----
# GitHub'da yeni bir repo oluştur:
#   - Repo adı: erasmus-timeline
#   - Public (GitHub Pages için zorunlu, free plan'da)
#   - README ekleme
#
# GitHub web arayüzünden: https://github.com/new
# veya GitHub CLI ile:
# gh repo create erasmus-timeline --public --clone

# ---- ADIM 2: Lokal klasör hazırla ----
mkdir -p ~/erasmus-timeline
cd ~/erasmus-timeline
git init

# ---- ADIM 3: HTML dosyasını index.html olarak kaydet ----
# Bu dosyayı indirip ~/erasmus-timeline/ klasörüne koy
# ÖNEMLİ: Dosya adı "index.html" olmalı!
# cp /indirdigin/yol/erasmus_interaktif_timeline.html ./index.html

# ---- ADIM 4: Git commit + push ----
git add index.html
git commit -m "Erasmus+ KA121 Mobilita Italia - Interaktif Timeline"
git branch -M main
git remote add origin git@github.com:ByX0000/erasmus-timeline.git
git push -u origin main

# ---- ADIM 5: GitHub Pages aktifleştir ----
# GitHub repo sayfasında:
#   Settings → Pages → Source: "Deploy from a branch"
#   Branch: main → / (root) → Save
#
# 1-2 dakika içinde aktif olacak:
# https://byx0000.github.io/erasmus-timeline/

# ============================================================
# ALTERNATİF: GitHub CLI ile otomatik
# ============================================================
# gh repo create erasmus-timeline --public --source=. --remote=origin --push
# gh api repos/ByX0000/erasmus-timeline/pages -X POST -f source.branch=main -f source.path=/

echo "Deployment tamamlandı!"
echo "URL: https://byx0000.github.io/erasmus-timeline/"

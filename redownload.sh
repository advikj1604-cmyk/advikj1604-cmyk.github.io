#!/bin/bash
# Run from your project root: bash redownload-failed.sh
# Re-downloads only the failed images using alternative sources

cd public/sky

echo "Re-downloading failed images..."

# Andromeda - ESO source
curl -L -A "Mozilla/5.0" "https://esahubble.org/media/archives/images/screen/heic1502a.jpg" -o andromeda.jpg
# If still fails, try:
# curl -L "https://cdn.eso.org/images/screen/eso1042a.jpg" -o andromeda.jpg

# Pleiades
curl -L -A "Mozilla/5.0" "https://esahubble.org/media/archives/images/screen/opo0425b.jpg" -o pleiades.jpg

# Milky Way
curl -L -A "Mozilla/5.0" "https://cdn.eso.org/images/screen/eso1242a.jpg" -o milky-way.jpg

# Zodiacal Light
curl -L -A "Mozilla/5.0" "https://cdn.eso.org/images/screen/eso1301a.jpg" -o zodiacal.jpg

# Sirius (Hubble)
curl -L -A "Mozilla/5.0" "https://esahubble.org/media/archives/images/screen/opo0524a.jpg" -o sirius.jpg

# Beehive Cluster
curl -L -A "Mozilla/5.0" "https://cdn.eso.org/images/screen/eso1128a.jpg" -o beehive.jpg

# Double Cluster
curl -L -A "Mozilla/5.0" "https://cdn.eso.org/images/screen/eso0844a.jpg" -o double-cluster.jpg

# Omega Centauri
curl -L -A "Mozilla/5.0" "https://esahubble.org/media/archives/images/screen/heic0809a.jpg" -o omega-centauri.jpg

# 47 Tucanae
curl -L -A "Mozilla/5.0" "https://esahubble.org/media/archives/images/screen/heic1217a.jpg" -o 47tuc.jpg

# Ring Nebula
curl -L -A "Mozilla/5.0" "https://esahubble.org/media/archives/images/screen/heic1310a.jpg" -o ring-nebula.jpg

# Whirlpool Galaxy
curl -L -A "Mozilla/5.0" "https://esahubble.org/media/archives/images/screen/heic0506a.jpg" -o whirlpool.jpg

# Lagoon Nebula
curl -L -A "Mozilla/5.0" "https://cdn.eso.org/images/screen/eso1808a.jpg" -o lagoon-nebula.jpg

# Triangulum Galaxy
curl -L -A "Mozilla/5.0" "https://cdn.eso.org/images/screen/eso1316a.jpg" -o triangulum.jpg

# Eta Carinae
curl -L -A "Mozilla/5.0" "https://esahubble.org/media/archives/images/screen/heic0707a.jpg" -o eta-carinae.jpg

# Andromeda fallback
curl -L -A "Mozilla/5.0" "https://cdn.eso.org/images/screen/eso1209a.jpg" -o andromeda.jpg

echo ""
echo "Done. Checking file sizes:"
ls -lh *.jpg | awk '{print $5, $9}'

echo ""
echo "Resizing large images (requires sips on macOS)..."
# orion-nebula and sombrero are too large, resize them
sips -Z 1200 orion-nebula.jpg 2>/dev/null && echo "orion-nebula resized"
sips -Z 1200 sombrero.jpg 2>/dev/null && echo "sombrero resized"
sips -Z 1200 crab-nebula.jpg 2>/dev/null && echo "crab-nebula resized"

echo "Final sizes:"
ls -lh *.jpg | awk '{print $5, $9}'
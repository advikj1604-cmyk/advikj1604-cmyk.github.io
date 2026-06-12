#!/bin/bash
# Run from your project root: bash fix-images.sh
cd public/sky

echo "Fixing wrong images..."

# Andromeda Galaxy - correct image
curl -L -A "Mozilla/5.0" \
  "https://cdn.eso.org/images/screen/eso1242a.jpg" \
  -o andromeda.jpg
echo "andromeda: $(ls -lh andromeda.jpg | awk '{print $5}')"

# Sirius - use a star field image since Sirius alone is just a dot
# Use the Hubble image of Sirius A and B correctly labeled
curl -L -A "Mozilla/5.0" \
  "https://esahubble.org/media/archives/images/screen/opo0325a.jpg" \
  -o sirius.jpg
echo "sirius: $(ls -lh sirius.jpg | awk '{print $5}')"

# Orion Constellation - wide field photo of Orion
curl -L -A "Mozilla/5.0" \
  "https://cdn.eso.org/images/screen/eso0932a.jpg" \
  -o orion-constellation.jpg
echo "orion-constellation: $(ls -lh orion-constellation.jpg | awk '{print $5}')"

# Pleiades
curl -L -A "Mozilla/5.0" \
  "https://cdn.eso.org/images/screen/eso1006a.jpg" \
  -o pleiades.jpg
echo "pleiades: $(ls -lh pleiades.jpg | awk '{print $5}')"

# Milky Way
curl -L -A "Mozilla/5.0" \
  "https://cdn.eso.org/images/screen/eso0932c.jpg" \
  -o milky-way.jpg
echo "milky-way: $(ls -lh milky-way.jpg | awk '{print $5}')"

# Lagoon Nebula - correct image
curl -L -A "Mozilla/5.0" \
  "https://cdn.eso.org/images/screen/eso1808a.jpg" \
  -o lagoon-nebula.jpg
echo "lagoon-nebula: $(ls -lh lagoon-nebula.jpg | awk '{print $5}')"

# Triangulum Galaxy
curl -L -A "Mozilla/5.0" \
  "https://cdn.eso.org/images/screen/eso1316a.jpg" \
  -o triangulum.jpg
echo "triangulum: $(ls -lh triangulum.jpg | awk '{print $5}')"

# Zodiacal Light - correct one
curl -L -A "Mozilla/5.0" \
  "https://cdn.eso.org/images/screen/eso1301a.jpg" \
  -o zodiacal.jpg
echo "zodiacal: $(ls -lh zodiacal.jpg | awk '{print $5}')"

echo ""
echo "Done! Check sizes above - anything under 10KB is a failed download."
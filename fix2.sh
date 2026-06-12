#!/bin/bash
cd public/sky

# Sirius — use a wide star field showing Sirius as the brightest star
curl -L -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" \
  "https://cdn.eso.org/images/screen/eso0728a.jpg" \
  -o sirius.jpg
echo "sirius: $(ls -lh sirius.jpg | awk '{print $5}')"

# Orion Constellation — wide field showing the constellation clearly
curl -L -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" \
  "https://cdn.eso.org/images/screen/eso1420a.jpg" \
  -o orion-constellation.jpg
echo "orion-constellation: $(ls -lh orion-constellation.jpg | awk '{print $5}')"

# Lagoon Nebula — correct nebula image
curl -L -A "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36" \
  "https://cdn.eso.org/images/screen/eso1403a.jpg" \
  -o lagoon-nebula.jpg
echo "lagoon-nebula: $(ls -lh lagoon-nebula.jpg | awk '{print $5}')"

echo "Done — anything under 10KB failed."
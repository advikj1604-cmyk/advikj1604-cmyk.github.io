#!/bin/bash
# Run this from your project root: bash download-sky-images.sh
# Downloads real astronomy photos into public/sky/

mkdir -p public/sky

echo "Downloading sky images..."

# All images are from NASA/ESA public domain or CC0
curl -L "https://upload.wikimedia.org/wikipedia/commons/e/e1/FullMoon2010.jpg" -o public/sky/moon.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/e/e5/Venus-real_color.jpg" -o public/sky/venus.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/2/2b/Jupiter_and_its_shrunken_Great_Red_Spot.jpg" -o public/sky/jupiter.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/c/c7/Saturn_during_Equinox.jpg" -o public/sky/saturn.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/0/02/OSIRIS_Mars_true_color.jpg" -o public/sky/mars.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/4/4a/Mercury_in_true_color.jpg" -o public/sky/mercury.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Pleiades_large.jpg/800px-Pleiades_large.jpg" -o public/sky/pleiades.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Andromeda_Galaxy_%28with_h-alpha%29.jpg/800px-Andromeda_Galaxy_%28with_h-alpha%29.jpg" -o public/sky/andromeda.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/f/f3/Orion_Nebula_-_Hubble_2006_mosaic_18000.jpg" -o public/sky/orion-nebula.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/0/00/Crab_Nebula.jpg" -o public/sky/crab-nebula.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/d/d9/M51_whirlpool_galaxy_black_hole.jpg" -o public/sky/whirlpool.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/d/df/M57_The_Ring_Nebula.JPG" -o public/sky/ring-nebula.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/5/5e/M104_ngc4594_sombrero_galaxy_hi-res.jpg" -o public/sky/sombrero.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/7/7e/Omega_Centauri.jpg" -o public/sky/omega-centauri.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Milky_Way_-_Dombes_-_2012.jpg/800px-Milky_Way_-_Dombes_-_2012.jpg" -o public/sky/milky-way.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7f/Lagoon_Nebula_visible_ESO.jpg/800px-Lagoon_Nebula_visible_ESO.jpg" -o public/sky/lagoon-nebula.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/VST_image_of_the_Triangulum_Galaxy.jpg/800px-VST_image_of_the_Triangulum_Galaxy.jpg" -o public/sky/triangulum.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/thumb/1/12/Zodiacal_light_over_La_Silla.jpg/800px-Zodiacal_light_over_La_Silla.jpg" -o public/sky/zodiacal.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Sirius_A_and_B_Hubble_photo.editted.PNG/600px-Sirius_A_and_B_Hubble_photo.editted.PNG" -o public/sky/sirius.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/5/5a/47tuc_hst.jpg" -o public/sky/47tuc.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Perseid_Double_Cluster_-_Hypatia.jpg/800px-Perseid_Double_Cluster_-_Hypatia.jpg" -o public/sky/double-cluster.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Beehive_cluster_map.jpg/600px-Beehive_cluster_map.jpg" -o public/sky/beehive.jpg
curl -L "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Carina_Nebula_by_Harel_Boren_%28151851961%2C_modified%29.jpg/800px-Carina_Nebula_by_Harel_Boren_%28151851961%2C_modified%29.jpg" -o public/sky/eta-carinae.jpg

echo "Done! Check public/sky/ for downloaded images."
ls -lh public/sky/
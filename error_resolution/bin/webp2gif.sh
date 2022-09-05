# ffmpeg -y -loop 1 -i "3x6qcr.jpg" -t 00:00:01 -c:v libx264 -tune stillimage -pix_fmt yuv420p "3x6qcr.mp4"

ffmpeg -y -i "$*.webp" -vf palettegen "$*.png"

# ffmpeg -y -i "$*.webp" -i "$*.png" -filter_complex "[0:v][1:v]paletteuse" "$*.gif"

### ffmpeg -y -i "$*.mp4" -i "$*.png" -filter_complex "[0:v][1:v]paletteuse,fps=10,scale=720:-1" "$*.gif"

ffmpeg -y -i "$*.webp" -i "$*.png" -filter_complex "[0:v][1:v]paletteuse" "$*.gif"

# ffmpeg -y -i "$*.mp4" -t 00:00:06 -i "$*.png" -filter_complex "[0:v][1:v]paletteuse,scale=320:-1" "$*.gif"

# ffmpeg -y -i "3x6qcr.mp4" -i "3x6qcr.png" -filter_complex "[0:v][1:v]paletteuse,fps=25,scale=720:-1" "3x6qcr.gif"

echo $1;
fileName=${1%.ts}
ffmpeg -i "${fileName}_1.ts" -i "$fileName.ts" -c copy -map 0:v:0 -map 1:a:0 "$fileName.mp4"
#mv "$1_1.ts" "XXX_$1_1.ts"
#mv "$1.ts" "XXX_$1.ts"

rm "${fileName}_1.ts" 
rm "${fileName}.ts"


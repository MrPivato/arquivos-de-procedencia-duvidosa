red='\033[0;31m'
blue='\033[0;34m'
pink='\033[0;35m'
yellow='\033[0;33m'
white='\033[0;37m'
cyan='\033[0;36m'

inc=0 # Var incremento
color="$cyan" # Cor inicial

spin=(
'.'
'...'
'......'
'.........'
'............'
'...............'
'..................'
'.....................'
'........................'
'...........................'
)

while :; do
        # Cores aleatorias
        [[ "$inc" -gt '11' ]] && color="${red}"
        [[ "$inc" -gt '22' ]] && color="${blue}"
        [[ "$inc" -gt '33' ]] && color="${pink}"
        [[ "$inc" -gt '44' ]] && color="${yellow}"
        [[ "$inc" -gt '55' ]] && color="${white}" && inc=$(($inc - $inc))
        # Imprimindo
        for i in "${spin[@]}"; do
                echo -ne "${color}\r$i${end}"
                sleep 0.1s
                inc=$(($inc + 1))
        done
done

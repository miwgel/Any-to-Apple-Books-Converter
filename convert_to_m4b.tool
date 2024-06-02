#!/bin/zsh

# Obtener la ubicación del archivo o directorio mediante AppleScript
input_path=$(osascript <<EOD
tell application "Finder"
    set theItem to choose file with prompt "Selecciona un archivo de audio o un directorio:"
    POSIX path of theItem
end tell
EOD
)

# Verificar si hubo un error al seleccionar el archivo o directorio
if [ -z "$input_path" ]; then
    echo "No se seleccionó ningún archivo o directorio. Saliendo..."
    exit 1
fi

# Función para convertir archivos de audio a .m4b
convert_file() {
    input_file="$1"
    output_file="${input_file%.*}.m4b"
    creation_date=$(GetFileInfo -d "$input_file")
    modification_date=$(GetFileInfo -m "$input_file")
    
    ffmpeg -i "$input_file" -c:a aac -q:a 0 -vn -map_metadata 0 "$output_file"
    
    SetFile -d "$creation_date" "$output_file"
    SetFile -m "$modification_date" "$output_file"
    
    echo "Conversión completa: $output_file"
}

# Verificar si es un archivo o un directorio
if [ -f "$input_path" ]; then
    # Es un archivo
    convert_file "$input_path"
elif [ -d "$input_path" ]; then
    # Es un directorio
    audio_files=("$input_path"/*.{opus,mp3,wav,aac,m4a,flac})
    if [ ${#audio_files[@]} -eq 0 ]; then
        echo "No se encontraron archivos de audio en el directorio."
        exit 1
    fi
    for audio_file in "${audio_files[@]}"; do
        convert_file "$audio_file"
    done
else
    echo "La ruta seleccionada no es un archivo ni un directorio válido."
    exit 1
fi
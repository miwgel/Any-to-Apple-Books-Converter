# Any to Apple Books Converter

Any to Apple Books Converter es una utilidad de línea de comandos que permite convertir cualquier archivo de audio a formato `.m4b`, compatible con Apple Books. Esta herramienta soporta múltiples formatos de audio y puede procesar tanto archivos individuales como directorios completos, preservando los metadatos y las fechas de creación y modificación de los archivos originales.

**[Read this in English](README.md)**

## Características

- Convierte archivos de audio a formato `.m4b`.
- Soporta múltiples formatos de audio: `.opus`, `.mp3`, `.wav`, `.aac`, `.m4a`, `.flac`.
- Procesa archivos individuales o todos los archivos de un directorio.
- Preserva los metadatos y las fechas de creación y modificación de los archivos originales.

## Requisitos

- macOS
- `ffmpeg`
- `Xcode Command Line Tools` (para `GetFileInfo` y `SetFile`)

## Instalación

1. Clona este repositorio:

   ```sh
   git clone https://github.com/tuusuario/any-to-apple-books-converter.git
   cd any-to-apple-books-converter
   ```

2. Asegúrate de que `ffmpeg` está instalado. Puedes instalar `ffmpeg` usando [Homebrew](https://brew.sh):

   ```sh
   brew install ffmpeg
   ```

3. Asegúrate de tener instaladas las `Xcode Command Line Tools`:

   ```sh
   xcode-select --install
   ```

4. Haz que el archivo de script sea ejecutable:

   ```sh
   chmod +x convert_to_m4b.tool
   ```

## Uso

Ejecuta el script en tu terminal:

```sh
./convert_to_m4b.tool
```

Se abrirá un cuadro de diálogo para seleccionar un archivo de audio o un directorio. El script convertirá el archivo seleccionado o todos los archivos de audio compatibles en el directorio a formato .m4b, preservando los metadatos y las fechas de creación y modificación.

Contribución

¡Las contribuciones son bienvenidas! Por favor, abre un issue para discutir cualquier cambio importante antes de realizarlo.

    1.	Haz un fork del proyecto
    2.	Crea tu feature branch (git checkout -b feature/fooBar)
    3.	Commit tus cambios (git commit -am 'Add some fooBar')
    4.	Push a la branch (git push origin feature/fooBar)
    5.	Abre un Pull Request

Licencia

Este proyecto está licenciado bajo la Licencia MIT - mira el archivo LICENSE para más detalles.

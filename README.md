# Any to Apple Books Converter

Any to Apple Books Converter is a command-line utility that converts any audio file to the `.m4b` format, compatible with Apple Books. This tool supports multiple audio formats and can process both individual files and entire directories, preserving the metadata and original creation and modification dates of the files.

**[Lea esto en español](README.es.md)**

## Features

- Converts audio files to `.m4b` format.
- Supports multiple audio formats: `.opus`, `.mp3`, `.wav`, `.aac`, `.m4a`, `.flac`.
- Processes individual files or all audio files in a directory.
- Preserves metadata and original creation and modification dates of the files.

## Requirements

- macOS
- `ffmpeg`
- `Xcode Command Line Tools` (for `GetFileInfo` and `SetFile`)

## Installation

1. Clone this repository:

   ```sh
   git clone https://github.com/yourusername/any-to-apple-books-converter.git
   cd any-to-apple-books-converter
   ```

2. Ensure `ffmpeg` is installed. You can install `ffmpeg` using [Homebrew](https://brew.sh):

   ```sh
   brew install ffmpeg
   ```

3. Ensure `Xcode Command Line Tools` are installed:

   ```sh
   xcode-select --install
   ```

4. Make the script file executable:

   ```sh
   chmod +x convert_to_m4b.tool
   ```

## Usage

Run the script in your terminal:

```sh
./convert_to_m4b.tool
```

A dialog box will open to select an audio file or a directory. The script will convert the selected file or all compatible audio files in the directory to .m4b format, preserving metadata and original creation and modification dates.

Contribution

Contributions are welcome! Please open an issue to discuss any major changes before making them.

    1.	Fork the project
    2.	Create your feature branch (git checkout -b feature/fooBar)
    3.	Commit your changes (git commit -am 'Add some fooBar')
    4.	Push to the branch (git push origin feature/fooBar)
    5.	Open a Pull Request

License

This project is licensed under the MIT License - see the LICENSE file for details.

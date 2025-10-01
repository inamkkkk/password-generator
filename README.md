# Password Generator CLI

A command-line tool to generate secure, random passwords with customizable length and character sets.

## Usage

1.  Clone the repository:
    
    git clone <repository_url>
    cd password-generator
    
2.  Install dependencies:
    
    npm install
    
3.  Run the generator:
    
    node server.js --length <length> --uppercase --lowercase --numbers --symbols
    

    *   `--length`:  Desired password length (default: 12).
    *   `--uppercase`:  Include uppercase letters.
    *   `--lowercase`:  Include lowercase letters.
    *   `--numbers`:  Include numbers.
    *   `--symbols`:  Include symbols.

## Example


node server.js --length 16 --uppercase --numbers --symbols


This will generate a 16-character password including uppercase letters, numbers, and symbols.

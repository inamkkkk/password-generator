#!/usr/bin/env node

const { generatePassword } = require('./utils/passwordGenerator');
const { parseArgs } = require('./utils/argsParser');

async function main() {
  try {
    const options = parseArgs(process.argv.slice(2));

    if (options.help) {
      console.log(`
Usage: password-generator [options]

Options:
  --length <number>  Length of the password (default: 12)
  --uppercase        Include uppercase letters
  --lowercase        Include lowercase letters
  --numbers          Include numbers
  --symbols          Include symbols
  --help             Show help message
      `);
      return;
    }

    const password = generatePassword(options);
    console.log(password);
  } catch (error) {
    console.error(`Error: ${error.message}`);
    process.exit(1);
  }
}

main();
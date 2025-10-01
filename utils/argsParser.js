function parseArgs(args) {
  const options = {};

  for (let i = 0; i < args.length; i++) {
    const arg = args[i];

    if (arg === '--length') {
      const length = parseInt(args[i + 1], 10);
      if (isNaN(length) || length <= 0) {
        throw new Error('Invalid length value. Length must be a positive number.');
      }
      options.length = length;
      i++;
    } else if (arg === '--uppercase') {
      options.uppercase = true;
    } else if (arg === '--lowercase') {
      options.lowercase = true;
    } else if (arg === '--numbers') {
      options.numbers = true;
    } else if (arg === '--symbols') {
      options.symbols = true;
    } else if (arg === '--help') {
        options.help = true;
    }
  }

  return options;
}

module.exports = { parseArgs };
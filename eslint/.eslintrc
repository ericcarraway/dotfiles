/**
 * vscode settings.json
 * "files.associations": {
 *   ".eslintrc": "jsonc"
 * },
 */
{
  // https://www.npmjs.com/package/eslint-config-airbnb-base
  // This package provides Airbnb's base JS .eslintrc (without React plugins) as an extensible shared config.
  "extends": [
    "eslint:recommended",
    "airbnb-base"
    // "react-app"
  ],

  "env": {
    "node": true,
    "mocha": true
  },

  // custom overrides
  "rules": {
    "implicit-arrow-linebreak": [0],
    "indent": ["error", 2],
    "no-console": ["error", {
      "allow": ["log", "warn", "error"]
    }],

    // hoisted functions are OK
    "no-use-before-define": ["error", {
      "functions": false
    }],

    "object-curly-newline": [0],
    "operator-linebreak": ["error", "after", {
      "overrides": {
        "?": "before",
        ":": "before"
      }
    }],
    "prefer-destructuring": ["error", {
      "object": true,
      "array": true
    }],
    "quotes": ["error", "backtick"]
  }
}

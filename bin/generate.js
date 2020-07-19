#!/usr/bin/env node

const { readdirSync, readFileSync } = require('fs');
const { join } = require('path');

const SNIPPETS_DIR = './snippets';

const SNIPPET_FILE_EXTENSION = /\.sh$/;

const snippets = readdirSync(SNIPPETS_DIR)
    .filter(file => file.match(SNIPPET_FILE_EXTENSION))
    .map(
        file =>
            `## ${file.replace(
                SNIPPET_FILE_EXTENSION,
                ''
            )}\n\n\`\`\`bash\n${readFileSync(
                join(SNIPPETS_DIR, file),
                'utf8'
            )}\`\`\``
    );

process.stdout.write(`# bash-snippets\n\n${snippets}\n`);

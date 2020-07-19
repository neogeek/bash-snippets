#!/usr/bin/env node

const { readdirSync, readFileSync } = require('fs');
const { join } = require('path');

const SNIPPETS_DIR = './snippets';

const SNIPPET_FILE_EXTENSION = /\.sh$/;

const snippets = readdirSync(SNIPPETS_DIR)
    .filter(file => file.match(SNIPPET_FILE_EXTENSION))
    .map(
        file =>
            `## ${file
                .replace('_', ' ')
                .replace(SNIPPET_FILE_EXTENSION, '')
                .replace(/(^| )[a-z]/g, match =>
                    match.toUpperCase()
                )}\n\n\`\`\`bash\n${readFileSync(
                join(SNIPPETS_DIR, file),
                'utf8'
            )}\`\`\``
    )
    .join('\n\n');

process.stdout.write(`# Bash Snippets\n\n${snippets}\n`);

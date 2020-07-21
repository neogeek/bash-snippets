#!/usr/bin/env node

const { readdirSync, readFileSync } = require('fs');
const { join } = require('path');

const SNIPPETS_DIR = './snippets';
const TEMPLATES_DIR = './templates';

const SNIPPET_FILE_EXTENSION = /\.sh$/;

const formatTitle = title =>
    title
        .replace(SNIPPET_FILE_EXTENSION, '')
        .replace(/_/g, ' ')
        .replace(/(^| )[a-z]/g, match => match.toUpperCase());

const formatContent = content => '```bash\n' + content.trim() + '\n```';

const snippets = readdirSync(SNIPPETS_DIR)
    .filter(file => file.match(SNIPPET_FILE_EXTENSION))
    .map(file => ({
        file,
        title: formatTitle(file),
        content: formatContent(readFileSync(join(SNIPPETS_DIR, file), 'utf8'))
    }));

process.stdout.write(
    `${readFileSync(join(TEMPLATES_DIR, 'header.md'), 'utf8')}\n${snippets
        .map(
            ({ title }) =>
                `- [${title}](#${title.replace(/ /g, '-').toLowerCase()})`
        )
        .join('\n')}\n\n${snippets
        .map(({ title, content }) => `## ${title}\n\n${content}`)
        .join('\n\n')}\n`
);

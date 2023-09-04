# Action for creating [Anki](https://apps.ankiweb.net/) cards from .md files

This GitHub Action allows you to convert Markdown files into Anki flashcards. You can easily create Anki decks from your markdown content using this automated workflow.

## Features

- Convert Markdown files into Anki cards.
- Customizable conversion options.
- Create Anki decks directly from your GitHub repository.

## Usage

To use this GitHub Action in your repository, follow these steps:

1. Create a folder in your repository to store your Markdown files, for example, `anki-cards`.

2. Add your Markdown files with the content you want to convert to Anki cards in the `anki-cards` folder.

3. Create or update your GitHub Actions workflow file (e.g., `.github/workflows/anki-action.yml`) with the following content:

```yaml
name: build-anki-cards
on:
  push:
jobs:
  build:
    runs-on: ubuntu-20.04
    steps:
      - uses: actions/checkout@v2
      - uses: blablatdinov/anki-action@0.6.0
        with:
          path: anki-cards
      - name: Export anki cards to artifactory
        uses: actions/upload-artifact@v3
        with:
          name: cards.apkg
          path: ${{ github.workspace }}/cards.apkg
```

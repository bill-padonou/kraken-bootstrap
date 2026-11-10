1 - Le ruleset actif sur `main` interdit tout push direct : chaque changement doit passer par une pull request, qui déclenche le workflow `ci.yml`, lequel appelle `bill-padonou/kraken/.github/workflows/kraken.yml@main`.

2 - Sur la PR, `kraken / lint-test` lance `ruff check .` puis `pytest` (rapport `junit.xml` publié en artefact même en cas d'échec), et `kraken / build-push` (qui ne démarre que si `lint-test` réussit) construit l'image depuis le `Dockerfile` : un `Dockerfile` cassé fait donc échouer ce check.

3 - Ces deux checks sont obligatoires dans le ruleset : tant qu'ils ne sont pas verts, le bouton Merge reste bloqué (« Required statuses must pass ») ; l'image n'est poussée sur GHCR, taguée avec le SHA, qu'une fois le code fusionné sur `main`.

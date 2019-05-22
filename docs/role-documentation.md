---
layout: page
title: Documenting Ansible Roles
permalink: /role-documentation
---

This section provides a guide on what documentation should be written in your roles, and how they should be written.

# Style

## Documentation Style

1. Name the playbooks and tasks with a meaningful descriptions
1. Document role's usage in `README.md`
1. Document role's python requirements in `requirements.txt`
1. Provide all required metadata (like dependencies on other roles) in `meta/main.yml`

## Code Style

1. All documents should pass their relevant linters

## Ansible code

1. Always use the `key: value` native YAML style over `key=value` style.

# Contributors

1. Authors should be listed in no particular author in `AUTHORS.md` and `codemeta.json`
2. contributors should be properly attributed in `codemeta.json`

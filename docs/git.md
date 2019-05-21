---
title: Maintaining Source Code
permalink: /git
layout: page
---

## Considerations for DVCS

There are several styles of software development, and some form of consensus about good practice is required in order to avoid conflict, ensure smooth collaboration and contributions.

### Branches and tags

Most work happens on a "feature branch".
It is assumed that the master branch will always converge and pass linting tests, even if it is not feature-complete.
Releases should follow the semantic versioning style. This is required in order to ingest new releases into Zenodo for publication and assignment of DOIs.

#### GitHub Style Considerations

- The master branch should be protected

### Release policy and checklist

#### When to create a release

#### Release checklist

  - [ ] Issue created for tracking release requirements
  - [ ] Requirements tests added
  - [ ] All tests passing
  - [ ] Pull request opened against issue, with at least 2 reviewers requested
  - [ ] Pull request review done by peers
  - [ ] Repository enabled in Zenodo
  - [ ] README updated to reflect release
  - [ ] Authors list updated with contributors to the release

## Dos and Don'ts

To make it easier to understand and implement this guide, we have a few good and bad practices which we have adapted from the [Ansible Guide for Developers](https://docs.ansible.com/ansible/latest/community/committer_guidelines.html#general-rules)

### Don’t

  - Commit directly.
  - Merge your own PRs. Someone else should have a chance to review and approve the PR merge. If you are a team member or a product owner, you have a small amount of leeway here for very minor changes.
  - Forget about alternate environments. Consider the alternatives - yes, people have bad environments, but they are the ones who need us the most.
  - Drag your community team members down. Always discuss the technical merits, but you should never address the person’s limitations
  - Forget about the maintenance burden. Some things are really cool to have, but they might not be worth shoehorning in if the maintenance burden is too great.
  - Break playbooks. Always keep backwards compatibility in mind.
  - Forget to keep it simple. Complexity breeds all kinds of problems.

### Do

  - Squash, avoid merges whenever possible, use github’s squash commits or cherry pick if needed (bisect thanks you).
  - Be active. Committers who have no activity on the project (through merges, triage, commits, etc.) will have their permissions suspended.
  - Consider backwards compatibility (goes back to “don’t break existing playbooks”).
  - Discuss with other committers, specially when you are unsure of something.
  - Consider scope, sometimes a fix can be generalized
  - Keep it simple, then things are maintainable, debuggable and intelligible.

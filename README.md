[![Build Status](https://travis-ci.org/EGI-Foundation/ansible-style-guide.svg?branch=master)](https://travis-ci.org/EGI-Foundation/ansible-style-guide) [![Maintainability](https://api.codeclimate.com/v1/badges/f92ace02a15c3ecd758e/maintainability)](https://codeclimate.com/github/EGI-Foundation/ansible-style-guide/maintainability)

# Style Guide for EGI Ansible

This repository contains style guide for EGI's use of Ansible.
See [EGI's roles on Galaxy](https://galaxy.ansible.com/EGI-Foundation).
You can find guides on:

- [Documenting roles](docs/Documentation.md)
- [Ansible syntax in roles](docs/AnsibleSyntax.md)
- [Testing role scenarios, testing tools](docs/Testing.md)
- [Role release and publication](docs/Release.md)

## Motivation

EGI is responsible for several [internal services](https://www.egi.eu/internal-services) either directly, or through collaboration with partners.
Ansible roles are a simple, powerful way to express the desired state and composition of these services.
As with many languages and tools, a certain amount of leeway is possible when it comes to the style of implementation.
When working on roles, it's a good idea to have common nomenclature,
follow common styles and adopt common practice regarding documentation,
community engagement, maintenance, support, _etc_.
With this repository, we  

This repository expresses the consensus view of the [EGI Operations team](https://www.egi.eu/internal-services/operations-coordination-and-support/)
about how Ansible roles should be developed. It's raisons d'etre are:

- **Improve peer review**: discuss issues of style out-of-band so that when it
  comes to peer review of pull requests, there is an unambiguous reference.
  This will help **speed up** peer review, and make it **more attractive** for
  repository maintainers to actually conduct such peer review.
  Further it will **encourage contributors**, providing better transparency in
  the process, and allowing discussion around the style guide itself.

- **Improve reliability,  test coverage**:

- **Promote re-use**:
<!-- TODO : Using -->

## Contributing

As a community of practice, we welcome contributions which work
smoother and help us be more inclusive.
If you see something you think needs to change, or is missing, please
open a pull request.
If you could read the [Contributor's Guide](CONTRIBUTING.md) first,
that might help.

If you have feedback or would like to engage on issues related to this, start a discussion on the [EGI Community Forum](https://community.egi.eu)

## Code of Conduct

EGI believes in a healthy community and welcomes diverse points of view.
Contributors to and users of this repository are asked to refer to the [Code of Conduct](CODE_OF_CONDUCT.md) regarding any conflicts or events of abuse which may arise.
The maintainers undertake to abide by the Code of Conduct in their dealings with each other and the community.

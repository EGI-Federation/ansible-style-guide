---
layout: page
permalink: /about
title: Style Guide for EGI Ansible
---

<small>On this page</small>
- [Motivation](#motivation)
  - [Improve peer review](#improve-peer-review)
  - [Improve reliability, test coverage](#improve-reliability-test-coverage)
  - [Promote re-use](#promote-re-use)
  - [Give recognition to e-Infrastructure engineers](#give-recognition-to-e-infrastructure-engineers)
- [Dig deeper](#dig-deeper)
- [Contributing](#contributing)
- [Code of Conduct](#code-of-conduct)

## Motivation

EGI is responsible for several [internal services](https://www.egi.eu/internal-services) either directly, or through collaboration with partners.
Ansible roles are a simple, powerful way to express the desired state and composition of these services.
As with many languages and tools, a certain amount of leeway is possible when it comes to the style of implementation.
When working on roles, it's a good idea to have common nomenclature,
follow common styles and adopt common practice regarding documentation,
community engagement, maintenance, support, _etc_.
With this repository, we express the consensus view of the [EGI Operations team](https://www.egi.eu/internal-services/operations-coordination-and-support/)
about how Ansible roles should be developed.
Some of the motivations for this work are described below.

### Improve peer review

Roles represent infrastructure components - they should be designed to be widely applicable, and done in a collaborative way. 
When roles are developed in isolation, they often represent the narrow needs and biases of Discuss issues of style out-of-band so that when it 

  comes to peer review of pull requests, there is an unambiguous reference.
  This will help **speed up** peer review, and make it **more attractive** for
  repository maintainers to actually conduct such peer review.
  Further it will **encourage contributors**, providing better transparency in
  the process, and allowing discussion around the style guide itself.

### Improve reliability,  test coverage

Ansible roles can and should be _tested_ according to common profiles.
Infrastructure tests can be expressed in plain language, easy to read, and easy to audit.
Test coverage and profiles can be harmonised across roles so that they can be applied modularly with confidence.

### Promote re-use

Roles can only be re-used if they are reliable and deliver what they claim to.
If, through the points above, we can improve the re-use of these roles, we can avoid dispersion of effort and even better, start to give proper recognition to the authors and peer reviewers of roles.
All in all, we have a more robust infrastructure, less toil and better collaboration.

### Give recognition to e-Infrastructure engineers

A lot of effort goes into developing these roles, often with contributions from several members of the EGI Operations team and importantly members of the operations teams at participating sites.
A common style guide allows us to publish atomic components of e-Infrastructure as code, assigning DOIs to release numbers.
Using a common metadata schema, we are also able to recognise the concrete contributions of those who participated in the maintenance as well as the development of the package.
<em><strong>The professional careers of many researchers are built on citable publications in journals, and following this methodology we can jointly publish the results of operations work.</strong></em>

## Dig deeper

You can find guides on:

- [Documenting roles](docs/Documentation.md)
- [Ansible syntax in roles](docs/AnsibleSyntax.md)
- [Testing role scenarios, testing tools](docs/Testing.md)
- [Role release and publication](docs/Release.md)
- [Collaborating with code](docs/git.md)

See [EGI's roles on Galaxy](https://galaxy.ansible.com/EGI-Foundation).

## Contributing

As a community of practice, we welcome contributions which work
smoother and help us be more inclusive.
If you see something you think needs to change, or is missing, please
open a pull request.
If you could read the [Contributor's Guide](.github/CONTRIBUTING.md) first,
that might help.

If you have feedback or would like to engage on issues related to this, start a discussion on the [EGI Community Forum](https://community.egi.eu)

## Code of Conduct

EGI believes in a healthy community and welcomes diverse points of view.
Contributors to and users of this repository are asked to refer to the [Code of Conduct](.github/CODE_OF_CONDUCT.md) regarding any conflicts or events of abuse which may arise.
The maintainers undertake to abide by the Code of Conduct in their dealings with each other and the community.

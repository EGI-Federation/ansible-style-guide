---
layout: page
title: Testing and Trusting Ansible Roles
permalink: /test
---

This document provides some guidelines on **testing Ansible roles**:

  - **what**
  - **how**
  - but most importantly: **why?**

Testing is _essential_, oft-overlooked part of developing Ansible roles and is all the more important in our community, due to the federation and diversity of the infrastructure.
If roles are to be useful, they must first be _used_ and that means they must be **trustworthy**.

**How do sites know which roles to trust?**

While most all Ansible roles - in Galaxy or elsewhere - are functional in the strict sense of the word, it is hard for site administrators to know whether they can apply them "_off the shelf_" at their own site. Questions such as 

  - "Is this role going to break my repository configuration?"
  - "Is this role going to mess with my user setup?"
  - "Is this role going to put me into an unexpected downtime?"
  - "Is this role going top create a bigger attack surface at my site and expose me to threats I am not aware of?"

_etc_, are all foremost in a site administrator's mind. The temptation to "do it properly myself" is overwhelming, but ultimately imposes limits on what can be achieved.

Therefore, to answer the question "**Why do we test?**":

> We test, so that others may trust.

Or something like that... you get the idea.

## Typical strategies

The [Ansible documentation](https://docs.ansible.com/ansible) itself provides some [guidance on testing strategies](https://docs.ansible.com/ansible/latest/reference_appendices/test_strategies.html#testing-strategies) for playbooks, but we will concentrate on testing of **individual [roles](https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html?highlight=roles)**.

Roles should be re-usable and function independently, so it makes sense to include some form of internal testing.
A typical testing strategy will cover all aspects of the role's correctness, as well as it's effects on a production environment, including [idempotency](https://docs.ansible.com/ansible/latest/reference_appendices/glossary.html?highlight=idempotent), compliance with infrastructure and security specs, _etc_.
Care should be taken to limit the _scope_ of the test suite to what the role itself does - a site administrator should be able to inspect the test suite in order to understand what state the role is designed to achieve.

### Test-Driven Development

> "Test-driven development" refers to a style of programming in which three activities are tightly interwoven: coding, testing (in the form of writing unit tests) and design (in the form of refactoring).

This guide promotes [Test-Driven Development ](https://www.agilealliance.org/glossary/tdd/), and is heavily inspired by the [Site-Reliability Engineering Handbook chapter on Testing](https://landing.google.com/sre/book/chapters/testing-reliability.html).
In order to ensure that problems are solved and _stay solved_, this guide recommends therefore proceeding on the well-known "red-green-refactor" cadence.

### Functional Tests

### Integration Tests

## Creating scenarios and baselines

### Using Molecule

Have a look at the [nice introduction to TDD with molecule](https://brucellino.github.io/blog/Style-Guide-In-Action).

Installing [molecule](https://molecule.readthedocs.io/en/latest/).

```console
cd ansible-role-awesome-thing
pip install -r requirements.txt
```

Initialising a default molecule scenario.

```console
molecule init scenario --scenario-name default --driver-name docker
# Run full test scenario, destorying the containers
molecule test
```

Instead of always running the full scenario (that can be lengthy as everything
will be destroy and provisioned from scratch), it's possible to call specific
molecule targets.

```console
# Linting
molecule lint
# Creating the test container and running ansible
molecule converge
# Loging into running test container to make manual checks
molecule login
# Running molecule tests
molecule verify
# Updating the tests then re-running verify
molecule verify
# Updating ansible playbooks then converging
molecule converge
# Running molecule tests
molecule verify
# Cleaning the containers
molecule destroy
```

It's possible to create multiple scenarios with independent tests and custom sequences.
The generated test file for the default scenario is `molecule/default/tests/test_default.py`.
By default molecule with using test written with [testinfra](https://testinfra.readthedocs.io/).

Doing TDD will require you to:
* implement a failing test
* validate molecule tests are failing
* implement required behaviour using Ansible
* validate molecule tests are working
* rinse and repeat

### Using Other

## Infrastructure Tests

### TestInfra

### Inspec

### Others

## Test Fixtures

## Security and Vulnerability Tests

### EGI Security Profile

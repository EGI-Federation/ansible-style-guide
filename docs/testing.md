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

The [Ansible documentation](https://docs.ansible.com/ansible) itself provides some [guidance on testing strategies](https://docs.ansible.com/ansible/latest/reference_appendices/test_strategies.html#testing-strategies) for playbooks, but we will concentrate on testing of individual [roles](https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html?highlight=roles)

### Test-Driven Development

### Functional Tests

### Integration Tests


A typical testing strategy will cover all aspects of the role's correctness, as well as it's effects on a production environment, including [idempotency](https://docs.ansible.com/ansible/latest/reference_appendices/glossary.html?highlight=idempotent), compliance with infrastructure and security specs, _etc_.
  

## Creating scenarios and baselines



### Using Molecule

### Using Other

## Infrastructure Tests

### TestInfra

### Inspec

### Others

## Test Fixtures

## Security and Vulnerability Tests

### EGI Security Profile


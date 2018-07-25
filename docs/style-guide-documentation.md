---
title: Elements of EGI Ansible Style
permalink: /style
layout: page
---

[Ansible roles](https://docs.ansible.com/ansible/latest/user_guide/playbooks_reuse_roles.html) are re-usable components which express a well-defined functionality.
These are developed in collaboration with the product teams and released after peer-review.
All Ansible roles follow the [EGI Ansible Style Guide](https://github.com/EGI-Foundation/ansible-style-guide), and are thoroughly [tested](/test) for various scenarios.

## Style Guide

This page outlines the elements of style which an EGI Ansible role should have.

<small>On this page</small>

- [Style Guide](#style-guide)
  - [EGI Galaxy Template](#egi-galaxy-template)
  - [Asserting Compliance](#asserting-compliance)
  - [Ansible Syntax](#ansible-syntax)
  - [Documenting commenting roles](#documenting-commenting-roles)
  - [Dealing with variables](#dealing-with-variables)
- [Do's and Don'ts](#dos-and-donts)
  - [Guide do's <i class="far fa-check-circle"></i>](#guide-dos-i-class%22far-fa-check-circle%22i)
  - [Guide do not's](#guide-do-nots)


### EGI Galaxy Template

Ansible provides a tool - [Ansible Galaxy]() - for generating role skeletons:

```
ansible-galaxy init <role-name>
```

This tool uses `cookie-cutter` to generate the files needed for the role in the `role-name` directory.
Unfortunately, however, the vanilla template misses several things which we need for robust, tested, re-usable roles:

  - Configuration for Automated testing
  - files for [GitHub community health]()
  - Consistent metadata
  - Developer guides in the README and file comments

The [EGI Galaxy Template]() solves these problems by providing a more appropriate template from which to generate the role.

### Asserting Compliance

### Ansible Syntax

### Documenting commenting roles

For more detail see the [Documenting Roles]({{ site.url}}/documenting) page.

### Dealing with variables

<small><i class="far fa-hand-point-right"></i> Refer to the [Ansible variable hierarchy]() for detailed information on how Ansible handles variables.</small>

All roles should have **only** the relevant variables defined.
Roles should have variable names which are consistent with the purpose of the role.
Variables should be defined taking into account the deployment scenarios, and scoped against the environment in which the role is expressed.

When using debugging variables, ensure that they are only displayed at appropriate debugging levels.

Never store secrets as variables in files - use environment variables.


## Do's and Don'ts

### Guide do's <span class="green"><i class="far fa-check-circle"></i></span>

  1. When starting role development, **do** use the `egi-galaxy-template` as a skeleton:  
   ```
   ansible-galaxy-init --role-skeleton=egi-galaxy-template <role-name>
   ```
  2. When updating a role, **do** copy the existing files into the template that has been generated

### Guide do not's

  1. Do not use the vanilla Ansible Galaxy template 

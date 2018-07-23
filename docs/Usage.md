---
layout: page
title: Usage of the EGI Ansible Style Guide
permalink: /usage
---

## Usage

This repository contains style guide for EGI's use of Ansible.
It is meant to complement [Ansible's own style guide](https://docs.ansible.com/ansible/latest/dev_guide/style_guide/index.html?highlight=style%20guide), with a focus on helping developers and maintainers of EGI roles.

This style guide will help you to:

- Generate _styling_ 🏄🏾 Ansible roles, all dressed up and ready to roll 👗 using a [sweet skeleton](egi-galaxy-template)
- Pass an expert eye over your code, applying the [Ansible Fashion Police  👮🏽‍♀️ compliance profile](ansible-fashion-police), to help you stick with the style guide as you code.
- Write consistent tests 🛂 for deployment scenarios and adhere to the [EGI Quality Criteria](http://egi-qc.github.io/)

See the [**quickstart**](docs/Usage.md) if you're just _super_ keen 😍.


See [EGI's roles on Galaxy](https://galaxy.ansible.com/EGI-Foundation).


  - Keep a copy of this repository cloned nearby, and refer to the guides in it.
  - Use the customised Ansible Galaxy skeleton when developing roles:
  - Refer to the style guide when reviewing pull requests

```bash
git clone https://github.com/EGI-Foundation/ansible-style-guide
ansible-galaxy init --role-skeleton=ansible-style-guide/egi-galaxy-template ansible_myrole_role
```

Use this repository as a reference when generating and developing your roles.
In particular, a [custom Ansible Galaxy template](egi-galaxy-template) is
provided, which will generate roles which are ready for testing, and slightly
tweaked to be more applicable to EGI infrastructure.

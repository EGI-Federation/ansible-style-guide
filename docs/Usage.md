---
layout: page
title: EGI Ansible Style Guide Usage
permalink: /usage 
--- 
This repository contains style guide for EGI's use of Ansible. 
It is meant to complement [Ansible's own style guide](https://docs.ansible.com/ansible/latest/dev_guide/style_guide/index.html?highlight=style%20guide),
with a focus on helping developers and maintainers of EGI roles. This style guide will help you to follow to develop roles
of high quality and re-usability by assisting in:

<div class="row">
  <div class="card-deck">
    <div class="card border-0">
      <img src="images/Ansible-Mark-Large-RGB-Grey.png" alt="" class="card-top img-fluid rounded-circle" style="background: red">
      <div class="card-body">
        Generate
        <em>styling</em> 🏄🏾 Ansible roles, all dressed up and ready to roll 👗 using a sweet skeleton
        <br>
        <a href="{{ site.url }}/usage#generate" class="btn navigation__item">Generate</a>
      </div>
    </div>
    <div class="card border-0">
      <img src="images/Ansible-Mark-Large-RGB-Grey.png" alt="Test Ansible" class="card-top img-fluid rounded-circle" style="background: green">
      <div class="card-body">
        Write consistent tests 🛂 for deployment scenarios and adhere to the
        <a href="http://egi-qc.github.io/">EGI Quality Criteria</a>
        <br>
        <a href="{{ site.url}}/test" class="btn navigation__item">Test</a>
      </div>
    </div>
    <div class="card border-0">
      <img src="images/Ansible-Mark-Large-RGB-Grey.png" alt="Test Ansible" class="card-top img-fluid rounded-circle" style="background: #0067b1">
      <div class="card-body">
          Pass an expert eye over your code, applying the <a href="https://github.com/EGI-Foundation/ansible-fashion-police">
            Ansible Fashion Police 👮🏽‍♀️ compliance profile</a> to help you stick with the style guide as you code.
            <br>
            <a href="{{ site.url}}/compliance}}" class="btn navigation__item">Maintain</a>
      </div>
    </div>
  </div>
</div>
<div class="row">

</div>

## Quickstart for the  _super_ keen 😍.

**Set up your development environment**

You will need [molecule](http://molecule.readthedocs.io/) and the corresponding [Ansible](https://docs.ansible.com/ansible) release to develop roles.

```bash
$virtualenv egi-ansible
New python executable in egi-ansible/bin/python
Installing setuptools, pip, wheel...done.
$source egi-ansible/bin/activate
(egi-ansible)$ pip install molecule
```
<small>We assume you already have git, python (2 or 3) and pip installed</small> 

<hr>
**Clone this repository**

```bash
git clone https://github.com/EGI-Foundation/ansible-style-guide
```

**Use the customised Ansible Galaxy skeleton when developing roles**

```bash
ansible-galaxy init \
--role-skeleton=ansible-style-guide/egi-galaxy-template/ \
ansible-role-awesome-thing
```

We have added a lot of extras to the vanilla Ansible Galaxy template.
EGI's Ansible Galaxy role skeleton includes:

  * Testing on [Travis](https://travis-ci.org)
  * Clean generation of `meta/main.yml` for EGI target platforms
  * GitHub issue and pull request templates
  * Communty Health improvement files such as guides for contributors, READMEs and codes of conduct.
<hr>

**Write some failing tests**

See [the Testing]({{ site.url }}/testing) page for more.

<hr>

**Refer to the style guide** when reviewing pull requests
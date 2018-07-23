---
layout: page
title: Usage of the EGI Ansible Style Guide
permalink: /usage
---

## Usage

This repository contains style guide for EGI's use of Ansible.
It is meant to complement [Ansible's own style guide](https://docs.ansible.com/ansible/latest/dev_guide/style_guide/index.html?highlight=style%20guide), with a focus on helping developers and maintainers of EGI roles.

This style guide will help you to follow to develop roles of high quality and re-usability by assisting in: 

<div class="card">
  <img class="card-img-top" data-src="holder.js/100x180/?text=Image cap" alt="Card image cap">
  <div class="card-body">
    <h4 class="card-title">Title</h4>
    <p class="card-text">Text</p>
  </div>
  <div class="card-body">
    <a href="#" class="card-link">Card link</a>
    <a href="#" class="card-link">Another link</a>
  </div>
</div>

<div class="row text-center">
<div class="col col-md">
  <div class="card center"> 
    <img src="images/Ansible-Mark-Large-RGB-Grey.png"
    alt=""
    class="card-top img-fluid rounded-circle"
    style="background: red">
   <div class="card-body">
      <h5>Generate</h5>
      Generate <em>styling</em> 🏄🏾 Ansible roles, all dressed up and ready to roll 👗 using a sweet skeleton
    </div>
  </div>
</div>
<div class="col col-md">
    <div class="card center"> 
        <img src="images/Ansible-Mark-Large-RGB-Grey.png" 
        alt="Test Ansible" 
        class="card-top img-fluid rounded-circle"
        style="background: green">
      <div class="card-body">
        <h5>Test</h5>
      </div>
    </div>
  </div>
<div class="col col-md">
    <div class="card center"> 
        <img src="images/Ansible-Mark-Large-RGB-Grey.png"
        alt="Test Ansible"
        class="card-top img-fluid rounded-circle"
        style="background: #0067b1">
      <div class="card-body">
  <h5>Maintain</h5>
  </div>
  </div>
</div>
</div>
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

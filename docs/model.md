---
layout: page
title: Modelling UMD
intro: 
---

The [Unified Middleware Distribution](http://repository.egi.eu) (UMD) is a redistribution of middleware components provided by several product teams.
Each product provides specific capabilities, such as compute, data storage, authorisation, _etc_.

These components are tested upstream by their respective product teams, and then undergo a test on Quality Criteria, after which they arrive in the [EGI Repository](https://repository.egi.eu)

Sites in the federation then need to deploy these products in order to create viable parts of the infrastructure.

<div class="row">
<div class="col col-md mx-auto"><h3 class="text-center">Deploy with Ansible or Puppet</h3></div>
</div>
<div class="row">
  <div class="col col-md mx-auto text-center">
      <img src="/images/Ansible-Mark-Large-RGB-Mango.png" alt="Ansible" class="user-image">
      <p class="text-center">
          Ansible <a href="{{ site.url }}/ansible-roles">roles</a> and <a href="{{ site.url }}/ansible-playbooks">playbooks</a> for reproducible, idempotent deployment
      </p>
  </div>
  <div class="col col-md mx-auto text-center">
      <a href="{{ site.url}}/puppet-modules">
        <img src="/images/Puppet-Logo-Mark-Amber-sm.png" alt="Puppet modules" class="user-image">
      </a>
    </div>
</div>
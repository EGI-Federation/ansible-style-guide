---
title: Design Principles
permalink: /principles
layout: page
---

The EGI federation is complex and has many participating organisations and sites, with overall co-ordination  but not central point of control. As such, it is neither possible nor desirable to adopt a prescriptive approach to developing the code that expresses the services in the federation.

Rather, we express here the general principles which we hope all infrastructure code should respect, making it easier for teams to collaborate and for delivery and deployment to be frictionless.

## Twelve-Factor roles

We take inspiration from the 

## Principles in developing Ansible roles

As general principles, roles following the EGI Ansible Style Guide must

  - **Not be Magic**
  - **Cover UMD**
  - **Be Continuously Integrated**
  - **Be Discoverable**
  - **Remain Platform Agnostic**
  - **Be Production Ready**
  - **Enable Collaboration and Community Contributions**
  - **Be Re-usable**
  - **Maintain a clear dependency tree**

### No Magic

The single source of truth is the role's source code repository. The role should do what it appears to do, in any environment. It should be clear where secrets are needed, with appropriate messages. The role should document its own dependencies, with example playbooks, and the examples should have been tested and work. No manual intervention should be necessary.

### Cover UMD

For now, we want to cover the products of the [Unified Middleware Distribution (UMD)](https://repository.egi.eu). Each of the products in the middleware distribution should be deployable and appropriately configurable, for each of the supported platforms.

### Continuous Integration

Changes to role source code should trigger events in a continuous integration and delivery pipeline to determine the effect of those changes in environments similar to the 

### Discoverability

### Platform Agnostic

### Production Ready

### Collaboration and Community

### Re-usability

### Clear Dependency Tree
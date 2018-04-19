# Ansible syntax

This document serves to guide the development of Ansible roles, by providing relevant templates and style guides.

## Generating roles

  1. Roles should be generated with [ansible-galaxy](http://docs.ansible.com/ansible/latest/cli/ansible-galaxy.html) using the
 [role skeleton](role-skeleton/)

## Coverage

  1. The role must be accurately described in `meta/main.yml`
  1. Your role should support **at least** the operating systems currently supported for EGI sites, unless it's specific to a particular supported OS.

## Variables

- ℹ️ Remember [Ansible variable file separation](http://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html?highlight=variable%20precedence#variable-file-separation)
- ℹ️ Remember the [Ansible variable precedence](http://docs.ansible.com/ansible/latest/user_guide/playbooks_variables.html?highlight=variable%20precedence#variable-precedence-where-should-i-put-a-variable)

1. All variables used in `defaults/` and `vars/` must be described in `meta/main.yml`, in the relevant section.
1. Default variables should be defined wherever possible
1. Variables names should not bias deployment scenarios or include platform names. Instead, use facts
  - Avoid variables like `if_centos` ➡️ Prefer `if (ansible_os_family == 'redhat')`
1. Construct unique variables for various deployment scenarios.
  - If a variable value varies across environments, construct it so that these environments are taken into account.
  - Avoid
1. Default vars should pass tests.
1. Provide sane range defaults for variables where applicable, in the README.
1. Variables should be kept to the bare minimum; unused variables should be eliminated.

## Secrets

- ℹ️  Secrets are variables which are **required** for the role to be
      expressed and which may change the desired behaviour of the role
      from site to site.
- ℹ️ Examples include, but are not limited to
  - user data, especially passwords
  - API tokens
- ℹ️ Ansible provides a [vault](http://docs.ansible.com/ansible/latest/user_guide/vault.html) which can be used to protect secrets.

1. **☠️ ☠️ ️☠️️ ️ ️Avoid putting secrets in the repo ☠️ ☠️ ☠️ ️**
1. **☠️️☠️️ If you must put secrets in the repo ☠️️☠️️** then they **must** be
    encrypted and the repository should be private.
1. **☠️️ Remove the need to use secrets in a role️️ ☠️**
  - If secrets variables are _needed_, default them to safe values
  - Document the need to pass variables on the command line

# ansible-k8s-cluster
=======

Ansible role for configuring Kubernetes cluster

Requirements
------------

- [container runtime](https://kubernetes.io/docs/setup/production-environment/container-runtimes/) should be installed (containerd is now the only supported container runtime)
- `iproute2` package to collect network facts for Debian-like OS

Role Variables
--------------

All variables are defined as defaults in [defaults/main.yml](defaults/main.yml) and may be overrided.


Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).

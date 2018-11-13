Role Name
=========

This role will install AdGuard Home () on target system(s).

Requirements
------------

If you use molecule to test this role (which you should if you modify it) the requirements are as follows:

* ansible (obviously)
* docker
* docker-py
* "pytest<3.10"
* ansible-lint
* molecule

If you are going to run a verifier the engine and linter for that will be needed as well.

Role Variables
--------------

agh_url: The URL of the AdGuard Home tarball. Can be found at https://github.com/AdguardTeam/AdGuardHome/releases

coredns_port: This is the port the DNS server will listen on

agh_bind_port: This is the port the AdGuard Home UI is made available

upstream_servers: A dict of upstream DNS resolvers to use. TLS is hard coded in the AdGuardHome.yaml template for ease of use.

adguard_home_allow: Domains (and subdomains) to explicitly allow

adguard_home_deny: Domains (and subdomains) to explicitly block

Dependencies
------------

N/A

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables
passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - role: chris-short.adguard-home

License
-------

MIT

Author Information
------------------

Chris Short
chris@chrisshort.net
https://chrisshort.net/
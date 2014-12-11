puppet-bundler
--------------

Simple tool to validate and lint metadata.json files in Puppet modules.



install
-------

```shell
gem install puppet-bundler
```



usage
-----

```shell
puppet-bundler /path/too/metadata.json
/home/nibz/.puppet/modules
└── puppetlabs-stdlib (v4.4.0)
/home/nibz/.puppet/modules
└─┬ puppetlabs-apt (v1.7.0)
  └── puppetlabs-stdlib (v4.4.0)
/home/nibz/.puppet/modules
└─┬ puppetlabs-concat (v1.1.2)
  └── puppetlabs-stdlib (v4.4.0)
/home/nibz/.puppet/modules
└── puppetlabs-firewall (v1.2.0)
```


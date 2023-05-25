# ansible-k8s-cluster

Ansible role for configuring Kubernetes cluster

Role initializes Kubernetes cluster from the scratch, adds all defined control-plane and worker nodes. Key feature of the role is ability to define whatever option you want. It's achieved by using [kubeadm configuration](https://kubernetes.io/docs/reference/config-api/kubeadm-config.v1beta3/).

Requirements
------------

- [container runtime](https://kubernetes.io/docs/setup/production-environment/container-runtimes/) should be installed (containerd is now the only supported container runtime)
- `iproute2` package to collect network facts for Debian-like OS
- provide all required certificates and appropriate etcd endpoint if you use external etcd cluster 

Role Variables
--------------

All variables are defined as defaults in [defaults/main.yml](defaults/main.yml) and may be overrided.

| Name           | Default value | Description                        |
| -------------- | ------------- | -----------------------------------|
|`k8s_cluster_kubelet_version`|1.26.0-00|kubelet version|
|`k8s_cluster_kubeadm_version`|1.26.0-00|kubeadm version|
|`k8s_cluster_kubectl_version`|1.26.0-00|kubectl version|
|`k8s_cluster_apt_key_url`|https://packages.cloud.google.com/apt/doc/apt-key.gpg||
|`k8s_cluster_apt_repository`|deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main||
|`k8s_cluster_kubernetes_version`|1.26.0|Kubernetes version|
|`k8s_cluster_kubelet_config_root_dir`|/etc/kubernetes|Default kubelet configuration directory|
|`k8s_cluster_node_type`|worker|Default node type. If you need to init or join master, you should set this variable to 'master'|
|`k8s_cluster_initial_master`|false|This variable identifies initial master node to initialize cluster. It should be assigned to the only node with 'true' value|
|`k8s_cluster_init_configuration`|See [defaults/main.yml](defaults/main.yml)|Represents `kind: InitConfiguration` of the cluster in pure yaml format|
|`k8s_cluster_cluster_configuration`|See [defaults/main.yml](defaults/main.yml)|Represents `kind: ClusterConfiguration` of the cluster in pure yaml format|
|`k8s_cluster_kubelet_configuration`|See [defaults/main.yml](defaults/main.yml)|Represents `kind: KubeletConfiguration` in pure yaml format|
|`k8s_cluster_kubeproxy_configuration`|""|Represents `kind: KubeproxyConfiguration` in pure yaml format|
|`k8s_cluster_join_configuration`|See [defaults/main.yml](defaults/main.yml)|Represents `kind: JoinConfiguration` of the cluster in pure yaml format|
|`k8s_cluster_flannel_apply`|https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml|Flannel configuration. Will be removed or significantly changed in the future|

\* except `apiVersion` and `kind` fields

Dependencies
------------

Use any role to install containerd

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

Apache 2.0

Author Information
------------------

Cloud Labs shared roles

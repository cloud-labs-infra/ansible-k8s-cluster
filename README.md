# ansible-k8s-cluster

Ansible role for configuring Kubernetes cluster

Role initializes Kubernetes cluster from the scratch, adds all defined control-plane and worker nodes. Key feature of the role is ability to define whatever option you want. It's achieved by using [kubeadm configuration](https://kubernetes.io/docs/reference/config-api/kubeadm-config.v1beta3/).

Requirements
------------

- [container runtime](https://kubernetes.io/docs/setup/production-environment/container-runtimes/). Containerd is now the only supported container runtime
- [CNI plugin](https://github.com/containernetworking/cni)
- `iproute2` package (collect network facts for Debian-like OS)
- Client certificates (if you use external etcd cluster with TLS)

Role Variables
--------------

All variables are defined as defaults in [defaults/main.yml](defaults/main.yml) and may be overrided.

| Name                                       | Default value                                                                                                        | Description                                                                                                                                                                   |
|--------------------------------------------|----------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `k8s_cluster_kube_version`                 | 1.28.8-1.1                                                                                                           | `kubelet`, `kubeadm` and `kubectl` versions                                                                                                                                   |
| `k8s_cluster_apt_key_url`                  | https://packages.cloud.google.com/apt/doc/apt-key.gpg                                                                | Apt key url                                                                                                                                                                   |
| `k8s_cluster_apt_key_file`                 | /usr/share/keyrings/kubernetes-archive-keyring.gpg                                                                   | Apt key file                                                                                                                                                                  |
| `k8s_cluster_apt_repository`               | deb [signed-by=/usr/share/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main | Apt repository                                                                                                                                                                |
| `k8s_cluster_kubernetes_version`           | 1.28.8                                                                                                               | Kubernetes version                                                                                                                                                            |
| `k8s_cluster_kubelet_config_root_dir`      | /etc/kubernetes                                                                                                      | Default kubelet configuration directory                                                                                                                                       |
| `k8s_cluster_node_type`                    | worker                                                                                                               | Default node type. If you need to init or join master, you should set this variable to 'master'                                                                               |
| `k8s_cluster_node_name`                    | inventory_hostname                                                                                                   | Name of k8s node                                                                                                                                                              |
| `k8s_cluster_initial_master`               | false                                                                                                                | This variable identifies initial master node to initialize cluster. It should be assigned to the only node with 'true' value                                                  |
| `k8s_cluster_init_configuration`           | See [defaults/main.yml](defaults/main.yml)                                                                           | Represents `kind: InitConfiguration` of the cluster in pure yaml format                                                                                                       |
| `k8s_cluster_cluster_configuration`        | See [defaults/main.yml](defaults/main.yml)                                                                           | Represents `kind: ClusterConfiguration` of the cluster in pure yaml format                                                                                                    |
| `k8s_cluster_kubelet_configuration`        | See [defaults/main.yml](defaults/main.yml)                                                                           | Represents `kind: KubeletConfiguration` in pure yaml format                                                                                                                   |
| `k8s_cluster_kubeproxy_configuration`      | ""                                                                                                                   | Represents `kind: KubeproxyConfiguration` in pure yaml format                                                                                                                 |
| `k8s_cluster_join_configuration`           | See [defaults/main.yml](defaults/main.yml)                                                                           | Represents `kind: JoinConfiguration` of the cluster in pure yaml format                                                                                                       |
| `k8s_cluster_flannel_apply`                | https://github.com/flannel-io/flannel/releases/latest/download/kube-flannel.yml                                      | Default Flannel manifest. Read more about [Flannel](https://github.com/flannel-io/flannel)                                                                                    |
| `k8s_cluster_custom_networking_tasks_path` | ""                                                                                                                   | Path to file with a set of tasks to configure networking. It could be a set of tasks or even `include_role` statement. It will run only once during cluster initialization    |

\* except `apiVersion` and `kind` fields

Dependencies
------------

We recommend the following roles to install Containerd and CNI plugin:

- geerlingguy.containerd
- githubixx.cni

Example Playbook
----------------

You can also find role usage examples in converge playbooks from `molecule/` directory.

Example below creates single-master Kubernetes cluster with three worker nodes (etcd will be provisioned automatically by kubeadm as a part of master node): 

```yaml
# inventory.ini
[masters]
master.example.com k8s_cluster_node_type="master" k8s_cluster_initial_master="true"

[workers]
worker-1.example.com
worker-2.example.com
worker-3.example.com

# playbook.yml
- hosts: all
  become: true
  roles:
    - { role: geerlingguy.containerd }
    - { role: cloudlabsinfra.k8s_cluster }
```

License
-------

Apache 2.0

Author Information
------------------

Cloud Labs shared roles

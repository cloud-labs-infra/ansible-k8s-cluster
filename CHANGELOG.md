# Changelog

All notable changes to this project will be documented in this file.

### [1.5.1](https://github.com/cloud-labs-infra/ansible-k8s-cluster/compare/v1.5.0...v1.5.1) (2023-06-27)


### Bug Fixes

* check for master node to be ready ([#51](https://github.com/cloud-labs-infra/ansible-k8s-cluster/issues/51)) ([82cf2f8](https://github.com/cloud-labs-infra/ansible-k8s-cluster/commit/82cf2f812d14378bff38e35b679bd5bc5ab081b0))

## [1.5.0](https://github.com/cloud-labs-infra/ansible-k8s-cluster/compare/v1.4.6...v1.5.0) (2023-06-22)


### Features

* new variable for node names ([#53](https://github.com/cloud-labs-infra/ansible-k8s-cluster/issues/53)) ([d89177a](https://github.com/cloud-labs-infra/ansible-k8s-cluster/commit/d89177a481d3d99fcdfb8a6d6f96393d8b219979))


### Bug Fixes

* remove cri binding ([#45](https://github.com/cloud-labs-infra/ansible-k8s-cluster/issues/45)) ([6612ac5](https://github.com/cloud-labs-infra/ansible-k8s-cluster/commit/6612ac5e52fa2543c236bc33e611d2c695f5835b))

### [1.4.6](https://github.com/cloud-labs-infra/ansible-k8s-cluster/compare/v1.4.5...v1.4.6) (2023-06-20)


### Bug Fixes

* install jq ([#52](https://github.com/cloud-labs-infra/ansible-k8s-cluster/issues/52)) ([5c885f3](https://github.com/cloud-labs-infra/ansible-k8s-cluster/commit/5c885f3682771c8f291afa765d2ff457f72d9550))

### [1.4.5](https://github.com/cloud-labs-infra/ansible-k8s-cluster/compare/v1.4.4...v1.4.5) (2023-05-29)


### Bug Fixes

* move vars from converge to molecule ([#42](https://github.com/cloud-labs-infra/ansible-k8s-cluster/issues/42)) ([c6260fd](https://github.com/cloud-labs-infra/ansible-k8s-cluster/commit/c6260fddd89538f953fe3de89e43b16ebe8fa27f))

### [1.4.4](https://github.com/cloud-labs-infra/ansible-k8s-cluster/compare/v1.4.3...v1.4.4) (2023-05-26)


### Bug Fixes

* run tests each release ([#38](https://github.com/cloud-labs-infra/ansible-k8s-cluster/issues/38)) ([f6dfd1f](https://github.com/cloud-labs-infra/ansible-k8s-cluster/commit/f6dfd1fbd636d5dc9c630fde0d40adaef8a6e257))

### [1.4.3](https://github.com/cloud-labs-infra/ansible-k8s-cluster/compare/v1.4.2...v1.4.3) (2023-05-25)


### Bug Fixes

* add tests for secure etcd ([#35](https://github.com/cloud-labs-infra/ansible-k8s-cluster/issues/35)) ([9468b08](https://github.com/cloud-labs-infra/ansible-k8s-cluster/commit/9468b083c4f0ed21168b44c3d004865caab05070))

### [1.4.2](https://github.com/cloud-labs-infra/ansible-k8s-cluster/compare/v1.4.1...v1.4.2) (2023-05-25)


### Bug Fixes

* fill readme ([#34](https://github.com/cloud-labs-infra/ansible-k8s-cluster/issues/34)) ([34fd584](https://github.com/cloud-labs-infra/ansible-k8s-cluster/commit/34fd584ff538d42d1c1344fa26c19074b7f81c72))

### [1.4.1](https://github.com/cloud-labs-infra/ansible-k8s-cluster/compare/v1.4.0...v1.4.1) (2023-05-24)


### Bug Fixes

* add publishing to galaxy [#28](https://github.com/cloud-labs-infra/ansible-k8s-cluster/issues/28) ([#29](https://github.com/cloud-labs-infra/ansible-k8s-cluster/issues/29)) ([fe22f3f](https://github.com/cloud-labs-infra/ansible-k8s-cluster/commit/fe22f3f40aeefd92cb9c7f6620ee8ecee21e7fd2))

## [1.4.0](https://github.com/cloud-labs-infra/ansible-k8s-cluster/compare/v1.3.0...v1.4.0) (2023-05-23)


### Features

* join masters ([#27](https://github.com/cloud-labs-infra/ansible-k8s-cluster/issues/27)) ([33f148e](https://github.com/cloud-labs-infra/ansible-k8s-cluster/commit/33f148e2cc20f666018ce330a30a292ca4b7af95))

## [1.3.0](https://github.com/cloud-labs-infra/ansible-role-k8s-cluster/compare/v1.2.0...v1.3.0) (2023-05-22)


### Features

* switch preflight check behaviour [#25](https://github.com/cloud-labs-infra/ansible-role-k8s-cluster/issues/25) ([#26](https://github.com/cloud-labs-infra/ansible-role-k8s-cluster/issues/26)) ([0d2aea3](https://github.com/cloud-labs-infra/ansible-role-k8s-cluster/commit/0d2aea3d8ccb8d38556e673d5d4042f55d1fe382))

## [1.2.0](https://github.com/cloud-labs-infra/ansible-role-k8s-cluster/compare/v1.1.0...v1.2.0) (2023-05-19)


### Features

* join workers ([#20](https://github.com/cloud-labs-infra/ansible-role-k8s-cluster/issues/20)) ([056f694](https://github.com/cloud-labs-infra/ansible-role-k8s-cluster/commit/056f694175e9daeab3d6f3856a8a211333bae4da))

## [1.1.0](https://github.com/cloud-labs-infra/ansible-role-k8s-cluster/compare/v1.0.0...v1.1.0) (2023-05-11)


### Features

* [#12](https://github.com/cloud-labs-infra/ansible-role-k8s-cluster/issues/12) extend kubeadm config ([#14](https://github.com/cloud-labs-infra/ansible-role-k8s-cluster/issues/14)) ([c3a696d](https://github.com/cloud-labs-infra/ansible-role-k8s-cluster/commit/c3a696d26c7f51ba6083bb27a9b7bb40d6a5c6a2))

## 1.0.0 (2023-05-02)


### Bug Fixes

* fix tests problems with CI ([#18](https://github.com/cloud-labs-infra/ansible-role-k8s-cluster/issues/18)) ([6298be1](https://github.com/cloud-labs-infra/ansible-role-k8s-cluster/commit/6298be10fab4df87bc4cab82c848c6273cfad187)), closes [#17](https://github.com/cloud-labs-infra/ansible-role-k8s-cluster/issues/17)

# 🧰 Kubernetes Ops Tools

一套个人整理的 Kubernetes 运维小工具，用于日常：

- 集群状态检查
- Pod / Deployment 排错
- 发布状态确认
- Helm 资源检查

所有脚本均基于 `kubectl`，适合：
- 学习 Kubernetes
- 日常运维
- 故障排查

---

## 📂 目录说明

```text
scripts/
├── cluster/    # 集群 & Node 相关
├── pod/        # Pod 排错
├── workload/   # Deployment / StatefulSet
├── config/     # kubeconfig / context
helm/           # Helm 相关工具

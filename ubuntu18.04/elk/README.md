# ansible

Use elastic.elasticsearch role install elasticsearch.

注意：
安装的 oss 版本 es 和 kibana 是没有监控功能的，所以无法在 kibana UI 中看到 es 节点的情况。
但是可以使用 GET /_cat/nodes?v API来检查 es 节点。

todo: 自动安装带有 x-pack basic license 的 es 集群。

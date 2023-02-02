# redis-cluster-docker-compose
docker-compose部署redis集群

### 部署过程

1. 安装docker、docker-compose

2. 执行gconf.sh脚本，参数1：起始端口、参数2：结束端口、参数3：宿主机ip

3. 执行命令
  
       docker-compose up --build -d
    
4. 执行cc.sh脚本

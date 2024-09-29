## 关于SystemC

SystemC 是一种用于系统级设计的硬件描述语言，广泛应用于电子系统的建模、仿真和验证。它基于 C++ 语言，提供了扩展的语法和库，使得开发者能够在更高抽象层次上进行设计。

## SystemC环境获取

1. 下载systemc源码包：https://www.accellera.org/downloads/standards/systemc
（下载最上面那个tar.gz)

2. 将压缩包放置到用户目录下，并解压
```shell
tar -zxvf systemc-x.tar.gz
# 这里版本不限制，最新版即可
```
3. 进入到systemc-x目录下

4. 新建临时文件夹tmp,进入

5. 运行
```shell
../configure
make
make install
```

6. 设置环境变量
```shell
export LD_LIBRARY_PATH=/home/centos7/systemc-2.3.3/lib-linux64 
# 其中/home/cnetos7/为文件解压路径，根据自身情况确定
```
具体参考这一篇https://blog.csdn.net/weixin_44381276/article/details/121641494#
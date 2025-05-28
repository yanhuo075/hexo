#!/bin/bash

# 配置环境
npm install -g hexo-cli
mkdir hexo
cd hexo
hexo init
npm install
rm -rf source/_posts
mkdir -p source/_posts

# 安装主题(你们可以改成自己喜欢的主题)
git https://github.com/fluid-dev/hexo-theme-fluid themes/hexo-theme-fluid

# 安装主题
npm install --save hexo-theme-fluid

# 复制配置文件
cp config.yml hexo

# 开始构建
cd hexo && hexo g --config config.yml

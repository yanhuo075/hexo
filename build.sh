#!/bin/bash

# 配置环境
npm install -g hexo-cli
hexo init
npm install
rm -rf source/_posts
mkdir -p source/_posts

# 安装主题(你们可以改成自己喜欢的主题)
git clone https://github.com/fluid-dev/hexo-theme-fluid themes/hexo-theme-fluid

# 安装主题
npm install --save hexo-theme-fluid

# 开始构建
hexo g --config config.yml

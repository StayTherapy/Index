---
layout: post
title:  "Jekyll 配置说明"
date:   2016-01-31
categories: jekyll update
---
#### Jekyll 配置说明

> 静态网站生成器： 用来生成静态HTML页面的工具，例如把 `MarkDown` 文本发布为网页。

##### 什么是 Jekyll

Jekyll 是一个简单的(*simple*)、亲博客的(*blog-aware*)静态网站生成器(*static site generator*)。在一个包含多种原始(文本)文件的模板目录中，经过格式转换(如 Markdown)以及 Jekyll 的Liquid渲染，生成一个可以在任何你所偏好的 Web 站点上可即时发布、完整的静态站点。 Jekyll 同样也用于 GitHub Pages 的后台发布引擎，意味着我们可以在 GitHub 服务器上使用 Jekyll **免费**搭建项目网页、博客甚至网站。

##### 安装 Jekyll

> 系统版本：OSX EI Capitan 10.11.3

一般来说用一条命令 `gem install jekyll` 就可以搞定的安装， 但是 EI Capitan 10.11.3 因为ruby版本和系统完整性保护(System Integrity Protection)的原因，总数会出现`Operation not permitted`和`SSL`的错误。所以可行的安装方法如下：

第一步，使用`brew`安装`ruby`

``` bash
# 没有 brew 的使用下列命令安装(同一行)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# 安装 ruby
brew install ruby
```

> 为什么要用 brew？
> 
> 因为系统带的 ruby （安装完 Xcode 之后出现）所在路径为`/usr/bin/ruby`，那么`gem`路径也在`/usr/bin/`下面，前面说过EI Capitan有系统目录保护，所以直接运行`gem install jekyll`会将 jekyll 安装到 `/usr/bin/`, 这样系统就会出现`Operation not permitte`的错误，即使用`sudo`也不行。
> 
> 而 homebrew也就是`brew`命令安装的软件包都会放在`/usr/local/bin/`下面，这个目录是不受系统完整性保护限制的。

第二步，安装 `jekyll`

``` bash
# 使用下列命令安装 jekyll
/usr/local/bin/gem install jekyll
# 出现 Errno::EPIPE: Broken pipe - SSL_connect 错误的话多试几次，实在不行设置一下终端代理，因为我本地有 Shadowsockes 客户端， 所以使用 socks5 代理让终端先翻出去再说
ALL_PROXY=socks5://127.0.0.1:1080 /usr/local/bin/gem install jekyll
# 最后提示安装成功
Done installing documentation for rb-inotify, listen, jekyll-watch, kramdown, liquid, mercenary, rouge, safe_yaml, jekyll after 17 seconds
9 gems installed
# 查看jekyll版本
/usr/local/bin/jekyll -v
jekyll 3.1.1
```

> 关于上述程序路径 /usr/local/bin/ 的说明
> 
> 此时系统有两个版本的 ruby ， 调用某个程序最安全的方法是使用绝对路径，如`/usr/local/bin/gem`, `/usr/local/bin/jekyll`。 其实可以通过 `echo $PATH`查看`PATH`环境变量，如果`/usr/local/bin`顺序在`/usr/bin`之前，并且用 `which ruby`查看到的输出是`/usr/local/bin/ruby`， 那就可以直接使用`jekyll`替代`/usr/local/bin/jekyll`了, 因为`jekyll`是和`ruby`在同一个目录的。

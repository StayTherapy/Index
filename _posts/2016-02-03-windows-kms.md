---
layout: post
title:  "Microsoft 产品批量激活手册"
date:   2016-02-03
categories: Windows Server
---
# Microsoft 产品批量激活手册

> 激活方式说明：
> 
> **KMS**,`Key Management Service`, 密钥管理服务, 激活激活产品 180 以内至少需要链接到 `KMS`服务器一次进行产品激活
> 
> **MAK**,`Multiple Activation Key`,多次密钥激活服务，永久激活



#### Office KMS 配置服务说明

**KB**

[Office 2013 的批量激活](https://technet.microsoft.com/zh-cn/library/ee705504.aspx)

[Office KMS 客户端激活诊断](https://home.diagnostics.support.microsoft.com/SelfHelp?knowledgebaseArticleFilter=2870357)

**安装/补丁包**

[Microsoft Office 2013 批量许可证包](https://www.microsoft.com/zh-cn/download/details.aspx?id=35584)

[KB 2757817](https://support.microsoft.com/en-us/kb/2757817),在 Windows Server 2008 R2 或 Windows 7（批量版本）上设置 KMS 主机时的补丁

[KB2885698](https://support.microsoft.com/en-us/kb/2885698),Update adds support for Windows 8.1 and Windows Server 2012 R2 clients to Windows Server 2008, Windows 7, Windows Server 2008 R2, Windows 8, and Windows Server 2012 KMS hosts

[KB3058168](https://support.microsoft.com/en-us/kb/3058168), activate Windows 10 from Windows 8 or Windows 8.1, and Windows Server 2012 or Windows Server 2012 R2 KMS hosts

**参考**

[Office 2013 X64 VL版+WIN7 X64的自建KMS激活经验分享](http://www.officezhushou.com/office2013/560.html) （使用 ospp.vbs）

**脚本**

script1.bat, 处理 `Windows 10` 下 `Office 2013` 激活失败问题

OSPP.VBS, Office 附带文档，路径：`C:\Program Files (x86)\Microsoft Office\Office15`，在 ospp 分枝使用

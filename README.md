#     SSM集成的项目，项目使用Maven管理

▇ 项目使用Spring4.1.2.RELEASE + SpringMVC4.1.2.RELEASE + Mybatis3.3.0

▇ 项目集成了Mybatis分页插件  

▇ 项目使用的mysql数据库

▇ 运用spring4 对泛型Mapper 的注入

▇ 前端 使用 Bootstrap + Jquery + CSS + Jsp 

▇ 服务器 Tomcat7 

▇ 项目使用 redis 提高系统性能






#      作者信息

▇ 陈浩贤  (Hyman Chen)



#      记录开发日常

▓ 弃用通用Mapper,原因： 在开发过程中，调用selectByExample(example); 报空指针异常，网上文档太少，原因不明。

▓ 删除分页代码，改用Mybatis分页插件，PageHelper.startPage(page,rows); 一句搞定，十分强大。

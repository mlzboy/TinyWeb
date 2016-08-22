### Tiny Web server
  * 本程序大部分代码来自[《深入理解计算机系统》2nd](http://csapp.cs.cmu.edu/2e/waside.html)中TINY Web服务器代码，将原先的迭代服务器(不支持并发)改成了基于线程池的并发服务
器。通过使用生产者-消费者模型来提高服务器的性能。服务器是由一个主线程和一组工作者线程池构成，主线程不断接受来自客户端的连接请求，
并将得到的已连接描述符插入一个有限的缓冲区中，每个工作者线程反复地从共享缓冲区中取出描述符，为客户端服务，然后等待下一个描述符。
  * 目前只支持简单的GET请求，支持服务静态内容和服务动态内容，静态内容在./目录，实现了显示图片，文本，下载文件等功能。动态内容在
./cgi-bin/目录下，目前此目录只有一个用Python写的cgi测试脚本，将URL传递的参数相加，然后将结果返回给浏览器。
  * 一个基于线程池的并发服务器,在linux下编写。支持简单的GET请求，静态服务在/目录下，实现了显示图片,文本，下载文件等功能。动态服
务在/cgi-bin/目录下，目前只有一个简单的加法器。使用了线程池，对共享资源进行加锁控制，确保程序的正确性，用到了生产者消费者模型，
主线程接收连接，生产资源，消费线程从共享buffer里取出连接描述符，提供服务。

![image](https://github.com/qianghaohao/TinyWeb/raw/master/img/img.png)
#### 使用方法:  
  1. make
  2. 运行./TinyWeb port即可开启服务器
  3. 现在可以在浏览器中使用ip地址:端口号(port)的方式访问服务器了。如（127.0.0.1:8080/home.html显示主页)  
  

#### 文件说明：  
  * ./src/csapp.c  对unix常见函数进行了包装，提供了错误处理
  * ./src/csapp.h  提供csapp.c的函数原型
  * ./src/sbuf.c  用结构实现了一个线程池
  * ./src/subf.h  提供sbuf.c里的结构和函数原型  
  * ./src/tiny.c  服务器主程序,实现服务器的主要功能
  * ./cgi-bin/add.py cgi测试脚本--将URL传递的参数相加，然后将结果返回给浏览器
  * ./home.thml  服务器默认页面
  * 其他文件用于提供静态服务

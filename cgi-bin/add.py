#!/usr/bin/python
import os
cgi_env = os.getenv('QUERY_STRING')
arg_list = cgi_env.split('&')

result = int(arg_list[0]) + int(arg_list[1])
content = '''<strong><font color="blue">   About qianghaohao</font></strong></p>
             <hr/>
             <font color="blue">Name: qianghaohao(CodeNutter)</font></p>
             <font color="blue">Email: codenutter@foxmail.com</font></p>
             <font color="blue">Profession: computer science</font></p>
             <font color="blue">Skill: C/C++/Python/Shell/Linux/VC++</font></p>
             <hr/>
             <font color="red">Here is the test for cgi script:</font></p>
             <font color="red">%d + %d = %d</font>''' % (int(arg_list[0]),int(arg_list[1]),result)
print "Connection: close"
print "Content-length: %d" % len(content)
print "Content-type: text/html\r\n"

print content

::设置时间变量 

set "Ymd=%date:~0,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%" 

::进入mysql安装目录的bin目录下 

cd  /d C:\MariaDB\bin\

::输出时间，查看时间是否有设置错，正式使用的时候这句可以省略 

echo %Ymd% 

::执行备份操作 

mysqldump --opt --user="backupuser" --password="pwd" --host=127.0.0.1 --port=3306 --default-character-set=utf8 -- d_new >D:\backup\backup_%Ymd%.sql 

::按'任意键继续'方便查看运行的结果 

pause

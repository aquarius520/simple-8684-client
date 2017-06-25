# -simple-8684-client

离线交通数据存放在 sdcard/8684/data/offline/目录下

8684 离线数据库字段分析（以北京的离线数据为例）

```
category表
id
name  	公交路线类别[eg：市区普线/快速公交/通勤线路]
rank  	无意义,表中此字段全是0，目测是排序使用
ismetro 无意义，是否为地铁路线？ 表中此字段全是0
type	类型， 0/1 不知依据什么区分


company表
id
name   各个客运公司的名称

coordinate表  坐标表  站点一般只有一个经纬度信息，有的记录中有重复
stationsid
longitude1	经度1			
latitude1	纬度1
longitude2	经度2
latitude2	纬度2
longitude3	经度3
latitude3	纬度3


info表	
lastdate 目测是最后更新时间


lines表 线路表
id
name  		公交/客运/地铁线路名[eg:11路/运通101线/地铁10号线]
categoryid  线路所属类别id  （非外键，但是关联category表中id字段）
isshow		不知道什么意义(0/1/2)，select * from lines where isshow <> 0;
number      线路数，因为有重复，此字段意义不大
code		线路代号
type		线路类型，0代表客运/公交路线，1代表地铁路线 select distinct type from lines ;
sudu		意义不大，2代表地铁的速度， 5代表公交/客运路线的速度


linesothers表， 对lines中一些线路的信息补充

lineid      对应line表中的id
time		运行时间
lastupdate  最后更新时间
start		起始站
end		    终点站
companyid	所属交通公司的id
note		线路备注说明
fare		票价标准说明


metro_exit表  地铁出口信息表
stationid 


metro_lines表 地铁线路表
id			线路id
name		线路名
opentime	运营开放时间
note		换乘站等备注信息
company     所属公司名
price		票价说明[已经过期，目前不是2元通票制]
number		地铁所在线路号，意义不大，select distinct number, id, name from metro_lines ;
opened	    是否开放，意义不大
code		线路代号[PS：和lines线路中的不对应]
rank		意义不大

metro_price 表，价格表，都是2元，已经过时，意义不大

metro_station 表，地铁站表
id
name 		地铁站名
pinyin		地铁站名对应的拼音
latitude	纬度
longitude	经度
opened		意义不大
code		站名代号


metro_stations 表，暂不知道此表用意

station表  站名表
id
name		站名
pinyin		站名拼音
code		代号
type
lng			经度
lat			纬度
zid
zhan 		意义不大


stations表，和metro_stations表，结构一样
```

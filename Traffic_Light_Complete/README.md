# 设计平台

* 软件平台：Vivado 2017.4
* 硬件平台：EGO1(XC7A35T-1CSG324-1)

# 设计思路

交通灯控制系统以倒计时显示 A、B 路口亮灯时间以及红绿灯的状态变换设计了共2个模块，即分频模块、状态机模块。红绿灯的状态变换如下：

S1:A 路口红灯亮时，B 路口路绿灯亮，保持 18 秒；

S2:A 路口红灯亮时，B 路口路黄灯亮，保持 2 秒；

S3:A 路口绿灯亮时，B 路口路红灯亮，保持 18 秒；

S4:A 路口黄灯亮时，B 路口路红灯亮，保持 2 秒；

S4 状态结束后重新回到 S1状态,一直循环进行。

| 状态  | S1      | S2      | S3      | S4      |
| ----- | ------- | ------- | ------- | ------- |
| A方向 | 红灯    | 红灯    | 绿灯    | 黄灯    |
| 时间  | 18      | 2       | 18      | 2       |
| B方向 | 绿灯    | 黄灯    | 红灯    | 红灯    |
| 时间  | 18      | 2       | 18      | 2       |
| 输出  | 100_001 | 100_010 | 001_100 | 010_100 |


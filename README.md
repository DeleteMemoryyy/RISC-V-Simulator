# RISC-V-Simulator

**https://github.com/DeleteMemoryyy/RISC-V-Simulator**

**刘德欣 1500017704**

#### 程序编译运行环境：

- Ubuntu 64-bit 16.04 
- 模拟器使用 g++ 5.4.0 编译，其中需要使用的 risc-v 可执行文件由 riscv64-gcc 7.1.1 编译

#### 运行方法

- 开始前执行 make 完成项目的编译，命令行中输入 ./Simulation 开始模拟

- 程序需要的绘图库（glfw3）文件在UI文件夹下，已经于 makefile 文件中关联到项目，无需手动配置

- 打开文件后输入文件名加载可执行 risc-v 文件，如文件不存在需要重新输入

  ![img1](http://otl4n2fe9.bkt.clouddn.com/Lab2.1/img1.png)

- 加载完成后进入模拟界面。左上角为控制模块

  - 点击 Run 会使文件执行到终止，执行完成后可以在右侧区域观察堆内数据的情况和终止时寄存器状态

  - 点击 Step 会使文件执行一条指令并暂停，直到下一次点击或者 Run

  - 点击 Reset 会重新加载文件，重置内存和重要寄存器状态

  - 点击 Dump 会关闭当前文件回到加载界面，此时可以进行下一个程序的模拟

  - 点击 Show ELF 可以显示出当前执行文件的文件头结构

    ![img3](http://otl4n2fe9.bkt.clouddn.com/Lab2.1/img3.png)

- 左下角显示了当前寄存器状态，以及上一条执行指令的译码结果

  - PC 显示了当前 PC 寄存器的值，即马上要执行的指令地址
  - 使用 Select Format 按钮可以选择寄存器显示状态，有16进制、10进制整型和10进制无符号型三种选择

- 右侧界面可以查询当前内存状态

  - 上方可以选择显示格式及间隔位数，格式有 16进制、10进制整型、10进制无符号型和 ASCII 码选择，显示位数为 byte/half word/word/double word。ASCII 显示只有在间隔为 byte 时才会生效，其余间隔位数时会用16进制显示

    ![img4](http://otl4n2fe9.bkt.clouddn.com/Lab2.1/img4.png)

  - 可以在 Goto 旁输入地址进行跳转访问，目前仅支持10进制输入下 int 型支持内的地址

  - #### 右方展示出了常用的内存段和用户定义的全局变量，可以点击来方便地查看变量情况

- 目前目录中 risc-v 可执行文件有 test 和 benchmark 两个，其 C++ 源码由相应 .cpp 文件给出。文件的 ELF 信息保存在 elf.log 中，每次打开会刷新掉原来的文件


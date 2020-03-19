    1  java helloworld.java
    2  javac helloworld.java
    3  ls
    4  touch hello.java
    5  cd TerminalCommands/
    6  javac helloworld.java
    7  java helloworld
    8  java helloworld
    9  java helloworld &
   10  ps -elf | grep java
   11  ps -elf | grep java | grep -v grep
   12  jobs
   13  fg %1
   14  bg %1
   15  jobs
   16  killall java
   17  history > process.sh
   18  git commit -am "process commit"
   19  git add .
   20  git commit -am "process commit"
   21  git push origin master
   22  clear
   23  ps
   24  ps -elf
   25  java helloworld
   26  jobs
   27  java helloworld
   28  jobs
   29  bg %1
   30  jobs
   31  clear
   32  ps -elf
   33  ps -elf | grep java
   34  ps -elf | grep java | grep -v grep
   35  java helloworld
   36  jobs
   37  java helloworld
   38  java helloworld
   39  bg %1
   40  jav helloworld &
   41  java helloworld &
   42  jobs
   43  java helloworld &
   44  java helloworld &
   45  jobs
   46  ps -elf | grep java | grep -v grep
   47  ps -elf | grep java | grep -v grep | awk '{print $2}'
   48  ps -elf | grep java | grep -v grep | awk '{print $3}'
   49* ps -elf | grep java | grep -v grep | awk '{print $4}''
   50  kill -9 'ps -elf | grep java | grep -v grep | awk '{print $4}''
   51  mypid='ps -elf | grep java | grep -v grep | awk '{print $4}''
   52  clear
   53  mypid='ps -elf | grep java | grep -v grep | awk '{print $4}''
   54  mypid='ps -elf | grep java | grep -v grep | awk '{print $4}'
   55  mypid='ps -elf | grep java | grep -v grep | awk '{print $4}''
   56  mypid='ps -elf | grep java | grep -v grep | awk '{ print $4 }''
   57  mypid='ps -elf | grep java | grep -v grep | awk '{ print $4 }'
echo mypid
   58  mypid='ps -elf | grep java | grep -v grep | awk '{ print $4 }''
   59  mypid="ps -elf | grep java | grep -v grep | awk '{ print $4 }'"
   60  echo mypid
   61  echo $mypid
   62  kill -9 $mypid
   63  echo hello tom
   64  echo hello tom | awk '{ print $0 }'
   65  echo hello tom | awk '{ print $2 }'
   66  echo hello tom | awk '{ $2="Adam"  }{ print $0 }'
   67  cd linux-content
   68  cat data.csv
   69  ls
   70  pwd
   71  clear
   72  cd ..
   73  pwd
   74  cd linux-content/
   75  ls
   76  ls
   77  cat data.csv
   78  cat data.csv | grep CAPTAIN | awk '{ print $2 " " $4}'
   79  cat data.csv | grep CAPTAIN | awk '{sum+=4}END{ print sum}'
   80  cat data.csv | grep CAPTAIN | awk '{sum+=$4}END{ print sum}'
   81  cat data.csv | grep CAPTAIN | awk '{sum+=$4}END{ print sum/NR}'
   82  history > awk.sh

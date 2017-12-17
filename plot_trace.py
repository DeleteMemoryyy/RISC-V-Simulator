import time
import numpy as np
import pandas as pd
from matplotlib import pyplot as plt
import seaborn as sns

trace = np.loadtxt('trace/01-mcf-gem5-xcg.trace',dtype=str)
# trace = np.loadtxt('trace/02-stream-gem5-xaa.trace',dtype=str)

lines = []
set1 = []
set2 = []
for h in trace[:,1]:
    line = int(h,16)//(32)
    lines.append(line)
    set1.append(line&0x7f)
    set2.append(line&0x1ff)

df = pd.DataFrame(trace,columns=['op','line'])
df['line'] = lines
df = pd.concat((df,pd.DataFrame(set1,columns=['set1'])),axis=1)
df = pd.concat((df,pd.DataFrame(set2,columns=['set2'])),axis=1)
df = pd.concat((df,pd.DataFrame(np.array(range(trace.shape[0])),columns=['idx'])),axis=1)

# sns.jointplot(x='idx',y='line',data=df)
# sns.jointplot(x='idx',y='set1',data=df)
# sns.jointplot(x='idx',y='set2',data=df)
# plt.show()

# for i in range(128):
#     plt.plot(np.array(range(trace.shape[0])),np.array(range(trace.shape[0]))=(i+1)*
plt.scatter(df['idx'],df['line'],s=1,c='b',alpha=0.2,marker='.')
plt.show()

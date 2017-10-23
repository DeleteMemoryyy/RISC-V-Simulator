import os
import numpy as np

a = np.fromfile("input.txt",dtype=np.int)

b = []
c = []
d = []
for i in range(1000):
    b.append(a[i])

for i in range(625):
    c.append(a[i+1000])
    d.append(a[i+1625])

print(b)

np.array(b).tofile("b.txt",sep=",")
np.array(c).tofile("c.txt",sep=',')
np.array(d).tofile("d.txt",sep=',')
import numpy as np
import pandas as pd
from matplotlib import pyplot as plt
from mpl_toolkits.mplot3d import Axes3D

fileName = 'result_s_b.csv'
table = pd.read_csv(fileName,dtype=float)
print(table.head)
print(table.shape)
x = table['e_size']
y = table['e_block_size']
z = table['miss_rate']
fig = plt.figure()
ax = Axes3D(fig)
ax.plot_surface(x, y, z, rstride=1, cstride=1, cmap='rainbow')
plt.show()
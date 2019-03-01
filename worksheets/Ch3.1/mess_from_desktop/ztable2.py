from scipy.stats import norm
import numpy as np

f = open('ztab2.tex','w')

for col in [-3,-2,-1,0,1,2]:
    f.write(r'''\begin{tabular}{|c|c|}\hline
$z$ & $\Phi(z)$ \\ \hline''')
    f.write('\n')
    for i in np.linspace(col,col+1,101):
        f.write('%.2f & %.4f\\\\\n'%(i,norm.cdf(i)))
    f.write(r'\hline \end{tabular}')
    f.write('\n\n')
    
f.close()

from scipy.stats import norm
import numpy as np

f = open('zinvtab.tex','w')

for zb in [0,0.2,0.4,0.6,0.8]:
    f.write(r'''\begin{tabular}{|c|c|}\hline
$\Phi$ & $z$ \\ \hline''')
    f.write('\n')
    for i in np.linspace(zb,zb+0.2,41):
        f.write('%.3f & %.3f\\\\\n'%(i,norm.ppf(i)))
    f.write(r'\hline \end{tabular}')
    f.write('\n\n\\columnbreak\n\n')
    
f.close()

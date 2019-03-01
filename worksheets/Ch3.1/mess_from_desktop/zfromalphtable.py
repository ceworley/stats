from scipy.stats import norm
import numpy as np

f = open('zatab.tex','w')

for gb in [0.5,0.75]:
    f.write(r'''\begin{tabular}{|c|c|c|c|}\hline
$\gamma$ & $\alpha$ & $\Phi$ & $z$ \\ \hline''')
    f.write('\n')
    for g in np.linspace(gb,gb+0.25,26):
        a = 1-g
        p = 1-a/2
        f.write('%.2f & %.2f & %.3f & %.3f\\\\\n'%(g,a,p,norm.ppf(p)))
    f.write(r'\hline \end{tabular}')
    f.write('\n\n\\columnbreak\n\n')
    
f.close()

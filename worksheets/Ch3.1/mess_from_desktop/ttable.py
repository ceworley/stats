from scipy.stats import t
import numpy as np

f = open('ttab.tex','w')

for gamma in [0.8,0.9, 0.95, 0.98, 0.99]:
    q = 1-(1-gamma)/2
    a = 1-gamma
    f.write(r'''\begin{tabular}{|c|c|}\hline''')
    f.write('\n \\multicolumn{2}{|c|}{$\\alpha$ = %.2f}\\\\\n'%(a))
    f.write(r'''$df$ & $t$ \\ \hline''')
    f.write('\n')
    for df in list(range(1,30))+[30,35,40,50,1000]:
        if df == 1000:
            f.write('$\\infty$ & %.2f\\\\\n'%(t.ppf(q,df)))
        else:            
            f.write('%d & %.2f\\\\\n'%(df,t.ppf(q,df)))
    f.write(r'\hline \end{tabular}')
    f.write('\n\n')
    
f.close()


#for col in [-3,-2,-1,0,1,2]:
#    f.write(r'''\begin{tabular}{|c|c|}\hline
#$t$ & $\F(t)$ \\ \hline''')
#    f.write('\n')
#    for i in np.linspace(col,col+1,51):
#        f.write('%.2f & %.4f\\\\\n'%(i,t.cdf(i,10)))
#    f.write(r'\hline \end{tabular}')
#    f.write('\n\n')
#    
#f.close()

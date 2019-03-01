from scipy.stats import norm
import numpy as np

f = open('ztab3.tex','w')

#for col in [-3,-2,-1,0,1,2]:
#    f.write(r'''\begin{tabular}{|c|c|}\hline
#$z$ & $\Phi(z)$ \\ \hline''')
#    f.write('\n')
#    for i in np.linspace(col,col+1,101):
#        f.write('%.2f & %.4f\\\\\n'%(i,norm.cdf(i)))
#    f.write(r'\hline \end{tabular}')
#    f.write('\n\n')
#    
#f.close()

#s = '  z    Phi(z)    '*6+'\n'
#for row in range(51):
#    s2 = ''
#    for col in [-3,-2.5,-2,-1.5,-1,-0.5]:
#        i = col+row/100
#        s2 += '%5.2f  %.4f    '%(i,norm.cdf(i)) 
#    s2 = s2.strip()
#    s += s2+'\n'

#print(s)
#        
s = '  z    Phi(z)    '*6+'\n'
for row in range(51):
    s2 = ''
    for col in [0,0.5,1,1.5,2.0,2.5]:
        i = col+row/100
        s2 += '%5.2f  %.4f    '%(i,norm.cdf(i)) 
    s2 = s2.strip()
    s += s2+'\n'

print(s)
        

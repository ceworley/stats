with open('guitars.txt') as f:
    g = f.readlines()

ps = []
for line in g:
    dat = line.split()
    for dd in dat:
        if dd[0] == '$':
            try:
                ps.append(int(dd[1:]))
            except:
                pass
print(ps)

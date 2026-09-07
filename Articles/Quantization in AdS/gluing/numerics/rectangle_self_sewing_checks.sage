from sage.all import *
import itertools, json
pairings=[[(0,1),(2,3)],[(0,2),(1,3)],[(0,3),(1,2)]]
rows=[]
for pairs in pairings:
 for signs in itertools.product([1,-1], repeat=2):
  par=list(range(4))
  def root(a):
   while par[a]!=a:a=par[a]
   return a
  def union(a,b):
   par[root(a)]=root(b)
  # Edge i is directed from vertex i to vertex i+1 counterclockwise.
  links=Graph(loops=True,multiedges=True)
  links.add_vertices(range(8))
  # Two edge-end germs at each corner are joined by the quadrant link.
  for v in range(4): links.add_edge(2*v,2*((v-1)%4)+1)
  for (a,b),s in zip(pairs,signs):
   for k in [0,1]:
    l=k if s==1 else 1-k
    union((a+k)%4,(b+l)%4)
    links.add_edge(2*a+k,2*b+l)
  classes=sorted([sorted([v for v in range(4) if root(v)==r]) for r in set(root(v) for v in range(4))])
  V=len(classes); chi=V-1; ori=all(s==-1 for s in signs)
  assert all(d==2 for d in links.degree())
  assert links.connected_components_number()==V
  for component in links.connected_components(sort=False):
   assert len(component)==2*len(next(c for c in classes if (component[0]//2+component[0]%2)%4 in c))
  # Cellular integral homology: one face, two oriented quotient edges.
  ids={v:k for k,c in enumerate(classes) for v in c}
  d1=matrix(ZZ,V,2)
  for j,(a,b) in enumerate(pairs):
   d1[ids[a],j]-=1;d1[ids[(a+1)%4],j]+=1
  d2=matrix(ZZ,2,1,[1+s for s in signs])
  assert d1*d2==0
  H=ChainComplex({2:d2,1:d1},degree=-1).homology()
  name={ (2,True):"S2",(1,False):"RP2",(0,True):"T2",(0,False):"Klein"}[(chi,ori)]
  angles=[len(c)/QQ(2) for c in classes]
  assert sum(2-a for a in angles)==2*chi
  rows.append(dict(pairs=pairs,signs=signs,vertices=classes,chi=chi,orientable=ori,angles_in_pi=[str(a) for a in angles],topology=name,H1=str(H[1]),H2=str(H[2])))
counts={k:sum(r["topology"]==k for r in rows) for k in ["S2","RP2","T2","Klein"]}
assert counts=={"S2":2,"RP2":5,"T2":1,"Klein":4}
assert all((r["angles_in_pi"]==["2"])==(r["topology"] in ["T2","Klein"]) for r in rows)
print(json.dumps({"allPassed":True,"rows":rows,"counts":counts},indent=2, default=int))

# problem 1

what is the approximate altitude of a geostationary satellite's orbit?

## solution

we first list the relevant physical quantities and their dimension

- orbital period $\displaystyle{P}$, with $\displaystyle{[P]=T}$
- orbital radius $\displaystyle{R}$, with $\displaystyle{[R]=L}$
- central body mass $\displaystyle{M_{🜨}}$, with $\displaystyle{[M_{🜨}]=M}$
- gravitational constant $\displaystyle{G}$, with $\displaystyle{[G]=M^{-1}L^{3}T^{-2}}$

then we should have

$$\begin{align}
\frac{R^{3}}{P^{2}} & \propto GM
\end{align}$$

this agrees with the Kepler's third law. known that the space station orbital radius $\displaystyle{R_{s}=R_{🜨}+h_{s}\approx 6725\mathrm{km}}$, orbital period $\displaystyle{P_{s}\approx 90\mathrm{min}}$ and the geostationary satellite orbital period $\displaystyle{P_{g}=24\mathrm{h}}$, then

$$\begin{align}
R_{g} & =R_{s}\left(\frac{P_{g}}{P_{s}}\right)^{2/3} \\
 & \approx 42698\mathrm{ km}
\end{align}$$

then the altitude $\displaystyle{h_{g}=R_{g}-R_{s}\approx36000\mathrm{km}}$.

# problem 2

if a space telescope is placed in an orbit 550 AU from the Sun, what would its orbital period approximately be? what is the approximate orbital period of an Oort cloud object with a semi-major axis of about 1 lightyear?

## solution

by the same argument as problem 1, we have

$$\begin{align}
P_{s} & =P_{🜨}\left(\frac{R_{s}}{R_{🜨}}\right)^{3/2} \\
 & \approx 12900\text{ years} \\
P_{o} & =P_{🜨}\left(\frac{R_{o}}{R_{🜨}}\right)^{3/2} \\
 & \approx 1.59\times 10^{7}\text{ years}
\end{align}$$

# problem 3

suppose humanity destroys itself within 100 years after inventing nuclear weapons. how many Earth-like habitable planets would need to exist in the Milky Way to ensure that civilizations can see each other?

## solution

assume every Milky Way civilizations invent nuclear weapons at the same time, the Milky Way's volumu is $\displaystyle{V_{\text{galaxy}}}$, habitable planets are uniformally distributed with a total number $\displaystyle{N}$.

a civilization's signal travels at the speed of light $\displaystyle{c}$, so the maximal distance it can travel before destruction is $\displaystyle{R=cT}$. to ensure they can see each other, we need to fill the entire galaxy with these spheres, we have

$$\begin{align}
N\times V_{\text{visible}}\approx V_{\text{galaxy}}
\end{align}$$

approximate the Milky Way as a cylinder, with diameter about $\displaystyle{10^{5}}$ light-years and thickness about $\displaystyle{10^{3}}$ lightyears, then we have

$$\begin{align}
N & \approx \frac{\pi R_{\text{galaxy}}^{2}H_{\text{galaxy}}}{\frac{4}{3}\pi c^{3}T^{3}} \\
 & \approx 1.87\times 10^{6}
\end{align}$$
Some simple derivations
D_\mu A^\mu=&g^{\mu\nu}D_\mu A_\nu
=\nabla_\mu A^\mu -n^2n_\mu n^\rho \nabla_\rho A^\mu
=\nabla_\mu A^\mu +n^2n^\rho \nabla_\rho n_\mu A^\mu=\nabla_\mu A^\mu+n^2 a_\mu A^\mu\\\notag 

$$\begin{align}
	g^{\mu\nu}\delta(\nabla_\mu n_\nu)
	=&g^{\mu\nu}\partial_\mu \delta n_\nu
	-g^{\mu\nu}\delta{\Gamma^\lambda}_{\mu\nu}n_\lambda
	-g^{\mu\nu}{\Gamma^\lambda}_{\mu\nu}\delta n_\lambda\\\notag
	=&g^{\mu\nu}\partial_\mu \delta n_\nu
	-g^{\lambda\sigma}g^{\mu\nu} (\nabla_\mu \delta g_{\nu\sigma}
	-\frac{1}{2}\nabla_\sigma \delta g_{\mu\nu} ) n_\lambda
	-g^{\mu\nu}{\Gamma^\lambda}_{\mu\nu}\delta n_\lambda\\\notag
	=&g^{\mu\nu}\nabla_\mu \delta n_\nu
	-g^{\mu\nu} n^\lambda(\nabla_\mu \delta g_{\nu\lambda}
	-\frac{1}{2}\nabla_\lambda \delta g_{\mu\nu}) \\\notag
	=&g^{\mu\nu}\nabla_\mu(\frac{1}{2}n_\nu (g^{\rho\sigma}-\gamma^{\rho\sigma})\delta g_{\rho\sigma})
	-g^{\mu\nu} n^\lambda(\nabla_\mu \delta g_{\nu\lambda}
	-\frac{1}{2}\nabla_\lambda \delta g_{\mu\nu}) \\\notag
	=&\frac{1}{2}\nabla_\lambda(n^\lambda g^{\rho\sigma}\delta g_{\rho\sigma})
	-\frac{1}{2}\nabla_\lambda(n^\lambda\gamma^{\rho\sigma}\delta g_{\rho\sigma})
	-g^{\mu\nu} n^\lambda(\nabla_\mu \delta g_{\nu\lambda}
	-\frac{1}{2}\nabla_\lambda \delta g_{\mu\nu}) \\\notag
	=&\frac{1}{2}\nabla_\lambda n^\lambda g^{\rho\sigma}\delta g_{\rho\sigma} 
	+\frac{1}{2}n^\lambda g^{\rho\sigma}\nabla_\lambda\delta g_{\rho\sigma}
	-\frac{1}{2}\nabla_\lambda(n^\lambda\gamma^{\rho\sigma}\delta g_{\rho\sigma})
	-g^{\mu\nu} n^\lambda(\nabla_\mu \delta g_{\nu\lambda}
	-\frac{1}{2}\nabla_\lambda \delta g_{\mu\nu}) \\\notag
	=&\frac{1}{2}\nabla_\lambda n^\lambda g^{\rho\sigma}\delta g_{\rho\sigma} 
	+n^\lambda g^{\mu\nu}(\nabla_\lambda\delta g_{\mu\nu}
	-\nabla_\mu \delta g_{\nu\lambda})
	-\frac{1}{2}\nabla_\lambda(n^\lambda\gamma^{\rho\sigma}\delta g_{\rho\sigma})\\\notag
	=&\frac{1}{2}\nabla_\lambda (n^\lambda (g^{\rho\sigma}-\gamma^{\rho\sigma})\delta g_{\rho\sigma})
	-\frac{1}{2}n^\lambda g^{\mu\nu}\nabla_\lambda\delta g_{\mu\nu} 
	+n^\lambda g^{\mu\nu}(\nabla_\lambda\delta g_{\mu\nu}
	-\nabla_\mu \delta g_{\nu\lambda})\\\notag
	=&\frac{1}{2}\nabla_\lambda (n^2n^\lambda n^\rho n^\sigma\delta g_{\rho\sigma})
	-\frac{1}{2}n^\lambda g^{\mu\nu}\nabla_\lambda\delta g_{\mu\nu} 
	+n^\lambda g^{\mu\nu}(\nabla_\lambda\delta g_{\mu\nu}
	-\nabla_\mu \delta g_{\nu\lambda})\\\notag
	=&\frac{1}{2}\nabla_\lambda ((g^{\lambda\rho}
	-\gamma^{\lambda\rho})n^\sigma\delta g_{\rho\sigma})
	-\frac{1}{2}n^\lambda g^{\mu\nu}\nabla_\lambda\delta g_{\mu\nu} 
	+n^\lambda g^{\mu\nu}(\nabla_\lambda\delta g_{\mu\nu}
	-\nabla_\mu \delta g_{\nu\lambda})\\\notag
	=&-\frac{1}{2}\nabla_\lambda (
	\gamma^{\lambda\rho}n^\sigma\delta g_{\rho\sigma})
	+\frac{1}{2}n^\lambda g^{\mu\nu}(\nabla_\lambda\delta g_{\mu\nu}
	-\nabla_\mu \delta g_{\nu\lambda})\\\notag
	=&-\frac{1}{2}D_\lambda (
	\gamma^{\lambda\rho}n^\sigma\delta g_{\rho\sigma})
	+\frac{1}{2}n^2 a_\lambda\gamma^{\lambda\rho}n^\sigma\delta g_{\rho\sigma}
	+\frac{1}{2}n^\lambda g^{\mu\nu}(\nabla_\lambda\delta g_{\mu\nu}
	-\nabla_\mu \delta g_{\nu\lambda})\\\notag
	=&\frac{1}{2}n^\rho g^{\mu\nu}(\nabla_\rho\delta g_{\mu\nu}
	-\nabla_\mu \delta g_{\nu\rho})
	-\frac{1}{2}D_\lambda(
	\gamma^{\lambda\mu}n^\nu\delta g_{\mu\nu})
	+\frac{1}{2}n^2 a^\mu n^\nu\delta g_{\mu\nu}\\\notag
	\delta K
	=&\delta (g^{\mu\nu}(\nabla_\mu n_\nu-n^2a_\mu n_\nu))\\\notag
	=&\delta (g^{\mu\nu}\nabla_\mu n_\nu)\\\notag 
	=&\delta g^{\mu\nu}\nabla_\mu n_\nu
	+g^{\mu\nu}\delta (\nabla_\mu n_\nu)\\\notag 
	=&\delta g^{\mu\nu} K_{\mu\nu}
	+n^2a_\mu n_\nu\delta g^{\mu\nu} 
	+\frac{1}{2}n^\rho g^{\mu\nu}(\nabla_\rho\delta g_{\mu\nu}
	-\nabla_\mu \delta g_{\nu\rho})
	-\frac{1}{2}D_\lambda(
	\gamma^{\lambda\mu}n^\nu\delta g_{\mu\nu})
	+\frac{1}{2}n^2 a^\mu n^\nu\delta g_{\mu\nu}\\\notag 
	=&-K^{\mu\nu}\delta g_{\mu\nu}
	-\frac{1}{2}n^2a^\mu n^\nu\delta g_{\mu\nu} 
	+\frac{1}{2}n^\rho g^{\mu\nu}(\nabla_\rho\delta g_{\mu\nu}
	-\nabla_\mu \delta g_{\nu\rho})
	-\frac{1}{2}D_\lambda(
	\gamma^{\lambda\mu}n^\nu\delta g_{\mu\nu})\\\notag 
	2n^2\delta(\epsilon_{\partial M}K)=&
	2n^2\epsilon_{\partial M}\left[(-K^{\mu\nu}+\frac{1}{2}\gamma^{\mu\nu}K-\frac{1}{2}n^2 a^\mu n^\nu )\delta g_{\mu\nu}
	+\frac{1}{2}n^\rho g^{\mu\nu}(\nabla_\rho\delta g_{\mu\nu}
	-\nabla_\mu \delta g_{\nu\rho})
	-\frac{1}{2}D_\lambda(
	\gamma^{\lambda\mu}n^\nu\delta g_{\mu\nu})\right]
\end{align}$$

remembering that

$$\begin{align}
a_{\mu} & =n^{\nu}\nabla_{\nu}n_{\mu}=D_{\mu}\ln N \\
\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta K_{\mu \nu} & =\frac{1}{2}\gamma^{\mu}_{\alpha}\gamma^{\nu}_{\beta}n^{\rho}\nabla_{\rho}(\gamma^{\sigma}_{\mu}\gamma^{\lambda}_{\nu}\delta g_{\sigma \lambda})+\frac{1}{2}K^{\mu}_{\alpha}\gamma^{\nu}_{\beta}\delta g_{\mu \nu}+\frac{1}{2}K^{\mu}_{\beta}\gamma^{\nu}_{\alpha}\delta g_{\mu \nu} \\
 & -\frac{1}{2}K^{\mu}_{\alpha}n_{\beta}n^{\nu}\delta g_{\mu \nu}-\frac{1}{2}K^{\mu}_{\beta}n_{\alpha}n^{\nu}\delta g_{\mu \nu}-\frac{1}{2}D_{\alpha}(\gamma^{\mu}_{\beta}n^{\nu}\delta g_{\mu \nu})-\frac{1}{2}D_{\beta}(\gamma^{\mu}_{\alpha}n^{\nu}\delta g_{\mu \nu}) \\
 & -\frac{1}{2}K_{\alpha \beta}n^{\mu}n^{\nu}\delta g_{\mu \nu}+\frac{1}{2}D_{\alpha}\ln N\gamma^{\mu}_{\beta}n^{\nu}\delta g_{\mu \nu}+\frac{1}{2}D_{\beta}\ln N\gamma^{\mu}_{\alpha}n^{\nu}\delta g_{\mu \nu}
\end{align}$$

then we have

$$\begin{align}
\gamma ^{\mu \nu}\delta K_{\mu \nu} & = \gamma ^{\alpha \beta}\gamma ^{\mu}_{\alpha}\gamma ^{\nu}_{\beta}\delta K_{\mu \nu} \\
 & =\frac{1}{2}\gamma ^{\mu \nu}n^{\rho}\nabla _{\rho}(\gamma ^{\sigma}_{\mu}\gamma ^{\lambda}_{\nu}\delta g_{\sigma \lambda})+K^{\mu \nu}\delta g_{\mu \nu}-D_{\alpha}\left(\gamma ^{\mu \alpha}n^{\nu}\delta g_{\mu \nu}\right)-\frac{1}{2}Kn^{\mu}n^{\nu}\delta g_{\mu \nu}+D^{\mu}\ln Nn^{\nu}\delta g_{\mu \nu} \\
 & =\frac{1}{2}\gamma ^{\mu \nu}n^{\rho}\nabla _{\rho}\delta g_{\mu \nu}+\gamma ^{\mu \nu}n^{\rho}\nabla _{\rho}(\delta ^{\sigma}_{\mu}-n^{\sigma}n_{\mu})\gamma ^{\lambda}_{\nu}\delta g_{\sigma \lambda}+K^{\mu \nu}\delta g_{\mu \nu}-D_{\alpha}(\gamma ^{\mu \alpha}n^{\nu}\delta g_{\mu \nu})-\frac{1}{2}Kn^{\mu}n^{\nu}\delta g_{\mu \nu}+D^{\mu}\ln Nn^{\nu}\delta g_{\mu \nu} \\
 & =\frac{1}{2}\gamma ^{\mu \nu}n^{\rho}\nabla _{\rho}\delta g_{\mu \nu}-\gamma ^{\mu \lambda}n^{\rho}\nabla _{\rho} n_{\mu}n^{\sigma}\delta g_{\sigma \lambda}+K^{\mu \nu}\delta g_{\mu \nu}-D_{\alpha}(\gamma ^{\mu \alpha}n^{\nu}\delta g_{\mu \nu})-\frac{1}{2}Kn^{\mu}n^{\nu}\delta g_{\mu \nu}+D^{\mu}\ln Nn^{\nu}\delta g_{\mu \nu} \\
 & =\frac{1}{2}\gamma ^{\mu \nu}n^{\rho}\nabla _{\rho}\delta g_{\mu \nu}+K^{\mu \nu}\delta g_{\mu \nu}-D_{\alpha}(\gamma ^{\mu \alpha}n^{\nu}\delta g_{\mu \nu})-\frac{1}{2}Kn^{\mu}n^{\nu}\delta g_{\mu \nu} \\
K_{\mu \nu}\delta \gamma ^{\mu \nu} & =-K^{\mu \nu}\delta g_{\mu \nu} \\
\implies \delta K & =\frac{1}{2}\gamma ^{\mu \nu}n^{\rho}\nabla _{\rho}\delta g_{\mu \nu}-\frac{1}{2}Kn^{\mu}n^{\nu}\delta g_{\mu \nu}-D_{\alpha}(\gamma ^{\mu \alpha}n^{\nu}\delta g_{\mu \nu})
\end{align}$$

and notice that

$$\begin{align}
D_{\alpha}(\gamma ^{\mu \alpha}n^{\nu}\delta g_{\mu \nu}) & =\gamma ^{\lambda}_{\alpha}\nabla _{\lambda}(\gamma ^{\mu \alpha}n^{\nu}\delta g_{\mu \nu}) \\
 & =\gamma ^{\lambda}_{\alpha}\nabla _{\lambda}(g^{\mu \alpha}-n^{\mu}n^{\alpha})n^{\nu}\delta g_{\mu \nu}+\gamma ^{\lambda \mu}\nabla _{\lambda}n^{\nu}\delta g_{\mu \nu}+\gamma ^{\lambda}_{~\alpha}n^{\nu}\nabla _{\lambda}\delta g_{\mu \nu} \\
 & =-Kn^{\mu}n^{\nu}\delta g_{\mu \nu}+K^{\mu \nu}\delta g_{\mu \nu}+\gamma ^{\lambda}_{\alpha}n^{\nu}\nabla _{\lambda}\delta g_{\mu \nu}
\end{align}$$

then

$$\begin{align}
\delta K & =-\frac{1}{2}K^{\mu \nu}\delta g_{\mu \nu}+\frac{1}{2}\gamma ^{\mu \nu}n^{\rho}\nabla _{\rho}\delta g_{\mu \nu}-\frac{1}{2}\gamma ^{\lambda}_{~\alpha}n^{\nu}\nabla _{\lambda}\delta g_{\mu \nu}-\frac{1}{2}D_{\mu}(\gamma ^{\mu \nu}n^{\rho}\delta g_{\nu \rho}) \\
 & =-\frac{1}{2}K^{\mu \nu}\delta g_{\mu \nu}+\frac{1}{2}g^{\mu \nu}n^{\rho}\nabla _{\rho}\delta g_{\mu \nu}-\frac{1}{2}n^{\mu}\nabla ^{\nu}\delta g_{\mu \nu}-\frac{1}{2}D_{\mu}(\gamma ^{\mu \nu}n^{\rho}\delta g_{\nu \rho})
\end{align}$$


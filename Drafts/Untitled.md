阶段 A 与阶段 B 的准备结果如下。核心结论是：**一般形式的 AdS/CFT 尚未被证明；现有知识由精确可解扇区、受控渐近展开、条件性定理、模型证据和若干尚未解决的非微扰提案共同组成。**

# 全息原理与全息对偶：领域地图与初始文献数据库

**阶段 A–B 工作稿 v1.0**  
**文献检索截止：2026 年 8 月 3 日**

---

## 0. 执行结论、范围与证据标记

本综述将把下列三个不同命题严格分开：

[  
\begin{aligned}  
\mathsf{H}_1:&\quad  
\text{某个明确给定的 CFT 与某个明确给定的弦/M 理论完全等价};\  
\mathsf{H}_2:&\quad  
\text{某类 large-}N\text{、稀疏谱 CFT 具有局域 AdS 有效场论描述};\  
\mathsf{H}_3:&\quad  
\text{所有一致量子引力理论都存在某种低维全息描述}.  
\end{aligned}  
]

其中：

- (\mathsf H_1) 是标准 AdS/CFT 的最强非微扰表述，目前没有一般证明；
    
- (\mathsf H_2) 有大量受控证据和部分条件性构造，但“充分且必要条件”尚未完成；
    
- (\mathsf H_3) 仍属于广义全息原理，不能由已知 AdS/CFT 模型直接推出。Maldacena、GKP 与 Witten 的原始工作分别提出了具体对偶、生成泛函字典及其几何应用，但均未给出有限 (N)、任意耦合下的数学构造性证明。citeturn822486search0turn822486search1turn822486search2
    

### 0.1 认识论标签

正文中的重要命题统一使用以下标签：

|标签|含义|
|---|---|
|**[T]**|在明确数学假设下成立的定理、恒等式或严格推论|
|**[X]**|在明确模型或受保护扇区中的精确量子结果|
|**[C]**|受控展开：(1/N)、(G_N)、(\alpha'/L^2)、导数展开、微扰论等|
|**[B]**|bootstrap、一致性、解析性或正性约束|
|**[N]**|数值证据|
|**[M]**|可解模型或玩具模型中的机制性证据|
|**[Q]**|有明确数学内容的猜想或方案|
|**[H]**|启发式类比、解释性图像或流行口号|

若结果以 AdS/CFT 本身为前提，则另标记 **(|\mathrm{dual})**。例如，量子信息定理本身可以是 [T]，但其解释为 bulk reconstruction 通常是 ([\mathrm T|\mathrm{dual}+\mathrm C])。

### 0.2 文献元数据等级

- **M3**：作者、标题、首发日期、期刊、arXiv、DOI 和实际结论均已核验。
    
- **M2**：作者、标题、arXiv、首发日期和实际结论已核验；期刊或 DOI 尚待统一 INSPIRE/Crossref 审计。
    
- **W**：2025–2026 年观察名单；预印本内容已检查，但不视为领域共识。
    

正式参考文献表只接受 M3 条目。本轮数据库中的 M2 空缺不表示“没有 DOI”，而表示尚未完成最终元数据审计。

---

# 阶段 A：领域地图

## 1. 完整三级目录

## 第 I 部分　方法、起源与对偶的精确定义

### 第 0 章　范围、约定与审计方法

#### 0.1 研究对象和排除项

- 0.1.1 “全息原理”“全息对偶”“gauge/gravity duality”的不同含义
    
- 0.1.2 本综述所说的“理论”“模型”“背景”和“扇区”
    
- 0.1.3 与纯粹量子信息类比、张量网络模型和现象学模型的边界
    

#### 0.2 符号与 convention

- 0.2.1 (AdS_{d+1}/CFT_d)、曲率、宇宙学常数和 Newton 常数
    
- 0.2.2 Euclidean/Lorentzian signature
    
- 0.2.3 (N)、(c_T)、’t Hooft coupling、弦耦合和弦长
    

#### 0.3 证据与引用审计

- 0.3.1 认识论标签
    
- 0.3.2 原始论文、综述与后续解释的区分
    
- 0.3.3 首次上传日期、修订日期和正式发表日期
    

### 第 1 章　全息思想的起源

#### 1.1 黑洞热力学与熵界

- 1.1.1 Bekenstein 熵与广义第二定律
    
- 1.1.2 Hawking 辐射与 Bekenstein–Hawking 熵
    
- 1.1.3 Bekenstein bound、covariant entropy bound 及其适用条件
    

#### 1.2 large-(N) 与弦展开

- 1.2.1 ’t Hooft 双线图
    
- 1.2.2 genus expansion 与 (g_s\sim N^{-1})
    
- 1.2.3 为什么 large (N) 不自动意味着局域弦论或 Einstein 引力
    

#### 1.3 全息原理

- 1.3.1 ’t Hooft 的 dimensional reduction
    
- 1.3.2 Susskind 的 holographic world
    
- 1.3.3 原理、熵界和具体对偶之间的逻辑距离
    

#### 1.4 历史时间线

- 1.4.1 1970–1996：黑洞熵、large (N)、D-branes
    
- 1.4.2 1997–2005：AdS/CFT、字典与 holographic renormalization
    
- 1.4.3 2006–2014：纠缠熵、reconstruction、Mellin 与 bootstrap
    
- 1.4.4 2015–2020：QEC、QES、混沌、JT/SYK 与 islands
    
- 1.4.5 2021–2026：算符代数、crossed products、precision holography 与 factorization
    

### 第 2 章　AdS/CFT 的提出、模型分类与近似层级

#### 2.1 D-branes 与 decoupling argument

- 2.1.1 开弦低能描述
    
- 2.1.2 闭弦近视界描述
    
- 2.1.3 decoupling limit 实际建立了什么、没有建立什么
    

#### 2.2 典型 top-down 对偶

- 2.2.1 (AdS_5\times S^5/\mathcal N=4) SYM
    
- 2.2.2 (AdS_4\times S^7)、(AdS_4\times\mathbb{CP}^3)/M2、ABJM
    
- 2.2.3 (AdS_7\times S^4/(2,0)) theory
    
- 2.2.4 (AdS_3/CFT_2)、D1–D5 与 wrapped branes
    

#### 2.3 不同近似参数控制什么

- 2.3.1 (N\to\infty)：量子引力圈图和 genus
    
- 2.3.2 (\lambda\to\infty)：弦长和 higher-spin/stringy states
    
- 2.3.3 sparse spectrum：局域低能场论
    
- 2.3.4 BPS/protected sector：精确性但非完整性
    

#### 2.4 “完全等价”的候选定义

- 2.4.1 Hilbert-space 同构
    
- 2.4.2 observables 与 operator algebra 同构
    
- 2.4.3 partition functions、correlators 和 state preparation
    
- 2.4.4 boundary conditions、superselection sectors 与 defects
    

---

## 第 II 部分　基础字典与计算框架

### 第 3 章　GKPW 字典

#### 3.1 生成泛函

- Z_{\mathrm{string}}!\left[\phi|_{\partial}=J\right]  
    ]
    
- 3.1.2 classical supergravity approximation
    
- 3.1.3 connected 与 one-particle-irreducible quantities
    

#### 3.2 场—算符映射

- 3.2.1  
    [  
    m^2L^2=\Delta(\Delta-d)  
    ]
    
- 3.2.2 spin、representation theory 与 unitarity bounds
    
- 3.2.3 single-trace、multi-trace 和多粒子态
    

#### 3.3 sources、states 与 normalizability

- 3.3.1 Euclidean source preparation
    
- 3.3.2 Lorentzian normalizable modes
    
- 3.3.3 coherent states、black-hole states 与非唯一 bulk saddle
    

#### 3.4 对称性字典

- 3.4.1 boundary global current 与 bulk gauge field
    
- 3.4.2 stress tensor 与 bulk metric
    
- 3.4.3 higher-form symmetries、defects 和 bulk extended objects
    
- 3.4.4 anomalies 与 Chern–Simons/inflow terms
    

### 第 4 章　Holographic renormalization 与边界条件

#### 4.1 Fefferman–Graham expansion

- 4.1.1 metric 和 matter asymptotics
    
- 4.1.2 source、response 和 logarithmic branches
    
- 4.1.3 even-dimensional conformal anomaly
    

#### 4.2 Counterterms 与 renormalized observables

- 4.2.1 regulated on-shell action
    
- 4.2.2 local covariant counterterms
    
- 4.2.3 finite counterterm ambiguity 与 contact terms
    
- 4.2.4 Brown–York/holographic stress tensor
    

#### 4.3 Alternate quantization 与 mixed boundary conditions

- 4.3.1 BF window 与 (\Delta_\pm)
    
- 4.3.2 Legendre transform
    
- 4.3.3 double-trace deformation
    
- 4.3.4 designer gravity 与稳定性
    

#### 4.4 Hamilton–Jacobi 方法

- 4.4.1 radial canonical momenta
    
- 4.4.2 dilatation eigenfunction expansion
    
- 4.4.3 Ward identities 与 Callan–Symanzik equations
    

#### 4.5 Real-time holography

- 4.5.1 retarded/advanced/Feynman/Wightman functions
    
- 4.5.2 horizon ingoing prescription
    
- 4.5.3 Schwinger–Keldysh contours
    
- 4.5.4 Euclidean–Lorentzian gluing 和 state dependence
    

### 第 5 章　相关函数、Witten diagrams 与 CFT 数据

#### 5.1 Propagators 与基础图

- 5.1.1 bulk-to-boundary propagator
    
- 5.1.2 bulk-to-bulk propagator
    
- 5.1.3 contact、exchange 与 spinning diagrams
    

#### 5.2 OPE 和 conformal blocks

- 5.2.1 Witten diagram 的 block decomposition
    
- 5.2.2 single-trace poles 与 double-trace towers
    
- 5.2.3 anomalous dimensions 和 OPE coefficients
    

#### 5.3 Mellin amplitudes

- 5.3.1 Mellin variables 和 AdS Mandelstam variables
    
- 5.3.2 poles、residues 与 factorization
    
- 5.3.3 polynomial boundedness 与 contact interactions
    
- 5.3.4 flat-space limit
    

#### 5.4 Conformal bootstrap

- 5.4.1 crossing 与 positivity
    
- 5.4.2 large-spin perturbation theory
    
- 5.4.3 Lorentzian inversion formula
    
- 5.4.4 holographic bootstrap 和 Regge constraints
    

#### 5.5 Loop corrections 与 AdS unitarity

- 5.5.1 (1/N) expansion 与 bulk loops
    
- 5.5.2 double discontinuity
    
- 5.5.3 cutting/gluing 和 holographic unitarity
    
- 5.5.4 renormalization ambiguities
    

#### 5.6 Bulk-point singularity 和 amplitudes

- 5.6.1 Lorentzian singularities
    
- 5.6.2 bulk locality 的诊断能力
    
- 5.6.3 与 celestial amplitudes 的关系
    

### 第 6 章　Large (N)、谱隙与 bulk effective field theory

#### 6.1 Large-(N) factorization

- 6.1.1 generalized free fields
    
- 6.1.2 connected correlator scaling
    
- 6.1.3 multi-trace Hilbert-space organization
    

#### 6.2 从 CFT 到 bulk particle spectrum

- 6.2.1 primary representations 与 AdS one-particle states
    
- 6.2.2 low-dimension single traces
    
- 6.2.3 higher-spin gap
    

#### 6.3 局域 bulk EFT 的条件

- 6.3.1 large (N)+sparse spectrum
    
- 6.3.2 Mellin boundedness
    
- 6.3.3 crossing、unitarity 和 causality
    
- 6.3.4 已知 converse results 的准确范围
    

#### 6.4 弦修正与 higher derivatives

- 6.4.1 (\alpha') expansion
    
- 6.4.2 higher-curvature entropy 与 causality bounds
    
- 6.4.3 string scale、gap 和 Regge behavior
    

#### 6.5 finite (N) 的障碍

- 6.5.1 trace relations
    
- 6.5.2 nonperturbative (e^{-N}) effects
    
- 6.5.3 exact locality 和 topology 的失效
    

---

## 第 III 部分　Bulk reconstruction、纠缠与算符代数

### 第 7 章　Bulk reconstruction

#### 7.1 HKLL

- 7.1.1 free fields 与 smearing kernels
    
- 7.1.2 global、Poincaré 和 AdS-Rindler patches
    
- 7.1.3 interactions 与 (1/N) corrections
    

#### 7.2 Gravitational dressing

- 7.2.1 gauge-invariant relational observables
    
- 7.2.2 boundary-anchored dressings
    
- 7.2.3 nonlocal commutators 与 Gauss constraints
    

#### 7.3 Subregion duality

- 7.3.1 causal wedge
    
- 7.3.2 entanglement wedge
    
- 7.3.3 reconstruction wedge 和 state dependence
    

#### 7.4 Modular reconstruction

- 7.4.1 modular flow
    
- 7.4.2 modular zero modes
    
- 7.4.3 modular Berry connection
    

#### 7.5 Quantum error correction

- 7.5.1 code subspace
    
- 7.5.2 complementary recovery
    
- 7.5.3 operator-algebra QEC
    
- 7.5.4 QEC interpretation 的精确内容与非本体论性质
    

#### 7.6 黑洞内部

- 7.6.1 two-sided reconstruction
    
- 7.6.2 mirror operators
    
- 7.6.3 Papadodimas–Raju state dependence
    
- 7.6.4 nonperturbative obstruction
    

### 第 8 章　Gauge constraints、区域代数与 factorization

#### 8.1 Gauge theory 的区域分解

- 8.1.1 electric/magnetic centers
    
- 8.1.2 extended Hilbert space
    
- 8.1.3 edge modes
    

#### 8.2 引力中的区域观测量

- 8.2.1 gravitational constraints
    
- 8.2.2 asymptotic dressing
    
- 8.2.3 quasi-local charges 与 corner data
    

#### 8.3 von Neumann algebra 类型

- 8.3.1 local QFT 的 Type III algebra
    
- 8.3.2 crossed product
    
- 8.3.3 Type II entropy 和 generalized entropy
    

#### 8.4 不同 factorization 问题

- 8.4.1 Hilbert-space factorization
    
- 8.4.2 operator-algebra factorization
    
- 8.4.3 path-integral factorization
    
- 8.4.4 ensemble factorization
    

#### 8.5 近期争议

- 8.5.1 universal QEC interpretation 是否过强
    
- 8.5.2 observer/reference-frame dependence
    
- 8.5.3 (G_N\to0) algebra 与 finite-(G_N) theory 的关系
    

### 第 9 章　纠缠熵、极值面与几何

#### 9.1 RT/HRT

- 9.1.1 static minimal surface
    
- 9.1.2 covariant extremal surface
    
- 9.1.3 homology constraint 和 phase transitions
    

#### 9.2 Replica derivation

- 9.2.1 replica symmetry
    
- 9.2.2 conical defect/cosmic brane
    
- 9.2.3 analytic continuation 的假设
    

#### 9.3 Quantum corrections

- 9.3.1 FLM
    
- 9.3.2 generalized entropy
    
- 9.3.3 QES
    
- 9.3.4 JLMS relative entropy
    

#### 9.4 从纠缠到动力学

- 9.4.1 first law
    
- 9.4.2 linearized Einstein equation
    
- 9.4.3 canonical energy 和 relative entropy
    
- 9.4.4 nonlinear extensions 的范围
    

#### 9.5 几何重写

- 9.5.1 bit threads
    
- 9.5.2 tensor networks
    
- 9.5.3 kinematic space
    
- 9.5.4 entanglement wedge nesting 和 quantum focusing
    

#### 9.6 “Spacetime from entanglement”

- 9.6.1 metric information
    
- 9.6.2 connectivity
    
- 9.6.3 operator-algebra encoding
    
- 9.6.4 不能由纠缠单独决定的 bulk data
    

---

## 第 IV 部分　黑洞、热化与信息

### 第 10 章　AdS 黑洞与热场论

#### 10.1 Hawking–Page 与 confinement

- 10.1.1 competing Euclidean saddles
    
- 10.1.2 large-(N) deconfinement
    
- 10.1.3 ensemble 和 boundary topology
    

#### 10.2 Eternal black hole

- 10.2.1 thermofield double
    
- 10.2.2 two-sided geometry
    
- 10.2.3 ER bridge 与关联函数
    

#### 10.3 Quasinormal modes 与热化

- 10.3.1 retarded poles
    
- 10.3.2 linear response
    
- 10.3.3 nonlinear collapse 和 thermalization
    

#### 10.4 Hydrodynamics

- 10.4.1 membrane paradigm
    
- 10.4.2 fluid/gravity derivative expansion
    
- 10.4.3 transport coefficients
    
- 10.4.4 KSS 值、修正和反例
    

#### 10.5 Quantum chaos

- 10.5.1 shock waves
    
- 10.5.2 OTOCs 与 scrambling
    
- 10.5.3 chaos bound
    
- 10.5.4 pole skipping
    
- 10.5.5 spectral form factor 和 random-matrix universality
    

### 第 11 章　黑洞微观态、内部与信息悖论

#### 11.1 微观态计数

- 11.1.1 D-brane BPS counting
    
- 11.1.2 D1–D5 system
    
- 11.1.3 supersymmetric indices 和 absolute degeneracies
    
- 11.1.4 非 BPS、非极端黑洞的困难
    

#### 11.2 Microstate geometries 与 fuzzballs

- 11.2.1 smooth horizonless solutions
    
- 11.2.2 typicality 和 scaling solutions
    
- 11.2.3 ensemble of geometries 是否覆盖典型态
    

#### 11.3 信息悖论的逻辑结构

- 11.3.1 Hawking semiclassical argument
    
- 11.3.2 complementarity
    
- 11.3.3 AMPS
    
- 11.3.4 remnants 与 baby universes
    

#### 11.4 Islands 和 Page curve

- 11.4.1 bath-coupled models
    
- 11.4.2 island rule
    
- 11.4.3 replica wormholes
    
- 11.4.4 operational decoding 与 entropy calculation 的差别
    

#### 11.5 Interior reconstruction

- 11.5.1 state dependence
    
- 11.5.2 complexity barriers
    
- 11.5.3 finite-(N) commutator problem
    
- 11.5.4 singularity resolution
    

---

## 第 V 部分　Top-down、精密全息与可解模型

### 第 12 章　Top-down holography

#### 12.1 (AdS_5/CFT_4)

- 12.1.1 (\mathcal N=4) SYM 与 type IIB
    
- 12.1.2 Kaluza–Klein spectrum
    
- 12.1.3 Wilson loops、BPS correlators 和 anomalies
    
- 12.1.4 stringy/genus corrections
    

#### 12.2 (AdS_4/CFT_3)

- 12.2.1 M2 branes
    
- 12.2.2 ABJM
    
- 12.2.3 (N^{3/2}) scaling
    
- 12.2.4 localization、matrix models 和 M-theory corrections
    

#### 12.3 (AdS_3/CFT_2)

- 12.3.1 D1–D5
    
- 12.3.2 symmetric orbifold
    
- 12.3.3 moduli-space extrapolation
    
- 12.3.4 pure (AdS_3) gravity 问题
    

#### 12.4 (AdS_7/CFT_6)

- 12.4.1 M5 branes 与 ((2,0)) theory
    
- 12.4.2 anomalies 和 (N^3) scaling
    
- 12.4.3缺乏传统 Lagrangian 描述的影响
    

#### 12.5 Wrapped branes 与 geometric engineering

- 12.5.1 twisted compactification
    
- 12.5.2 consistent truncation
    
- 12.5.3 flux compactification 和 moduli
    

#### 12.6 精密工具

- 12.6.1 supersymmetric localization
    
- 12.6.2 superconformal index
    
- 12.6.3 integrability 和 quantum spectral curve
    
- 12.6.4 localization–bootstrap 结合
    
- 12.6.5 finite-(N) protected observables
    

### 第 13 章　AdS(_2)、JT、SYK 与矩阵积分

#### 13.1 AdS(_2)/CFT(_1) 的特殊困难

- 13.1.1 finite-energy backreaction
    
- 13.1.2 boundary time reparametrization
    
- 13.1.3 ground-state degeneracy
    

#### 13.2 JT gravity

- 13.2.1 dilaton action
    
- 13.2.2 boundary Schwarzian
    
- 13.2.3 exact spectral density
    

#### 13.3 SYK

- 13.3.1 melonic Schwinger–Dyson equations
    
- 13.3.2 emergent conformal symmetry
    
- 13.3.3 Schwarzian mode 与 maximal chaos
    

#### 13.4 Matrix integrals

- 13.4.1 genus expansion
    
- 13.4.2 double scaling
    
- 13.4.3 topological recursion
    
- 13.4.4 nonperturbative completion 的非唯一性
    

#### 13.5 2D gravity 的更广背景

- 13.5.1 minimal strings
    
- 13.5.2 Liouville gravity
    
- 13.5.3 general dilaton gravity
    
- 13.5.4 对高维量子引力的可迁移与不可迁移结论
    

### 第 14 章　高自旋、矢量与张量模型

#### 14.1 Vasiliev/vector-model duality

- 14.1.1 Klebanov–Polyakov
    
- 14.1.2 free/critical vector models
    
- 14.1.3 boundary conditions 和 scalar quantization
    

#### 14.2 Higher-spin symmetry

- 14.2.1 exact symmetry 与 free CFT
    
- 14.2.2 slightly broken higher-spin symmetry
    
- 14.2.3 Chern–Simons matter 与 bosonization
    

#### 14.3 Locality 问题

- 14.3.1 infinite tower
    
- 14.3.2 pseudo-local interactions
    
- 14.3.3 tensionless string limits
    

#### 14.4 Tensor models

- 14.4.1 melonic large (N)
    
- 14.4.2 SYK-like dynamics
    
- 14.4.3 bulk interpretation 的不确定性
    

---

## 第 VI 部分　RG、非共形理论与现象学

### 第 15 章　Holographic RG

#### 15.1 Radial evolution

- 15.1.1 domain-wall geometry
    
- 15.1.2 beta functions
    
- 15.1.3 “radial coordinate = energy scale”的精确限制
    

#### 15.2 c/a/F theorems

- 15.2.1 null energy condition
    
- 15.2.2 holographic monotonic functions
    
- 15.2.3 higher-derivative corrections
    

#### 15.3 Wilsonian holographic RG

- 15.3.1 integrating out radial regions
    
- 15.3.2 multi-trace couplings
    
- 15.3.3 scheme dependence
    

#### 15.4 Finite cutoff 与 irrelevant deformations

- 15.4.1 cutoff AdS
    
- 15.4.2 (T\bar T)
    
- 15.4.3 higher-dimensional analogues
    
- 15.4.4 finite cutoff dictionary 的非唯一性
    

#### 15.5 Tensor networks 与 RG

- 15.5.1 MERA intuition
    
- 15.5.2 exact RG versus geometric discretization
    
- 15.5.3 continuum limitations
    

### 第 16 章　QCD 型全息、AdS/CMT 与有限密度

#### 16.1 Confining holography

- 16.1.1 Witten model
    
- 16.1.2 hard/soft wall
    
- 16.1.3 improved holographic QCD
    
- 16.1.4 asymptotic freedom 和 scale separation 问题
    

#### 16.2 Flavor 与 chiral symmetry

- 16.2.1 probe branes
    
- 16.2.2 Sakai–Sugimoto
    
- 16.2.3 mesons、baryons 和 anomalies
    

#### 16.3 Quark–gluon plasma

- 16.3.1 viscosity
    
- 16.3.2 jet quenching
    
- 16.3.3 comparison with lattice and heavy-ion data
    

#### 16.4 Holographic superconductors

- 16.4.1 charged-scalar instability
    
- 16.4.2 conductivity
    
- 16.4.3 top-down embeddings 与 bottom-up freedom
    

#### 16.5 Strange metals 和 non-Fermi liquids

- 16.5.1 (AdS_2\times\mathbb R^d)
    
- 16.5.2 fermion spectral functions
    
- 16.5.3 hyperscaling violation
    
- 16.5.4 electron stars
    

#### 16.6 Momentum relaxation 和 transport

- 16.6.1 lattices、axions 和 massive gravity
    
- 16.6.2 coherent/incoherent transport
    
- 16.6.3 proposed transport bounds
    
- 16.6.4 phenomenological falsifiability
    

---

## 第 VII 部分　Complexity、wormholes 与非 AdS 全息

### 第 17 章　Holographic complexity

#### 17.1 边界复杂度定义

- 17.1.1 circuit complexity
    
- 17.1.2 gate set、reference state 和 tolerance
    
- 17.1.3 Nielsen geometry
    

#### 17.2 Bulk proposals

- 17.2.1 complexity = volume
    
- 17.2.2 complexity = action
    
- 17.2.3 spacetime volume 与其他方案
    

#### 17.3 Checks

- 17.3.1 shock waves 和 switchback
    
- 17.3.2 late-time growth
    
- 17.3.3 charged/rotating black holes
    
- 17.3.4 Lloyd-type bounds
    

#### 17.4 Ambiguities

- 17.4.1 null-boundary normalization
    
- 17.4.2 counterterms
    
- 17.4.3 UV divergences
    
- 17.4.4 缺少独立边界定义
    

### 第 18 章　Wormholes、baby universes 与引力路径积分

#### 18.1 Euclidean wormholes

- 18.1.1 multiboundary saddles
    
- 18.1.2 negative modes
    
- 18.1.3 brane nucleation
    
- 18.1.4 contour 和 convergence
    

#### 18.2 Traversable wormholes

- 18.2.1 ANEC violation
    
- 18.2.2 double-trace coupling
    
- 18.2.3 teleportation interpretation
    
- 18.2.4 causality constraints
    

#### 18.3 Replica wormholes

- 18.3.1 replica topology
    
- 18.3.2 Page transition
    
- 18.3.3 analytic continuation
    

#### 18.4 Baby universes 和 (\alpha)-sectors

- 18.4.1 Coleman mechanism
    
- 18.4.2 ensemble averages
    
- 18.4.3 one-dimensional baby-universe hypothesis
    
- 18.4.4 fixed-theory/half-wormhole proposals
    

#### 18.5 Factorization puzzle

- 18.5.1 disconnected boundary partition functions
    
- 18.5.2 semiclassical connected saddles
    
- 18.5.3 UV completion、cancellations 和 ensemble interpretation
    
- 18.5.4 2025–2026 非微扰提案
    

### 第 19 章　非 AdS 全息

#### 19.1 de Sitter holography

- 19.1.1 dS/CFT
    
- 19.1.2 wavefunction of the universe
    
- 19.1.3 static-patch holography
    
- 19.1.4 entropy、observer dependence 和 Hilbert-space 问题
    

#### 19.2 Flat-space holography

- 19.2.1 asymptotic quantization
    
- 19.2.2 BMS charges
    
- 19.2.3 soft theorems
    
- 19.2.4 memory effects
    

#### 19.3 Celestial holography

- 19.3.1 conformal-primary basis
    
- 19.3.2 Mellin transform of the S-matrix
    
- 19.3.3 celestial OPE 和 soft currents
    
- 19.3.4 缺失的非微扰 boundary theory
    

#### 19.4 Carrollian holography

- 19.4.1 null-boundary Carroll structure
    
- 19.4.2 Carrollian correlators
    
- 19.4.3 与 celestial basis 的关系
    
- 19.4.4 flat limit of AdS/CFT
    

#### 19.5 其他背景

- 19.5.1 Lifshitz/Schrödinger
    
- 19.5.2 warped AdS 与 Kerr/CFT
    
- 19.5.3 linear dilaton 和 little string theory
    
- 19.5.4 nonrelativistic holography
    

### 第 20 章　Cosmology 与全息方法

#### 20.1 Inflationary correlators

- 20.1.1 in-in formalism
    
- 20.1.2 wavefunction coefficients
    
- 20.1.3 consistency relations
    

#### 20.2 Cosmological bootstrap

- 20.2.1 conformal symmetry
    
- 20.2.2 singularities、factorization 和 locality
    
- 20.2.3 cosmological polytopes 和 related structures
    

#### 20.3 Cosmological collider

- 20.3.1 mass/spin signatures
    
- 20.3.2 Boltzmann suppression
    
- 20.3.3 observational limitations
    

#### 20.4 Holographic cosmologies

- 20.4.1 analytic continuation from AdS
    
- 20.4.2 FRW/CFT
    
- 20.4.3 eternal inflation
    
- 20.4.4 tensor-network cosmology
    

---

## 第 VIII 部分　数学结构、一致性与非微扰定义

### 第 21 章　数学和结构性工具

#### 21.1 Conformal representation theory

- 21.1.1 highest-weight modules
    
- 21.1.2 conformal blocks 和 harmonic analysis
    
- 21.1.3 characters、heat kernels 和 one-loop determinants
    

#### 21.2 Modular theory 与 von Neumann algebras

- 21.2.1 Tomita–Takesaki theory
    
- 21.2.2 relative entropy
    
- 21.2.3 Type III/II transitions
    

#### 21.3 Covariant phase space

- 21.3.1 presymplectic current
    
- 21.3.2 boundary/corner terms
    
- 21.3.3 asymptotic charges 和 flux
    
- 21.3.4 central extensions
    

#### 21.4 Extended operators 和 categorical structures

- 21.4.1 Wilson/'t Hooft operators
    
- 21.4.2 generalized symmetries
    
- 21.4.3 tensor categories 和 topological sectors
    

#### 21.5 Anomalies、index 与 geometric quantization

- 21.5.1 anomaly inflow
    
- 21.5.2 supersymmetric indices
    
- 21.5.3 moduli spaces 和 symplectic reduction
    

### 第 22 章　Swampland 与全息一致性

#### 22.1 No-global-symmetry 与 completeness

- 22.1.1 black-hole arguments
    
- 22.1.2 holographic conditional theorems
    
- 22.1.3 higher-form extensions
    

#### 22.2 Weak gravity conjecture

- 22.2.1 electric/magnetic/sublattice forms
    
- 22.2.2 holographic evidence
    
- 22.2.3 未证明的加强版本
    

#### 22.3 Distance conjecture

- 22.3.1 infinite-distance limits
    
- 22.3.2 towers of states
    
- 22.3.3 CFT data interpretation
    

#### 22.4 Cobordism conjecture

- 22.4.1 generalized global charges
    
- 22.4.2 defects
    
- 22.4.3 与 holographic factorization 的关系
    

#### 22.5 AdS stability

- 22.5.1 supersymmetric versus nonsupersymmetric AdS
    
- 22.5.2 fragmentation 和 brane nucleation
    
- 22.5.3 CFT counterexamples/constraints
    

### 第 23 章　全息对偶的非微扰定义问题

#### 23.1 Boundary theory 是否定义完整 bulk

- 23.1.1 finite-(N) CFT
    
- 23.1.2 exact operator algebra
    
- 23.1.3 emergent geometric observables
    

#### 23.2 Lorentzian quantum gravity

- 23.2.1 Euclidean preparation 是否充分
    
- 23.2.2 contour 和 reflection positivity
    
- 23.2.3 Hamiltonian/unitarity construction
    

#### 23.3 Diffeomorphism-invariant observables

- 23.3.1 relational localization
    
- 23.3.2 asymptotic anchoring
    
- 23.3.3 exact commutator algebra
    

#### 23.4 Topology

- 23.4.1 topology as saddle label
    
- 23.4.2 topology-changing amplitudes
    
- 23.4.3 topology 是否为精确 observable
    

#### 23.5 Factorization、ensemble 和 alpha states

- 23.5.1 单一 CFT 的要求
    
- 23.5.2 semiclassical ensemble behavior
    
- 23.5.3 nonperturbative cancellations
    
- 23.5.4 当前相互竞争的方案
    

### 第 24 章　争议、开放问题与研究路线

#### 24.1 已有明确数学表述的问题

- 24.1.1 generic large-(N) CFT 的 bulk criterion
    
- 24.1.2 finite-(N) reconstruction
    
- 24.1.3 path-integral factorization
    
- 24.1.4 Lorentzian construction
    

#### 24.2 物理问题明确但缺乏技术的问题

- 24.2.1 realistic black-hole evaporation
    
- 24.2.2 typical microstates
    
- 24.2.3 cosmological singularities
    
- 24.2.4 string-scale interiors
    

#### 24.3 依赖非微扰定义的问题

- 24.3.1 topology change
    
- 24.3.2 singularity resolution
    
- 24.3.3 emergence of time
    
- 24.3.4 de Sitter Hilbert space
    

#### 24.4 问题定义本身有争议

- 24.4.1 “spacetime emerges from entanglement”
    
- 24.4.2 “information recovery”
    
- 24.4.3 “bulk locality”
    
- 24.4.4 “complexity of a QFT state”
    

#### 24.5 未来研究方向

- 24.5.1 precision CFT data (\leftrightarrow) string amplitudes
    
- 24.5.2 algebraic quantum gravity
    
- 24.5.3 nonperturbative factorization
    
- 24.5.4 null-boundary/Carrollian methods
    
- 24.5.5 experimentally discriminating holographic models
    

#### 24.6 阅读路线、术语表和完整参考文献

- 24.6.1 10 篇入门必读
    
- 24.6.2 30 篇核心文献
    
- 24.6.3 100 篇研究级文献
    
- 24.6.4 专题文献树
    
- 24.6.5 术语和 convention 对照
    

---

## 2. 概念依赖图

### 2.1 微观构造链

[  
\boxed{\text{D/M branes}}  
;\xrightarrow[\text{low energy}]{\text{open strings}};  
\boxed{\text{large-}N\text{ gauge/CFT}}  
]

[  
\boxed{\text{D/M branes}}  
;\xrightarrow[\text{near horizon}]{\text{closed strings}};  
\boxed{\text{string/M theory on AdS}\times X}  
]

[  
\Longrightarrow\qquad  
\boxed{  
\text{CFT}  
;\overset{?}{\equiv};  
\text{full quantum string/M theory}  
}  
]

最后一个箭头是对偶猜想，而不是 decoupling limit 单独证明的定理。decoupling argument 说明两种低能描述具有共同来源，并在若干参数区间分别可控；它没有直接构造有限 (N)、任意耦合下的 Hilbert-space 同构。citeturn822486search0turn365950search0

### 2.2 字典与动力学链

[  
\boxed{\text{CFT sources and states}}  
\xleftrightarrow[\text{state preparation}]{\text{GKPW}}  
\boxed{\text{asymptotic bulk data}}  
]

[  
\boxed{\text{spectrum and OPE coefficients}}  
\xleftrightarrow[\text{Witten/Mellin amplitudes}]{}  
\boxed{\text{bulk masses and couplings}}  
]

[  
\boxed{\text{large }N+\text{sparse low spectrum}}  
;\Longrightarrow_{\rm controlled};  
\boxed{\text{perturbative local bulk EFT}}  
]

这里第三条箭头只有在额外的谱隙、Regge 行为、Mellin boundedness 等假设下才成立。large-(N) factorization 本身只产生 generalized-free-like 多粒子组织，并不排除高自旋塔、弦尺度等于 AdS 尺度或非局域 bulk。HPPS、Penedones 及后续工作建立了重要的受控方向，但尚未给出适用于所有 CFT 的充分必要判据。citeturn608466search1turn608466search0turn608466search2turn608466search3

### 2.3 区域与纠缠链

[  
\boxed{\text{boundary subregion algebra}}  
\xleftrightarrow[\text{code subspace}]{\text{relative entropy}}  
\boxed{\text{entanglement-wedge algebra}}  
]

[  
\boxed{\text{boundary entropy}}  
\xleftrightarrow[\text{semiclassical}]{\text{RT/HRT/QES}}  
\boxed{  
\frac{\operatorname{Area}}{4G_N}  
+S_{\mathrm{bulk}}  
}  
]

[  
\boxed{\text{modular data}}  
\longrightarrow  
\boxed{\text{bulk reconstruction and dynamics}}  
]

第一条箭头可在有限维 QEC/OAQEC 模型中表述为严格定理；将其应用于 AdS/CFT 需要 code subspace、JLMS 型相对熵关系和半经典区域代数等输入。它不意味着引力 Hilbert space 普通地分解为  
(\mathcal H_{\mathcal E[A]}\otimes\mathcal H_{\mathcal E[\bar A]})。citeturn908600search1turn908600search2turn908600search3turn119133search3

### 2.4 黑洞与非微扰链

[  
\boxed{\text{thermal CFT}}  
\leftrightarrow  
\boxed{\text{AdS black-hole saddle}}  
]

[  
\boxed{\text{fine-grained radiation entropy}}  
\xleftrightarrow[\text{replica computation}]{}  
\boxed{\text{islands/replica wormholes}}  
]

[  
\boxed{\text{connected gravitational saddles}}  
\quad\overset{?}{\longleftrightarrow}\quad  
\boxed{\text{single theory / ensemble / }\alpha\text{-sector}}  
]

Islands 与 replica wormholes 在若干二维引力加 bath 模型中给出 Page 曲线和 QES transition；这属于受控模型和半经典路径积分结果。它们没有单独给出真实四维黑洞 Hawking radiation 的高效解码协议，也没有消除单一边界理论要求的 factorization 问题。citeturn984220search1turn984220search2turn984220search3turn347225search2

### 2.5 非 AdS 分叉

[  
\text{AdS/CFT}  
\begin{cases}  
L_{\mathrm{AdS}}\to\infty  
&\longrightarrow \text{flat-space limit},\[2mm]  
L_{\mathrm{AdS}}\to iL_{\mathrm{dS}}  
&\longrightarrow \text{formal AdS/dS continuation},\[2mm]  
\partial AdS\to\mathscr I  
&\longrightarrow \text{Carrollian/celestial structures}.  
\end{cases}  
]

这些操作提供计算关系和结构线索，但目前没有一条产生与标准 top-down AdS/CFT 同等完备的非微扰 flat-space 或 de Sitter dictionary。Celestial amplitudes 是 S-matrix 的共形基变换；仅凭这一事实不能推出存在一个普通、局域、幺正二维 CFT。citeturn794729search0turn794729search1turn794729search2turn794729search3

---

## 3. 各章核心科学问题

|   |   |   |
|---|---|---|
|章节|核心问题|当前认识上限|
|0|如何防止把条件性结果写成普遍结论？|建立 claim ledger 和双重证据标签|
|1|面积熵为何暗示降维编码？|熵界提供动机，不给出具体 dual Hilbert space|
|2|brane decoupling 能否建立完整对偶？|构成极强结构证据，但不是一般证明|
|3|哪些 boundary data 对应 sources、states 和 observables？|线性及半经典字典成熟；完整量子字典不完整|
|4|如何定义有限、scheme-aware 的 holographic observables？|渐近展开与 counterterms 系统化；有限项和实时态仍有依赖|
|5|如何从 CFT data 反演 bulk dynamics？|tree/部分 loop 阶高度可控；高阶、一般外态仍困难|
|6|什么 CFT 条件保证局域 Einstein-like bulk？|large (N)+gap 是核心，但充分必要条件未知|
|7|bulk operator 在何种意义下存在并可重建？|perturbative code subspace 中成立；有限 (N) 非微扰问题未解|
|8|引力中的“区域”究竟是 Hilbert factor 还是 algebra？|algebraic formulation 更准确；finite-(G_N) 结构仍在发展|
|9|几何面积为何计算 entropy？|classical/semiclassical replica 论证强；完整非微扰公式未知|
|10|黑洞如何编码热化、输运与混沌？|derivative/semiclassical expansions 可控；普适 bound 常有额外条件|
|11|unitary Page curve 是否等同于信息悖论解决？|不等同；熵、重建、解码和体验者内部物理是不同问题|
|12|protected/exact tests 能支持完整 duality 到什么程度？|是极强证据，但只直接控制特定 observable/sector|
|13|JT/SYK 的 ensemble 结构是否普遍？|在低维模型中精确；向高维迁移不能自动成立|
|14|higher-spin holography 如何兼容 locality？|相关函数匹配强；bulk interaction 的局域性非常微妙|
|15|radial evolution 与 Wilsonian RG 是否精确等价？|Hamilton–Jacobi 结构明确；cutoff map 和 scheme 非唯一|
|16|bottom-up holography 是否具有预测力？|可提取机制和 universality class；具体材料/QCD 的唯一预测较弱|
|17|complexity 是否已有独立边界 observable？|没有统一定义；CV/CA 仍为 proposals|
|18|wormholes 应解释为 ensemble 还是单一理论中的 saddle？|不同模型给出不同机制；一般答案未定|
|19|非 AdS 全息是否已达到 AdS/CFT 完整度？|没有；主要成果是对称性、S-matrix 和波函数结构|
|20|cosmological bootstrap 是否等于 cosmological holography？|不等于；前者可在 perturbative QFT 中独立成立|
|21|哪种数学结构是全息的必要组成，而非装饰？|表示论、模理论、区域代数、CPS 和 anomalies 均承担具体任务|
|22|swampland 猜想能否由 holography 证明？|部分 symmetry statements 可条件性证明；WGC/distance 等仍是猜想|
|23|单一 finite-(N) CFT 是否给出完整 quantum gravity？|是 AdS/CFT 最强解释，但 bulk reconstruction 未被非微扰构造|
|24|真正开放的是技术问题、定义问题还是语言问题？|三者必须分层，不应统一称为“量子引力未解之谜”|

---

# 阶段 B：初始文献数据库

## 4. 检索和数据库规则

文献条目将包含以下字段：

[  
{\mathrm{ID},\ \mathrm{authors},\ \mathrm{title},  
\mathrm{v1\ date},\ \mathrm{journal},\ \mathrm{arXiv},  
\mathrm{DOI},\ \mathrm{topic},\ \mathrm{claim},  
\mathrm{assumptions},\ \mathrm{status}}.  
]

每一个正文论断另有 claim record：

[  
{\mathrm{claim\ ID},\ \mathrm{precise\ statement},  
\mathrm{dimension},\ \mathrm{limit},  
\mathrm{duality\ assumptions},  
\mathrm{primary\ references},  
\mathrm{counterpoints}}.  
]

综述或讲义用于发现文献树；关键论断原则上回溯至原始论文。以下是可以直接支撑正文骨架的种子数据库，不是最终完整参考文献表。

---

## 5. 奠基性文献

**F001 [M3]** G. ’t Hooft, _A Planar Diagram Theory for Strong Interactions_, Nucl. Phys. B 72 (1974) 461，DOI 10.1016/0550-3213(74)90154-0。建立双线图和按拓扑 genus 组织的 large-(N) 展开；它暗示弦描述，但不构造具体弦背景。citeturn460242search0

**F002 [M2]** J. D. Bekenstein, _Black Holes and Entropy_ (1973)。提出黑洞熵和广义第二定律的基本框架，是面积标度的源头之一。citeturn460242search6

**F003 [M2]** S. W. Hawking, _Particle Creation by Black Holes_ (1975)。推导 Hawking 辐射，使黑洞热力学成为半经典量子场论结果。citeturn460242search3

**F004 [M2]** G. ’t Hooft, _Dimensional Reduction in Quantum Gravity_, arXiv/9310026。提出引力量子态自由度应具有面积而非体积标度的早期全息表述。citeturn460242academia48

**F005 [M2]** L. Susskind, _The World as a Hologram_, arXiv/9409089。发展全息原理的物理表述，但不提供具体 microscopic dual。citeturn460242search1

**F006 [M3]** J. Maldacena, _The Large (N) Limit of Superconformal Field Theories and Supergravity_, arXiv/9711200。提出 D3/M2/M5 等 brane CFT 与 AdS string/M theory 的具体对偶和 decoupling argument。其 supergravity 匹配是对偶的受控极限，不是完整证明。citeturn822486search0turn822486search4

**F007 [M3]** S. S. Gubser, I. R. Klebanov, A. M. Polyakov, _Gauge Theory Correlators from Non-Critical String Theory_, arXiv/9802109。把 bulk on-shell action 与边界相关函数联系起来，形成 GKPW 字典的一半。citeturn822486search1turn822486search5

**F008 [M3]** E. Witten, _Anti-de Sitter Space and Holography_, arXiv/9802150。系统表述生成泛函、质量—维数关系及 black-hole/CFT thermodynamics。citeturn822486search2turn822486search6

**F009 [M2，综述]** O. Aharony, S. S. Gubser, J. Maldacena, H. Ooguri, Y. Oz, _Large (N) Field Theories, String Theory and Gravity_, arXiv/9905111。经典文献地图，适合历史和早期证据，但不能替代后续原始论文。citeturn365950search0turn365950academia48

**F010 [M2]** E. Witten, _Anti-de Sitter Space, Thermal Phase Transition, and Confinement in Gauge Theories_, arXiv/9803131。把 Hawking–Page 型 saddle transition 解释为 large-(N) confinement/deconfinement，并明确指出其非超对称 QCD-like 构造并非可控的真实 QCD dual。citeturn555957search0turn555957search4

---

## 6. 字典、重整化与实时形式

**D001 [M3]** S. de Haro, S. N. Solodukhin, K. Skenderis, _Holographic Reconstruction of Spacetime and Renormalization in the AdS/CFT Correspondence_, arXiv/0002230。系统发展 FG expansion、counterterms、one-point functions 和 conformal anomaly。citeturn822486search3turn822486search7

**D002 [M2，讲义]** K. Skenderis, _Lecture Notes on Holographic Renormalization_, arXiv/0209067。给出 scalar、Ward identities、anomalies、RG flows 和相关函数的标准推导。citeturn108634search3turn108634search7

**D003 [M2]** I. R. Klebanov, E. Witten, _AdS/CFT Correspondence and Symmetry Breaking_, arXiv/9905104。阐明 BF window 中两种 quantization 以及生成泛函的 Legendre transform。citeturn108634search0turn108634search4

**D004 [M2]** E. Witten, _Multi-Trace Operators, Boundary Conditions, and AdS/CFT Correspondence_, arXiv/0112258。给出 multi-trace deformation 与 nonlinear/mixed boundary condition 的对应。citeturn178888search0turn178888academia47

**D005 [M2]** M. Berkooz, A. Sever, A. Shomer, _“Double-Trace” Deformations, Boundary Conditions and Spacetime Singularities_, arXiv/0112264。独立发展 double-trace/boundary-condition 关系，并讨论其 string worldsheet 解释。citeturn108634search1turn108634search5

**D006 [M2]** I. Papadimitriou, K. Skenderis, _AdS/CFT Correspondence and Geometry_, arXiv/0404176。以 radial Hamilton–Jacobi 和 dilatation weights 重写 holographic renormalization。citeturn178888search2turn178888search6

**D007 [M2]** D. T. Son, A. O. Starinets, _Minkowski-Space Correlators in AdS/CFT Correspondence_, arXiv/0205051。建立 thermal retarded correlator 的 ingoing-horizon prescription，并联系 quasinormal poles。citeturn108634search2turn108634search10

**D008 [M3]** K. Skenderis, B. C. van Rees, _Real-Time Gauge/Gravity Duality: Prescription, Renormalization and Examples_, arXiv:0812.2909，相关 DOI 10.1088/1126-6708/2009/05/085。用复时间 contour 的 Euclidean/Lorentzian bulk filling 统一 states、density matrices 和各类实时相关函数。citeturn178888search1turn178888academia46

---

## 7. CFT 数据、bulk locality 与 loop 技术

**C001 [M2]** I. Heemskerk, J. Penedones, J. Polchinski, J. Sully, _Holography from Conformal Field Theory_, arXiv:0907.0151。在 large (N) 和谱隙等假设下，展示 crossing solutions 与局域 AdS interactions 的对应；主要结果处于首个非平凡 (1/N^2) 阶。citeturn608466search1turn608466search5

**C002 [M2]** J. Penedones, _Writing CFT Correlation Functions as AdS Scattering Amplitudes_, arXiv:1011.1485。建立 Mellin amplitude 的散射振幅式结构并提出 flat-space limit。citeturn608466search0turn608466search4

**C003 [M2]** A. L. Fitzpatrick, J. Kaplan, _AdS Field Theory from Conformal Field Theory_, arXiv:1208.0337。明确提出 large (N)、gap 与 Mellin polynomial boundedness 等 perturbative bulk EFT 条件。citeturn608466search2turn608466search6

**C004 [M2]** S. Caron-Huot, _Analyticity in Spin in Conformal Theories_, arXiv:1703.00278。建立 Lorentzian inversion formula，对大自旋 OPE data 和 holographic loop reconstruction 至关重要。citeturn608466search3turn608466search7

**C005 [M2]** O. Aharony, L. F. Alday, A. Bissi, E. Perlmutter, _Loops in AdS from Conformal Field Theory_, arXiv:1612.03891。由 crossing 和 Mellin data 重建部分 one-loop AdS amplitudes，精确展示 tree data 如何约束 loop poles。citeturn536127search1turn536127academia48

**C006 [M2]** D. Meltzer, E. Perlmutter, A. Sivaramakrishnan, _Unitarity Methods in AdS/CFT_, arXiv:1912.09521。把 bulk cuts、gluing、double discontinuity 和 CFT OPE sums 组织为系统的 AdS unitarity 方法。citeturn536127search0turn536127search4

**C007 [M2]** L. F. Alday, A. Bissi, E. Perlmutter, _Genus-One String Amplitudes from Conformal Field Theory_, arXiv:1809.10670。由强耦合 large-(N) CFT correlators 提取低能 genus-one string amplitude data。citeturn536127academia50

**C008 [W]** F. Aprile, A. Paul, M. Santagata, arXiv:2602.11254。研究 (AdS_3\times S^3) 特定超引力/CFT 设置的一圈 bootstrap，并选出特定参数解；属于 2026 年精密全息预印本，不能外推为一般 (AdS_3/CFT_2) 结果。citeturn743411search3turn743411search7

---

## 8. Bulk reconstruction、QEC 与区域代数

**R001 [M2]** A. Hamilton, D. Kabat, G. Lifschytz, D. A. Lowe, _Holographic Representation of Local Bulk Operators_, arXiv/0606141。构造自由/微扰 bulk field 的 boundary smearing representation。citeturn908600search0turn908600search4

**R002 [M2]** 同一系列关于 black-hole interior 的 arXiv/0612053。讨论黑洞背景中的 smearing 和 interior representation；其结论仍处于 semiclassical/operator reconstruction 层级。citeturn908600search8

**R003 [M2]** A. Almheiri, X. Dong, D. Harlow, _Bulk Locality and Quantum Error Correction in AdS/CFT_, arXiv:1411.7041。引入 code subspace 和 QEC 语言解释多重 boundary reconstruction。citeturn908600search1turn908600search5

**R004 [M2]** D. L. Jafferis, A. Lewkowycz, J. Maldacena, S. J. Suh, _Relative Entropy Equals Bulk Relative Entropy_, arXiv:1512.06431。在半经典阶建立 boundary/bulk relative entropy 与 modular Hamiltonian 的关系。citeturn908600search2turn908600search6

**R005 [M2]** D. Harlow, _The Ryu–Takayanagi Formula from Quantum Error Correction_, arXiv:1607.03901。证明 OAQEC 模型中 entropy formula 和 complementary recovery 的结构定理；这是 code model theorem，不是 AdS/CFT 的证明。citeturn908600search3turn908600search7

**R006 [M2]** X. Dong, D. Harlow, A. C. Wall, _Reconstruction of Bulk Operators within the Entanglement Wedge_, arXiv:1601.05416。结合量子信息定理与 JLMS 型输入论证 entanglement-wedge reconstruction。citeturn119133search3turn119133search7

**R007 [M2]** E. Witten, _Gravity and the Crossed Product_, arXiv:2112.12828。提出 black-hole large-(N) algebra 由 Type III(_1) 经 crossed product 产生 Type II(_\infty) 结构，并把 entropy 与面积联系起来。citeturn828293search4

**R008 [M2]** V. Chandrasekaran, G. Penington, E. Witten, _Large (N) Algebras and Generalized Entropy_, arXiv:2209.10454。在特定 large-(N)/microcanonical 极限中构造 Type II algebra 并解释 generalized entropy。citeturn828293search0turn828293search8

**R009 [M2]** V. Chandrasekaran、G. Penington、E. Witten 相关工作及 J. Jensen, G. Sorce, A. Speranza, arXiv:2306.01837。把 Type II factor 结构扩展至更一般的引力子区域；部分论证依赖几何 modular states 等明确但尚未普遍证明的假设。citeturn828293search1

**R010 [M2]** G. Penington, E. Witten, _Algebras and States in JT Gravity_, arXiv:2301.07257。在 JT gravity 中分析 boundary algebra、states 和 factor 类型，提供低维精确试验场。citeturn828293search5turn828293search9

**R011 [M2]** J. De Vuyst et al., arXiv:2412.15502。研究 gravitational entropy 对 observer/quantum reference frame 的依赖，提示区域代数的定义包含参考系选择。citeturn828293search6

**R012 [W]** S. Terashima, _Entanglement Wedge Reconstruction without Holographic Quantum Error Correction_, arXiv:2607.08684。质疑把 finite-(N) subregion reconstruction 统一解释为共享 logical algebra 的强 QEC 命题；这是 2026 年新近反对意见，必须与主流 OAQEC 框架并列审查。citeturn119133academia49

**R013 [W]** S. Mondal, arXiv:2607.27337。在 linearized gravity 及 AdS-Rindler reconstruction 等假设下推导 JLMS/crossed-product 型结构。结果很新，认识论状态应标为条件性预印本论证。citeturn907226search0

---

## 9. 纠缠、极值面与引力动力学

**E001 [M3]** S. Ryu, T. Takayanagi, _Holographic Derivation of Entanglement Entropy from AdS/CFT_, arXiv/0603001。提出 static minimal-area formula。citeturn171095search0turn171095search4

**E002 [M2]** V. E. Hubeny, M. Rangamani, T. Takayanagi, _A Covariant Holographic Entanglement Entropy Proposal_, arXiv:0705.0016。提出 Lorentzian extremal-surface general化。citeturn119133search0turn119133search4

**E003 [M2]** A. Lewkowycz, J. Maldacena, _Generalized Gravitational Entropy_, arXiv:1304.4926。由 replica geometries 论证 classical RT；关键假设包括合适 saddle、replica symmetry 和 (n\to1) analytic continuation。citeturn171095search1turn171095search5

**E004 [M2]** T. Faulkner, A. Lewkowycz, J. Maldacena, _Quantum Corrections to Holographic Entanglement Entropy_, arXiv:1307.2892。给出一圈 bulk entanglement correction，即 FLM 公式。citeturn171095search2turn171095search6

**E005 [M2]** N. Engelhardt, A. C. Wall, _Quantum Extremal Surfaces_, arXiv:1408.3203。提出 extremize generalized entropy 的 QES prescription；应称为强有力半经典方案，而非已证明的 full-QG exact theorem。citeturn171095search3turn171095search7

**E006 [M2]** T. Faulkner, M. Guica, T. Hartman, R. Myers, M. Van Raamsdonk, _Gravitation from Entanglement in Holographic CFTs_, arXiv:1312.7856。证明 vacuum 邻域、所有 ball regions 的 entanglement first law 与 pure AdS 上 linearized gravitational equations 等价。它不直接推导完整非线性 Einstein theory。citeturn119133search1turn119133search5

**E007 [M2]** B. Czech, L. Lamprou, S. McCandlish, J. Sully, _Modular Berry Connection_, arXiv:1712.07123。在 vacuum (CFT_2/AdS_3) 等特定背景中构造 modular zero-mode connection 和几何 holonomy。citeturn119133search2turn119133academia50

**E008 [M2]** M. Headrick, V. E. Hubeny, _Covariant Bit Threads_, arXiv:2208.10507。给出 HRT 的 convex/minimax flow reformulations；这些是 entropy formula 的数学重写，不意味着微观纠缠“由真实线束组成”。citeturn119133academia51

---

## 10. 黑洞、混沌和信息问题

**B001 [M2]** A. Almheiri, D. Marolf, J. Polchinski, J. Sully, _Black Holes: Complementarity or Firewalls?_, arXiv:1207.3123。精确化 purity、semiclassical exterior EFT 和 no-drama 之间的冲突。citeturn984220search0turn984220search4

**B002 [M2]** G. Penington, _Entanglement Wedge Reconstruction and the Information Paradox_, arXiv:1905.08255。在吸收边界/evaporating AdS setup 中发现 Page-time QES transition 和 radiation entanglement wedge。citeturn984220search1turn984220search5

**B003 [M2]** A. Almheiri, N. Engelhardt, D. Marolf, H. Maxfield, _The Entropy of Bulk Quantum Fields and the Entanglement Wedge of an Evaporating Black Hole_, arXiv:1905.08762。在 JT+CFT+bath 模型中获得 island/QES Page curve。citeturn984220search2turn984220search6

**B004 [M2]** G. Penington, S. Shenker, D. Stanford, Z. Yang, _Replica Wormholes and the Black Hole Interior_, arXiv:1911.11977。由 replica saddles 计算 Page transition，并使 ensemble/factorization 问题变得显式。citeturn984220search3turn984220search7

**B005 [M2]** A. Strominger, C. Vafa, _Microscopic Origin of the Bekenstein–Hawking Entropy_, arXiv/9601029。精确计数特定 supersymmetric extremal five-dimensional black hole 的 BPS degeneracy；不能直接外推至一般 Schwarzschild black hole。citeturn174950search0turn174950search4

**B006 [M2，综述]** J. R. David, G. Mandal, S. R. Wadia, _Microscopic Formulation of Black Holes in String Theory_, arXiv/0203048。D1–D5 系统和低维黑洞微观态的经典技术综述。citeturn174950search1turn174950search5

**B007 [M2]** P. Kovtun, D. T. Son, A. O. Starinets, _Viscosity in Strongly Interacting Quantum Field Theories from Black Hole Physics_, arXiv/0405231。证明一大类 two-derivative holographic theories 中  
(\eta/s=1/4\pi)，并提出更广 bound；后者不是一般定理。citeturn528817search1turn528817search5

**B008 [M2]** S. Bhattacharyya, V. Hubeny, S. Minwalla, M. Rangamani, _Nonlinear Fluid Dynamics from Gravity_, arXiv:0712.2456。由 regular black-brane geometries 的 derivative expansion 推导 nonlinear conformal hydrodynamics。citeturn528817search0turn528817search4

**B009 [M2]** J. Maldacena, S. H. Shenker, D. Stanford, _A Bound on Chaos_, arXiv:1503.01409。在 analyticity、factorization 和时间尺度分离等假设下推导/提出  
(\lambda_L\le 2\pi T)；不是所有量子系统无条件适用的 elementary theorem。citeturn528817search2turn528817search10

**B010 [M2]** M. Blake et al. 及相关工作，arXiv:1809.01169。证明 Einstein gravity coupled to matter 的广泛 holographic systems 中出现 energy-density pole skipping；pole skipping 与 chaos 的等价仍需要解析结构和 mode interpretation 等条件。citeturn109651search1turn109651search5

**B011 [M2]** P. Gao, D. L. Jafferis, A. C. Wall, _Traversable Wormholes via a Double Trace Deformation_, arXiv:1608.05687。通过双边界 coupling 产生负 averaged null energy，使 eternal BTZ bridge 在受控 perturbative regime 中可穿越。citeturn109651search3turn109651search7

---

## 11. JT、SYK、矩阵积分与 factorization

**J001 [M2]** J. Maldacena, D. Stanford, _Remarks on the Sachdev–Ye–Kitaev Model_, arXiv:1604.07818。系统求解 large-(N) SYK 的两点、四点函数和 maximal chaos。citeturn337316search0turn337316search4

**J002 [M2]** J. Maldacena, D. Stanford, Z. Yang, _Conformal Symmetry and Its Breaking in Two-Dimensional Nearly Anti-de Sitter Space_, arXiv:1606.01857。建立 nearly-AdS(_2) boundary mode 与 Schwarzian action。citeturn337316search1turn337316search5

**J003 [M2]** D. Stanford, E. Witten, _Fermionic Localization of the Schwarzian Theory_, arXiv:1703.04612。证明 Schwarzian partition function 的 one-loop exactness。citeturn337316search3turn337316search7

**J004 [M2]** P. Saad, S. H. Shenker, D. Stanford, _JT Gravity as a Matrix Integral_, arXiv:1903.11115。把 JT 的 genus expansion 与 double-scaled matrix integral 联系起来，并指出 perturbative data 不唯一确定 nonperturbative completion。citeturn337316search2turn337316search6

**J005 [M3]** J. Maldacena, L. Maoz, _Wormholes in AdS_, arXiv/0401024，JHEP 0402 (2004) 053，DOI 10.1088/1126-6708/2004/02/053。构造多边界 Euclidean supergravity solutions 并明确提出 AdS/CFT factorization puzzle。citeturn347225search0turn347225search4

**J006 [M2]** J. McNamara, C. Vafa, _Baby Universes, Holography, and the Swampland_, arXiv:2004.06738。提出一致 quantum gravity 的 baby-universe Hilbert space 应为一维，以恢复单一理论 factorization；这是 swampland-based proposal，不是一般证明。citeturn347225search2turn347225search6

**J007 [M2]** P. Saad, S. H. Shenker, D. Stanford, S. Yao, _Wormholes without Averaging_, arXiv:2103.16754。在固定耦合的简化 SYK-like 模型中发现 half-wormhole saddles 可恢复 factorization，说明“wormhole 必然等于 ensemble”并不成立。citeturn347225search1turn347225search5

**J008 [M2]** D. Marolf, J. E. Santos, _AdS Euclidean Wormholes_, arXiv:2101.08875。分析低能模型和 string compactifications 中 wormhole 稳定性；UV-complete examples 出现 brane-nucleation instability。citeturn347225academia48

**J009 [M2]** J. Cotler, K. Jensen, _Wormholes and Black Hole Microstates in AdS/CFT_, arXiv:2104.00601。将 Euclidean wormholes 解释为黑洞能级统计的 coarse-grained approximation，并强调由此产生的 factorization paradox。citeturn347225academia51

**J010 [W]** V. Balasubramanian, A. Yildirim, _A Nonperturbative Toolkit for Quantum Gravity_, arXiv:2504.16986，2026 年 7 月修订。提出通过 Euclidean cutting/splicing 论证双边界 thermal partition function factorization；这是新方案，不应写成全量子引力的一般定理。citeturn743411search1turn743411search5turn743411search9

**J011 [W]** J. McNamara, Z. Wang, _Wormholes as Red Herrings: Reflection Positivity and the Reconstruction of Unitary Quantum Field Theories_, arXiv:2607.01322。给出 reflection-positive partition functions 与 unitary QFT reconstruction 的数学主张，并据此重新解释空间 wormhole 的 factorization；截至 2026-08-03 是很新的长篇预印本。citeturn347225search3turn347225search7

---

## 12. Top-down、精密全息与高自旋

**T001 [M2]** O. Aharony, O. Bergman, D. L. Jafferis, J. Maldacena, _(\mathcal N=6) Superconformal Chern–Simons-Matter Theories, M2-Branes and Their Gravity Duals_, arXiv:0806.1218。提出 ABJM 与 (AdS_4\times\mathbb{CP}^3)/M-theory dual。citeturn382690search0turn382690search4

**T002 [M2]** N. Drukker, M. Mariño, P. Putrov, _From Weak to Strong Coupling in ABJM Theory_, arXiv:1007.3837。利用 localization matrix model 得到 free energy、(N^{3/2}) scaling 和非微扰修正信息。citeturn382690search1turn382690search5

**T003 [M2]** N. Gromov, V. Kazakov, S. Leurent, D. Volin, _Quantum Spectral Curve for (AdS_5/CFT_4)_, arXiv:1305.1939。给出 planar (\mathcal N=4) SYM 谱问题的精确 integrability formalism；“精确”限于 planar spectral problem，而非 finite-(N) 完整 duality。citeturn365950search2turn365950academia50

**T004 [M2]** D. Dorigoni, M. B. Green, C. Wen, arXiv:2102.08305。在 finite (N) 下研究 localization 得到的 integrated correlator、(SL(2,\mathbb Z)) 和 instanton structure，是 precision holography 的代表。citeturn365950search3turn365950search7

**T005 [M2]** A. Barrat, A. Gimenez-Grau, P. Liendo, arXiv:2108.13432。把 defect bootstrap 与 localization data 结合，约束特定 supersymmetric defect observables。citeturn382690search2turn382690search6

**H001 [M2]** I. R. Klebanov, A. M. Polyakov, _AdS Dual of the Critical (O(N)) Vector Model_, arXiv/0210114。提出 critical (O(N)) vector model 与 minimal bosonic higher-spin theory 的对偶。citeturn743912search0turn743912search4

**H002 [M2]** S. Giombi, X. Yin, _Higher Spin Gauge Theory and Holography: The Three-Point Functions_, arXiv:0912.3462。计算 tree-level higher-spin 三点函数并匹配 vector-model correlators。citeturn743912search1turn743912search5

**H003 [M2]** J. Maldacena, A. Zhiboedov, _Constraining Conformal Field Theories with a Higher Spin Symmetry_, arXiv:1112.1016。在三维 unitary CFT 等明确条件下，证明存在精确 higher-spin conserved current 会把相关函数约束为 free-theory 类型。citeturn743912search2turn743912search6

**H004 [M2]** O. Aharony, G. Gur-Ari, R. Yacoby, _(d=3) Bosonic Vector Models Coupled to Chern–Simons Gauge Theories_, arXiv:1110.4382。发展 slightly-broken higher-spin/Chern–Simons matter large-(N) 数据，是三维 bosonization dualities 的基础之一。citeturn743912search3turn743912search7

---

## 13. Holographic RG、QCD 与凝聚态

**G001 [M2]** D. Z. Freedman, S. S. Gubser, K. Pilch, N. P. Warner, _Renormalization Group Flows from Holography—Supersymmetry and a (c)-Theorem_, arXiv/9904017。由 classical domain walls 和 energy conditions 构造 holographic monotonicity。citeturn502376search0turn502376search4

**G002 [M2]** I. Heemskerk, J. Polchinski, _Holographic and Wilsonian Renormalization Groups_, arXiv:1010.1264。系统讨论 integrating-out radial regions、multi-trace couplings，并明确指出精确 radial cutoff/QFT cutoff map 并未解决。citeturn502376search1turn502376search5

**G003 [M2]** T. Faulkner, H. Liu, M. Rangamani, _Integrating Out Geometry: Holographic Wilsonian RG and the Membrane Paradigm_, arXiv:1010.4036。联系 holographic Wilsonian RG、IR response 和 membrane paradigm。citeturn502376search2turn502376search6

**G004 [M2]** L. McGough, M. Mezei, H. Verlinde, _Moving the CFT into the Bulk with (T\bar T)_, arXiv:1611.03470。提出二维 (T\bar T) deformation 与 finite radial cutoff 的关系；该等价依赖特定二维和 holographic setup。citeturn502376search3turn502376search7

**P001 [M2]** T. Sakai, S. Sugimoto, _Low Energy Hadron Physics in Holographic QCD_, arXiv/0412141。probe D8 branes 中几何实现 chiral symmetry breaking、pions、mesons 和 baryons；有效范围为 large (N_c)、large coupling、(N_f\ll N_c)。citeturn555957search2turn555957search6

**P002 [M3]** S. A. Hartnoll, C. P. Herzog, G. T. Horowitz, _Building an AdS/CFT Superconductor_, arXiv:0803.3295，Phys. Rev. Lett. 101, 031601，DOI 10.1103/PhysRevLett.101.031601。展示简单 Einstein–Maxwell–scalar 模型的 charged condensate 和 conductivity，不等同于给定真实材料的 microscopic model。citeturn555957search1turn555957search5

**P003 [M2]** H. Liu, J. McGreevy, D. Vegh, _Non-Fermi Liquids from Holography_, arXiv:0903.2477。由 probe fermion spectral functions 得到 Fermi-surface-like poles 和非 Landau scaling；boundary microscopic Hamiltonian 一般不明确。citeturn985048search0turn985048search4

**P004 [M2]** T. Faulkner, H. Liu, J. McGreevy, D. Vegh, _Emergent Quantum Criticality, Fermi Surfaces, and (AdS_2)_, arXiv:0907.2694。把低频 scaling 与 near-horizon (AdS_2) operator dimensions 联系起来，同时指出 UV completion 和 extremal entropy 等问题。citeturn985048search1turn985048search5

**P005 [M2]** X. Dong, S. Harrison, S. Kachru, G. Torroba, H. Wang, _Aspects of Holography for Theories with Hyperscaling Violation_, arXiv:1201.1905。研究 ((z,\theta)) 几何、NEC、correlators 和 entropy scaling，并明确把许多背景视为有限能区间的 effective holographic geometry。citeturn985048search2turn985048academia48

**P006 [M2]** T. Andrade, B. Withers, _A Simple Holographic Model of Momentum Relaxation_, arXiv:1311.5157。用线性空间依赖 axion sources 构造 homogeneous momentum relaxation 和有限 DC conductivity。citeturn555957search3turn555957academia50

**P007 [M2]** R. A. Davison, B. Goutéraux, S. A. Hartnoll, _Incoherent Transport in Clean Quantum Critical Metals_。构造与动量正交的 incoherent current 和有限 universal conductivity；其适用对象是特定 hydrodynamic/critical regime。citeturn985048search7

---

## 14. Complexity

**K001 [M3]** D. Stanford, L. Susskind, _Complexity and Shock Wave Geometries_, arXiv:1406.2678，Phys. Rev. D 90, 126007，DOI 10.1103/PhysRevD.90.126007。提出 maximal-volume CV，并检验 shock-wave/switchback behavior；论文明确称其为 conjecture 且存在 normalization ambiguity。citeturn528817search3turn528817search7

**K002 [M2]** A. R. Brown, D. A. Roberts, L. Susskind, B. Swingle, Y. Zhao, _Complexity Equals Action_, arXiv:1509.07876。提出 WDW patch action 的 CA prescription，并在若干 black-hole geometries 中检验。citeturn109651search2turn109651search6

**K003 [M2]** A. Akhavan, F. Omidi, _On the Role of Counterterms in Holographic Complexity_, arXiv:1906.09561。展示 CA 的 UV、null-boundary counterterm 和 regularization ambiguities；这些歧义是复杂度方案认识论状态的核心，而非技术细节。citeturn109651academia50

---

## 15. 非 AdS 全息与宇宙学

**N001 [M2]** A. Strominger, _The dS/CFT Correspondence_, arXiv/0106113。提出 de Sitter quantum gravity 与 Euclidean CFT 的对应，并在 (dS_3) 分析 asymptotic symmetry；属于 proposal，不是已知 complete duality。citeturn794729search0turn794729search4

**N002 [M2]** J. Maldacena, _Non-Gaussian Features of Primordial Fluctuations in Single Field Inflationary Models_, arXiv/0210603。精确计算 slow-roll leading bispectrum 和 consistency limit，并强调 ((A)dS/CFT) 可视为 wavefunction statement。citeturn982130search2turn982130search6

**N003 [M2]** N. Arkani-Hamed, J. Maldacena, _Cosmological Collider Physics_, arXiv:1503.08043。展示 squeezed-limit nonanalyticity 如何编码质量和自旋；这是 inflationary correlator 的 perturbative QFT 结果，不依赖完整 dS holography。citeturn982130search0turn982130search8

**N004 [M2]** S. Pasterski, S.-H. Shao, A. Strominger, _Flat Space Amplitudes and Conformal Symmetry of the Celestial Sphere_, arXiv:1701.00049。构造 conformal-primary wavefunctions 和 celestial transform；论文自身明确指出当时尚无完整的二维 dual CFT 构造。citeturn794729search1turn794729search5

**N005 [M2，讲义]** A. Strominger, _Lectures on the Infrared Structure of Gravity and Gauge Theory_, arXiv:1703.05448。系统组织 asymptotic symmetries、soft theorems 和 memory 的 infrared triangle，同时保留 quantum/anomaly 和 boundary-condition caveats。citeturn794729search2turn794729search6

**N006 [M2]** A. Saha 等，arXiv:2311.11246。比较 celestial 和 Carrollian flat holography，并说明两者分别更自然地组织 conformal basis 与 null-time boundary correlators。citeturn794729search3turn794729search7

**N007 [W，综述]** R. Ruzziconi, _Carrollian Physics and Holography_, arXiv:2602.02644。总结 Carroll geometry、BMS、null boundaries、celestial/Carroll amplitudes 和 AdS flat limit；它反映截至 2026 年的领域地图，但不是原始结果来源。citeturn794729academia48

**N008 [M2，综述]** D. Baumann et al., _Snowmass White Paper: The Cosmological Bootstrap_, arXiv:2203.08121。整理 symmetry、locality、unitarity、singularity structure 对 inflationary correlators 的约束。citeturn982130search1turn982130search5

---

## 16. Swampland 和全息一致性

**S001 [M2]** N. Arkani-Hamed, L. Motl, A. Nicolis, C. Vafa, _The String Landscape, Black Holes and Gravity as the Weakest Force_, arXiv/0601001。提出 WGC 和 related cutoff arguments；核心命题是 conjecture，不能写成由 holography 证明的普遍定理。citeturn653297search0turn653297search4

**S002 [M2]** H. Ooguri, C. Vafa, _On the Geometry of the String Landscape and the Swampland_, arXiv/0605264。提出 infinite-distance tower 等 distance-conjecture 原型。citeturn856376search2turn856376search6

**S003 [M2]** D. Harlow, H. Ooguri, _Constraints on Symmetry from Holography_ 与 _Symmetries in QFT and Quantum Gravity_, arXiv:1810.05337、1810.05338。在 AdS/CFT、splittability、entanglement-wedge reconstruction 等明确假设下建立 no-global-symmetry、compactness 和 representation completeness 的条件性结果。它们不是不依赖 holography 的一般量子引力证明。citeturn856376search0turn856376search1turn856376search4

**S004 [M2]** H. Ooguri, C. Vafa, _Non-supersymmetric AdS and the Swampland_, arXiv:1610.01533。提出加强 WGC 和 nonsupersymmetric AdS instability conjecture；论文明确承认部分更强命题并不由 WGC 直接推出。citeturn856376search3turn856376search7

**S005 [M2]** J. McNamara, C. Vafa, _Cobordism Classes and the Swampland_, arXiv:1909.10355。由 no-global-symmetry 原则提出 quantum-gravity cobordism classes 应被 defects trivialize。citeturn653297search1turn653297search5

---

## 17. 2025–2026 年观察名单

这些文献可进入“近期方向”或“争议”章节，但在正式正文中不能作为既有共识：

1. **Nonperturbative factorization**：arXiv:2504.16986，提出 Euclidean cutting/splicing toolkit。citeturn743411search5
    
2. **Reflection positivity 与 wormhole factorization**：arXiv:2607.01322，提出 QFT reconstruction theorem 及 gravitational interpretation。citeturn347225search7
    
3. **EWR versus strong QEC interpretation**：arXiv:2607.08684，明确挑战 shared-logical-operator 版本。citeturn119133academia49
    
4. **Linearized gravity、JLMS 与 crossed products**：arXiv:2607.27337，依赖一组 reconstruction assumptions。citeturn907226search0
    
5. **One-loop (AdS_3\times S^3) precision bootstrap**：arXiv:2602.11254。citeturn743411search3
    
6. **Carrollian holography 状态综述**：arXiv:2602.02644。citeturn794729academia48
    
7. **Generalized entanglement wedges beyond AdS**：arXiv:2505.15886，属于新 proposal，而非已建立的 non-AdS dictionary。citeturn907226search5turn907226search9
    

---

# 18. 容易遗漏或被误述的主题

|   |   |
|---|---|
|常见表述|正确限定|
|“AdS/CFT 已被证明”|不成立。存在精确扇区、条件性定理和大量跨耦合证据，但没有一般 finite-(N) 构造性证明。|
|“decoupling argument 证明了 duality”|不成立。它提供两个低能描述具有共同 brane 起源的强动机。|
|“large (N) 就是 classical gravity”|不成立。large (N) 主要抑制 string loops；还需要 strong coupling/large gap 才可能得到 weakly curved Einstein-like bulk。|
|“strong coupling 就是 classical gravity”|不成立。若 (N) 不大，bulk quantum loops 仍不受控。|
|“single-trace operator 就是局域 bulk field”|只在 perturbative low-energy/code subspace 中近似成立；相互作用、mixing、dressing 和 finite-(N) trace relations 会修正。|
|“normalizable mode 是 state，non-normalizable mode 是 source”|是常用简写，不是无条件定义；alternate quantization、mixed conditions、Lorentzian initial data 都会改变识别。|
|“RT/HRT 是严格的 CFT 定理”|不是一般 CFT 定理；它是特定 holographic CFT 的 semiclassical formula，有 replica derivation 和大量检验。|
|“QES 已被证明对 full quantum gravity 精确”|不成立。QES 是 semiclassical generalized-entropy prescription，强证据不等于非微扰 theorem。|
|“JLMS 是任意状态下的 exact identity”|不成立。标准论证处在 semiclassical/code-subspace 展开。|
|“EWR 意味着 bulk Hilbert space 分解”|不成立。更自然的表述是 operator-algebra reconstruction，可能存在 center 和 constraints。|
|“全息说明量子引力本质上是 QEC”|过强。QEC 描述了 perturbative subregion encoding 的结构，不是关于 microscopic ontology 的定理。|
|“纠缠产生时空”|只有在指定“产生”的含义后才可讨论。纠缠可控制 connectivity、area、relative entropy 或 reconstruction，但不能单独决定完整 bulk theory。|
|“entanglement first law 推导了 Einstein equation”|只在 vacuum 附近、ball regions、linearized order 和既有 holographic entropy dictionary 下成立。|
|“islands 解决了信息悖论”|它们在受控模型中恢复 Page curve；尚未完整解释现实黑洞的 microscopic decoding、内部体验和 factorization。|
|“replica wormholes 证明引力是 ensemble average”|不成立。JT/matrix-integral 中 ensemble 是精确结构；固定耦合模型、half-wormholes、(\alpha)-sectors 和非微扰 cancellation 提供其他可能。|
|“crossed-product algebra 给出了 full finite-(G_N) entropy”|当前结果主要在 large-(N)、(G_N\to0)、特定状态或 observer setup 中建立。|
|“KSS bound 是普遍物理定律”|(\eta/s=1/4\pi) 对一大类 two-derivative holographic theories 成立；更一般 bound 有 higher-derivative 和其他反例。|
|“pole skipping 直接测量 Lyapunov exponent”|只在合适的 holographic/analytic regime 下，特殊 pole-skipping point 才与 chaos data 对应。|
|“tensor network 是 AdS/CFT 的离散精确形式”|通常是 toy model、kinematic model 或 intuition；没有一般 continuum CFT 的 exact tensor-network dual。|
|“径向坐标就是 RG 能标”|只在 asymptotic/monotonic flow、特定 gauge 和 scheme 下有精确实现；一般 bulk radial position 不能与单一 Wilsonian cutoff 一一对应。|
|“(T\bar T) 就是 finite-cutoff AdS”|在二维和特定边界条件下有精确或强对应；不能直接推广为所有有限 cutoff holography。|
|“top-down 精确匹配证明完整 duality”|BPS、index、localization 和 integrability 是极强证据，但直接控制的是受保护或 planar 扇区。|
|“Strominger–Vafa 解释了所有黑洞熵”|它精确处理特定 supersymmetric extremal black holes；非 BPS、非极端和典型 Schwarzschild 态更困难。|
|“bottom-up 模型预测了真实 strange metal/QGP”|通常预测 universality、scaling 或机制；未知 microscopic dual 和大量可调参数限制具体可证伪性。|
|“celestial CFT 已是 flat-space AdS/CFT”|不成立。celestial transform 重写 S-matrix，但完整 boundary Hilbert space、unitarity、locality 和 nonperturbative definition 未完成。|
|“dS/CFT 已定义 de Sitter quantum gravity”|不成立。wavefunction、asymptotic correlators 和 static-patch proposals 尚未形成统一字典。|
|“no global symmetry、WGC、distance conjecture 都已证明”|Harlow–Ooguri 型 symmetry results 是 AdS/CFT 条件下的定理性结果；WGC、distance 和 cobordism 的广义形式仍是猜想。|
|“Euclidean gravitational path integral 自动定义 Lorentzian theory”|不成立。contour、negative modes、reflection positivity、state space 和 analytic continuation 都需额外处理。|
|“bulk topology 是精确 observable”|通常只是 semiclassical saddle 标签；finite-(N) 中可能不存在对应的线性、gauge-invariant topology operator。|

---

# 19. 依赖关系和章节优先级

### A 级：必须深入推导，占正文约 58%

1. 对偶的精确定义与证据结构
    
2. GKPW、boundary conditions 和 holographic renormalization
    
3. CFT data、large (N)、gap 与 bulk EFT
    
4. HKLL、gravitational dressing 和 subregion reconstruction
    
5. RT/HRT、FLM、QES、JLMS
    
6. 区域代数、factorization 和 QEC
    
7. 黑洞信息、islands 和 replica wormholes
    
8. 非微扰定义和单一 CFT 问题
    

这些章节需要完整公式链、convention audit 和反例讨论。

### B 级：系统介绍，占约 31%

1. Witten diagrams、Mellin、bootstrap、AdS loops
    
2. hydrodynamics、transport 和 chaos
    
3. top-down、localization、integrability
    
4. JT/SYK/matrix models
    
5. higher-spin/vector models
    
6. holographic RG
    
7. complexity
    
8. wormholes
    
9. flat/dS/celestial/cosmological bootstrap
    

### C 级：精确地图，占约 11%

1. holographic QCD 和大量 phenomenological models
    
2. 各种 nonrelativistic/warped backgrounds
    
3. tensor models 的旁支
    
4. 专门 compactifications 和 niche observables
    
5. 尚无足够共识的 2025–2026 proposals
    

---

# 20. 建议篇幅分配

目标不是普通长综述，而是接近研究专著：

- **正文**：约 (2.8\times10^5)–(3.4\times10^5) 汉字；
    
- **公式**：约 350–500 个独立陈列公式；
    
- **图表**：35–50 个；
    
- **正式参考文献**：300–450 条；
    
- **阅读树和术语表**：不计入正文篇幅。
    

|   |   |
|---|---|
|内容块|建议篇幅|
|方法、历史、定义与近似层级|2.2–2.8 万字|
|GKPW、renormalization、real time|3.0–3.8 万字|
|correlators、Mellin、bootstrap、locality|4.0–4.8 万字|
|reconstruction、QEC、区域代数|4.0–4.8 万字|
|RT/HRT/QES、纠缠与动力学|3.2–4.0 万字|
|黑洞热化、混沌、信息与内部|4.0–5.0 万字|
|top-down 与 precision holography|2.8–3.5 万字|
|JT/SYK、高自旋和可解模型|2.5–3.2 万字|
|RG、QCD、CMT 和现象学|2.5–3.2 万字|
|complexity、wormholes 和 factorization|2.5–3.2 万字|
|非 AdS 与 cosmology|2.5–3.2 万字|
|数学结构、swampland、非微扰定义|3.5–4.5 万字|
|开放问题、阅读路线、术语表|2.0–2.8 万字|

若把正文压缩到约 12–15 万字，首先损失的会是：条件审计、推导链、互相冲突的路线及有限 (N) caveats；这与本综述的目标不相容。

---

# 21. 后续写作中的固定审计表

每个大结论均使用下列格式：

> **结论。** 精确陈述。  
> **状态。** [T]/[X]/[C]/[B]/[N]/[M]/[Q]/[H]。  
> **设定。** 维数、背景、边界条件、态、observable。  
> **参数区间。** (N)、(\lambda)、(G_N)、(\alpha')、温度等。  
> **论证。** 关键公式或推导链。  
> **不包括。** 它不能推出哪些更强命题。  
> **文献。** 原始工作、清晰推导、修正/反对意见。  
> **开放问题。** 哪一步仍缺少控制。

公式采用章节编号，例如 ((4.23))；论断采用 `CL-章-序号`；文献采用统一 `R0001` 编号。文献编号不会按每次输出重新开始。



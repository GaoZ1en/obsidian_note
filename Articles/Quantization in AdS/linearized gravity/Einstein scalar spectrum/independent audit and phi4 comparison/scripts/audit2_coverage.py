"""Build the second review's per-claim evidence map; preserve the first snapshot."""
from pathlib import Path
import json,hashlib
ROOT=Path(__file__).resolve().parents[1]
old=json.loads((ROOT/'results/claim_audit_inventory.json').read_text())
reports={'PHY':'full block closure audit.md','FIN':'finite construction proof audit.md','EX':'exact stable full proof audit.md','CL':'cluster full proof audit.md','SC':'semiclassical full proof audit.md','ST':'exact stable full proof audit.md','UN':'exact stable full proof audit.md'}
defaults={
'PHY':('已审查所给物理／形式证明','保留作用量、canonical chart、边界时钟、Wick与响应域条件。'),
'FIN':('所给pair input下，有限构造证明成立','物理Gram与实际Bose投影；有限矩阵精确解不等于统一根式。'),
'EX':('新独立全证明审查支持','固定自伴Einstein pair input；各命题的核、gap与代数范围分别保留。'),
'CL':('新独立全证明审查支持','固定N,Q,Δ；ordered baseline与Bose parity不可省略。'),
'SC':('新独立全证明审查支持','固定N,Δ与明确极限顺序；精确核输入EX01已由另一审查核完。'),
'ST':('新独立全证明审查支持','固定激发块；先处理奇异物理Gram，再用解析Hermitian摄动。'),
'UN':('新独立全证明审查支持','逐项保留support、compactness及two-sided weight等明确假设。')}
overrides={
'PHY-01':('完整块OFPT／正常形恒等式成立','同一canonical chart、完整简并投影与合法complement inverse；原接触项不能省。'),
'PHY-02':('完整quartic Ward证明核完；最低完整混合块双重独立计算为零','全扇区结论来自Ward证明；一个混合例本身不证明全扇区。'),
'PHY-03':('给定封闭性与正常序减除，唯一二体lift成立','不逆向用pair lift证明封闭。'),
'PHY-04':('条件性协变桥梁成立','共同Hessian域、lapse/shift重建与B(T)/T→0不能删；未建无条件连续逆算符。'),
'PHY-05':('声明的匹配响应域内，全指标推导成立','all-J canonical calibration、动力学Casimir递推与唯一性、显式annihilation；不要求额外Casimir-free重算。'),
'PHY-06':('全指标支撑与正性证书支持','正性不等于相交pair投影可交换。'),
'PHY-07':('直接有限约束构造及新增source级计算支持','有限canonical构造独立于借用闭式pair值；未逐一枚举所有有限输入。'),
'PHY-08':('指定gap-fixed减除处方内成立；沿用先前独立检查','本轮没有重跑并重复计数旧onebody检查；非调节器无关性定理。'),
'PHY-09':('形式stationary-tree及observable-transfer证明成立','reciprocal inverse、过滤递归、保留kernel equations和完成的端点；不包括loop等价。'),
'PHY-10':('projected resolvent／eigenkernel／物理范数证明成立','逆算符所在域与真共振必须区分；norm为1−∂E K。'),
'PHY-11':('全阶leading Weyl symbol形式归纳成立','非全部量子symbol或固定occupation谱等价，非收敛定理。'),
'PHY-12':('所列附加条件下成立；实际AdS的更强输入尚未完成','完整量子commutant、next-order charge、regulator removal未证明；不能提升为无条件O(G²)。'),
'PHY-13':('作用量／自由约定及给定约束展开审查支持','沿用CPS锚点；多项接触已直接重构，不声称独立重做所有非线性角点变分。'),
'PHY-14':('条件性有限时间可达与off-shell log障碍成立','依赖所列平滑反射域；不推出无限时间endpoint界。'),
'FIN-04':('CG/Racah实际intertwiner与coset证明成立','未另重写全套N编译器；不把dense-arithmetic计数说成全输入bit复杂度。'),
'FIN-05':('完整descendant及shell装配证明成立','跨N直和用PHY02正常形保粒子数；不反推封闭。'),
'EX-01':('全N全指标logarithmic-symbol证明独立核完','物理tensor–Hom、全部理想幂、height-one局部正则与UFD去极点均审查；不只依赖扫描。'),
'EX-09':('物理五次因子重新构造；S5另有fresh模素数证书','排除统一根式，不排除所有可积概念。'),
'CL-07':('主定理支持；附属短证明需明确比较算符自伴','若允许nonnormal比较算符，报告另给Riesz-projector修复，未找到定理反例。'),
'CL-08':('有限截面／exact-nullity证明支持','依赖EX01的K3、K4，已由独立审查闭合。'),
'CL-09':('复Fredholm局部一致收敛证明支持','正常Fredholm收敛只用trace-norm；显式零次幂／pseudodeterminant解释另依赖EX01。'),
'CL-10':('Gamma归约的符号恒等式支持','250/350bit数值一致是数值支持，不冒称区间认证。'),
'CL-11':('最小正四体极限证明与有限／尾部证书支持','exact-nullity输入来自已审EX01；未把有限截断单独当无限极限。'),
'SC-01':('完整谱律论证支持；pair-word解释需改成compressed trace','单pair word一般不保Bose range；|Tr(ΠT)|≤d||T||修复所需估计。'),
'SC-11':('harmonic／Bose归一化成立；norm措辞须修','4^P是平方范数倍数；范数倍数为2^P。'),
'SC-14':('all-vector Rayleigh估计成立；吸收多项式句子符号须修','prefactor≤exp(+Pδ²/32)，合并原指数后才是exp(−Pδ²/32)。'),
'SC-15':('固定正regularizer的矩／logdet结论成立','不由弱收敛推出逆矩或去正则化logdet。'),
'SC-16':('两有限块全部六个strict inertia三元组独立精确重现','不是浮点特征值比较。'),
'ST-06':('加权齐次限定下成立；原literal唯一性措辞不足','b=1时y+f(x)同样monic且被J∂y²湮灭；须限定weight3b或按有限展开定义。'),
'ST-10':('字符恒等式成立；effective-low表述保留额外条件','有效低pencil需指定孤立semisimple cluster与graph gauge。'),
'ST-11':('first-large-N-layer收缩成立；量词需明确','不能按固定有限N的全能量gap理解；N=P=6已有精确反例。'),
'UN-02':('在内部relative-channel multiplicity空间上成立','不是带无限global descendants的完整pair Hilbert空间上的紧性。')}
rows=[]
for c in old['claims']:
    key=c['id'];group=key.split('-')[0];status,scope=overrides.get(key,defaults[group]);row=dict(c)
    row['first_review_status']=row.pop('this_review_status');row['first_review_scope']=row.pop('scope_note')
    row.update(this_review_status=status,scope_note=scope,evidence_report=str(ROOT/reports[group]))
    if key=='PHY-08':row['additional_evidence_report']=str(ROOT/'one-body subtraction audit.md')
    rows.append(row)
assert len(rows)==74 and len({c['id'] for c in rows})==74
for row in rows:assert Path(row['evidence_report']).is_file()
report={'scope':'All 74 registered claims audited; theorem statements, proof repairs, conditional applications and finite checks are explicitly distinguished. Not 74 independent reconstructions of every calculation.','source_sha256':old['source_sha256'],'counts':{g:sum(x['id'].startswith(g+'-') for x in rows) for g in reports},'claims':rows}
out=ROOT/'results/claim_audit_inventory_02.json';md=ROOT/'claim coverage second review.md'
if out.exists() or md.exists():raise FileExistsError('Coverage snapshot exists')
out.write_text(json.dumps(report,ensure_ascii=False,indent=2)+'\n')
lines=['# 第二轮：全部74项命题的证明覆盖与条件','', '**全部注册命题现已有逐项审查记录，但不是每一句原文均无需修正，也不是74套完全重做的计算。** 下表将条件性定理、实际模型中尚未完成的条件、局部文字／短证明修复与数值证据分开。首轮记录保留不覆盖。','', '| ID | 命题 | 本轮结论 | 条件／修正 | 证据 |','|---|---|---|---|---|']
for c in rows:lines.append(f"| {c['id']} | {c['title']} | {c['this_review_status']} | {c['scope_note']} | [审查](<{c['evidence_report']}>) |")
lines+=['','分组计数：'+str(report['counts'])+'。','',f'[结构化记录](<{out}>)。原命题依赖照录而未修改；CL／SC对EX01的依赖已由另一份全指标审查核完。新物理混合块的完整相消与全扇区Ward证明是两项不同证据。']
md.write_text('\n'.join(lines)+'\n');print(md);print(out)

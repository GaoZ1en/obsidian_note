"""Evidence inventory, not an automatic theorem verdict.
Read the supplied claim records without modifying them; record this review's
actual scope separately from the author's claim status. No proof is inferred
from the word 'passed' in executable payloads.
"""
from pathlib import Path
import json,hashlib
ROOT=Path(__file__).resolve().parents[1]
SRC=ROOT/'sources'/'ADS3_Master_Research_Package'
register=json.loads((SRC/'provenance'/'claim_register.json').read_text())
annotations={
 'PHY-01':('条件论证＋有限代数复现','完整简并投影与同一 canonical chart 是必要输入；未独立构造所有重力接触顶角。'),
 'PHY-02':('新增敏感例通过；全块独立验证未完成','非圆对称1→3的约束/边界项非零且精确相消；双边界引力子混合仍依赖文中Ward论证。'),
 'PHY-03':('给定封闭性后成立','正常序四次、保粒子数、同一自由标量表示推出唯一二体lift；不能逆向证明封闭。'),
 'PHY-04':('条件性桥梁，不能删去域条件','保留共同Hessian域、lapse/shift重建与时间端点条件；非无条件连续逆算符定理。'),
 'PHY-05':('闭式及新独立有限证据相符；全指标物理接口仍有条件','新的angular矩阵通过；未另完成从canonical有限和到三分支闭式的全指标求和证明。'),
 'PHY-06':('解析支撑审查＋独立精确扫描通过','5个质量、k,l≤14；正性用于共同核，重叠pair投影不要求可交换。'),
 'PHY-07':('直接有限构造有新增独立验证','20个signed sources自行求解并查ODE/边界；未导入目标gamma或原engine。'),
 'PHY-08':('既定处方内有实质新增支持','泛型端点/局域匹配精确恒等式与激发态热迹；不证明调节器无关性。'),
 'PHY-12':('保持原条件性结论','不可据本轮一阶计算把o(G)提升到O(G²)。'),
 'PHY-13':('约定核对与selected source-level检查','已读CPS锚点；未声称独立重做全部作用量/角点变分。'),
 'PHY-14':('仅按明确边界类别理解','有限时间gauge可达不推出时间端点消失；例外质量不是物理谱发散。'),
 'FIN-01':('条件于pair input的有限表示论成立；新增独立实现','Casimir谱＋同时S3平均；物理内积与descendant组织分开。'),
 'FIN-02':('有限线性代数原则成立；复现和小块交叉通过','特殊质量先代入再取rank/minimal polynomial；不要求根式表达。'),
 'FIN-03':('正像Gram压缩原则审查通过','A=TT†与T†T仅非零谱及重数相同；不能混淆辅助nullity。'),
 'FIN-04':('原编译器复现通过；未独立重写全N编译器','新增N3实现没有导入其Racah表。'),
 'FIN-05':('数学装配条件性成立','完整scalar shell仍以PHY02封闭性与所选dressed branch为物理前提。'),
 'EX-01':('解析证明关键步骤审查＋156个独立有限块通过','K.1–K.4的物理双线性tensor–Hom、全部理想幂及逐素因子去极点均不可省略。'),
 'EX-02':('计数推导审查＋独立N3扫描通过','无限渐近的误差阶仍依赖根单位极点分析，不由扫描单独证明。'),
 'EX-03':('仿射Casimir lemma成立','给定所有实际支撑通道上的仿射性，不是仅比较两个期望值。'),
 'EX-04':('有限例及原回归通过','特殊质量的完整简并本征空间按specialize-first处理；未独立重建全部族。'),
 'EX-05':('原验证复现；附录L的关键代数论证审读','不能将Q≥2的intersection theorem自动升级成eigenspace theorem。'),
 'EX-09':('原有限数据保留；本轮未重算Galois群','原完整portable suite也未宣称重跑全部历史Galois证书。'),
 'SC-01':('主张和必要假设审读；原检查复现','本轮未独立重建coherent trace/metric transfer的全证明。'),
 'SC-02':('计数与零概念区别审查','exact kernel、P²尺度zero atom、strictly positive soft modes不可混同。'),
 'SC-04':('原验证复现；本轮不宣布独立全证明','真正证明须有all-vector Rayleigh界，不能只看若干coherent expectations。'),
 'SC-06':('保留两侧多项式权界假设','同support本身不决定软谱的对数速率。'),
 'ST-01':('二体占据计数解析审查通过','不依赖引力或正性；creation-product不是固定N波函数逐点乘积。'),
 'ST-02':('正交化后Rellich论证审查通过','物理Gram奇异缩放先处理；简单leading eigenvalue才自动有整数1/N展开。'),
 'ST-03':('原显式简并例与回归通过','不能仅凭leading coordinate Jordan块断言分数幂，需其reduced eigenvalues。'),
 'ST-05':('假设/推导审读；原验证复现','可用phi4的正仿射缺陷检验普适性，不是引力独有。'),
 'ST-06':('原验证复现；phi4系数独立代入','仅低通道缺陷控制first low operator；完整全层展开未另重做。'),
 'UN-01':('正支撑论证成立；明确非局域实现定理','same support与same principal growth是两项不同条件。'),
 'UN-02':('反例解析成立','c0 compact tails不推出任何有限Schatten类。'),
 'UN-03':('假设/关键推导审查；物理对照可应用','所有even affine defects≥0与first positive channel不可省略。'),
 'UN-04':('有限determining jets复现＋phi4符号代入','operator order/ideal argument先于六个jets，不能只以拟合六点当证明。'),
 'UN-05':('有新增局域形式形变实例','Einstein+attractive phi4仅是微扰局域实现；不能声称稳定非微扰模型。'),
}
rows=[]
for c in register['claims']:
    key=c['id']
    status,note=annotations.get(key,('原套件相关检查已复现；本轮未完成独立全证明','不得把执行成功升级为本命题全部量词已获独立证明。'))
    rows.append({'id':key,'title':c['title'],'author_status_not_our_verdict':c.get('status'),'dependency_ids_as_registered':c.get('dependency_ids',[]),'this_review_status':status,'scope_note':note})
assert len(rows)==74 and len({r['id'] for r in rows})==74
(ROOT/'results'/'claim_audit_inventory.json').write_text(json.dumps({'scope':'74-claim evidence coverage, NOT 74 independent theorem proofs','source_sha256':hashlib.sha256((SRC/'provenance'/'claim_register.json').read_bytes()).hexdigest(),'claims':rows},indent=2,ensure_ascii=False)+'\n')
lines=['# 全部74项命题的本轮证据范围','', '本表区分原作者的证明主张与本轮审查实际完成的工作。**列全74项不等于独立证明74项。** “原套件复现”仅表示相应可执行检查通过；无限指标、解析域与渐近量词仍须各自的证明。','', '| ID | 命题 | 本轮判断／覆盖 | 限定 |','|---|---|---|---|']
for r in rows: lines.append('| '+r['id']+' | '+r['title']+' | '+r['this_review_status']+' | '+r['scope_note']+' |')
lines+=['','主要依赖遗漏：PHY-08 的热迹控制在 Appendix B.2 使用闭式pair kernel的多项式增长，而原登记依赖未显式列PHY-05。这不是已证明的逻辑循环；应补记依赖或从约束直接给出增长界。','', '原记录：[claim register](<'+str(SRC/'provenance'/'claim_register.json')+'>)。本表生成脚本：[build_audit_inventory.py](<'+str(Path(__file__).resolve())+'>)。']
(ROOT/'claim coverage.md').write_text('\n'.join(lines)+'\n')
print('Wrote independent coverage inventory for',len(rows),'claims.')

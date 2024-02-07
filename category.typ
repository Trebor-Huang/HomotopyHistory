#import "common.typ": *
= 范畴论

范畴是数学中广泛存在的抽象结构. 一个*范畴*由一些对象 ${X, Y, dots}$ 与这些对象之间的态射 $f : X -> Y$ 组成. 每个对象有恒同态射 $id : X -> X$, 态射之间有复合操作, 满足结合律. 例如, 以群作为对象, 群同态作为态射, 就构成一个范畴. 如此抽象的定义仍然有实用价值, 令人吃惊. 例如, 可以抽象地定义*同构*的概念, 即两个映射 $f : X -> Y$, $g : Y -> X$, 使得互相复合都得到恒同态射.

尽管范畴论来自同调代数的研究, 但是它的抽象性决定了它能应用于非常多的领域, 例如代数、几何、逻辑, 甚至物理、计算机、哲学中都有应用范畴论的研究. 它作为强大的组织抽象概念的工具, 力量不容小觑.

== 范畴论的提出

// https://plato.stanford.edu/entries/category-theory/#BrieHistSket

1945 年, Eilenberg 与 Mac Lane 在一篇文章《自然同构概论》@NatEquiv 中一举提出了范畴、函子与自然变换的概念.

给定两个范畴 $cal(C), cal(D)$, 一个*函子* $F : cal(C) -> cal(D)$ 给 $cal(C)$ 的每个对象 $X$ 赋予 $cal(D)$ 的一个对象 $F(X)$, 每个态射 $f : X -> Y$ 也对应赋予一个态射 $F(f) : F(X) -> F(Y)$, 使得保持复合关系. 一般来说, 给定一个数学结构, 构造一个新的数学结构的过程, 都可以看作合适的范畴之间的函子. 函子也可以看成是广义的对象, 或者自然的一族对象.

*自然变换*则是定义在两个函子 $F, G : cal(C) arrows cal(D)$ 之间的, 可以看作广义对象之间的广义态射. 自然变换 $alpha$ 是一族态射 $alpha_X : F(X) -> G(X)$, 使得对于 $cal(C)$ 中的每个态射 $f : X -> Y$, $alpha_Y compose F(f) = G(f) compose alpha_X$, 即这四个态射构成的正方形交换.

这些概念实际上都只是为论文标题中的*自然同构*作铺垫. 如果有两个自然变换 $alpha, beta$ 使得每一组 $alpha_X, beta_X$ 都构成同构, 就称它们为自然同构. Eilenberg 与 Mac Lane 在论文中举出了线性空间的对偶的例子. 有限维的向量空间 $V$ 总是与它的对偶 $V^*$ 同构, 因为维数相同. 但是这样的同构并不典范. 与之相反, 向量空间 $V^(**)$ 与 $V$ 之间的同构是 “自然” 的, 可以直接写出 $v |-> (phi |-> phi(v))$. 这是因为双重对偶操作 $(-)^(**)$ 是 (有限维) 向量空间范畴到自身的函子, 而这个函子到恒同函子 $"Id"(V) = V$ 有自然同构.

这样, 范畴论的框架就能为表达代数、拓扑等等学科中出现的 “自然” 性, 提出了一种方便的语言. 例如代数拓扑中出现的长正合列都有自然性, 这就可以用范畴论的语言表述.

在论文中, 还提出了正向极限与逆向极限的抽象定义. 回忆之前出现的逆向极限是逆着态射方向的极限, 而正向极限则是沿着态射方向的极限, $X_1 -> X_2 -> dots.c$ 表示一列逐渐扩大的代数结构的并集. 例如 $ZZ \/ p ZZ -> ZZ \/ p^2 ZZ -> dots.c$, 其中每个态射都是乘以 $p$, 则极限是 $ZZ \/ p^oo ZZ$, 也可以看作复单位元中形如 $exp((2 pi i k)/p^n)$ 的元素构成的群.

这些极限与拓扑中的极限有非常相似的定义. 考虑拓扑空间 $NN subset.eq NN_oo$, 其中后者定义为 $NN union {oo}$, 并且开集要么是 $NN$ 中的任意子集, 要么包含某个 $[n, oo]$. 点列 ${a_n}$ 可以看作连续函数 $a_n : NN -> X$. 如果这个函数可以延拓到 $NN_oo -> X$, 那么 $a_oo$ 就是这个点列的极限. (如果拓扑空间不满足 Hausdorff 性质, 那么极限不唯一, 但是每个极限都对应一个这样的延拓.)

对应地, $cal(C)$ 中的一列对象 $X_1 -> X_2 -> dots.c$ 相当于范畴 $cal(N)$ 到 $cal(C)$ 的函子, 其中 $cal(N)$ 的对象是正整数, $m$ 到 $n$ 有一个态射当且仅当 $m <= n$. 我们可以添加一个对象 $oo$ 得到范畴 $cal(N)_oo$, 并且试图将 $cal(N) -> cal(C)$ 延拓到 $cal(N)_oo -> cal(C)$. 这样的延拓有很多, 但是有一个延拓 $T$ 满足对于别的延拓 $S$ 都有自然变换 $T -> S$, 使得自然变换在 $cal(N)$ 上的分量都是恒同态射.

逆向极限则是将范畴的所有态射全部反向得到的. 对于每个范畴论概念, 都可以将态射全部反向得到另一个概念. 这种现象称作*对偶*. 对偶可以揭示数学结构中的许多对称性, 并且也需要在范畴论的语言中才能发挥全部的威力.

1952 年, 日本数学家米田信夫证明了著名的米田引理. 它蕴含非常深刻的思想, 影响了后续范畴论的发展. 它的大致内容是, 如果需要刻画范畴中的某个对象 $X$, 只需要描述到这个对象的所有态射 $hom(-, X)$. 例如在拓扑空间中, $hom(1, X)$ 是 $X$ 的点集. 而如果 $I = [0,1]$ 是区间拓扑空间, 则 $hom(I, X)$ 是 $X$ 中所有道路的集合. 这可以看作是 $X$ 的 “广义点” 构成的集合. 描述了所有形状的广义点, 就完全描述了 $X$ 本身.

1956 年左右, Kan 提出了伴随函子、极限与余极限、Kan 扩张等的定义, 这些形成了当今范畴论的基础概念. 在 Eilenberg 与 Mac Lane 的文章中, 正向极限与逆向极限都只能对特殊的图表进行. 对于正向极限来说, 每两个对象 $X, Y$ 都需要有第三个对象 $Z$ 使得图表中包含 $X -> Z$ 与 $Y -> Z$, 并且每两个对象之间至多有一个态射. 之前我们讨论的图表形如 $bullet -> bullet -> dots.c$, 满足要求. 这种图表称作*有向集*. Kan @AdjointFunctors 讨论了任意形状的图表的极限.

如果图表中只有两个对象, 没有额外的态射, 那么得到的极限就是 (二元) *乘积*. 具体来说, 两个对象 $A, B$ 的乘积是对象 $C$ 配备两个投影映射 $pi_1 : C -> A$, $pi_2 : C -> B$, 使得对于任何其他三元组 $(C', pi'_1, pi'_2)$, 都有唯一的 $C -> C'$ 使得图表交换:
#box(width: 100%)[
#set align(center)
#fletcher.diagram($
  & C' edge("dl", ->) edge("dr", ->) & \
  A #edge(label: $pi_1$, label-side: left, "<-") & C #edge(label: $pi_2$, label-side: left, "->") edge("u", "-->") & B
$)]
在集合范畴中, 这个定义得到的就是 Descartes 积. 在代数结构的范畴中也会类似得到直积, 在拓扑空间中得到乘积拓扑. 显然, 这个定义可以推广到任意数量的对象. 这可以体现出使用范畴论定义的好处之一. 无限个拓扑空间的乘积, 容易想到的定义是箱拓扑, 它的性质不好. 正确的乘积拓扑的定义初看可能略微反直觉. 如果使用范畴论语言定义, 那么这个有些复杂的定义就是自然的推广结果.

如果考虑零个对象的乘积, 就得到*终对象*, 记作 $1$. 这是因为终对象是乘积的单位元, $1 times X tilde.equiv X$. 展开定义就得到, 终对象是满足 $hom(X, 1)$ 恰好都有一个元素的对象. 这定义了单点集、单点拓扑空间、单元素代数结构, 等等.

对偶地, 可以考虑对象的*余积*. 这定义了集合与拓扑空间的不交并、群的融合积、交换环的张量积, 等等. 零元余积是*始对象* $0$, 定义了空集、空拓扑空间.

还有一对重要的极限/余极限的概念. 给定平行的两个态射 $f, g : X arrows.rr Y$, 它们构成的图表的极限称作*等化子*. 在集合范畴里, 就是方程 $f(x) = g(x)$ 的解集. 对偶的有*余等化子*, 对应 $f(x) ∼ g(x)$ 生成的等价关系的商.

伴随函子也是数学中广泛存在的现象. 如果 $hom(F(X), Y)$ 与 $hom(X, G(Y))$ 自然同构, 就说 $F tack.l G$ 构成一对伴随函子. 例如, 拓扑空间上有三个函子, $Gamma : sans("Top") -> sans("Set")$ 取出拓扑空间的点集, $Delta : sans("Set") -> sans("Top")$ 为集合赋予离散拓扑, $nabla : sans("Set") -> sans("Top")$ 赋予余离散拓扑. 从离散拓扑空间出发的任何函数都连续, 因此有自然同构 $hom(Delta X, Y) tilde.equiv hom(X, Gamma Y)$. 对偶地, 也有 $Gamma tack.l nabla$. 在代数中, 自由代数对象往往是反方向的典范函子的左伴随. $(A times.circle -)$ 与 $hom(A, -)$ 也构成伴随.

== Abel 范畴

范畴在一段时间内都只是一种同调代数中临时方便性质的语言. 这种现状维持了十几年. 范畴论真正成为独立的学科, 是在 Grothendieck 发表于 1957 年的论文 _Sur quelques points d'algèbre homologique_ @Tohoku, 由于其发表的刊物名称, 一般简称作 “Tôhoku 论文”.

Eilenberg 与 Cartan 编写《同调代数》时, 只处理了环上的模构成的同调代数理论. 虽然层上同调的理论与之极为相似, 但是不能纳入这个框架中. 为此, 他们试图提出一些能够刻画同调代数的需求的公理. 最终得到广泛运用的公理体系是 Grothendieck 提出的 Abel 范畴.

如果某个范畴任何两个对象之间的态射集上都有交换群结构, 并且态射复合是双线性映射 $hom(Y, Z) times.circle hom(X, Y) -> hom(X, Z)$, 就称它是*预加性范畴*. 预加性范畴中, 始对象与终对象是重合的, 称作*零对象*, 记作 $0$; 二元积与二元余积是重合的, 称作*双积*, 记作 $plus.circle$. 如果这些都存在, 就称这个范畴是*加性范畴*.

尽管预加性范畴是范畴上的额外结构 (即一个范畴可以通过不同的交换群结构构成预加性范畴), 但一个范畴如果可以构成加性范畴, 那么其构成方式是唯一的. 这可以从另一个等价的定义中看出来. 如果一个范畴有所有的有限积与余积, 并且它们重合, 那么态射集就有典范的交换幺半群结构. 其中零元由 $X -> 0 -> Y$ 复合给出, 而加法 $f + g$ 定义为
$ X -->^Delta X plus.circle X -->^⟨f, g⟩ Y plus.circle Y -->^nabla Y. $
如果这些幺半群有逆元 —— 逆元总是唯一的 —— 就构成加性范畴.

进一步, 等化子的理论也被态射的交换群结构简化了. $f$ 与 $g$ 的等化子等价于 $f-g$ 与 $0$ 的等化子. 因此我们只需要考虑后者. 在模范畴中, 这就是态射的零点构成的子模, 称作*核*. 对偶地, 态射与 $0$ 的余等化子称作*余核*. $ker("coker"(f))$ 可以看作态射*像*的定义. 对偶的有余像 $"coker"(ker(f))$. 在模范畴中, 这两者是有典范同构的. 如果核与余核存在, 并且像与余像典范同构, 那么就称这个加性范畴构成 *Abel 范畴*.

Abel 范畴的定义使得同调代数可以在更高的抽象层次上进行. 例如导出函子可以在任何有足够投射或内射对象的 Abel 范畴中定义. 层上同调可以表述为层上的函子 $Gamma(X) = hom(1, X)$ 的导出. 代数几何也由此能够运用同调代数的一般工具. Grothendieck 还引入了万有 $delta$-函子等概念, 基本完成了当代同调代数的框架.

== 意象

Abel 范畴的成功启发了数学家, 可以在其他领域中寻找能够囊括领域基础概念的范畴公理化体系. 在 1960 年代, Lawvere 将范畴论与数学基础联系起来. 他将集合构成的范畴公理化, 并且找到了许多逻辑系统的范畴语言表述.

ETCS

同时, Lambek 将推理系统的性质放在了范畴的框架下研究.


这些研究催生了意象 (topos) 的概念. (简单介绍)


Grothendieck 将意象用于代数几何的研究.


而在 1970 年代, 意象在各个领域都得到了应用, 展现出截然不同的面貌, 正如盲人摸象一般. (列举一些)


(Maybe push to infcat)
同调论中的 $"Ext", "Tor"$ 等导出函子的概念, 被 Grothendieck 放在了导出范畴的体系下. 这将同调和同伦统一到了一起, 传统的同调理论成为了同伦理论的一个低维投影. 这一点之后会在无穷范畴的发展中得到进一步体现.

== 抽象同伦论

(1967)

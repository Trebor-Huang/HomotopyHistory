= 代数拓扑

本章部分参考 @AlgTopHistoryTalk.

== 同调论的发展

Poincaré 在 _Analysis Situs_ 的补充论文中注意到, Betti 数 —— 在当代视角看, 就是同调群中无挠部分的秩 —— 遗漏了同调中的一部分信息. 例如在射影平面 $RR PP^2$ 中, 无穷远直线本身不是曲面的边界, 但是与自身相加之后是 $RR^2 subset.eq RR PP^2$ 的边界. 这种现象来自于空间的扭曲, 因此被称作 “挠” (torsion). 因此同调给出的信息由 Betti 数和挠数两部分组成.

1925 年, Emmy Noether 认识到 Betti 数和挠数实际上可以统一到一个代数结构中, 即同调群. 这样一个将数升级成代数结构的过程将会在同伦论的发展中反复出现. “挠元” 这个术语就是从拓扑引入到代数中的. 由于同调等计算是利用了空间的三角剖分或者类似的组合结构, 这部分数学被称作 “组合拓扑”. 随着同调群的提出, “代数拓扑” 这个名字就逐渐取代了原先的名字.

Noether 本人并没有为此发表文章. 最初将这个想法写下来的是数学家 Vietoris. 同时, 他也将同调的概念推广到了紧致度量空间上. 给定某个足够小的 $epsilon > 0$, 如果 $n$ 个点两两之间的距离小于 $epsilon$, 就认为它们之间有 $(n-1)$ 维单形. 这称作 Vietoris 复形, 在计算拓扑学中有重要应用.

不久之后, Hopf 也应用了这个想法, 给出了 Lefschetz 不动点定理的优雅证明. 其中 Hopf 将同调放在了模论的视角下, 即考虑了一般的交换环上的模的同调, 而不仅仅限制于 $ZZ$ 上. Brouwer 的映射度在同调群的语言中有非常优美的表述: 它就是最高维同调群之间的同态 $ZZ -> ZZ$ 下 $1$ 的像.

随着点集拓扑的理论逐渐成熟, 许多数学家跟 Vietoris 一样, 试图将同调推广到更一般的, 无需三角剖分的空间. Alexandorff 提出对某个空间的一组覆盖取*脉* (nerve). 将覆盖中的集合看作点, 如果 $n$ 个集合的交集非空, 就认为它们之间连接了一个 $(n-1)$ 维单形. 不断将覆盖加细, 就能逼近原本空间的结构. Čech 在此基础上考虑了所有的有限覆盖, 并且提出了逆向极限的概念, 用于表达不断加细的覆盖给出的同调群的极限. 这就是 *Čech 同调*.

在 1930 年代左右, 不少成果已经暗示了上同调的存在. 数学家 de Rham 将同调与微分形式联系在一起, 证明了 de Rham 定理. 这个定理最自然的表述是利用上同调, 即空间的 de Rham 上同调与其他的上同调同构. 1935 年, Kolmogorov 与 Alexander 正式定义了上同调. 不久后, Whitney 与 Čech 发现了上同调上的杯积与帽积. 这使得他们认识到 Poincaré 对偶可以利用帽积给出更好的表述.

1944 年, Eilenberg 提出奇异同调与上同调的概念, 这种定义对任何拓扑空间都可用, 开启了系统性对一般空间的同调与上同调的研究.
1945 年, Eilenberg 与 Steenrod 提出了统摄同调理论的 Eilenberg–Steenrod 公理. 这统一了当时提出的各种各样的同调与上同调理论.

== 同伦论的发展

在 1907 年左右, Tiezte 和 Wilhelm Wirtinger 以更抽象的方式表述了基本群理论, 并且证明了其同胚不变性. 其中, 基本群是从流形的剖分由群表现的方法定义的. Tietze 随之提出了一个问题: 给定两个群表现, 有没有通用的办法判定二者是否有群同构? Tietze 认为这是极难的问题. 事实上, Turing 在后来可计算性理论的发展中证明了这种算法是不存在的.

同伦的概念由 Brouwer 首先明确地提出. 在 1931 年, Hopf 证明了连续映射 $SS^n -> SS^n$ 在同伦关系下的等价类被映射度完全分类. 结合之前对映射度的认识, 这就证明了 $[SS^n -> SS^n] = ZZ$. 接下来自然要考虑的是维度不同的映射. 最简单的情况是 $SS^3 -> SS^2$. 在一般位置下, 这种映射中一个点的原像是一条 $SS^3$ 中的闭曲线. Hopf 考虑两个点原像给出的曲线的链环数. 这给出了映射的同伦不变量, 现在称作*Hopf 不变量*. 同时, 他构造了一个 Hopf 不变量为 $1$ 的映射. 这就是文章开头提到的 Hopf 映射.

Hopf 的发现打开了新世界的大门, 启发了 Čech 在 1932 年提出同伦群的概念. 这样, 之前的发现就可以重新写成 $pi_n (SS^n) = ZZ$ 与 $pi_3 (SS^2) = ZZ$. 但是, 由于现在代数拓扑领域中已经有同调群等不变量, 并且高阶同伦群总是交换的, Čech 的想法没有得到重视.

1935 年, Hurewicz 重新提出了同伦群的概念. Hurewicz 将同伦群与 Lie 群的研究联系起来, 给出了 Lie 群 $G$, 其连通子群 $H$ 与 $G slash H$ 的同伦群的联系. 这就使 Hopf 之前对 $pi_3 (SS^2)$ 的计算与 Lie 群理论联系起来. Hurewicz 还揭示了同伦与同调之间的联系, 也就是著名的 Hurewicz 定理. 其最简单的形式如下: 对于 $n > 1$, 如果某个空间的前 $(n-1)$ 个同伦群为零, 那么它的前 $(n-1)$ 个同调群也为零, 并且 $H_n (X) = pi_n (X)$. 这里的同构由 Hurewicz 映射给出.

1935 年, 在莫斯科举办了一场非常重要的事件 —— 国际拓扑学会议. 其中有许多主要的拓扑学家参会. 会上, Hurewicz 讲授了代数拓扑领域的发现. 这次事件标志着代数拓扑开始走向成熟.

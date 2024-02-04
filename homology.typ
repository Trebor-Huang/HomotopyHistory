= 同调代数

同调代数, 就是将拓扑学中出现的同调概念的代数部分抽象出来研究的学科. 在此前代数拓扑的发展中, *链复形*的概念已经浮现出来. 这由一串代数对象 ${C_n}$ 与边界算子 $diff_n : C_n -> C_(n-1)$ 构成, 满足关键的等式
$ diff_n compose diff_(n+1) = 0 $
简写成 $diff^2 = 0$. 这个简单的式子中蕴含无限丰富的结构.
同调群 $H_n$ 可以抽象地对链复形定义, 即 $ker diff_n$ 商去 $im diff_(n+1)$.
同调代数研究各种代数操作, 如张量积等, 如何影响链复形以及其同调群.

本章参考 @ATDTHistory 与 @HomologicalAlgebraHistory.

== 正合列

在文献中最早出现的正合列是在 1941 年, Hurewicz 将一系列已知的同态连接起来组成了一个序列:
$ H^n (X) -->^i^* H^n (A) -->^delta H^(n+1) (X \\ A) --> H^(n+1) (X) --> dots.c $
其中, $A$ 是 $X$ 的闭子空间. Hurewicz 观察到, 前一个映射的像与后一个映射的核刚好相等.
在几乎同一时间, Eckmann 描述了纤维丛中纤维、全空间与底空间的同伦群满足的正合列. 这在当代被称作同伦纤维列:
$ dots.c -> pi_(n+1) (B) -> pi_n (F) -> pi_n (E) -> pi_n (B) -> pi_(n-1) (F) -> dots.c $
不过, 暂时没有人注意到这与 Hurewicz 的发现在代数上的相似性.

在 1945 年, 提出 Eilenberg–Steenrod 时, 他们要求同调群有 “一组自然的群与群同态的系统”:
$ dots.c -> H_n (X) -> H_n (X, A) -> H_(n-1) (A) -> H_(n-1) (X) -> dots.c $
其中 $A$ 是 $X$ 的闭子空间.

Exact sequences, 1941:
- Hurewicz: cohomology $B --> A --> A \\ B$
- Eckmann: homotopy exact sequence
- Eilenberg–Steenrod axioms, 1945 (relative homology)
- 1947, Kelley and Pitcher: name of "exact sequence", algebraic investigations

== 万有系数定理与 Künneth 公式

不同系数的同调之间有相互关联. 1935 年, Čech 发现整数系数的同调可以确定任何其他交换群系数的同调. 在 Čech 的文章中可以看到交换群的张量积与 $"Tor"_1$ 积的表现. 上同调的万有系数定理也随着 $"Hom"$ 与 $"Ext"$ 这两个代数概念一起提出.

== 代数学中的应用

群的低维同调与上同调是早已被研究的课题, 如叉同态 (crossed homomorphism) 的概念对应 $H^1 (G; A)$. Eilenberg 与 Mac Lane 利用 $K(G, 1)$ 空间定义了群的任意维数同调与上同调, 将同调代数的语言正式引入了代数学. 在此之后, 对结合代数与 Lie 代数的研究也利用这种新语言迅速发展.

== 谱序列与层论

Lyndon 在对群上同调的研究中已经注意到了谱序列的雏形. 1947 年, 根据 Henri Cartan (是微分几何学家 Élie Cartan 之子) 的建议, Koszul 以滤链复形为核心概念, 发展出了谱序列的代数框架. 在第二次世界大战中, 数学家 Leray 在被俘期间发展了层论与层上同调, 谱序列成为了计算层上同调的重要工具. 在战后, Cartan, Eilenberg, Serre 等人将谱序列与层的理论进一步发展成熟.

== Cartan–Eilenberg 革命

Cartan 与 Eilenberg 在 1950 年代著书 《同调代数》, 为这个领域带来了一场革命. 他们定义了投射模的概念, 与内射模对举. 这使得 $"Ext"$ 和 $"Tor"$ 能统一地作为导出函子处理. 如 Hochschild 所言, 这本书的出现标志着同调代数的摸索时代正式结束.

// https://www.math.uchicago.edu/~may/PAPERS/118.pdf

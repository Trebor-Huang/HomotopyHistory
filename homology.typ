#import "common.typ": *
= 同调代数

同调代数, 就是将拓扑学中出现的同调概念的代数部分抽象出来研究的学科. 在此前代数拓扑的发展中, *链复形*的概念已经浮现出来. 这由一串代数对象 ${C_n}$ 与边界算子 $diff_n : C_n -> C_(n-1)$ 构成, 满足关键的等式
$ diff_n compose diff_(n+1) = 0 $
简写成 $diff^2 = 0$. 这个简单的式子中蕴含无限丰富的结构.
同调群 $H_n$ 可以抽象地对链复形定义, 即 $ker diff_n$ 商去 $im diff_(n+1)$. 其中 $ker diff_n = Z_n$ 是图中蓝色的部分, 代表几何上的 $n$ 维圈; $im diff_(n+1) = B_n$ 代表 $(n+1)$ 维对象的 $n$ 维边界.

#block(width: 100%)[
#import cetz.draw: *
#set align(center)
#cetz.canvas({
  circle((2,0), radius: 1.5, fill: color.lighten(aqua, 70%))
  circle((4,0), radius: 1.5, fill: white)

  arc((-2,0), anchor: "origin", radius: 1.5, start: 70deg, stop: -70deg)
  circle((0,0), radius: 1.5)
  content((0, -2), $C_(n+1)$)
  content((0, 1), $H_(n+1)$)
  content((1, 0), $B_n$)
  circle((2,0), radius: 1.5)
  content((2, -2), $C_n$)
  content((2, 1), $H_(n)$)
  circle((4,0), radius: 1.5)
  content((4, -2), $C_(n-1)$)
  content((4, 1), $H_(n-1)$)
  arc((6,0), anchor: "origin", radius: 1.5, start: 110deg, stop: 360deg-110deg)
})
]

如果所有的 $H_n$ 都为零, 即 $Z_n = B_n$, 就说链复形*正合*. 同调代数研究各种代数操作, 如张量积等, 如何影响链复形以及其同调群.

本章参考 @ATDTHistory 与 @HomologicalAlgebraHistory.

== 万有系数定理与 Künneth 公式

不同系数的同调之间有相互关联. 以整数为系数的同调中, 链复形是一些单形自由生成的交换群 —— 即 $ZZ$-模 $ZZ^(plus.circle X)$ —— 组成的. 如果考虑用其他交换群 $G$ 构造链复形, 就是 $G^(plus.circle X) tilde.equiv ZZ^(plus.circle X) times.circle_ZZ G$. 那么, 研究其他系数的同调, 就是研究 $(- times.circle_ZZ G)$ 这个函子对链复形的同调群的作用.

1935 年, Čech @UCTTor 发现整数系数的同调可以确定任何其他交换群系数的同调. 对任何交换群 $G$, 都有 $ H_n (X; G) tilde.equiv H_n (X; ZZ) plus.circle "Tor"_1^ZZ (H_(n-1) (X; ZZ), G). $ 不过, 张量积与 $"Tor"$ 积的记号还没有出现, 这些群是以群表示的方法定义的. 1938 年, Whitney 提出了交换群与模的张量积. 这个名字来源于物理与微分几何中的应用. 为了描述三维空间的物质中张力的性质, 需要用到向量空间 $RR^3$ 的张量积. 在很长一段时间内, 张量积都仅限于向量空间的特殊情况.

上同调的万有系数定理在 1942 年由 Eilenberg 与 Mac Lane 随着 $"Hom"$ 与 $"Ext"$ 这两个代数概念一起提出. 其本质是描述 $"Hom"_ZZ (-, G)$ 对链复形的同调群的影响.

在 Poincaré 的时代, 就知道空间相乘会导致 Betti 数怎样的变化. 如果将 Betti 数组装成多项式 $sum_k b_k x^k$, 那么空间的乘积对应这个多项式的乘积. 给定两个胞腔复形 $X, Y$, 不难看出 $X times Y$ 的胞腔复形结构. 其中 $n$ 维胞腔由 $X$ 的一个 $p$ 维胞腔与 $Y$ 的一个 $(n-p)$ 维胞腔相乘得到. 因此链复形可以写成
$ C_n (X times Y) = plus.circle.big_(p+q = n) C_p (X) times.circle_ZZ C_q (Y). $
我们可以将右侧作为链复形的张量积的定义. 由于出现了张量积, 同调群出现的变化可以通过 $"Tor"$ 函子描述. 由于 Künneth 最早发现了利用 Betti 数 @KunnethBetti 与挠数 @KunnethTorsion 表述的形式, 这些定理的各种变体都被称作 *Künneth 公式*.

== 正合列的提出

在文献中最早出现的正合列是在 1941 年, Hurewicz 将一系列已知的同态连接起来组成了一个序列:
$ H^n (X) -->^i^* H^n (A) -->^delta H^(n+1) (X \\ A) --> H^(n+1) (X) --> dots.c $
其中, $A$ 是 $X$ 的闭子空间. Hurewicz 观察到, 前一个映射的像与后一个映射的核刚好相等.
在几乎同一时间, Eckmann 描述了纤维丛中纤维、全空间与底空间的同伦群满足的正合列. 这在当代被称作*同伦纤维列*:
$ dots.c -> pi_(n+1) (B) -> pi_n (F) -> pi_n (E) -> pi_n (B) -> pi_(n-1) (F) -> dots.c $
不过, 暂时没有人注意到这与 Hurewicz 的发现在代数上的相似性.

在 1945 年, 提出 Eilenberg–Steenrod 公理时, 他们要求同调群有 “一组自然的群与群同态的系统”:
$ dots.c -> H_n (X) -> H_n (X, A) -> H_(n-1) (A) -> H_(n-1) (X) -> dots.c $
其中 $A$ 是 $X$ 的闭子空间.

同年, Henri Cartan (微分几何学家 Élie Cartan 之子) 在研究 Čech 同调时, 也发现了类似的长正合列. 他由此推出了一个非常重要的结论, 今天我们称作 *Mayer–Vietoris 正合列*. 这是 Eilenberg–Steenrod 公理的纯代数推论, 允许我们将空间拆分成两部分计算同调或者上同调.

1947 年 Kelley 与 Pitcher 正式提出了 “正合列” 这个词汇. 他们考虑了这个概念的一般代数性质, 包括它们在取逆向极限操作时的性质, 等等. 这开启了对链复形与正合列的纯代数研究. 这些成果包括 “五引理”: 考虑如图的交换图, 使得上下两行都是正合列, 如果周围四个纵向映射都是同构, 那么中心的纵向映射也是同构.
$ mat(delim: #none,
  A_1, -->, A_2, -->, A_3, -->, A_4, -->, A_5;
  arrow.b,,arrow.b,,arrow.b,,arrow.b,,arrow.b;
  B_1, -->, B_2, -->, B_3, -->, B_4, -->, B_5;
) $
还有 “蛇引理”: 给定两个短正合列之间的交换图,
$ mat(delim: #none,
  0, -->, A_1, -->, A_2, -->, A_3, -->, 0;
  space,,arrow.b,,arrow.b,,arrow.b,,;
  0, -->, B_1, -->, B_2, -->, B_3, -->, 0;
) $
#let coker = math.op("coker")
三个纵向映射称作 $f, g, h$, 则有长正合列
$ 0 -> ker f -> ker g -> ker h -->^diff coker f -> coker g -> coker h -> 0. $
这些引理对操作链复形等代数对象非常有用, 并且最终会导出拓扑上的丰富结构. 而所有这些都来自于 $diff^2 = 0$ 这个等式.

== 代数学中的应用

群的低维同调与上同调是早已被研究的课题, 如叉同态 (crossed homomorphism) 的概念对应 $H^1 (G; A)$. Eilenberg 与 Mac Lane 利用 $K(G, 1)$ 空间定义了群的任意维数同调与上同调, 将同调代数的语言正式引入了代数学. 在此之后, 对结合代数与 Lie 代数的研究也利用这种新语言迅速发展.

== 谱序列与层论

Lyndon 在对群上同调的研究中已经注意到了谱序列的雏形. 1947 年, 根据 Cartan 的建议, Koszul 以滤链复形为核心概念, 发展出了谱序列的代数框架. 在第二次世界大战中, 数学家 Leray 在被俘期间发展了层论与层上同调, 谱序列成为了计算层上同调的重要工具. 在战后, Cartan, Eilenberg, Serre 等人将谱序列与层的理论进一步发展成熟.

== Cartan–Eilenberg 革命

Cartan 与 Eilenberg 在 1950 年代著书 《同调代数》, 为这个领域带来了一场革命. 他们定义了投射模的概念, 与内射模对举. 这使得 $"Ext"$ 和 $"Tor"$ 能统一地作为导出函子处理. 如 Hochschild 所言, 这本书的出现标志着同调代数的摸索时代正式结束.

// https://www.math.uchicago.edu/~may/PAPERS/118.pdf

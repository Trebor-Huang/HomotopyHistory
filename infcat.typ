#import "common.typ": *
= 无穷范畴

basic ideas

== 何为空间?

一直以来, 同伦论的研究受制于空间的性质. 许多定理都是先在性质较好的空间上建立的. 起初使用的是 (几何) 单纯复形. 点、线段、三角形、四面体的 $n$ 维推广称作*单纯形* (simplex, 简称单形). 如果某个空间被一族单纯形子空间 $cal(K)$ 覆盖, 使得每个单纯形 $s in cal(K)$ 的面也属于 $cal(K)$, 并且任何两个单纯形的交集 $s_1 sect s_2$ 要么空, 要么是 $s_1$ 与 $s_2$ 的面, 就称 $cal(K)$ 是这个空间上的*单纯复形*结构. 流形的三角剖分就是指流形上的单纯复形结构. 在拓扑空间还未出现的时候, 单纯复形就可以直接作为空间的定义.

我们也可以脱离拓扑空间而完全抽象的考虑单纯复形. 注意到单纯复形中, 顶点集完全决定了单纯形. 因为如果有两个 $n$ 维单形的顶点相同, 那么它们相交需要是这两个单形的面, 矛盾.
因此我们可以设有一个集合 $V$ 表示复形的顶点, 并且有一族有限非空子集 $cal(K) subset.eq cal(P)(V)$ 描述了复形的单纯形集合. 其中需要每个顶点的单点集 ${v} in cal(K)$, 表示零维单形, 并且任何单形 $s in cal(K)$ 的非空子集 (几何意义是单形的面) 也属于 $cal(K)$. 这称作*抽象单纯复形*. 这可以视作是单纯复形的蓝图, 可以按照抽象单纯复形的指导拼贴几何体得到几何单纯复形.

这种复形禁止复杂的粘合情况出现. 例如圆 $SS^1$ 必须由三条线段构成, 不能直接由一条线段将两个顶点粘合; 球 $SS^2$ 则最少需要四个三角形构成空心四面体状. 因此在做具体计算时往往会需要很多单形, 比较繁琐. 同时, 在构造单纯复形时往往会遇到不满足条件的情况, 就需要额外引入操作修正. Eilenberg 与 Zilber @semisimplicial 在 1949 年引入了更加宽松的复形, 称作*半单纯复形* (semi-simplicial complex). 因为单形不再由顶点决定, $n$ 维单形不能看作顶点集的子集, 而是需要额外确定一个集合 $K_n$. 其有 $(n+1)$ 个 $(n-1)$ 维面, 因此有函数 $sigma_i : K_n -> K_(n-1)$, 其中 $0 <= i <= n$. 为了保证拼接关系正确, 这些函数需要满足一些等式.

$n$ 维单纯形的 $k$ 维面有 $binom(n+1,k+1)$ 个, 如果我们记 $[n] = {0, dots, n}$, 就和 $[k] -> [n]$ 的单调单射一一对应. 我们可以用范畴语言重新表达半单纯复形, 即 $Delta_"inj"^"op" -> sans("Set")$ 的函子. 其中 $Delta_"inj"$ 是 $[1], [2], dots$ 与它们之间的单调单射构成的范畴. 这些单射可以认为是指代单形的某个面的形式符号.

在 @semisimplicial 中, Eilenberg 与 Zilber 还讨论了另一类对象, 称作*完备半单纯复形* (complete semi-simplicial complex). 在半单纯复形的基础上引入了*退化*的单形. 例如长度为零的线段就是退化 $1$-单形. 完备半单纯复形可以表述为 $Delta^"op" -> sans("Set")$ 的函子, 其中 $Delta$ 是 $[1], [2], dots$ 与它们之间的全体单调映射构成的范畴. 每个半单纯复形都可以靠添加退化的单形构成完备半单纯复形, 但是反之不然. 例如球面 $SS^2$ 可以表述为恰好有一个非退化 $2$-单形, 并且它的三个面都是退化的 $1$-单形.

由于这些结构本质上只需要集合之间的映射关系, 不需要拓扑信息就可以讨论, 因此当代一般称之为半单纯集, 而不称复形. 同时, 由于完备半单纯复形非常重要, 使用过程中逐渐简化, 最终名称变为*单纯集* (simplicial set). 给定单纯集或半单纯集, 总能以之为蓝图, 构造出对应的拓扑空间, 称作其*几何实现*.

同年, Whitehead 定义了更加宽松的 *CW 复形*, 或称胞腔复形 (cellular complex). 其中, 粘接不需要沿着单形的面, 而可以随意粘接. 因此, 单形的结构就不再重要, 可以直接替换成实心球体. 例如, 可以将圆盘的边界沿着圆绕两圈粘接得到 $RR PP^2$. Whitehead 证明了著名的 Whitehead 定理, 即对于 CW 复形来说, 如果 $f : X -> Y$ 诱导了同伦群的同构, 那么就一定存在同伦意义下的逆映射. 换句话说, 弱同伦等价可以推出同伦等价. 因此, CW 复形一方面非常灵活, 另一方面排除了在同伦视角下病态的拓扑空间. 例如 *Warsaw 圆*, 由 $sin(1/x)$ 曲线与 ${(0, y) | -1 <= y <= 1}$ 粘接而成.\
#box(width: 100%)[
#set align(center)
#import cetz.draw: *
#cetz.canvas(
  {
    cetz.plot.plot(name: "plot", size: (20/calc.pi, 2), axis-style: none, x-tick-step: none, y-tick-step: none, {
      cetz.plot.add(domain: (calc.sqrt(2*calc.pi), 8), samples: 400, t => (1/(t*t), calc.sin(t*t)), style: (stroke: black))
      cetz.plot.add(domain: (calc.sqrt(2*calc.pi), 8), samples: 400, t => (-1/(t*t), -calc.sin(t*t)), style: (stroke: black))
      cetz.plot.add-anchor("center", (0,0))
      cetz.plot.add-anchor("left", (-1/(2*calc.pi),0))
      cetz.plot.add-anchor("left-up", (-1/(2*calc.pi)-1/(4*calc.pi*calc.pi), 1))
      cetz.plot.add-anchor("right", (1/(2*calc.pi),0))
      cetz.plot.add-anchor("right-down", (1/(2*calc.pi)+1/(4*calc.pi*calc.pi), -1))
    })
    rect((rel: (20/63, 1), to: "plot.center"), (rel: (-20/63, -1), to: "plot.center"), stroke: none, fill: black)
    bezier("plot.left", (0,-1), "plot.left-up", (-2,-1))
    line((0,-1), (20/calc.pi, -1))
    bezier("plot.right", (20/calc.pi, -1), "plot.right-down", (20/calc.pi + 0.5, -1))
  }
)]
这条曲线所有同伦群均为零, 因此从同伦的视角没有任何可识别的性质. 但是它并不可缩. CW 复形规避了这种情况, 但是任何拓扑空间都与某个 CW 复形弱同伦等价 (对于 Warsaw 圆来说, 它与单点空间弱同伦等价). 因此, CW 复形成为了代数拓扑与同伦论不可或缺的工具.

Daniel Kan 在 1956 年起系统地发展了单纯集中的同伦论. 尽管没有拓扑的概念, 同伦的各种关键结构都可以在单纯集中体现. 从同伦的角度, 单纯集范畴 $sans("sSet")$ 与拓扑空间的范畴 $sans("Top")$ 是等价的. 严格来说, 就是这两者构成的模型范畴之间有 Quillen 等价. 因此, 我们也可以把单纯集称作 “空间”.

spectra

homotopy hypothesis

== 范畴的局限

homotopy category, triangulated category, derived category

(spectra is triangulated)

== 高维范畴

自范畴论提出以来, 它就以能够简洁地表达各个数学分支中隐藏的抽象结构而闻名. 然而讽刺的是, 范畴论本身却无法自然地纳入范畴的研究框架下. 如果将范畴视作对象, 函子视作态射, 就忽略了函子之间自然同构的信息. 而很多情况下实际上函子并不完全相等, 而是相差一个自然同构. 如果只考虑函子在自然同构下的等价类, 就会与 $sans("Ho")(sans("Top"))$ 一样出现许多问题.

事实上, 全体范畴构成的是 *2-范畴*, 而非范畴 (即 1-范畴). 2-范畴除了对象与态射之外, 还有态射之间的 2-态射.

also higher algebra

== 无穷范畴

1973 年, Boardman 与 Vogt 引入了*拟范畴* (quasicategory), 标志着无穷范畴论的开端.

// 1962 Brown proves what is now known as the Brown representability theorem.

// The development of the derived category, by Alexander Grothendieck and his student Jean-Louis Verdier shortly after 1960, now appears as one terminal point in the explosive development of homological algebra in the 1950s, a decade in which it had made remarkable strides. The basic theory of Verdier was written down in his dissertation, published finally in 1996 in Astérisque (a summary had earlier appeared in SGA 4½). The axiomatics required an innovation, the concept of triangulated category, and the construction is based on localization of a category, a generalization of localization of a ring.

// 1969-1970: May introduces operads (after closely related concepts used by Boardman, Vogt, and Kelly) and uses them for infinite loop space machines. Homotopy theory expands to touch universal algebra.

// 同调论中的 $"Ext", "Tor"$ 等导出函子的概念, 被 Grothendieck 放在了导出范畴的体系下. 这将同调和同伦统一到了一起, 传统的同调理论成为了同伦理论的一个低维投影. 这一点之后会在无穷范畴的发展中得到进一步体现.

// 单纯集可以看作是无穷群胚的一种表现, 正如群表现之于群一样. 而单纯集构成的模型范畴给出了一种抽象的通过表现操作无穷群胚的办法. 1973 年, Boardman 与 Vogt 引入了拟范畴 (quasicategory), 标志着无穷范畴论的开端. 在这个框架下, 同伦范畴可以看作是无穷范畴包含信息的截断, 正如基本群是拓扑空间所包含信息的截断. 导出范畴也可以视作一种同伦范畴, 因此其对应的无穷范畴视角揭示了其本质. 进入 21 世纪, Jacob Lurie 写出了《高阶意象论》, 整理了对无穷范畴论与无穷意象的研究.

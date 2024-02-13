#import "common.typ": *
= 无穷范畴

无穷范畴的基本想法非常简洁. 对象之间有态射, 态射之间有 2-态射, 2-态射之间有 3-态射, 以此类推. 产生这种概念有多重历史动机, 接下来我们依次对各个动机的历史线条进行梳理.

== 范畴的局限

=== 同伦范畴

拓扑空间的范畴便于研究拓扑性质, 例如 $sans("Top")$ 的同构就是拓扑空间的同胚. 但是同伦论中更常见的是拓扑空间的同伦等价, 即存在 $f : X -> Y$, $g : Y -> X$ 使得 $f compose g$ 与 $g compose f$ 都与恒同函数同伦. 这自然引出了*同伦范畴*的定义. $sans("Ho")(sans("Top"))$ 的对象是拓扑空间, 而态射是连续映射在同伦下的等价类. 这个范畴中的同构就是同伦等价.

然而, 这种定义有诸多问题. 例如其中的极限与余极限并不对应同伦极限与余极限, 甚至在很多情况下都根本不存在. 这是因为商去同伦关系抛弃了更高阶的信息, 因此各种同伦操作都难以正确进行. 模型范畴是一种避免商去同伦, 利用额外添加的结构在 $sans("Top")$ 中进行同伦操作的办法.

同样的现象在代数中也有出现.

homotopy category, triangulated category, derived category

事实上, 代数拓扑中也出现了一个非常重要的三角范畴, 也就是谱的同伦范畴.

很早就发现了上同调与同伦之间的关系
$ H^n (X; G) tilde.equiv [X, K(G, n)] $
其中 $[X, Y]$ 表示 $X -> Y$ 映射在同伦关系下的等价类. $K(G, n)$ 是一类特殊的空间, 称作 *Eilenberg–Mac Lane 空间*. 对于任何广义的上同调理论 $h^bullet$, 则由 Edgar Brown 在 1962 年给出了著名的*可表定理*, 即它总是可以写成 $ h^n (X) tilde.equiv [X, S_n] $
其中 $S_n$ 是一列空间, 有映射 $S_n -> Omega S_(n+1)$ (也等价于 $Sigma S_n -> S_(n+1)$, 因为这两个函子伴随). 这种结构称作*谱* (spectrum). 这个概念由 Elon Lages Lima 在 1958 年最初引入.

最重要的广义上同调理论就是 $K$-理论, 利用拓扑空间上的向量丛给出上同调群. 使用实向量空间的版本称为 $K upright(O)$, 它对应的谱有非常有趣的周期性结构, 读者可以翻到封面页欣赏. 这种结构称作 *Bott 周期性*.

在前言中列出的球面同伦群表格, 细心观察可以看到沿着对角方向往右下移动时, 总是会收敛到一个固定的群, 称作球面的*稳定同伦群*. 这是由同伦的 Freuthendal 纬悬定理保证的, 即满足特定条件的空间 $X$, 不断取纬悬得到一列同伦群 $ pi_n (X), pi_(n+1) (Sigma X), pi_(n+2) (Sigma^2 X), dots $ 最终总是趋于稳定. 这个群记作 $pi_n^s (X)$. 稳定同伦群之于同伦群, 正如谱之于拓扑空间. 换言之, 谱是稳定同伦群这种代数结构的拓扑对应. 例如球面构成谱 $SS$, 其稳定同伦群也在封面页列出. 谱上的同伦论称作稳定同伦论, 它相较于同伦论而言更容易做计算.

$sans("Ho")(sans("Spec"))$ 也构成三角范畴, 这说明这些领域出现的问题是相通的, 因此一个统一的解决方案将会揭示同伦论中的深层结构.

=== 高维代数

also higher algebra

== 高维范畴

自范畴论提出以来, 它就以能够简洁地表达各个数学分支中隐藏的抽象结构而闻名. 然而讽刺的是, 范畴论本身却无法自然地纳入范畴的研究框架下. 如果将范畴视作对象, 函子视作态射, 就忽略了函子之间自然同构的信息. 很多情况下实际上函子并不完全相等, 而是相差一个自然同构. 如果只考虑函子在自然同构下的等价类, 就会与 $sans("Ho")(sans("Top"))$ 一样出现许多问题.

事实上, 全体范畴构成的是一个 *2-范畴* $sans("Cat")$, 而非范畴 —— 也称作 1-范畴. 2-范畴除了对象与态射之外, 还有态射之间的 2-态射. 具体来说, 每两个对象之间的态射与 2-态射构成一个 1-范畴 $hom(X, Y)$. 有恒等态射 $id in hom(X, X)$, 与一族二元函子 $hom(Y, Z) times hom(X, Y) -> hom(X, Z)$ 表示 1-态射的复合. 对于 $sans("Cat")$ 来说, $hom(X, Y)$ 就是函子与自然态射构成的范畴.

1-态射复合的结合律不能直接用相等关系描述, 因为我们认为 “相同” 的 1-态射往往相差一个同构. 因此我们引入自然同构
$ alpha_(f,g,h) &:& f compose (g compose h) &tilde.equiv (f compose g) compose h \
  lambda_f &:& id compose f &tilde.equiv f \
  rho_f &:& f compose id &tilde.equiv f $
我们每次在数学对象中引入映射, 就需要考虑这些映射是否满足等式. 这里, 这些自然同构也需要满足一些额外的等式 (由于这些同构是 1-范畴 $hom(X, Y)$ 上的, 所以可以直接谈论相等). 例如四个态射的复合有五种方式, 可以用 $alpha_(bullet, bullet, bullet)$ 连接它们:

#box(width: 100%)[
#set align(center)
#fletcher.diagram(spacing: (0cm, 1.5cm), node-defocus: 0, $
  & (f compose g) compose (h compose k) edge("dr", ->, bend: #20deg) & \
  f compose (g compose (h compose k)) edge("ur", ->, bend: #20deg) edge("d", ->) && ((f compose g) compose h) compose k \
  f compose ((g compose h) compose k) edge("rr", ->) && (f compose (g compose h)) compose k edge("u", ->)
$)]

图表中两条路径复合需要相等. 对于 $lambda_bullet, rho_bullet$ 也各自有一个三角形等式. 这些复杂的等式称作*融贯性* (coherence) 等式. 2-范畴的理论时刻需要处理这些高阶等式, 因此稍显繁琐. 读者可以试图验证任何 1-范畴可以看作 2-范畴, 即将 $hom(X, Y)$ 从集合升级为只有恒同态射的范畴.

定义 2-范畴之间的函子时, 同样需要给出一些融贯性等式. 这时我们需要证明一个六边形图表与两个四边形图表分别交换. 自然变换又需要一系列交换图表. 最后, 2-范畴中的自然变换之间还有更高层的映射, 称作*调整*.

2-范畴理论在 1967 年由 Jean Bénabou 提出. 这是为了表述代数几何的下降理论中自然出现的结构. 用 2-范畴的语言, 可以将它表述为函子 $F : cal(B) -> sans("Cat")$, 其中 $cal(B)$ 是 1-范畴视作退化的 2-范畴. 但是由于起初没有 2-范畴的工具, Grothendieck 将其表述为 1-范畴的函子 $p : cal(E) -> cal(B)$, 用每个对象 $X in cal(B)$ 上的纤维代指 $F(X)$. 2-范畴可以更加直接地表述此事.

虽然有些许繁琐, 2-范畴的理论仍然在人类操作的范围内. 但是 3-范畴的复杂度迅速超过了理解与记忆的限度. 在 @tricategory 中, 3-范畴的定义就占据了 6 页, 而加上对应的函子、自然变换、调整, 还有调整之间的映射 —— 称作*微扰* —— 达到了惊人的 19 页. 这仅仅是罗列定义, 还未开始证明任何性质或给出任何构造. 显然, 这种做法是无法持续的. 因此, 绝大部分的范畴论研究都局限在 $n$-范畴 $(n <= 2)$ 中.

既然 3-范畴的理论就已经难以理解, 很长一段时间内, 无穷范畴都被认为是更加不可触碰的对象. 无穷范畴理论的一大贡献就是打破了这一认知, 并严格地建立了无穷范畴论的各种可以类比 1-范畴论的定理.

== 何为空间?

=== 组合拓扑

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

// Kan 提出了一种满足特殊条件的单纯集, 称作 *Kan 复形*. 将 $n$ 维单形看作单纯集, 记作 $Delta^n$. 将其挖去中心与其中一个面, 就得到了“角” $Lambda^n_i$, 其中 $0 <= i <= n$ 表示挖去了第几个面. 给定单纯形 $X$, 如果对于任何角 $Lambda^n_i -> X$, 都存在填充 $Delta^n -> X$, 就称其为 Kan 复形. 换句话说, 所有如图所示的交换方都可以填入对角线.

=== 无穷群胚

在代数拓扑的开端提出的基本群的概念, 需要选择一个基点. 可以给出一个不选择基点的版本, 称作*基本群胚*. 群胚即所有态射都可逆的范畴. 群可以看作只有一个对象的群胚, 群的元素对应这个对象到自身的态射. 基本群胚的对象是拓扑空间中的点, 而态射是道路的同伦等价类. 那么基本群胚中对象在同构关系下的等价类就是拓扑空间的道路连通分支 $pi_0 (X)$. 因此, 基本群胚同时包含了 $pi_0(X)$ 与 $pi_1 (X)$ 的信息, 可以记作 $pi_(<= 1) (X)$.

注意到为了道路复合的结合律等等式, 这商去了道路之间的同伦, 因此损失了一些信息. 对于没有更高维的结构的空间 —— 即 $pi_n (X) = 0$ $(n > 1)$, 称作 *1-截断*空间 —— 来说, 基本群胚就包含了全部的信息. 严格来说, 群胚构成的 2-范畴 $sans("Grpd") arrow.hook sans("Cat")$ 与 1-截断拓扑空间、连续映射、映射同伦的等价类构成的 2-范畴 $sans("Top")_(<= 1)$ 是等价的.

下一步推广就是 2-群胚, 即所有映射都可逆的 2-范畴, 以此类推. 如果要覆盖全体空间而不损失任何信息, 自然就需要对 $n$-群胚取极限 $n -> oo$. 这样, 就能定义 “基本无穷群胚”, 直接取道路而不商去任何同伦. 这就使得空间的概念完全摆脱拓扑, 从而也避免了病态拓扑空间的问题.

Grothendieck 在著名的手稿《追寻叠》@PursuingStacks 中提出用无穷群胚作为空间的等价定义. “叠” 指代的就是现代所称的无穷群胚. 无穷群胚与空间的等价性称作*同伦假设*. 但是如上所示, 1-截断的同伦假设需要用到 2-范畴的等价, 因此仅仅是表述出完整的同伦假设就必须定义无穷范畴之间的等价, 更不用说证明了. 因此, 无穷范畴的理论也会给出 (同伦意义下) 空间的本质的启示.

== 无穷范畴

这三条线的发展, 最终聚合催生了无穷范畴的研究.

1973 年, Boardman 与 Vogt 引入了*拟范畴* (quasicategory), 标志着无穷范畴论的开端.

// The development of the derived category, by Alexander Grothendieck and his student Jean-Louis Verdier shortly after 1960, now appears as one terminal point in the explosive development of homological algebra in the 1950s, a decade in which it had made remarkable strides. The basic theory of Verdier was written down in his dissertation, published finally in 1996 in Astérisque (a summary had earlier appeared in SGA 4½). The axiomatics required an innovation, the concept of triangulated category, and the construction is based on localization of a category, a generalization of localization of a ring.

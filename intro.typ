#import "common.typ": *
= 前言

一个 $n$ 维球面 $SS^n$ 可以以多少种不同的方式套在一个 $m$ 维球面 $SS^m$ 上? 对于 $n = m = 1$ 的情况, 一个圆可以在另一个圆上顺时针或逆时针缠绕任意多圈, 因此可以被整数集 $ZZ$ 描述, 我们写作 $[SS^1 -> SS^1] = ZZ$. 对于 $n < m$ 的情况, 无论怎么摆放, $n$ 维球面都会滑落下来, 因此可以收缩成一个点. 因此 $[SS^n -> SS^m] = 0$.

对于 $n > m$, 看似情况仍然是平凡的. 但是 Hopf 在 1931 年发现了一种方式, 将 $SS^3$ 套在 $SS^2$ 上, 并且无法收缩到一个点. 具体来说, 考虑空间 $CC^2$ 里的单位球 $SS^3$, 映射 $(z, w) |-> z/w$ 将 $SS^3$ 映射到 $CC union {oo} tilde.eq SS^2$ 上. 这就是 *Hopf 映射*. 事实上, $[SS^3 -> SS^2] = ZZ$. 这告诉我们, 看似简单的球面在高维情况下有非常丰富的结构.
#[
#set align(center)
#set text(10pt)
#block(width: 100%)[
#table(
  stroke: 0.5pt,
  inset: (x: 3pt, y: 7pt),
  columns: (0.5fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
  $attach(without, tr: m, bl: n)$, $1$, $2$, $3$, $4$, $5$, $6$, $7$, $8$,
  $1$, $ZZ$, $0$, $0$, $0$, $0$, $0$, $0$, $0$,
  $2$, $0$, $ZZ$, $0$, $0$, $0$, $0$, $0$, $0$,
  $3$, $0$, $ZZ$, $ZZ$, $0$, $0$, $0$, $0$, $0$,
  $4$, $0$, $ZZ_2$, $ZZ_2$, $ZZ$, $0$, $0$, $0$, $0$,
  $5$, $0$, $ZZ_2$, $ZZ_2$, $ZZ_2$, $ZZ$, $0$, $0$, $0$,
  $6$, $0$, $ZZ_12$, $ZZ_12$, $ZZ_2$, $ZZ_2$, $ZZ$, $0$, $0$,
  $7$, $0$, $ZZ_2$, $ZZ_2$, $ZZ times ZZ_12$, $ZZ_2$, $ZZ_2$, $ZZ$, $0$,
  $8$, $0$, $ZZ_2$, $ZZ_2$, $ZZ_2^2$, $ZZ_24$, $ZZ_2$, $ZZ_2$, $ZZ$,
  $9$, $0$, $ZZ_3$, $ZZ_3$, $ZZ_2^2$, $ZZ_2$, $ZZ_24$, $ZZ_2$, $ZZ_2$,
  $10$, $0$, $ZZ_15$, $ZZ_15$, $ZZ_24 times ZZ_3$, $ZZ_2$, $0$, $ZZ_24$, $ZZ_2$,
)]]
从表格中可以看出一些规律, 例如第二列与第三列只有一处不同. 但是大部分仍然杂乱无章. 从简单的规则中产生的这些代数对象变幻莫测, 也正是同伦论的魅力之一.

同伦论也在其他领域中有着应用. 例如在拓扑学中有代数拓扑利用同伦信息分类拓扑空间, 在微分方程领域有同伦原理给出偏微分方程的解, 在代数几何领域有 $AA^1$ 同伦用于解决重大猜想, 等等.

== 什么是同伦论?

从最广义的角度, 同伦是指两个数学对象不仅有严格相等, 还有一些更弱的等价的情况. 这种现象最早的例子是连续映射: 给定两个映射 $f, g : X -> Y$, 将 $f$ 连续地移动到 $g$, 就是一种同伦. 由于同伦本身也是数学对象, 往往又能讨论同伦之间的同伦, 以此类推. 这种现象不仅出现在拓扑中, 在代数学、物理学、甚至计算机科学中都有类似的现象, 从而可以应用同伦论的研究方法.

同伦论经过了多次改革, 利用新的语言重新表达、整合、统一了旧的成果. 在当代, 同伦论是研究生象、同伦谱、无穷范畴与相关的高阶代数结构等的学科. 这种高度抽象的语言一方面深刻地揭示了许多同伦现象的本质, 一方面也为学习造成了一定的困难. 理清其历史脉络, 对于同伦论中概念的学习有很大帮助.

== 如何阅读本文

本文会尽量为遇到的数学概念作简单介绍. 在介绍早期的数学发现时, 会提到这些事物的当代观点. 这些部分如果读者没有相应的知识储备, 跳过无妨. 但是学过对应的部分后再来看, 自然会有更深的理解.

数学发现的历史不是单线进行, 而常常是由原本没有关系的多线研究, 最终汇聚到一点, 揭示出这些想法内在的联系. 因此, 本文虽然基本按照时间顺序排列, 但是局部上为了逻辑通畅, 会将互相承接的成果一并介绍. 一般对此会标明重要事件的时间, 锚定先后次序.

本文涉及的代数拓扑的部分, 读者可以参考 Hatcher 的课本 @Hatcher. Weibel @Weibel 有简明易懂的同调代数入门. 对于无穷范畴与高阶代数, 可以参考 @InfCatTextbook 作为入门教材, @HTT 与 @HA 作为参考. 同伦论与数学的各个领域, 甚至数学之外的学科都有许多交集, 因此本文不可能尽数涵盖. 对于这些内容, 会推荐一些参考文献以供阅读.

// 推荐 @EpistemologyOfHomology





**目录**

[TOC]

# 1. 项目背景

本次项目需要分析关于邮寄产品目录的问题，需要预测公司向新顾客邮寄目录单能带来的收入。分析的框架采取跨行业数据挖掘标准流程（**CRIP_DM**），也确定了需要从以下流程来进行相关分析：

1. 业务理解
2. 数据理解
3. 数据准备
4. 分析/建模
5. 模型评估
6. 结果发布

# 2. CRIP_DM 流程

## 2.1 业务理解

当前公司的主营业务是制造和销售高端家具商品，通过寄送产品目录册的方案不仅能够让用户了解公司的产品的信息，而且能够以此促进销售业务的目的，现在确认了我们有 **250** 名新客户，需要分析才去邮寄产品目录册的方案能否带来超过**一万**美元的利润。

最终确认项目的**决策信息**是分析预期利润，确认邮寄产品目录册的方案是否可行。在解决这个问题的**核心信息**是了解_预期_利润，因此我们需要明确邮寄产品的**成本**，新用户带来的收益，最终通过 $收益-成本=利润$ 的思路来进行**预测分析**。

## 2.2 数据理解

完成利润的预测分析，我们需要分别确认邮寄产品的成本数据以及用户的销售额数据：

* 首先确认邮寄产品成本数据——即邮寄和制作产品目录册的成本

  印刷和寄送每本产品目录册的成本是 6.5 美元

* 用户的销售额

  因为目前没有明确地未来销售额数据，且没有关于这 250 名新客户的历史销售额数据。所以，需要通过其他用户的历史数据来分析该 250 名新客户的未来销售额

* 销售利润

  已经确认通过产品目录册销售的产品平均毛利率是 $50\%​$；以及用户存在通过产品目录册存在反应以及会进行购买行为存在一定的概率。因此最终计算结构上是 $用户的销售 \times 购买概率 \times 平均毛利率- 产品目录册相关成本=销售利润​$

## 2.3 数据准备

目前已有完整的用户信息及历史下手记录（p1_customer.csv 文件)，可以确认 **Customer Segment**、**City**、**State**、**Store Number**、**Avg Num Products Purchased**、**# Years as Customer** 等预测变量以及 **Avg Sale Amount**目标变量

最后需要预测的用户信息数据（p1_mailinglist.csv 文件）包括 **Customer Segment**、**City**、**State**、**Store Number**、**Avg Num Products Purchased**、**# Years as Customer** 等预测变量

## 2.3 分析/建模

从客户信息数据 p1_customer.csv 文件中，能够确认有 2,300 名客户信息共计 2,375 条数据。数据量是足够的，我们要分析的目标变量是一个连续性数据变量。因此我们需要采用**回归**的方法进行分析和建模。对需要的数据进行分析：

* State：州信息，分析得出所有商店都是在同一个州（CO），对于建模分析没有意义

* Customer Segment：客户分类，是一个分类变量，包括了 Credit Card、Loyalty Club 及其混合类型，还有一个 Store Mailing List。使用哑变量的方式处理，最终以 Credit Card Only 的类型作为基准变量来建立模型

  ![image-20190204023631693](https://ws4.sinaimg.cn/large/006tNc79gy1fztszljxcvj30f00b4mx6.jpg)

* City：包括了 27 个城市类型，它是一个分类变量。考虑到最终运算量增大，放弃该字段的模型分析

* Store Number：商店数量，是一个离散型数据。分析其与目标变量之间的相关性，可以看出他们之间相关性很弱，不考虑在模型中使用

  ![image-20190204024702445](https://ws4.sinaimg.cn/large/006tNc79gy1fzttagn7pbj30f809jwf5.jpg)

* Avg Num Products Purchased：平均购买产品数量，是一个连续性数值。分析其与目标变量之间的相关性，可以看出两者存在相对强的相关性——计算得出相关性系数在 $0.855754$

  ![image-20190204025209263](https://ws2.sinaimg.cn/large/006tNc79gy1fzttft5z9nj30ek0andgb.jpg)

* `#` Years as Customer：成为客户的年限，这个是一个离散型的数值。分析其余目标变量之间的相关性，两者的相关性非常弱，计算得出相关系数为 $0.029782$

  ![image-20190204030542696](https://ws4.sinaimg.cn/large/006tNc79gy1fztttw78o1j30fq0anq3i.jpg)

经过以上的分析之后，我们最终使用了数值变量 Avg Num Products Purchased 以及分类变量 Customer Segment 作为我们的字段。其中需要对 Customer Segment 进行虚拟变量处理，且以 Credit Card Only 作为基准变量进行分析建模，得到的结果如下：

![image-20190204040939376](https://ws4.sinaimg.cn/large/006tNc79gy1fztvof78w1j30ih0ds3yu.jpg)

即得到了我们需要的模型：
$$ {align}
Avg\ Sale\ Amount=303.46 + 66.98 \times Avg\ Num\ Products\ Purchased - \\245.42 \times (If\ Type:Store\ Mailing\ List) + \\281.84 \times (If\ Type:Loyalty\ Club\ and\ Credit\ Card) \\- 149.36 \times (If\ Type:Loyalty\ Club\ Only)
$$ {align}
最终模型得到的 R Square 得到的结果是 $0.84​$，决定系数比较高，说明该模型能够对我们现有数据做出较好的解释。此外在各个特征上，P 值都是远远小于 $0.05​$ 的显著性水平要求，说明了各个特征在该模型上具有显著相关性。

## 2.5 模型评估

通过预测数据中的第一条数据，A Giamett 商店名 Avg Num Products Purchased 的数据为 3，Customer Segment 为 Loyalty Club Only，Score_Yes 为 0.305：$(303.46 + 66.98 \times 3 - 245.42 \times 0 + 281.84 \times 0 - 149.36 \times 1)\times0.305 \approx 108.30$

## 2.6 结果发布

经过模型建立及炎症确立后，得到了一个适合的模型。对需要预测的用户数据进行分析，最终得到得了相应的结果如下：

![image-20190204045758093](https://ws2.sinaimg.cn/large/006tNc79gy1fztx2pdst5j30es09fwej.jpg)

从预测的销售结果为 $47,225.91$，计算毛利润并且减去我们制作产品目录册所花费的成本，最终我们能够得到预计的净利润是 $21.987.96$，这是远远超过了我们预期规定的基准利润线一万元。所以最终的**结论**是：支持对这些新用户邮寄产品目录册，这样促进了我们的业务销售。此外具有一个隐形优势能够将产品信息更广泛地推广。
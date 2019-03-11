**目录**

[TOC]

**说明：** 本次主题是讲一个故事，说明当面临大型海难的时候，**“您”应该选择成为什么样的乘客才能在危难中存活下来**。详情链接[Tatanic| Tableau Public](https://public.tableau.com/profile/ray5013#!/vizhome/Tatanic/Titanic_Fix)

# 数据集探索

数据集中包括了 891 名乘客信息，包括 `PassengerId`, `Survived`, `Pclass`, `Name`, `Sex`, `Age`, `SibSp`, `Parch`, `Ticket`, `Fare`, `Cabin`, `Embarked` 等信息，相关具体信息如下：

| **Variable** | **Definition**                             | **Key**                                        |
| ------------ | ------------------------------------------ | ---------------------------------------------- |
| survival     | Survival                                   | 0 = No, 1 = Yes                                |
| pclass       | Ticket class                               | 1 = 1st, 2 = 2nd, 3 = 3rd                      |
| sex          | Sex                                        |                                                |
| Age          | Age in years                               |                                                |
| sibsp        | # of siblings / spouses aboard the Titanic |                                                |
| parch        | # of parents / children aboard the Titanic |                                                |
| ticket       | Ticket number                              |                                                |
| fare         | Passenger fare                             |                                                |
| cabin        | Cabin number                               |                                                |
| embarked     | Port of Embarkation                        | C = Cherbourg, Q = Queenstown, S = Southampton |

* 备注信息：

  * **pclass**: A proxy for socio-economic status (SES)
    1st = Upper
    2nd = Middle
    3rd = Lower
  * **age**: Age is fractional if less than 1. If the age is estimated, is it in the form of xx.5
  * **sibsp**: The dataset defines family relations in this way...
    Sibling = brother, sister, stepbrother, stepsister
    Spouse = husband, wife (mistresses and fiancés were ignored)
  * **parch**: The dataset defines family relations in this way...
    Parent = mother, father
    Child = daughter, son, stepdaughter, stepson
    Some children travelled only with a nanny, therefore parch=0 for them.

## 用户信息

1. 乘客年龄 主要的乘客年龄在 15～35 岁之间
2. 乘客性别 大量成为为男性 577 人，而女性为314 人
3. 亲属关系 大部分乘客都没有父母或者兄弟姐妹以及配偶关系
4. 登陆地点 包括了三个国家的地点，分别是英国、新西兰和法国。其中英国占据了最大的旅客量，且第三等级的客户的数量最多；其次是法国登陆旅客量，且在此地登陆的游客中第一等级的客户数量最多

## 其他信息

1. 旅客购票 在同一个地区的购买的票差存在较大的价格差异。在英国的 Southampton 表现出明显的差异，第二等级和第三等级的旅客购票价格已经能够登上一等舱的价格

# 海难中的生存能力

1. 各个舱级中，第三级的男性人数远大于女性。在海难中，15～49 岁之间的三等舱和二等舱男性牺牲人数最多；三等舱的 15～49 岁之间女性牺牲人数最多
2. 在票价的影响方面，高票价的中年男性完全幸存；而在三等舱中仅有低龄低价乘客幸存比例较高，推测是因为随父母或者其他亲人出行的，这点在亲人的角度比较明显。**比较意外的是在低龄的有同辈情况下反而会出现死亡的可能行**
3. 有长辈出行的情况下，高龄旅客容易牺牲，而低龄乘客更容易幸存下来

# 结论

在面对海难过程中，三等舱的青年男性更容牺牲；而**一等舱的青年女性**更容幸存下来。其他类别上来看幸存与否差别不是太大

# 反馈

总体上反馈比较正面，根据意见修改了上方提示信息给出了相关的结论信息。最后结论上，这里没有根据反馈说特征太多和颜色问题，颜色是为了突出我们需要的信息——所以增加了颜色的 interval，这里为了保持前期探索的信息进行深入分析所以保持了特征数量

# 参考

1. [生成饼图 - Tableau](https://onlinehelp.tableau.com/current/pro/desktop/zh-cn/buildexamples_pie.htm) 

2. [20180404_Update_Overview of standards after consultation mechanism](chrome-extension://mhjfbmdgcfjbbpaeojofohoefgiehjai/index.html) 

   参考作为年龄阶段划分
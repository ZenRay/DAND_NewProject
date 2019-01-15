**目录**

[TOC]

## 数据描述

所提供数据来自拍拍贷真实业务数据，从2015-01-01到2017-01-30的所有信用标的10%sample样本。数据集包含`LC.csv`（标的特征表数据）和`LP.csv`（标的还款计划和还款记录表）数据。该数据来自于[拍拍贷互金训练营](https://cdn.kesci.com/ppdai_3_23.zip)，若无法下载，也可以点击[这里](https://github.com/udacity/new-dand-advanced-china/raw/master/%E6%8E%A2%E7%B4%A2%E6%80%A7%E6%95%B0%E6%8D%AE%E5%88%86%E6%9E%90/%E9%A1%B9%E7%9B%AE/ppdai_3_23.zip)。

【数据用途】

所提供数据为拍拍贷真实业务数据，但仅为信用标的一个样本，仅供数据分析和学术研究目的使用，而非信息披露。从这个数据中推导得到的结果不反映拍拍贷平台的整体情况，也不代表拍拍贷官方的态度。

【数据描述】

所提供数据包含了成交时间从2015年1月1日到2017年1月30日的328553支信用标。

*  **LC (Loan Characteristics)** **表：** 

  标的特征表，每支标一条记录。共有21个字段，包括一个主键（listingid）、7个标的特征和13个成交当时的借款人信息，全部为成交当时可以获得的信息。具体的字段描述请见数据字典。

  | **字段序号** | **字段名**       | **字段注释**                                                 |
  | ------------ | ---------------- | ------------------------------------------------------------ |
  | 1            | ListingId        | 列表序号，为列表的唯一键。                                   |
  | 2            | 借款金额         | 列表成交总金额。                                             |
  | 3            | 借款期限         | 总的期数（按月计）。                                         |
  | 4            | 借款利率         | 年化利率（百分数）。                                         |
  | 5            | 借款成功日期     | 列表成交的日期。都在2015年1月1日以后。                       |
  | 6            | 初始评级         | 列表成交时的信用评级。AAA为安全标，AA为赔标，A-F为信用等级。 |
  | 7            | 借款类型         | 分为'应收安全标'，‘电商’，‘APP闪电’，‘普通’和‘其他’。        |
  | 8            | 是否首标         | 该标是否为借款人首标。                                       |
  | 9            | 年龄             | 借款人在该列表借款成功时的年龄。                             |
  | 10           | 性别             | 该列表借款人性别。                                           |
  | 11           | 手机认证         | 该列表借款人手机实名认证是否成功。                           |
  | 12           | 户口认证         | 该列表借款人户口认证是否成功。                               |
  | 13           | 视频认证         | 该列表借款人视频认证是否成功。                               |
  | 14           | 学历认证         | 该列表借款人学历认证是否成功。成功则表示有大专及以上学历。   |
  | 15           | 征信认证         | 该列表借款人征信认证是否成功。成功则表示有人行征信报告。     |
  | 16           | 淘宝认证         | 该列表借款人淘宝认证是否成功。成功则表示为淘宝店主。         |
  | 17           | 历史成功借款次数 | 借款人在该列表成交之前的借款成功次数。                       |
  | 18           | 历史成功借款金额 | 借款人在该列表成交之前的借款成功金额。                       |
  | 19           | 总待还本金       | 借款人在该列表成交之前待还本金金额。                         |
  | 20           | 历史正常还款期数 | 借款人在该列表成交之前的按期还款期数。                       |
  | 21           | 历史逾期还款期数 | 借款人在该列表成交之前的逾期还款期数。                       |

* **LP (Loan Periodic)** **表：**

  标的还款计划和还款记录，每支标每期还款为一条记录。 还款记录和状态更新至2017年2月22日。共有10个字段，包括两个主键（listingid和期数），3个还款计划字段和4个还款状态字段。具体的字段描述请见数据字典。

  | **字段序号** | **字段名** | **字段注释**                                                 |
  | ------------ | ---------- | ------------------------------------------------------------ |
  | 1            | listingid  | 列表Id，主键                                                 |
  | 2            | 期数       | 期数Id，主键                                                 |
  | 3            | 还款状态   | 到记录日的当期状态，分为0-‘未还款’，1-‘已正常还款’，2-‘已逾期还款’，3-‘已提前还清该标全部欠款’，4-‘已部分还款’ |
  | 4            | 应还本金   | 当期计划还款本金部分                                         |
  | 5            | 应还利息   | 当期计划还款利息部分                                         |
  | 6            | 剩余本金   | 到记录日，仍未还清的当期本金                                 |
  | 7            | 剩余利息   | 到记录日，仍未还清的当期利息                                 |
  | 8            | 到期日期   | 当期应还款日                                                 |
  | 9            | 还款日期   | 当期最近一次实际还款日期                                     |
  | 10           | recorddate | 记录日                                                       |

*  **LCIS (Loan Characteristics Investment Status )** **表：**

  所提供数据包含了该客户投资的从2015年1月1日起成交的所有标。

  以6个月月底的最后一天（2016年9月30日，2016年10月31日，2016年11月30日，2016年12月31日，2017年1月31日，2017年2月28日）作为recorddate，对每一个recorddate都提供了该客户投资的从2015年1月1日起到当天成交的所有标的数据，包括这些标成交时的特点（Loan Characteristics）、该客户投资的金额以及截至当天的收款情况（Investment Status）。

  LC部分共有21个字段，包括一个主键（listingid）、7个标的特征和13个成交当时的借款人信息，全部为成交当时可以获得的信息。

  IS部分有15个字段，包括截至recorddate当天标的还款状态，针对这位客户的已还和待还金额，最近的还款情况和下一期还款计划。具体字段描述请见数据字典。

  | **字段序号** | **字段名**       | 字段类型     | **字段注释**                                                 |
  | ------------ | ---------------- | ------------ | ------------------------------------------------------------ |
  | 1            | ListingId        | 列表成交特征 | 列表序号，为列表的唯一键。                                   |
  | 2            | 借款金额         | 列表成交特征 | 列表成交总金额。                                             |
  | 3            | 借款期限         | 列表成交特征 | 总的期数（按月计）。                                         |
  | 4            | 借款利率         | 列表成交特征 | 年化利率（百分数）。                                         |
  | 5            | 借款成功日期     | 列表成交特征 | 列表成交的日期。都在2015年1月1日以后。                       |
  | 6            | 初始评级         | 列表成交特征 | 列表成交时的信用评级。AAA为安全标，AA为赔标，A-F为信用等级。 |
  | 7            | 借款类型         | 列表成交特征 | 分为'应收安全标'，‘电商’，‘APP闪电’，‘普通’和‘其他’。        |
  | 8            | 是否首标         | 列表成交特征 | 该标是否为借款人首标。                                       |
  | 9            | 年龄             | 列表成交特征 | 借款人在该列表借款成功时的年龄。                             |
  | 10           | 性别             | 列表成交特征 | 该列表借款人性别。                                           |
  | 11           | 手机认证         | 列表成交特征 | 该列表借款人手机实名认证是否成功。                           |
  | 12           | 户口认证         | 列表成交特征 | 该列表借款人户口认证是否成功。                               |
  | 13           | 视频认证         | 列表成交特征 | 该列表借款人视频认证是否成功。                               |
  | 14           | 学历认证         | 列表成交特征 | 该列表借款人学历认证是否成功。成功则表示有大专及以上学历。   |
  | 15           | 征信认证         | 列表成交特征 | 该列表借款人征信认证是否成功。成功则表示有人行征信报告。     |
  | 16           | 淘宝认证         | 列表成交特征 | 该列表借款人淘宝认证是否成功。成功则表示为淘宝店主。         |
  | 17           | 历史成功借款次数 | 列表成交特征 | 借款人在该列表成交之前的借款成功次数。                       |
  | 18           | 历史成功借款金额 | 列表成交特征 | 借款人在该列表成交之前的借款成功金额。                       |
  | 19           | 总待还本金       | 列表成交特征 | 借款人在该列表成交之前待还本金金额。                         |
  | 20           | 历史正常还款期数 | 列表成交特征 | 借款人在该列表成交之前的按期还款期数。                       |
  | 21           | 历史逾期还款期数 | 列表成交特征 | 借款人在该列表成交之前的逾期还款期数。                       |
  | 22           | 我的投资金额     | 列表成交特征 | 该投资人对该列表的投资金额。                                 |
  | 23           | 当前到期期数     | 列表当期特征 | 该列表当前应还的期数。                                       |
  | 24           | 当前还款期数     | 列表当期特征 | 该列表已经成功还款的期数。                                   |
  | 25           | 已还本金         | 列表当期特征 | 已经向该投资人成功还款的本金总额。                           |
  | 26           | 已还利息         | 列表当期特征 | 已经向该投资人成功还款的利息总额。                           |
  | 27           | 待还本金         | 列表当期特征 | 还需向该投资人还款的本金总额。                               |
  | 28           | 待还利息         | 列表当期特征 | 还需向该投资人还款的利息总额。                               |
  | 29           | 标当前逾期天数   | 列表当期特征 | 当期逾期天数。未逾期则为0。                                  |
  | 30           | 标当前状态       | 列表当期特征 | 当期状态。分为‘正常还款中’，‘逾期中’，‘已还清’，‘已债转’。   |
  | 31           | 上次还款日期     | 列表当期特征 | 上一次实际还款日期。                                         |
  | 32           | 上次还款本金     | 列表当期特征 | 上一次实际向该投资人还款本金。                               |
  | 33           | 上次还款利息     | 列表当期特征 | 上一次实际向该投资人还款利息。                               |
  | 34           | 下次计划还款日期 | 列表当期特征 | 下一次计划还款日期。                                         |
  | 35           | 下次计划还款本金 | 列表当期特征 | 下一次计划向该投资人还款本金。                               |
  | 36           | 下次计划还款利息 | 列表当期特征 | 下一次计划向该投资人还款利息。                               |
  | 37           | recorddate       | 列表当期特征 | 记录日期。一般为月末最后一天。                               |
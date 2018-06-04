**目录**

[toc]

## BaiscP0_ExploreWetherTrend

**概览**
在这个项目中，我们将分析本地和全球的气温数据，并比较你居住地的气温走向与全球气温走向。

**说明**

你的任务是让数据可视化，描述全球气温走向和最接近你居住地的大城市气温走向之间的相似性与差异。所以需要按照以下步骤操作：

* 从数据库中 提取数据。我们将在下一节介绍一个工作区，这个工作区与数据库连接。你需要导出世界气温数据以及最接近你居住地的大城市气温数据。`city_list` 表是城市和国家列表。想要与数据库交互，就需要编写一个 SQL 查询。
	* 编写 SQL 查询，提取城市数据，导出到 CSV 文件。
	* 编写一个 SQL 查询来提取全球数据，并导出到 CSV 文件。
* **用任何你喜欢使用的工具打开 CSV**，建议使用 Excel 或 Google 表格，但也欢迎使用其他工具，如 Python 或 R。
* **创建一个线条图**，将你所在城市的气温与全球气温比较。确保绘制 移动平均值 而不是年平均值，使线条平滑，使气温走向便于观察（上一课的最后一个页面介绍了如何在电子表格中进行这类操作）。
* **观察** 世界平均气温与你所在城市平均气温之间的相似性和差异，以及整体趋势。可以通过这些问题开始。
	* 与全球平均气温相比，你所在城市平均气温是比较热还是比较冷？长期气温差异是否一致？
	* “长期以来，你所在城市气温变化与全球平均气温变化相比如何？”
	* 整体趋势如何？世界越来越热还是越来越冷了？气温走向与过去几百年的走向是否一致？

**提交项目**
应提交 PDF 格式的文件，其中包括：

* 准备在图表中可视化数据而采取的大致步骤，例如：
* 在每个步骤中，你都使用了哪些工具？（Python、SQL、Excel 等）
* 请在报告中附上你所有用到的SQL语句或Python代码。
* 你是如何计算移动平均数的？
* 在决定如何可视化气温走向时，你的主要考虑因素是什么？
* 表示本地和全球气温走向的折线图
* 关于气温走向的相似性和/或差异方面，至少需要提供 四个问题和观察结论

**审阅标准**
优达学城审阅专家将根据 [项目审阅标准](https://review.udacity.com/#!/rubrics/1299/view) 来评估你完成的项目。当你完成项目后，请以审阅标准为参考，记得在提交之前先进行自我评估。

## BasicP1_BicycleShare
**概述**
在此项目中，你将利用 Python 探索与以下三大美国城市的自行车共享系统相关的数据：芝加哥、纽约和华盛顿特区。你将编写代码导入数据，并通过计算描述性统计数据回答有趣的问题。你还将写一个脚本，该脚本会接受原始输入并在终端中创建交互式体验，以展现这些统计信息

**自行车共享数据**

在过去十年内，自行车共享系统的数量不断增多，并且在全球多个城市内越来越受欢迎。自行车共享系统使用户能够按照一定的金额在短时间内租赁自行车。用户可以在 A 处借自行车，并在 B 处还车，或者他们只是想骑一下，也可以在同一地点还车。每辆自行车每天可以供多位用户使用。

由于信息技术的迅猛发展，共享系统的用户可以轻松地访问系统中的基座并解锁或还回自行车。这些技术还提供了大量数据，使我们能够探索这些自行车共享系统的使用情况。

在此项目中，你将使用 [Motivate](https://www.motivateco.com/) 提供的数据探索自行车共享使用模式，Motivate 是一家入驻美国很多大型城市的自行车共享系统。你将比较以下三座城市的系统使用情况：芝加哥、纽约市和华盛顿特区。

**数据集**
我们提供了三座城市 2017 年上半年的数据。三个数据文件都包含相同的核心六 (6) 列：

* 起始时间 `Start Time`（例如 `2017-01-01 00:07:57`）
* 结束时间 `End Time`（例如 `2017-01-01 00:20:53`）
* 骑行时长 `Trip Duration`（例如 `776` 秒）
* 起始车站 `Start Station`（例如百老汇街和巴里大道）
* 结束车站 `End Station`（例如塞奇威克街和北大道）
* 用户类型 `User Type`（订阅者 `Subscriber/Registered` 或客户`Customer/Casual`）

芝加哥和纽约市文件还包含以下两列：

* 性别 `Gender`
* 出生年份 `Birth Year`

原始文件（访问地址：([芝加哥](https://www.divvybikes.com/system-data)、[纽约市](https://www.citibikenyc.com/system-data)、[华盛顿特区](https://www.capitalbikeshare.com/system-data)）有很多列，并且在很多方面格式不一样。我们执行了一些数据整理操作，使这些文件压缩成上述核心六大列，以便于更直接地使用 Python 技能进行评估和分析。在后续的数据分析师纳米学位（进阶）课程中，有一门课程专门讲解如何整理最杂乱无章的数据集。因此不用担心不了解这方面的知识。

**问题**
你将编写代码并回答以下关于自行车共享数据的问题：

* 起始时间（`Start Time` 列）中哪个月份最常见？
* 起始时间中，一周的哪一天（比如 `Monday`, `Tuesday`）最常见？ 提示：可以使用 `datetime.weekday()` （点击[查看文档](https://docs.python.org/3/library/datetime.html#datetime.date.weekday)）
* 起始时间中，一天当中哪个小时最常见？
* 总骑行时长（`Trip Duration`）是多久，平均骑行时长是多久？
* 哪个起始车站（`Start Station`）最热门，哪个结束车站（`End Statio`n）最热门？
* 哪一趟行程最热门（即，哪一个起始站点与结束站点的组合最热门）？
* 每种用户类型有多少人？
* 每种性别有多少人？
* 出生年份最早的是哪一年、最晚的是哪一年，最常见的是哪一年？

**文件**
要使用 `Python` 回答这些问题，你需要编写 `Python` 脚本。为了帮助你完成此项目，我们以可下载 `.py` 文件的形式提供了一个模板，其中包含辅助代码和注释。

你还需要数据集文件，即 `CSV` 文件；转到下一页可以详细了解你将编写的代码和数据。

**文件列表说明**

1. [OriginalProject](./BasicP1_BicycleShare/OriginalProject) 该文件夹是课程中要求的原始项目
2. [AugmentProject](./BasicP1_BicycleShare/AugmentProject) 该文件夹是用于拓展的项目

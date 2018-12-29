**目录**

[TOC]

## [BaiscP0 ExploreWetherTrend](./BasicP0_ExploreWetherTrend)

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

## [BasicP1 BicycleShare](./BasicP1_BicycleShare)
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

## [BasicP2 DataProcess](./BasicP2DataProcess)

**项目概述**

在本项目中，你将分析一个数据集，然后传达你的发现。你将使用 Python 库 NumPy、Pandas 和 Matplotlib 来使你的分析工作更加轻松。

**我需要安装什么？**

你需要安装 Python 和以下库：

- pandas
- numpy
- matplotlib
- csv

我们建议安装 [Anaconda](https://www.continuum.io/downloads)，它自带所有必要的包和 IPython 笔记本。你可以在[此处](https://classroom.udacity.com/nanodegrees/nd002-cn-basic/parts/91b5b867-4a7f-49c5-b658-57521a8de12d/modules/e95ca0b1-2716-4f45-bf4b-781653e885e5/lessons/c6a12f2e-63f2-4007-a2c3-dd3e5f06f3cb/concepts/4cdc5a26-1e54-4a69-8eb4-f15e37aaab7b)找到安装说明。

**为何要进行此项目？**

此项目将向你介绍数据分析过程，以及所有工作的相互配合。后期的纳米学位将重点关注数据分析过程的各个环节。

你将使用 Python 库 NumPy、Pandas 和 Matplotlib，这些库使你能够更加轻松地在 Python 中编写数据分析代码！不仅如此，它们也是雇主们青睐的技能！

**我将学到什么？**

完成此项目后，你将：

*了解典型数据分析过程中所涉及到的所有步骤* 轻松提出可用给定数据集回答的问题，并解答这些问题。

- 了解如何调查数据集中的问题，以及将数据整理成你可以使用的格式
- 练习传达你的分析结果
- 能够在 NumPy 和 Pandas 中使用向量化运算，以加快数据分析代码的运行速度
- 熟悉 Pandas 的 Series 和 DataFrame 对象，它们能使你访问数据更方便
- 了解如何使用 Matplotlib 生成图形，展示你的发现

**我要如何完成该项目？**

该项目与数据分析入门课程相关，但根据你的知识背景，你可能无需学习全部课程即可完成该项目。

**介绍**

在此项目中，你需要进行数据分析，并创建一个文档分享你的发现。你应该首先了解数据集，想想它可以用来回答哪些问题。然后，你应该使用 Pandas 和 NumPy 回答你最感兴趣的问题，并编写一份报告来分享你的结论。你不需要使用推论统计或机器学习知识来完成此项目，但是你需要在报告中声明，你的结论是暂时的，可能需要进一步改进。这个项目是开放性的，没有标准答案。

**第一步 - 选择数据集**

点击[此链接](https://github.com/udacity/new-dand-basic-china/blob/master/%E6%95%B0%E6%8D%AE%E5%88%86%E6%9E%90%E5%85%A5%E9%97%A8/%E9%A1%B9%E7%9B%AE-%E6%8E%A2%E7%B4%A2%E6%95%B0%E6%8D%AE%E9%9B%86/%E6%8E%A2%E7%B4%A2%E6%95%B0%E6%8D%AE%E9%9B%86%20-%20%E5%A4%87%E9%80%89%E6%95%B0%E6%8D%AE%E9%9B%86.md) 打开一个文档，其中包含你可以为此项目调查的数据集的链接和信息。你**必须**选择其中一个数据集来完成项目。 若数据无法下载，可以通过以下链接进行下载：

1. [TMDb电影数据](https://s3.cn-north-1.amazonaws.com.cn/static-documents/nd101/explore+dataset/tmdb-movies.csv)
2. [未前往就诊的挂号预约](https://s3.cn-north-1.amazonaws.com.cn/static-documents/nd101/explore+dataset/noshowappointments-kagglev2-may-2016.csv)
3. [Gapminder World](https://www.gapminder.org/data/)
4. [FBI 枪支数据](https://s3.cn-north-1.amazonaws.com.cn/static-documents/nd101/explore+dataset/ncis-and-census-data.zip)

**第二步 - 组织**

最终，你需要提交一份报告（并与你的朋友、家人或同事分享）。在正式开始之前，让我们进行组织整理。我们建议你新建一个文件夹，它最早将包含：

- 用来传达你的发现的**报告**文档
- 你用来分析数据的任何 **Python 代码**
- 你使用的**数据集**（你不需要提交它）

你可以使用 Jupyter Notebook，这样，你可以在同一份文档中提交编写的代码和报告你的发现。不然你可能只能分别提交报告和代码了。如果你需要一个**笔记本模板**来帮助组织你的调查，可以在页面底部找到资源链接或可以点击[此处](https://s3.amazonaws.com/video.udacity-data.com/topher/2018/August/5b7e51b8_investigate-a-dataset-zh/investigate-a-dataset-zh.ipynb)。

**第三步 - 分析数据**

思考你可以用数据集回答哪些问题，然后开始着手回答这些问题。你可以在[数据集选项](https://github.com/udacity/new-dand-basic-china/blob/master/%E6%95%B0%E6%8D%AE%E5%88%86%E6%9E%90%E5%85%A5%E9%97%A8/%E9%A1%B9%E7%9B%AE-%E6%8E%A2%E7%B4%A2%E6%95%B0%E6%8D%AE%E9%9B%86/%E6%8E%A2%E7%B4%A2%E6%95%B0%E6%8D%AE%E9%9B%86%20-%20%E5%A4%87%E9%80%89%E6%95%B0%E6%8D%AE%E9%9B%86.md) 中找到一些问题，以帮助你入手。 试着提出那些调查多个变量之间的关系的问题。你应该在你的调查里分析至少一个因变量和三个自变量。在恰当的地方使用 NumPy 和 Pandas。

**第四步 - 分享发现**

分析完数据以后，编写一份报告，分享你觉得最有意思的发现。如果你使用 Jupyter Notebook，则与你用于执行分析的代码一起分享发现。确保你的报告文本包含在 Markdown 单元中，以清楚地将你的注释和发现与代码分开。当然你也可以使用其他工具和软件来制作最终报告，但请确保你能以 HTML 或 PDF 文件的形式提交报告，以便轻松打开。

**第五步 - 检查**

使用[**项目评估准则**](https://review.udacity.com/#!/rubrics/306/view) 来检查你的项目。如果你的提交已达到所有要求，则可以提交项目。如果你发现还有改进的空间，则继续改进吧！

**文件列表**

* [BasicP2DataProcess](BasicP2DataProcess) 项目文件
* 数据集说明
  - FBI 枪支数据：[ncis-and-census-data.zip](./ncis-and-census-data.zip)
  - TMDb电影数据 ：[tmdb-movies.csv](./tmdb-movies.csv)
  - 未前往就诊的挂号预约：[noshowappointments-kagglev2-may-2016.csv](./noshowappointments-kagglev2-may-2016.csv)
  - 足球数据库：[database.sqlite](./database.sqlite)
  - Gapminder World：相关数据需要在 [Gapminder World Data](https://www.gapminder.org/data/) 进行下载



## [BasicP3 Statistics](./BasicP3_Statistics)

### 分析 A/B 测试结果

数据分析师和数据学家经常使用 A/B 测试。利用一些练习解决其中的难题，对你来说非常重要。

在这个项目中，你将会理解电子商务网站运营 A/B 测试的结果。你的目标是通过这个 Notebook，帮助公司理解他们是否应该设计新页面、保留原有网页或延长测试时间以便做出决定。

页面中的数据和 Jupyter Notebook 包含你完成项目的所有文件，是可供下载的压缩文件，你可以从资源标签 (以及下面的 "辅助材料") 中获取。注意回到测试中的 Notebook 参考资料部分，与本节课相关，可以帮助你正确完成项目。

这节课中的测试并不是成功完成项目所必需的 (尽管它们很有帮助)，不过，你完成的项目必须满足 [审阅规范](https://review.udacity.com/#!/rubrics/1331/view) 中的所有要求。

## [Advanced 数据清理](./AdvancedP1_DataWrangling)

在这个项目中的任务如下：

- 数据整理，其中包括：
  - 收集数据
  - 评估数据
  - 清洗数据
- 对清洗过的数据进行储存、分析和可视化
- 书面报告 1) 你的数据整理工作 和 2) 你的数据分析和可视化

## [Advanced 探索性数据分析](./AdvancedP2_ExploratoryDataAnalysis)

完成此项目：

- 了解变量的分布并检查异常和异常值
- 通过使用适当的图表如散点图、直方图、条形图和箱图学会量化和可视化数据集的各个变量
- 在构建预测模型之前，探究变量来辨别数据集中最重要的变量和关系，计算他们的相关性，并调查条件均值
- 学习有用的方法和可视化手段来检查多个变量之间的关系，例如重新构造数据框架和使用通过颜色和形状来发现更多信息

项目列表：

* [拍拍贷业务数据分析](./AdvancedP2_ExploratoryDataAnalysis/ppdai)
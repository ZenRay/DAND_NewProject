**目录**

[TOC]

说明：目录是针对数据分析所有进行了项目，相面会罗列出相应的项目及其说明

# 1. [观察数据可视化面板分析报告](./P1_WorkWithData)

**项目描述**

数据分析工作的很大一部内容是能够向别人解释数据可视化，并阐述你的见解。为了让你做一些练习，我们选择了一些 Tableau 仪表板供你练手，具体链接如下。要完成本项目，你需要：

1. 请选择 **其中一个** 你最感兴趣的仪表盘 (dashboard)。
2. 在对应仪表盘中的可视化中找出 **三条见解**。
3. 对于每条见解，请**提供静态图像**，分享你的观察发现。写一份简短的报告，解释你的每次发现以及你是如何在报表中找到能够得出你的结论的信息。
4. 包括图像，你的报告长度应该为1-2页。

从下列仪表板中选择一个你最感兴趣的仪表板：

* [Madrid in Detail](https://public.tableau.com/en-us/s/gallery/madrid-details?gallery=featured)

* [Malaria in Africa](https://public.tableau.com/en-us/s/gallery/malaria-africa?gallery=featured)

* [LinkedIn Top Skills](https://public.tableau.com/profile/matt.chambers#!/vizhome/LinkedInTopSkills2016-MakeoverMonday/LinkedInTopSkills2016-MakeoverMonday)

* [中国白酒生产故事](https://public.tableau.com/profile/young.lin#!/vizhome/AlcoholProductioninChina-2013and2014/Alcohol)

如果你选择使用LinkedIn 数据，可以阅读 [这篇文章](https://blog.linkedin.com/2016/10/20/top-skills-2016-week-of-learning-linkedin) ，它对你形成见解或结论很有帮助。

**项目目标**

你需要完成第一个实战项目了！下面是**该实战项目的三个目标**：

1.通过查看数据报表培养你的数据直觉，并形成自己的见解。

2.了解优达学城审阅系统的工作原理。项目提交和审阅是作为优达学城学员**必不可少**的必修课之一，也是顺利从纳米学位毕业的关键。而且，你必须要通过所有的实战项目哦！

3.了解你最终的学习成果。本纳米学位结束时，你不仅能够学会如何从这些报表中得出结论，而且能够构建自己的报表，就像你在第一个实战项目中看到的报表那样！

本节课程的主要目的是让你了解本纳米学位的学习目标和优达学城项目审阅的工作流程，但这也是必需的哦！

# 2. [分析问卷数据](./P2_AnalyzeSurveyData)

**项目概述**

在此项目中，你将分析一个**真实**数据集，关于当前优达学城学生参加的一些课程项目，它并不完美，有些凌乱（有些信息输入不正确，还有些信息缺失）。你需要决定如何分析此数据，以及如何展示你的发现。你将使用电子表格更轻松地进行分析（请勿手动分析 —— 可能会永远分析不完！）。

**项目详情**

此项目使用的数据收集自对 Udacity 开展的某项调查做出回应的优达学城学生。此项目由**两**部分组成。你将在这两部分使用相同的数据集。你可以在 [这里](https://s3.amazonaws.com/video.udacity-data.com/topher/2018/September/5baee8af_band-surveydata-2/band-surveydata-2.zip) 下载项目所需的文件。

1. 此项目的第一部分是一组练习，你会在紧接后面的课程内容中找到。这些内容旨在帮助你熟悉数据集并测试你掌握了之前课程中的核心概念。正确回答每个测试问题将确保你顺利进入项目的第二部分。**此部分项目不会提交评审。**
2. 项目第二部分将是你提交以供评审的部分。你将需要**创建一个演示文稿**以供评审。提交详情在本课程的最后一部分进行详细说明。注意 [项目审核标准](https://review.udacity.com/#!/rubrics/2272/view) 的详细说明，以确保你准备好的成果符合项目审核标准。

**清理数据**

虽然你不需要按照这些步骤设置数据集，但以下信息可以作为建议：

1. 对于所有问题，如果答案位于多个列中，则合并为单个列并删除原始列。只保留合并过的列。
2. 更改所有列名，使其不包含空格，但需要提供足够的信息。这并非必要的，而是一个建议。根据数据将来的用途，列名中包含空格或特殊字符可能会影响使用。
3. 将 birthdate （出生日期）列改为 age（年龄）列，方法是算出从出生日期到今天日期的天数，然后除以 365。

# 3. [预测商业决策带来的收益增长](./P3_PredictCatalogDemand)

**业务问题**

你最近加入了一家制造和出售高端家居商品的公司。去年，公司向客户寄送了第一批产品目录册（catalog），今年准备在接下来的几个月内再向外寄送一批产品目录册。公司今年的邮寄名单中新增了 250 名客户，他们希望向这 250 个客户寄送产品目录册。

你的经理请你计算下通过向这些客户寄送产品目录册公司预期盈利多少。作为业务分析师，你需要帮助经理得出这些数据。经理虽然对数据分析有所了解，但是不太熟悉预测模型。

经理请你预测这 250 个新客户预期会带来的利润。如果这些新客户带来的预期利润超过一万美元，那么管理层就会向他们寄送产品目录册。

**详细信息**

- 印刷和寄送每本产品目录册的成本是 6.5 美元。
- 通过产品目录册出售的所有产品的平均毛利率（价格减去成本）是 50%。
- 在计算利润时，确保先将收入乘以毛利率，然后再减去 6.5 美元的成本。

写一个简短的建议报告，向经理阐明为何公司要采纳你的建议。

**成功完成项目的步骤**

第 1 步：理解业务和数据

**第 2 步：分析、建模和验证**

构建一个线性回归模型，然后使用该模型预测这 250 个客户带来的预测销量。我们建议你使用 Excel 处理数据。

**注意：**如果你决定将 Customer Segment 当做你的一个预测器变量，请将基础条件设为 Credit Card Only。但是，你可以随意使用你喜欢的工具。你应该创建线性回归模型，并得出线性回归方程。

在构建线性回归模型的过程中，你可能会发现数据中用到了分类变量。如果你不知道该如何进行处理，可以回顾一下“线性回归”课程中的“线性回归与分类变量”、“虚拟变量练习”等小节。

得出线性回归方程后，应该使用该方程预测邮寄名单中的每个人预计带来的销量。

**第 3 步：撰写报告**

得出预测或预期利润后，撰写一个简短的报告，并建议公司是否应该寄送产品目录册。

**提示：**我们希望计算这 250 个客户带来的预期收入，以便计算预期利润。意味着我们还需要乘以客户购买宣传册中产品的概率。例如，如果客户要购买我们的产品，我们预计该客户将购买价值 450 美元的产品。此人有 30% 的概率将实际地购买我们的产品，因此预计收入为 450 美元 x 30% = 135 美元。

**数据**

*p1-customers.xlsx* - 这个数据集包含关于 2,300 位顾客的信息。 **重要**：你应该根据这个数据集来创建模型，而非 *p1-mailinglist.xlsx*。

*p1-mailinglist.xlsx* - 这个数据集包含有你想要预测销售情况的 250 位顾客。这是公司想要邮寄生产目录的顾客清单。使用这个数据组来预测公司寄出生产目录能产生多少收入。它与 p1_customers.xlsx 的数据种类几乎一致，但包含了两个额外的变量。

- Score_No：顾客不会对生产目录有所反应且不会购买产品的概率。
- Score_Yes：顾客会对生产目录有所反应且进行购买的概率。

**提示1：** 我们想计算 250 位顾客的预计销售额以得出预计利润。这意味着要乘以顾客购买产品的概率。例如，一位顾客想向我们订购价值为 $450 的货品。这位顾客有 30% 的概率（即Score_Yes变量所代表的概率）会真的从我们这里购买，我们可以预测销售额为 $450 x 30% = $135。

**提示2：** 在项目模版（template）第一步的第2问中，你需要列出所有做出决策所需要的数据。学生普遍出现的情况是列出的数据不完整，因此，我们建议你在完成计算之后，回顾这个问题，看看是否计算过程中使用的数据没有列在其中。你只需要包括原始数据，并不需要包括计算中间数据（所有对原始数据进行二次或多次计算和处理后得出的新数据，都算作是中间数据）。我们建议你使用列标符号来呈现你所需的数据，如：

- 数据1
- 数据2

# 4. [基于零售数据挖掘业务特征](./P4_CreateReportFromDatabase)

**业务场景**

这里有一家经营各种食品批发的批发商，而是你是这家批发商的商业智能分析师。你负责将分析仪表板放在一起进行管理。他们要求你专注于其业务的一个维度，并创建一个仪表板，提供与该维度相关的各种汇总统计信息。

选择下面的一个维度，然后使用可视化创建一个演示文稿，该演示文稿需要提供有关该维度的高级摘要信息。

- 客户
- 供应商
- 产品
- 雇员

下面是帮助你进行分析的几个问题：

- 我的客户分布在哪里？
- 哪些公司在供应我销售的大部分产品？
- 表现最好的员工是谁？
- 哪些产品的销售额在增长？

**数据库**

你将使用的是一个名为 Northwind.sqlite3 的数据库。但是，如果你使用的是 DB Browser for SQLite，请按照如下步骤操作：

- 点击界面上方的 open database。
- 找到并打开 Northwind.sqlite3 数据库文件。
- 花一些时间来浏览并看懂这些数据。

**其他说明**

- 查询输出和可视化之间不应有任何额外的数据准备（排序、过滤、重命名等）。

- 你的所有四个查询都必须包含连接与聚合。

- 至少应有一个查询包含子查询。

- 根据[项目审阅标准](https://review.udacity.com/#!/rubrics/2009/view)检查你的项目是否符合要求。审阅专家将按照审阅标准来评估你交付的项目。

- 完成项目后，将 PDF 格式的演示文稿与 txt 格式的查询文件打包到一个压缩文件夹中，然后进行提交。

- [SQLite (用于此项目) 与 Postgres中的Date函数不同 (用于课堂)](https://sqlite.org/lang_datefunc.html)

  在这个项目中，你使用的语法与课堂上的SQL语法略有不同。虽然大多数命令和逻辑都是一样的，但SQLite（用于此项目）和PostgreSQL（用于课堂）之间存在一些差异。具体而言，这些差异可能会影响到Date函数的表示。

  Postgres SQL DATE_TRUNC

  ```
  SELECT DATE_TRUNC('month', o.occurred_at) ord_date
  FROM orders o 
  ```

  这个查询命令只会返回查询结果中日期字段的年份和月份数据

  SQLite 中的 DATE_TRUNC 是 STRFTIME

  ```
  SELECT STRFTIME('%Y-%m', o.occurred_at) ord_date
  FROM orders o
  ```

  这个查询命令只会返回查询结果中日期字段的年份和月份数据。在SQLite中，我们必须更精确地描述日期格式，因为它会返回指定的所有信息。因此，我们需要通过将最终表中所需日期的部分放在单引号中来指定查询结果。

  对于此查询，我们想要的只是年份和月份。其中，%Y代表年份，%m代表月份。以下是完整列表。

  %d - day of month: 00

  %f - fractional seconds: SS.SSS

  %H - hour: 00-24

  %j - day of year: 001-366

  %J - Julian day number

  %m - month: 01-12

  %M - minute: 00-59

  %s - seconds since 1970-01-01

  %S - seconds: 00-59

  %w - day of week 0-6 with Sunday==0

  %W - week of year: 00-53

  %Y - year: 0000-9999

  Postgres SQL DATE_PART

  ```
  SELECT DATE_PART('month', occurred_at) ord_year
  FROM orders
  ```

  这个查询命令只会返回查询结果中日期字段的月份数据

  SQLite version of DATE_PART is STRFTIME

  ```
  SELECT STRFTIME('%m', o.occurred_at) ord_date
  FROM orders o 
  ```

  由于我们只想拉出月份数据，因此可以指定在 SQLite 中使用相同的 STRFTIME 函数，我们只需使用 %+字母 来指定我们想要的那部分数据。所以，在这里我们必须使用'%m '而不是'month'。

  以下是一些有用的链接，可以帮助你在 SQLite 中处理日期数据：

  - <https://www.techonthenet.com/sqlite/functions/strftime.php>
  - <https://sqlite.org/lang_datefunc.html>

  可能你在将来会使用其他 SQL 环境，如 Microsoft SQL Server，Oracle，MySQL 或任何其他 SQL 环境，也可能会再次出现细微的差异。但只要掌握了现在的技能，尝试一下 Google 搜索吧，它会帮助你快速了解你要使用的任何一个环境。

# 9. [通过数据讲故事](./P9_DataStoryTelling)

**项目概述**

在此项目中，你将使用 Tableau 创建一个数据可视化，以描述数据故事或突出显示数据集的趋势或模式。你的工作是反映数据可视化的理论和实践，如可视编码、设计原则和有效传达结果

项目详细步骤！

**第一步 - 选择数据集**

首先，你要从[**数据集选项**](https://github.com/udacity/new-dand-advanced-china/blob/master/Tableau%20%E5%8F%AF%E8%A7%86%E5%8C%96/%E5%88%9B%E5%BB%BA%E4%B8%80%E4%B8%AA%20Tableau%20%E5%8F%AF%E8%A7%86%E5%8C%96%E6%95%85%E4%BA%8B.md) 文档中选择一个数据集，或自行寻找一个探索和可视化的数据集。你应根据自己以前在编程和处理数据方面的经验来选择一个数据集。你选择的数据集不会增加或减少你通过此项目的概率。

**第二步 - 组织数据**

最终，你要提交项目并分享它。为此，你需要创建一个 zip 文件夹，其中包含以下内容：

- 报告： 

  PDF 或 Markdown 文件，包含你的 Tableau Public 工作簿的链接，在线发布以及一个包含四部分的报告。参见[此处](https://onlinehelp.tableau.com/current/pro/desktop/en-us/publish_workbooks_tableaupublic.htm)，获取发布 Tableau Public 工作簿方面的帮助。

  - **总结：** 不超过四句话，简要介绍你的数据可视化，并添加可帮助读者理解的上下文信息
  - **设计：** 解释你所做的任何设计选择，包括收集反馈后对可视化进行的更改
  - **反馈：** 包含从第一份草图到最终可视化期间，你从他人那里获得的针对你的可视化的所有反馈
  - **资源：** 列出你创建可视化时参考的任何来源

- 数据文件

  - 用于创建可视化的最终数据集（通常为 .csv、.tsv 或 .json 文件）
  - 与数据集（描述，自述文件，许可证）相关的码本或其他文件（描述、readme、许可证）

**第三步 - 找到数据故事**

探索你的数据集，并找到围绕你的数据的一个信息或故事！想想你要传达的整体信息，并考虑你希望读者看到的比较或关系。记住，你最终需要创建一个解释性的可视化，帮助引导读者识别数据集中的一个或多个关键见解。你可在此过程中的任何一个点自行使用你熟悉的任何可视化和数据分析工具。

**第四步 - 创建可视化**

首先，绘制可视化的初步想法。一旦确定某个草图后，在报告的*设计*部分解释该草图的设计选择，例如图表类型、可视编码和布局。然后，使用 Tableau 创建你的可视化。此可视化必须包含动画、交互或两者都有。请参见[项目审核标准](https://review.udacity.com/#!/rubrics/1300/view) 获取更多信息。

**第五步 - 获取反馈**

**至少与一个人**分享你的可视化并记录他们的反馈。获取反馈的方式有很多，通常反馈越多越好！这里有一些选项。

- 与他人当面分享你的可视化，并让他们在阅读和浏览图形的时候随时说出他们的想法，以便你记录在他们眼中，图形中的明显信息以及他们对图形的解读。
- 在讨论区分析你的项目链接，并邀请他人给予建设性的批评。请确保也向寻求返回的其他人提供建议！

你可能需要提出具体的问题来帮助读者提供反馈。以下是一些示例问题。你可以问他人：

- 你在此可视化中注意到了什么？
- 你对此数据有何问题？
- 你注意到什么关系？
- 你认为在此可视化中的主要收获是什么？
- 此图形中是否有你不理解的部分？

**第六步 - 记录反馈并改进可视化**

对于给予你反馈意见的每个人，将此人的反馈添加到报告中的*反馈*部分。随着你不断改进和迭代你的可视化，更新可视化**并**在报告中的*设计*部分描述任何更改。

在每次更改后，你应保存你数据可视化的多个版本。记得将相关文件保存相同次数。

你应在什么时候保存文件？你应在每次具有数据可视化的工作版本时保存文件。如果你获得了反馈并进行了更改，则创建一个新文件并将文件保存为另一个版本。

这样做的目的是证明你分享了可视化、获得了反馈并就这些反馈做了回应。**你应该与相应的报告一起提交你的数据可视化的初始版本和最终版本。**

**第七步 - 回顾**

使用[项目 Rubric](https://review.udacity.com/#!/rubrics/948/view) 回顾你的项目。如果你觉得满意，则可以提交项目了。如果你发现还有改进的空间，则继续努力改进项目！

# 11. [为慈善机构寻找捐献者](./P11_SupervisedLearning)

**监督学习**

**项目概述**

在此项目中，你将运用监督学习的技巧对美国人口普查数据进行分析，帮助 CharityML（一家虚拟的慈善机构）发现最有可能向他们捐款的人士。你首先将探索这些人口普查数据，了解数据的记录结构。接着，你将应用一系列的转换和预处理技巧操纵数据，使其变成可处理的格式。然后，你将自己选择几个监督学习器并将它们应用到数据上，看看哪个学习器最能满足需求。之后，你将优化所选的模型并当做解决方案呈现给 CharityML。最后，你将探索所选的模型和背后的预测原理，看看它在处理给定的数据时，效果如何。

**环境安装**

这个项目需要安装下面这些python包：

- [NumPy](http://www.numpy.org/)
- [Pandas](http://pandas.pydata.org/)
- [scikit-learn](http://scikit-learn.org/stable/)
- [matplotlib](http://matplotlib.org/)

你同样需要安装好相应软件使之能够运行 [iPython Notebook](http://ipython.org/notebook.html)

**代码**

初始代码包含在`finding_donors.ipynb`这个notebook文件中。你还会用到`visuals.py`和名为`census.csv`的数据文件来完成这个项目。我们已经为你提供了一部分代码，但还有些功能需要你来实现才能以完成这个项目。
这里面有一些代码已经实现好来帮助你开始项目，但是为了完成项目，你还需要实现附加的功能。  
注意包含在`visuals.py`中的代码设计成一个外部导入的功能，而不是打算学生去修改。如果你对notebook中创建的可视化感兴趣，你也可以去查看这些代码。

**运行**

在命令行中，确保当前目录为 `finding_donors/` 文件夹的最顶层（目录包含本 README 文件），运行下列命令：

```bash
jupyter notebook finding_donors.ipynb
```

这会启动 Jupyter Notebook 并把项目文件打开在你的浏览器中。

**数据**

修改的人口普查数据集含有将近32,000个数据点，每一个数据点含有13个特征。这个数据集是Ron Kohavi的论文*"Scaling Up the Accuracy of Naive-Bayes Classifiers: a Decision-Tree Hybrid",*中数据集的一个修改版本。你能够在[这里](https://www.aaai.org/Papers/KDD/1996/KDD96-033.pdf)找到论文，在[UCI的网站](https://archive.ics.uci.edu/ml/datasets/Census+Income)找到原始数据集。

**特征**

- `age`: 一个整数，表示被调查者的年龄。 
- `workclass`: 一个类别变量表示被调查者的通常劳动类型，允许的值有 {Private, Self-emp-not-inc, Self-emp-inc, Federal-gov, Local-gov, State-gov, Without-pay, Never-worked}
- `education_level`: 一个类别变量表示教育程度，允许的值有 {Bachelors, Some-college, 11th, HS-grad, Prof-school, Assoc-acdm, Assoc-voc, 9th, 7th-8th, 12th, Masters, 1st-4th, 10th, Doctorate, 5th-6th, Preschool}
- `education-num`: 一个整数表示在学校学习了多少年 
- `marital-status`: 一个类别变量，允许的值有 {Married-civ-spouse, Divorced, Never-married, Separated, Widowed, Married-spouse-absent, Married-AF-spouse} 
- `occupation`: 一个类别变量表示一般的职业领域，允许的值有 {Tech-support, Craft-repair, Other-service, Sales, Exec-managerial, Prof-specialty, Handlers-cleaners, Machine-op-inspct, Adm-clerical, Farming-fishing, Transport-moving, Priv-house-serv, Protective-serv, Armed-Forces}
- `relationship`: 一个类别变量表示家庭情况，允许的值有 {Wife, Own-child, Husband, Not-in-family, Other-relative, Unmarried}
- `race`: 一个类别变量表示人种，允许的值有 {White, Asian-Pac-Islander, Amer-Indian-Eskimo, Other, Black} 
- `sex`: 一个类别变量表示性别，允许的值有 {Female, Male} 
- `capital-gain`: 连续值。 
- `capital-loss`: 连续值。 
- `hours-per-week`: 连续值。 
- `native-country`: 一个类别变量表示原始的国家，允许的值有 {United-States, Cambodia, England, Puerto-Rico, Canada, Germany, Outlying-US(Guam-USVI-etc), India, Japan, Greece, South, China, Cuba, Iran, Honduras, Philippines, Italy, Poland, Jamaica, Vietnam, Mexico, Portugal, Ireland, France, Dominican-Republic, Laos, Ecuador, Taiwan, Haiti, Columbia, Hungary, Guatemala, Nicaragua, Scotland, Thailand, Yugoslavia, El-Salvador, Trinadad&Tobago, Peru, Hong, Holand-Netherlands}

**目标变量**

- `income`: 一个类别变量，表示收入属于那个类别，允许的值有 {<=50K, >50K}

# 12. [创建客户细分](./P12_UnsupervisedLearning)

**项目概述**

在此项目中，你将对为葡萄牙里斯本的批发商收集的客户产品开支数据应用非监督学习技巧，以便发现数据中隐藏的客户细分信息。首先，你将探索数据：选择一小部分样本子集并判断产品类别之间是否相互关系紧密。之后，你将通过缩放每个产品类别预处理数据，然后发现（并删除）不需要的离群值。留下良好的客户开支数据后，你将对数据应用 PCA 转换，并实施聚类算法，以便划分转换后的客户数据。最后，你将比较细分结果与额外的标签信息，并思考这些信息可以帮助批发商日后改进服务的方式。

**项目要点**

此项目旨在让你有机会亲身体验非监督学习，并帮助潜在客户针对现实中的数据集得出结论。如今，有很多公司都会收集大量客户数据，并且非常渴望了解隐藏在客户群体中的关联。了解这些信息后，公司能够探索规划产品和服务的最佳方式，以满足客户需求。

完成此项目后，你将学到以下技能：

- 如何应用预处理技巧，例如特征缩放和离群值检测。
- 如何解释缩放、转换或通过 PCA 推理的数据点。
- 如何分析 PCA 维度并构建新的特征空间。
- 如何对一组数据进行最佳聚类操作，找到数据集中的隐藏规律。
- 如何评估聚类数据提供的信息并有效利用该信息。

**项目说明**

某个批发商最近针对某些客户进行了送货方式试点更改，从一周五天上午送货服务变成了成本更低的一周三天晚上送货服务。初始测试并没有发现任何明显不理想的结果，因此他们针对所有客户都采取了成本更低的送货方式。但是很快，批发商就收到客户关于送货服务变化的投诉，有客户取消了送货服务，导致批发商损失的金额比节省的更高。批发商聘请你来帮助他们了解他们的客户类型，以便日后做出更好、更明智的商业决策。你的任务是使用非监督式学习技巧判断客户之间是否有相似之处，以及如何以最佳方式将客户细分成明显的类别。

**软件和库**

此项目使用以下软件和 Python 库：

- [Python](https://www.python.org/downloads/release/python-364/)
- [NumPy](http://www.numpy.org/)
- [pandas](http://pandas.pydata.org/)
- [scikit-learn](http://scikit-learn.org/0.17/install.html) (v0.17)
- [matplotlib](http://matplotlib.org/)

你还需要安装软件，才能运行并执行 [Jupyter Notebook](http://ipython.org/notebook.html)。

此项目包含三个文件：

- `customer_segments.ipynb`：这是主要文件，你将在此文件中执行项目任务。
- `customers.csv`：项目数据集。你将在 notebook 中加载此数据。
- `visuals.py`：此 Python 脚本提供了项目的补充可视化内容。请勿修改此文件。

# 13. [第一个神经网络](./P13_NeuralNetwork)

**介绍**

在这一项目中，你将会从头开始构建一个神经网络，基于真实的数据集来进行预测！通过从零开始搭建神经网络，你将更好地理解梯度下降、反向传播等概念。这些都是我们以后接触更高级工具（如 Tensorflow）前必须掌握的重要概念。在这一项目中，你也将看到，如何运用这些网络来完成实际生活中的预测问题！

数据来自 [UCI 机器学习数据库](https://archive.ics.uci.edu/ml/datasets/Bike+Sharing+Dataset)。

**说明**

1. 从我们的 [GitHub 代码库](https://github.com/udacity/cn-deep-learning)下载项目相关资料。

2. 进入 `first-neural-network` 文件夹。

3. 下载 anaconda 或 miniconda，你可以参考我们的 Anaconda 课程。

4. 创建一个新的 conda 环境：

   ```bash
   conda create --name dlnd python=3
   ```

5. 进入新环境：

   - Mac/Linux 系统：`>> source activate dlnd`
   - Windows 系统：`>> activate dlnd`

6. 输入以下命令，检查你是否已经安装了 numpy ，matplotlib， pandas ，和 jupyter notebook：

   ```bash
   conda install numpy matplotlib pandas jupyter notebook
   ```

7. 运行以下命令，打开 notebook ：

   ```bash
   jupyter notebook Your-first-neural-network.ipynb
   ```

8. 请按照 notebook 上的引导说明来完成本项目。

9. 在提交项目之前，请确保你已经通过了 notebook 上的单元测试！

如果在运行 notebook 文件过程中，你需要帮助，请查看我们的 Jupyter notebook 课程。

**反馈**

你大约会在 7 天内得到优达学城审阅者的批阅反馈。

1. 检查你是否已经通过了 notebook 中的所有单元测试。
2. 确保你符合[评审标准](https://review.udacity.com/#!/rubrics/932/view)里的所有条目。
3. 当你完成项目后，请将 notebook 保存为一个 HTML 文件以及一个 Python 文件。你可以进入 notebook 的菜单，选择“Download as”> HTML (.html) 来保存 HTML 文件；选择“Download as”> Python (.py) 来保存 Python 文件。**确保你同时提交 Jupyter Notebook 以及 HTML 和 Python 这三个版本的文件。**
4. 将 notebook 以及 HTML ，Python 文件压缩成一个 zip 文件，或者将 notebook 和 HTML 以及 Python 文件推送到 GitHub repo 上。
5. 点击下面的“提交项目”按钮！

**提醒：如果你选择上传文档，你需要用英文命名文档，文件名中若有中文字符，会导致提交失败。**

**接下来做什么？**

如果你现在在等待新的课程内容，或者等待评审结果，这里有一个[很棒的来自 Frank Chen 的视频](https://s3.cn-north-1.amazonaws.com.cn/static-documents/nd101/AI%2C+Deep+Learning%2C+and+Machine+Learning_+A+Primer.mp4)，介绍深度学习的历史。视频时长45分钟，有点像一部短纪录片，它从20世纪50年代开始讲起，直到带我们进入当下的深度学习和人工智能热潮。

# 14. [波士顿房价预测](./P14_BostonHousing)



# 15. [词性标注](./P15_HidenMarkovModels)

**简介**

在此 notebook 中，你将使用 [Pomegranate](https://github.com/jmschrei/pomegranate) 库构建隐马尔可夫模型，并使用[通用标签集](http://www.petrovi.de/data/universal.pdf)进行词性标注。在使用更大型的标签集对实际文本语料库进行标注时，隐马尔可夫模型的准确率达到了 96% 以上。隐马尔可夫模型还用于语音识别和语音生成、机器翻译、生物信息学基因识别和计算机视觉人类手势识别，等等。

该 notebook 已经包含一些帮助你着手编程的代码。要完成此项目，你只需在有标记的地方添加一些新的功能；除此之外，不需要修改所提供的代码。标题中以**'实现'**开头的部分表明你必须在下面的代码块中提供代码。我们会在每个部分提供说明，并在以 `'TODO'` 语句开头的代码块中提供实现细节。请务必仔细阅读说明！

**注意：**这是一道可选热身练习，旨在介绍项目文件中包含的 Pomegranate API。请先启动 `HMM warmup (optional).ipynb` 文件以转到此练习，然后完成 `hmm tagger.ipynb` notebook。（只需提交标签器以供审阅）。

**使用入门**

你可以选择两种方式之一来完成此项目。第一种方法是使用在下节课的课堂中嵌入的 Workspace。该 Workspace 已经过配置，包含完成此项目所需的所有必要项目文件。只需打开该课程，完成在 Jupyter notebook 中标明的部分，然后点击“提交项目”按钮即可。

**注意：**如果在启动 notebook 时，系统提示你选择一个内核，请选择 **Python 3** 内核。

此外，你可以下载项目资料副本，然后在本地机器上运行 Jupyter 服务器。请在下面为你的课程选择相应的链接，然后按照 readme 中的说明设置并完成项目。

**注意：**如果你使用的是项目 Workspace，则**不**需要完成这些步骤。

- AIND GitHub：[此处](https://github.com/udacity/artificial-intelligence) (Projects/4_HMM Tagger)
- NLPND GitHub：[此处](https://github.com/udacity/hmm-tagger)

**评估**

优达学城的审阅专家将根据[此](https://review.udacity.com/#!/rubrics/2263/view)审阅标准审阅你的项目。请仔细阅读此审阅标准，并在提交项目前先自己评估下项目。必须满足审阅标准中的所有规范，项目才能通过评估。

**提交**

实现所有代码后，最后需要将 iPython Notebook 导出为 HTML 文档。在将 notebook 导出为 HTML 前，请运行所有代码单元格，以便审阅专家能够查看最终实现和输出结果。然后导出 notebook，方法是：运行 notebook 中的最后一个单元格，或使用顶部的菜单并依次转到“文件”->“下载为” -> HTML (.html)。提交内容应该同时包含 HTML 和 ipynb 文件。

请压缩“hmm tagger.ipynb”和“hmm tagger.html”文件，并通过以下按钮提交压缩文件。（**注意：**如果你是在 workspace 中完成的项目，可以使用 workspace 中的“提交”按钮直接提交项目。）
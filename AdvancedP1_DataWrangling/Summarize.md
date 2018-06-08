**目录**

[toc]

### 文件说明
该文件是针对项目 [DataWrangling](./) 的总结和一些反思。

### 1. 申请 `Tweeter API Token`
在项目中如果使用 `API` 进行数据收集，那么需要通过 [tweepy](http://tweepy.readthedocs.io/en/v3.5.0/getting_started.html) 获取相关数据。该过程需要包括以下几点：

1. 安装 `tweepy` 库——需要使用 `pip` 进行安装， `pip install tweepy`
2. 获取 `Token`，需要通过参考文档 [Enabling all developers to build on the Account Activity API](https://blog.twitter.com/developer/en_us/topics/tools/2018/enabling-all-developers-to-build-on-the-account-activity-api.html) 和 [Getting started with webhooks — Twitter Developers](https://developer.twitter.com/en/docs/accounts-and-users/subscribe-account-activity/guides/getting-started-with-webhooks) 中的相关说明：a) 在该页面[Twitter Application Management](https://apps.twitter.com/) 申请一个 `APP`，这里已经可以得到一个 `API`；b）如果需要其他功能，例如重复重试链接等，那么需要申请其他类型的 `API`

注意⚠️最后的查看 `API` 的地址是 [Twitter Application Management](https://apps.twitter.com/)；另外指导可以参考 [Tutorials — Twitter Developers](https://developer.twitter.com/en/docs/tutorials)


### 2. 坐标轴 `label`旋转
之前进行坐标轴 `label` 旋转的时候，需要通过 `gca` 方法获取接口进行完成。目前发现在直接使用 `dataframe` 的 `plot` 方法时，可以直接使用 `rot` 参数完成对 `x` 轴的旋转。举例如下：

```
x_axis = tweet_data.columns.get_values()
height = len(tweet_data) - tweet_data.isnull().sum()

# 下面是创建了一个 dataframe
hist_data = pd.DataFrame({"field": height.index.values, "count":height.values}, columns=["field", "count"])

# 使用 rot=30 参数来调整 x 轴旋转了 30 度
hist_data.plot(x="field", kind="bar", figsize=(20, 13), rot=30, color="grey", legend="")

```

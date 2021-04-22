# -*- coding: utf-8 -*-
# @Time    : 2021/4/21 3:05 PM
# @Author  : Hopen

import pymysql
import re
from pprint import pprint
import numpy as np
from matplotlib import pyplot as plt
from config import *

db = pymysql.connect(host=HOST, user=USER, password=PASS, db=DB, port=PORT, use_unicode=True, charset="utf8")


def mysql_select(sql_str):
    cursor = db.cursor()
    cursor.execute(sql_str)
    data = cursor.fetchall()
    cursor.close()
    return data


class ProblemEvaluation(object):
    def __init__(self):
        self.id = 0
        self.prob_id = 0
        self.user_id = 0
        self.prob_text = ''
        self.prob_level = 0
        self.lesson = 0
        self.analysis = ''
        self.answer_text = ''
        self.type = ''
        self.point = ''
        self.choice_text = ''
        self.eval_time = ''
        self.res = 0


class EvaluationSet(object):
    def __init__(self):
        self.exer_eval_li = []
        self.user_li = []
        self.prob_li = []

    def high_freq_all(self, n):
        """
        返回全体学生的高频错题集
        :param n: 返回的错题数量
        :return: list[prob]
        """

    def freq_point_all(self, n=None):
        """
        返回全体学生的高频易错考点
        :param n: 返回的考点数量
        :return: list[{point: string, count: int}]
        """

    def get_avg_rank(self, level=None, time_span=None):
        """
        返回全体学生的平均分排名
        :param level: 可选, 若提供则在 level 内进行筛选
        :param time_span: 可选, 若提供则在指定时间段内进行进行筛选
        :return: list['user_id', 'rank']
        """


class ExerciseEvaluation(object):
    def __init__(self):
        self.id = 0
        self.end_time = ''
        self.duration = 0  # 单位: 秒
        self.score = 0
        self.user_id = 0
        self.level = 0
        self.lesson = 0


class User(object):
    def __init__(self):
        self.id = 0
        self.level = 0
        self.name = ''
        self.eval_li = []  # 用户做过的所有题
        self.rev_li = []  # 用户做错的所有题(及其次数) {'prob_id', 'counts'}

    def count_avg(self, level=None, time_span=None):
        """
        计算用户个人做题平均分
        :param level: 可选, 若给出则计算 level 内平均分
        :param time_span: 可选, 若给出则计算指定时间段内平均分
        :return: float
        """
        if not level:
            return round(sum([eva['score'] for eva in self.eval_li]) / len(self.eval_li), 2)
        else:
            return round(sum([eva['score'] for eva in self.eval_li if eva['level'] == level]) / len(self.eval_li), 2)

    def high_freq_user(self, n=None):
        """
        返回用户个人高频错题集
        :param n: 返回的错题个数
        :return: list[{'prob': {}, count: int}]
        """
        if n:
            return self.rev_li.sort(key=lambda x: x['counts'])[: n]
        else:
            return self.rev_li.sort(key=lambda x: x['counts'])

    def freq_point_user(self):
        """
        返回用户个人的错题考点分布
        :return: list[str]
        """

    def get_recent(self, n):
        """
        返回用户最近几次做题的得分, 时间顺序
        :param n: 练习的个数
        :return: list[int]
        """
        return [eva['score'] for eva in sorted(self.eval_li, key=lambda x: x['end_time'])][:n]


def draw_plot(title, x_list, y_list, xlabel=None, ylabel=None):
    """ 绘制折线图 """
    plt.title(title)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    plt.plot(x_list, y_list)
    plt.show()


def draw_bar(title, label_list, num_list, xlabel=None, ylabel=None):
    """ 绘制水平条形图 """
    plt.title(title)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    plt.xticks(label_list)
    plt.barh(range(len(label_list)), num_list)
    plt.show()


def draw_pie(title, label_list, num_list, xlabel=None, ylabel=None):
    """ 绘制饼图 """
    plt.title(title)
    plt.xlabel(xlabel)
    plt.ylabel(ylabel)
    plt.pie(num_list, labels=label_list)
    plt.axis("equal")
    plt.show()


# 从 MySQL 中装填数据
sql = 'select * from t_exer_eval'
exer_eval_li = mysql_select(sql)
sql = 'select * from t_user'
user_li = mysql_select(sql)

user = User()
eval_set = EvaluationSet()
N = 10

# 绘图
draw_plot('学生得分情况趋势', user.name, user.get_recent(N))
draw_plot('个人平均分趋势', user.name, user.count_avg())
err_set = eval_set.freq_point_all()
draw_pie('全体错题考点分布', [x['count'] for x in err_set], [x['point'] for x in err_set])
draw_bar('高频错题 TOP'+str(N), range(0, N), eval_set.high_freq_all(N))

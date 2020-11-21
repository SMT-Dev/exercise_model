# 前端调用API
| 作用 | api-url | 请求参数 | 返回值 | 返回值示例 | 备注 |
| :----: | :----: | :---- | :----: | :---- | :---- |
| 得到课课练的所有历史刷题记录 | /getTable_lesson || 数组<br>数组元素:对象<br>对象属性：对应哪节课(string)、完成时间(string)、得分(number)、本条记录编号(number) | `"tableList":[{"name","date","score","id"},...]` | 得分范围：0-100 |
| 得到温故知新和双周测的所有历史刷题记录 | /getTable_ai || 数组<br>数组元素:对象<br>对象属性：对应刷题名称(string)、完成时间(string)、得分(number)、本条记录编号(number) | `"tableList":[{"name","date","score","id"},...]` | 对应刷题名称中，若为双周测则表明“xx周-xx周双周测”，若为温故知新则表明“Level xx 温故知新练习”<br>得分单位：0-100 |
| 获取用户当前等级 | /levelInitial || 等级(number) | `"level"` ||
| 获取用户当前等级和上一次温故知新刷题时选择的题量 | /homepageInitial || 等级(number)<br>上次刷题题量(number) | `"level","num"` | 题量为15、20、25 |
| 获取用户刷题结果 | /getdetail?id=xxxx(xxxx为记录编号) || 数组<br>数组元素：对象<br>对象属性：题号(num)、标准答案(string)、用户选择选项(string)、用户提交文本(string)、题目解析(string)、本题考点(string) | `"problem":[{'id','ans','choice','text','analysis','point'},...]` ||
| 获取课课练用户刷题评价 | /getresult_lesson?id=xxxx(xxxx为记录编号) || 对象<br>对象属性：时间(string)、得分(number)、未掌握知识点比例(number)、掌握到简单程度的知识点数量(number)、掌握到中等程度的知识点数量(number)、掌握到困难程度的知识点数量(number)、对应哪节课(string) | `"res":{"time","score","unhandle","easy","medium","hard","lesson"}` | 得分范围：0-100<br>未掌握知识点比例为一位小数<br> |
| 发送用户登录信息 | /postLogin | `form {username,password}` | 对象 | 略 ||
| 获取一组题目的在数据库中的题号 | /getPaper || 数组<br>数组元素：题号(number) | 略 ||
| 获取已知题号的题目 | /getProblem?num=xxxx(xxxx为题目题号) || 对象 | 略 | 返回结果包括了题目文本，选项编号等 |
| 获取选择题的选项 | /getOptions?id=xxxx(xxxx为选项编号) || 对象 | 略 ||
| 获取温故知新或双周测刷题用户刷题评价 | /getresult_ai?id=xxxx(xxxx为记录编号) || 对象<br>对象属性：时间(string)、刷题等级(number)、得分(number)、未掌握知识点比例(number)、掌握到简单程度的知识点数量(number)、掌握到中等程度的知识点数量(number)、掌握到困难程度的知识点数量(number) | `"res":{"time","level","score","unhandle","easy","medium","hard"}` ||
| 获取本次刷题总题数、选择题数和本次刷题结果在数据库中的编号 | /ini || 总题数(number)<br>选择题题数(number)<br>本次刷题结果的编号(number) | `"total","opt","id"` ||
| 获取已做过的题目的记录 | /getSheet || 对象 | 略 | 主要利用返回对象里的sheet_list,这包含了已经做过的题目的记录 |
| 发送一条完成答题的记录 | /postSheet | `formData {idx,finish,choice,choice_text}` | 对象 | 略 ||
| 获取推荐练习或错题练习用户刷题评价 | /getresult_extra?id=xxxx(xxxx为记录编号) || 对象<br>对象属性：时间(string)、未掌握知识点比例(number)、掌握到简单程度的知识点数量(number)、掌握到中等程度的知识点数量(number)、掌握到困难程度的知识点数量(number) | `"res":{"time","unhandle","easy","medium","hard"}` ||
| 发送用户注册申请 | /postRegister | `form: {username,password,re_password}` | 对象 | 略 ||
| 获取双周测的所有历史记录 | /getTest || 数组<br>数组元素：对象<br>对象属性：对应哪个双周(string)、时间(string)、得分(number)、本次记录编号(number) | `"tableList":[{"name","date","score","id"}]` ||
| 获取当前双周信息 | /testInitial || 等级(number)<br>当前双周(string)<br>是否已完成(boolean)<br>是否开放测试(boolean) | `"level","week","done","allow_test"` ||
| 获取所有错题记录 | /getwrong || 数组<br>数组元素：对象<br>对象属性：题目文本(string)、题目类型(string)、题目选项(string)、用户提交答案(string)、正确答案(string)、题目解析(string)、考点(string) | `"wrong_prob":[{"prob_text","prob_type","options","user_ans","correct_ans","analysis","point"}]` ||
| 发送温故知新刷题设置 | /postSetting | `formData {src,lev,probNum}` | 对象 | 略 ||
***
# 页面汇总
| 页面名称 | 页面描述 | URL | 调用API |
| :----: | :----: | :----: | :---- |
| answer_sheet | 答题卡侧边栏 | / | / |
| history | 历史记录页面 | /history | /getTable_lesson<br>/getTable_ai<br>/levelInitial |
| homepage | 温故知新页面(主界面) | /home | /homepageInitial<br>/postSetting |
| include | 功能导航侧边栏 | / | / |
| lesson_opt_detail | 课课练刷题记录详情选择题页面 | /lesson_detail_opt | /getdetail<br>/getresult_lesson?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号)<br>/getOptions?id=xxxx(xxxx为选项编号) |
| lesson_opt_finish | 课课练刷题结算评价选择题页面 | /lesson_finish_opt | /getdetail<br>/getresult_lesson?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号)<br>/getOptions?id=xxxx(xxxx为选项编号) |
| lesson_txt_detail | 课课练刷题记录详情文本题页面 | /lesson_detail_txt | /getdetail<br>/getresult_lesson?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号) |
| lesson_txt_finish | 课课练刷题结算评价文本题页面 | /lesson_finish_txt | /getdetail<br>/getresult_lesson?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号) |
| login | 用户登录页面 | /login | /postLogin |
| practise_opt_detail | 温故知新刷题记录详情选择题页面 | /practise_detail_opt | /getdetail<br>/getresult_ai?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号)<br>/getOptions?id=xxxx(xxxx为选项编号) |
| practise_opt_finish | 温故知新刷题结算评价选择题页面 | /practise_finish_opt | /getdetail<br>/getresult_ai?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号)<br>/getOptions?id=xxxx(xxxx为选项编号) |
| practise_txt_detail | 温故知新刷题记录详情文本题页面 | /practise_detail_txt | /getdetail<br>/getresult_ai?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号) |
| practise_txt_finish | 温故知新刷题结算评价文本题页面 | /practise_finish_txt | /getdetail<br>/getresult_ai?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号) |
| prob_opt | 刷题选择题页面 | /exercise_opt | /ini<br>/postSheet<br>/getSheet<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号)<br>/getOptions?id=xxxx(xxxx为选项编号) |
| prob_txt | 刷题文本题页面 | /exercise_txt | /ini<br>/postSheet<br>/getSheet<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号) |
| recomnd_opt_finish | 推荐练习结算评价选择题页面 | /recomnd_finish_opt | /getdetail<br>/getresult_extra?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号)<br>/getOptions?id=xxxx(xxxx为选项编号) |
| recomnd_txt_finish | 推荐练习结算评价文本题页面 | /recomnd_finish_txt | /getdetail<br>/getresult_extra?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号) |
| register | 用户注册页面 | /register | /postRegister |
| test_opt_detail | 双周测刷题记录详情选择题页面 | /test_detail_opt | /getdetail<br>/getresult_ai?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号)<br>/getOptions?id=xxxx(xxxx为选项编号) |
| test_opt_finish | 双周测刷题结算评价选择题页面 | /test_finish_opt | /getdetail<br>/getresult_ai?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号)<br>/getOptions?id=xxxx(xxxx为选项编号) |
| test_txt_detail | 双周测刷题记录详情文本题页面 | /test_detail_txt | /getdetail<br>/getresult_ai?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号) |
| test_txt_finish | 双周测刷题结算评价文本题页面 | /test_finish_txt | /getdetail<br>/getresult_ai?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号) |
| week_test | 双周测历史详情页面 | /week_test | /getTest<br>/testInitial |
| welcome | 欢迎界面(首页) | /welcome | / |
| wrong_problem | 错题集页面 | /wrong | /getwrong<br>/levelInitial |
| wrong_opt_finish | 错题练习结算评价选择题页面 | /wrong_finish_opt | /getdetail<br>/getresult_extra?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号)<br>/getOptions?id=xxxx(xxxx为选项编号) |
| wrong_txt_finish | 错题练习结算评价文本题页面 | /wrong_finish_txt | /getdetail<br>/getresult_extra?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号) |



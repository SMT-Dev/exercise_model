# SMT-Exercise-Model DevDoc
## 目录
- 每次 push 都要附带这个文档，1.记录项目的便捷查询信息，2.记录开发中的公共问题，3.记录重要信息的更新日志
- markdown 习惯：1.中文和英文之间用空格分开，2.标号遵循层级结构，3.引用代码块和代码语句要加上引号 `xxx`
1. [前端调用API](#api)
2. [HTML 页面汇总](#html)
3. [文档/代码更新记录 & 公共问题记录](#log)
4. [代码重构计划](#refactor)

## 1. 前端调用API <span id="api"></span>
| 作用 | api-url | 请求参数 | 返回值 | 返回值示例 | 备注 |
| :----: | :----: | :---- | :----: | :---- | :---- |
| 得到课课练的所有历史刷题记录 | /getHistory || 数组<br>数组元素:对象<br>对象属性：对应哪节课(string)、完成时间(string)、得分(number)、本条记录编号(number) | `"tableList":[{"name","date","score","id"},...]` | 得分范围：0-100 |
| 得到温故知新和双周测的所有历史刷题记录 | /getTable_ai || 数组<br>数组元素:对象<br>对象属性：对应刷题名称(string)、完成时间(string)、得分(number)、本条记录编号(number) | `"tableList":[{"name","date","score","id"},...]` | 对应刷题名称中，若为双周测则表明“xx周-xx周双周测”，若为温故知新则表明“Level xx 温故知新练习”<br>得分单位：0-100 |
| 获取用户当前等级 | /levelInitial || 等级(number) | `"level"` ||
| 获取用户当前等级和上一次温故知新刷题时选择的题量 | /homepageInitial || 等级(number)<br>上次刷题题量(number) | `"level","num"` | 题量为15、20、25 |
| 获取用户刷题结果 | /getJudgeDetail?id=xxxx(xxxx为记录编号) || 数组<br>数组元素：对象<br>对象属性：题号(num)、标准答案(string)、用户选择选项(string)、用户提交文本(string)、题目解析(string)、本题考点(string) | `"sheet_list": [{"idx": 10002, "choice": "b", "choice_text": "a", "prob_text": "I want ____ toy train.", "analysis": "a 用于修饰辅音音素开头的单词；an 用于修饰元音音素开头的单词toy 是以辅音音素/t/开头的单词，所以选B", "ans": "B", "point": "辅音音素开头"},` ||
| 获取课课练用户刷题评价 | /getResultLesson?id=xxxx(xxxx为记录编号) || 对象<br>对象属性：时间(string)、得分(number)、未掌握知识点比例(number)、掌握到简单程度的知识点数量(number)、掌握到中等程度的知识点数量(number)、掌握到困难程度的知识点数量(number)、对应哪节课(string) | `"res":{"time","score","unhandle","easy","medium","hard","lesson"}` | 得分范围：0-100<br>未掌握知识点比例为一位小数<br> |
| 发送用户登录信息 | /postLogin | `form {username,password}` | 对象 | 略 ||
| 获取已知题号的题目 | /getProblem?num=xxxx(xxxx为题目题号) || 对象 | 略 | 返回结果包括了题目文本，选项编号等 |
| 获取选择题的选项 | /getOptions?id=xxxx(xxxx为选项编号) || 对象 | 略 ||
| 获取温故知新或双周测刷题用户刷题评价 | /getResultAi?id=xxxx(xxxx为记录编号) || 对象<br>对象属性：时间(string)、刷题等级(number)、得分(number)、未掌握知识点比例(number)、掌握到简单程度的知识点数量(number)、掌握到中等程度的知识点数量(number)、掌握到困难程度的知识点数量(number) | `"res":{"time","level","score","unhandle","easy","medium","hard"}` ||
| 组卷出题，获取本次刷题总题数、选择题数和本次刷题结果在数据库中的编号 | /initPaper || 总题数(number)<br>选择题题数(number)<br>本次刷题结果的编号(number) | `"total","opt","id"` ||
| 获取已做过的题目的记录 | /getSheet || 对象 | 略 | 主要利用返回对象里的sheet_list,这包含了已经做过的题目的记录 |
| 发送一条完成答题的记录 | /postSheet | `formData {idx,finish,choice,choice_text}` | 对象 | 略 ||
| 获取推荐练习或错题练习用户刷题评价 | /getResultExtra?id=xxxx(xxxx为记录编号) || 对象<br>对象属性：时间(string)、未掌握知识点比例(number)、掌握到简单程度的知识点数量(number)、掌握到中等程度的知识点数量(number)、掌握到困难程度的知识点数量(number) | `"res":{"time","unhandle","easy","medium","hard"}` ||
| 发送用户注册申请 | /postRegister | `form: {username,password,re_password}` | 对象 | 略 ||
| 获取双周测的所有历史记录 | /getTest || 数组<br>数组元素：对象<br>对象属性：对应哪个双周(string)、时间(string)、得分(number)、本次记录编号(number) | `"tableList":[{"name","date","score","id"}]` ||
| 获取当前双周信息 | /testInitial || 等级(number)<br>当前双周(string)<br>是否已完成(boolean)<br>是否开放测试(boolean) | `"level","week","done","allow_test"` ||
| 获取所有错题记录 | /getWrong || 数组<br>数组元素：对象<br>对象属性：题目文本(string)、题目类型(string)、题目选项(string)、用户提交答案(string)、正确答案(string)、题目解析(string)、考点(string) | `"wrong_prob":[{"prob_text","prob_type","options","user_ans","correct_ans","analysis","point"}]` ||
| 发送刷题信息以供后端组卷 | /postSetting | `formData {src,sys,lev,probNum}` | 对象 | 略 | 温故知新模块发送时，会提供出题体系、所选等级、所选题量信息<br>其他模块发送时这三个信息都为0或者空字符串（因其他模块出题时无需这些信息） |
***

## 2. HTML 页面汇总 <span id="html"></span>
| 页面名称 | 页面描述 | URL | 调用API |
| :----: | :----: | :----: | :---- |
| answer_sheet | 答题卡侧边栏 | / | / |
| history | 历史记录页面 | /history | /getHistory<br>/getTable_ai<br>/levelInitial |
| homepage | 温故知新页面(主界面) | /home | /homepageInitial<br>/postSetting |
| include | 功能导航侧边栏 | / | / |
| prob_opt_marked | 刷题记录详情选择题页面 | /prob_opt_marked | /getJudgeDetail<br>/getResultLesson?id=xxxx(xxxx为记录编号)<br>/getResultAi?id=xxxx(xxxx为记录编号)<br>/getResultExtra?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号)<br>/getOptions?id=xxxx(xxxx为选项编号) |
| prob_txt_marked | 刷题记录详情文本题页面 | /prob_txt_marked | /get<br>/getResultLesson?id=xxxx(xxxx为记录编号)<br>/getResultAi?id=xxxx(xxxx为记录编号)<br>/getResultExtra?id=xxxx(xxxx为记录编号)<br>/getPaper<br>/getProblem?num=xxxx(xxxx为题目题号) |
| login | 用户登录页面 | /login | /postLogin |
| prob_opt | 刷题选择题页面<br>包含参数：src: lesson ai test recomnd wrong, lev: 当前等级，num: 题目总量, refId: 需要参考的组卷 ID，<br> sys: 1. 温故知新中：sys=smt 代表出题的体系 2. 课课练中 sys=8 代表课程 lesson8 3. 双周测试中，sys=7-8 表示7-8周 4. 如果有需要参考的 redId=8888，那么 sys 代表 refId， | /exercise_opt | /initPaper<br>/postSheet<br>/postSetting<br>/getSheet<br>/initPaper<br>/getProblem?num=xxxx(xxxx为题目题号)<br>/getOptions?id=xxxx(xxxx为选项编号) |
| prob_txt | 刷题文本题页面 | /exercise_txt | /initPaper<br>/postSheet<br>/getSheet<br>/initPaper<br>/getProblem?num=xxxx(xxxx为题目题号) |
| register | 用户注册页面 | /register | /postRegister |
| week_test | 双周测历史详情页面 | /week_test | /getTest<br>/testInitial |
| welcome | 欢迎界面(首页) | /welcome | / |
| wrong | 错题集页面 | /wrong | /get<br>/levelInitial |
***

## 3. 文档 & 代码更新记录 <span id="log"></span>
- 记录比较重要的、结构性的，新增功能、修改功能
### 11-21 更新说明 @李
1. 将 /historyInitial 和 /wrongInitial 整合为 /levelInitial  
2. 明确了所有获取历史刷题信息的接口中的 id（记录的编号）均为 number 类型  
3. 增加了刷题时的接口 /postSetting 用于发送刷题信息和设置，使后端知道是哪种类型的刷题，决定如何组卷

### 11-26 更新说明 @李
| 编号 | 描述 | 改动位置 |
| :----: | :----: | :----: |
| 3 | 修改了“推荐练习”和“再来一轮”的实现函数<br>“再来一轮” ：如果是课课练或者温故知新需要再来一轮，则跳转url中将带有参数refId=xxxx（xxxx为本次刷题结果的id，<b>“本次”的意思是：xxxx不是推荐练习刷题结果将拥有的id</b>，而是这次课课练或者温故知新的id），根据此id找到这条刷题记录的组卷信息，从而再出一份相同组卷结构的题目/如果是错题练习，则直接再出一份错题即可（刷错题不需要参数传入）<br>“推荐练习”：推荐练习按钮点击后跳转url中也会带有参数refId=xxxx，作用与“再来一轮”中相同 | prob_opt_marked.html<br>prob_txt_marked.html |
| 4 | 修改了刷题页面向/postSetting发送的参数<br>1.如果刷题页面url参数为src=ai&sys=smt&lev=5&probNum=20这种，就不用发送任何参数（因为在跳转到刷题页面之前已经在home页面发送过）<br>2.如果刷题页面url是src=ai&refId=xxxx，那么setting对象中src=ai，sys=xxxx<br>3.如果刷题页面url参数为src=test&week=7-8,那么setting中src=test,sys=7-8<br>4.如果刷题页面url参数为src=lesson&lev=4&lesson=8，那么sett中src=lesson，sys=8<br>5.如果刷题页面url参数为src=lesson&refId=xxxx，那么setting中src=lesson，sys=xxxx<br>6.如果刷题页面url参数为src=recomnd&refId=xxxx，那么setting中src=recomnd，sys=xxxx<br>错题练习只会让setting中src=wrong | prob_opt.html<br>prob_txt.html |
| 5 | 修改了prob_txt里面显示填空输入框的细节（历史遗留问题，在获取文本题的时候，题目的对象中应当有一个number类型的属性告知本题要填几个空），在fetchProblem函数中已经暂定该属性名称为blank_num并使用 | 略 |

### 11-27 更新说明 @许
1. 在刷题结果 getJudgeDetail 中，新增了 eval_res 参数，刷题结果的判断放在后端，前端无需判断
前端可以结合 finish 和 eval_res 两个参数直接判断正误，示例如下
eval_res 为 1 表示正确
```json
{
    "idx": 10013,
    "finish": 1,
    "choice": "b",
    "choice_text": "/",
    "prob_text": "I like playing ____ guitar.",
    "analysis": "play the piano 是固定搭配，所以选B",
    "ans": "B",
    "point": "乐器前面不加the",
    "type": "opt",
    "eval_res": 1
},
2. 各种出题算法，还有一些 bug 会导致页面异常。为了不影响上线测试，目前均使用随机出题

## 4. 代码重构计划 <span id="refactor"></span>
（按重要性排序，伴随着解决旧问题、提出新问题而持续更新）
### 1. 页面结构大部分相同的 html 应该兼并为一个 html
合并html ✅
上图中标红线的 html，最后应合并为 2 个 html， 即选择题和文本题，命名为 `prob_opt_marked.html` 和 `prob_txt_marked.html`

### 2. js 代码 clean
1. 命名规则
变量：小写，下划线分开所有单词。比如`iscorrect` -> `is_correct`
函数名：动词开头，驼峰，比如 `setini` -> `setInit`
- #### API-url : 
- 动词开头，驼峰，最好和调用 api 的函数同名或相近命名，比如 `getresult_ai` -> `/getResultAi`，对应js 函数 `getResult: function () `。
进一步贴近业务“获取刷题评价”，避免混淆，`/getResultAi` -> `/getCommentAi`
进一步参数化解耦，`/getCommentAi` -> `/getComment?src=ai`
- 因为 api 后面会很多，所以最好能够体现具体业务细节以免混淆, 名字长点没关系，比如 “获取用户刷题结果” `/getJudgeDetail?id=` -> `/getJudgeDetail?id=`
- #### HTML-url:
- 小写，下划线分开所有单词，比如 `prob_txt_marked.html`
- html 文件名最好和 url 同名，比如 `prob_txt_marked.html` 就对应 `127.0.0.1/prob_txt_marked`

2. 代码格式与可读性
- js 中所有判断使用三等号 `===` 和 `!==`
- 重复使用的长变量可以使用临时变量，比如多次调用 `sheet.sheet_list[i]` ，则设置 `var cur_problem = sheet.sheet_list[i];  // cur_problem: 答题卡中的某一题` 命名要一目了然，尽量不要设置 `var temp` 这种模棱两可的变量，也不要设置 `curproblem` `optlist` 这种未下划线分割的不规范命名
- 代码冗余：
![](http://qkaz4czp3.hn-bkt.clouddn.com/Snip20201124_204042.png)
例如上图这种代码是肯定是可以“想办法”大大压缩的，数组化、字典化、参数化、函数化、模块化

3. 代码健壮性
多考虑 exception 和 corner-case，比如使用 `substr()` 和 `split()` 这种字符串函数时，在字符串可能为 null 的情况下，一定要判断 `if(string !== null)`, 比如 `resolve()` 一定要配合 `Promise` 使用，确保浏览器的控制台 0 error

### 3. seesion 和 cookie 的使用、用户数据、用户行为
- 用户有很多不规则操作，比如刷到一半点前进、后退、刷新、关闭，输入URL随意跳转页面等，伴随着 session 和 cookie 的 storage， 这些情况下前端很容易出现错乱
- session 和 cookie 尽量不要滥用，越少越好，少存储本地变量，多做即时的 api 请求，来get信息判断
- “想办法”禁止或避免用户进行非常识性的操作，比如已经进入到刷题结果页面了，就不能 back 到做题页面，如果用户自行点 back，按照逻辑就应该  redirect 到首页，而非重新做题、篡改等

### 4. css 重构
- 不紧急，但是利于后续维护
- 逐渐将 `<div id="u27">` 这样不直观的标签修改、取消，统一为可读性强的 css 结构
- 多使用 ElementUI 中的组件加强统一性
- 实现页面的响应式、伸缩性，在任何尺寸的电脑屏幕上都不错乱


## 备注
- 目前的做题判题三大主要 API：
`/initPaper` 出题组卷，得到题目编号数组 num_list 和对应的未作答的初始化 sheet_list （每次都会调用一次组卷算法，因此一次练习只能调用一次）,返回 java 中的 SheetTemp 全局变量
`/getSheet` 任何情况下、无状态地、即时地 获取 java 中的 SheetTemp 全局变量
`/getJudgeDetail` 在结果页面调用一次，也是获取获取 java 中的 SheetTemp 全局变量
- 其它 API 可以用 postman 测试：

以上 3 个 api 返回的 SheetTemp 数据格式如下：
```json
{
    "id": 8888,
    "sheet_list": [
        {
            "idx": 10001,
            "finish": 1,
            "choice": "c",
            "choice_text": "",
            "prob_text": "I have ____ bad headache.",
            "analysis": " have a headache 头疼，表示生什么病，用have a … 是固定搭配 所以选C",
            "ans": "C",
            "point": "辅音音素开头"
        },
        {
            "idx": 10002,
            "finish": 0,
            "choice": null,
            "choice_text": null,
            "prob_text": "I want ____ toy train.",
            "analysis": "a 用于修饰辅音音素开头的单词；an 用于修饰元音音素开头的单词toy 是以辅音音素/t/开头的单词，所以选B",
            "ans": "B",
            "point": "辅音音素开头"
        }
    ],
    "num_list": [
        10001,
        10002,
    ],
    "opt_num": 17,
    "txt_num": 8
}
```

调用：
```js
(response) => {
    this.answers_list = response.data.sheet_list;
    this.opt_num = response.data.opt_num;
}
```

### 11-30 更新说明 @李
1.完成了所有页面HTML的id和css规范命名，将“句子改写题”暂时更名为文本题  
2.在ExerciseController.java中将部分接口url漏掉的"/"补上  
3.对prob_opt_marked和prob_txt_marked两个页面的函数做了一些改动，修复了<b>选择题做题页面更改选择后原先选择不会变白</b>、<b>文本题做题页面交卷时正在做的题不会提交答案</b>、<b>文本题刷题详情页面用户答案无法显示</b>这三个bug  
一个建议：目前文本题只有题干，而没有其他任何提示，用户只能看到一句英文而不知道要干什么（如：是要改写句子，还是改错，还是填空）
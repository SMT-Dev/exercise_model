package com.cisl.smt.web;

import com.alibaba.fastjson.JSONObject;
import com.cisl.smt.dao.ExerciseEvalRepository;
import com.cisl.smt.dao.ProblemEvalRepository;
import com.cisl.smt.dao.ProblemRepository;
import com.cisl.smt.po.*;
import com.cisl.smt.service.*;
import com.cisl.smt.web.Temp.*;
import com.cisl.smt.web.Util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ClassUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.io.*;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.KeyException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

@RestController
public class ReportController {
    @Autowired
    private ProblemEvalRepository problemEvalRepository;

    @Autowired
    private ExerciseEvalRepository exerciseEvalRepository;

    @Autowired
    private ReviewCollecService reviewCollecService;

    private final Util util = new Util();  //工具库变量
    private final String base_url = "https://interface.smartreelearners.com:8442/api/app";

    public static String sendPost(String urlString, String jsonInputString) throws IOException {
        URL url = new URL(urlString);
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestProperty("https.protocols", "TLSv1.2,TLSv1.1,SSLv3");
        con.setRequestMethod("POST");
        con.setRequestProperty("Content-Type", "application/json; utf-8");
        con.setRequestProperty("Accept", "application/json");
        con.setRequestProperty("Connection", "keep-alive");
        con.setRequestProperty("User-Agent", "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7)");
        con.setRequestProperty("Host", "106.15.225.46");
        con.setDoOutput(true);

        try (OutputStream os = con.getOutputStream()) {
            byte[] input = jsonInputString.getBytes("utf-8");
            os.write(input, 0, input.length);
        }
        try (BufferedReader br = new BufferedReader(
                new InputStreamReader(con.getInputStream(), "utf-8"))) {
            StringBuilder response = new StringBuilder();
            String responseLine = null;
            while ((responseLine = br.readLine()) != null) {
                response.append(responseLine.trim());
            }
            System.out.println("返回: " + response.toString());
            return response.toString();
        }
    }

    @GetMapping("getStudentInfo")
    public JsonResult<Map> getStudentInfo(@RequestParam("user_id") Integer user_id) {
        /**
         * @description: 获取学生基本信息
         * @return: JSON 数据
         */
        return null;
    }

    public boolean loginReport() throws IOException {
        String url = "https://interface.smartreelearners.com:8442/api/app/auth/student/login/china?user_id=9999&institute_seq=31&passwd=1111";
        String ret = sendPost(url, "{\"user_id\":\"9999\", \"passwd\":\"1111\", \"institute_seq\":\"31\" }");
        return ret.contains("student_info");
    }

    @GetMapping("getMainReport")
    public JsonResult<Map<String, Object>> getMainReport(@RequestParam("user_id") Integer user_id) {
        Map<String, Object> map = new HashMap<>();
        try {
            // 两周内上课次数
            map.put("weekly_lesson_finish", getFinishLessonWeekly(user_id));
            // 两周内观影次数
            map.put("weekly_movie_finish", getFinishMovieWeekly(user_id));
            // 本 level 累计已学单词
            map.put("level_word_learned", getLearnedWord(user_id));
            // 本 level 累计已学句子
            map.put("level_sentence_learned", getLearnedSentence(user_id));
            // 本 level 总计单词数
            map.put("level_word_total", getLevelWord(user_id));
            // 本 level 总计句子数
            map.put("level_sentence_total", getLearnedSentence(user_id));
            // 本 level 累计已观影数量
            map.put("level_movie_watched", getWatchedMovie(user_id));
            // 本 level 总计影片数
            map.put("level_movie_total", getLevelMovie(user_id));
            return new JsonResult<>(map);
        } catch (Exception e) {
            return new JsonResult<>("-1", "操作错误");
        }
    }

    @GetMapping("getFinishLessonWeekly")
    public Integer getFinishLessonWeekly(@RequestParam("user_id") Integer user_id) {
        /**
         * @description: 学生两周之内上课的数量
         * @return: int
         */
        return 2;
//        String url = base_url + "/iptv/user_watch_times_all?user_seq=" + user_id.toString();
//        try {
//            if (!loginReport()) return -1;
//            String ret = sendPost(url, "");
//            System.out.println(ret);
//            return Integer.parseInt("1");
//        } catch (IOException e) {
//            e.printStackTrace();
//            return -1;
//        }
    }

    @GetMapping("getFinishMovieWeekly")
    public Integer getFinishMovieWeekly(@RequestParam("user_id") Integer user_id) {
        /**
         * @description: 学生两周之内观影的数量
         * @return: int
         */
        return 2;
    }

    @GetMapping("getLearnedWord")
    public Integer getLearnedWord(@RequestParam("user_id") Integer user_id) {
        /**
         * @description: 学生累计已学的单词数量
         * @return: int
         */
        return 10;
    }

    @GetMapping("getLevelWord")
    public Integer getLevelWord(@RequestParam("user_id") Integer user_id) {
        /**
         * @description: 学生所在 level 的总单词数量
         * @return: int
         */
        return 20;
    }

    @GetMapping("getLearnedSentence")
    public Integer getLearnedSentence(@RequestParam("user_id") Integer user_id) {
        /**
         * @description: 学生累计已学的句型数量
         * @return: int
         */
        return 10;
    }

    @GetMapping("getLevelSentence")
    public Integer getLevelSentence(@RequestParam("user_id") Integer user_id) {
        /**
         * @description: 学生所在 level 的总句型数量
         * @return: int
         */
        return 20;
    }

    @GetMapping("getWatchedMovie")
    public Integer getWatchedMovie(@RequestParam("user_id") Integer user_id) {
        /**
         * @description: 学生累计观影次数
         * @return: int
         */
        return 10;
    }

    @GetMapping("getLevelMovie")
    public Integer getLevelMovie(@RequestParam("user_id") Integer user_id) {
        /**
         * @description: 学生所在 level 的总影片数量
         * @return: int
         */
        return 20;
    }

    @GetMapping("getExerciseReport")
    public JsonResult<Map<String, Object>> getExerciseReport(@RequestParam("user_id") Integer user_id) {
        /**
         * @description: 获取学生刷题模块的各项数据
         * @return: JSON 数据
         */
        /* 以下均表示过去两周的范围 */
        // 刷题次数
//        int weeklyTimes = exerciseEvalRepository.getExerciseTimesWeekly((long) user_id);
//        // 刷题数量
//        int weeklyProbNum = weeklyTimes * 20;
//        // 简单题目数
//        int weeklyEasyNum = problemEvalRepository.getExerciseEasyNumWeekly((long) user_id);
//        // 中等题目数
//        int weeklyMediumNum = problemEvalRepository.getExerciseMediumNumWeekly((long) user_id);
//        // 困难题目数
//        int weeklyHardNum = problemEvalRepository.getExerciseHardNumWeekly((long) user_id);

        Map<String, Object> map = new HashMap<>();
        try {
            // 两周内刷题次数
            map.put("times", 3);
            // 两周内总计练习题数量
            map.put("prob_num", 60);
            // 刷题平均时间
            map.put("avg_time", 8);
            // 刷题平均得分
            map.put("avg_score", 65);
            // 已掌握考点数量
            map.put("point_handle", 25);
            // 相对于上一阶段进步、退步
            map.put("progress", -10);
            // 难度占比
            map.put("prob_easy", 40);
            map.put("prob_medium", 30);
            map.put("prob_hard", 30);
            // 过去 10 次刷题得分
            map.put("last_ten_score", new int[] {53,56,55,61,65,69,62,69,71,78});
            // 已掌握考点列表和未掌握考点列表
            map.put("handle_list", new String[] {"人称代词", "There be", "过去分词"});
            map.put("unhandle_list", new String[] {"固定搭配", "现在分词",""});
            return new JsonResult<>(map);
        } catch (Exception e) {
            return new JsonResult<>("-1", "操作错误");
        }
    }

    @GetMapping("getVocalReport")
    public JsonResult<Map<String, Object>> getVocalReport(@RequestParam("user_id") Integer user_id) {
        /**
         * @description: 获取学生语音模块的各项数据
         * @return: JSON 数据
         */
        Map<String, Object> map = new HashMap<>();
        try {
            // 两周内练习次数
            map.put("times", 4);
            // 两周内总计练习用时（分钟）
            map.put("time", 80);
            // 练习平均耗时
            map.put("avg_time", 20);
            // 练习平均得分
            map.put("avg_score", 76);
            // 需要巩固的单词数量
            map.put("word_unhandle", 13);
            // 相对于上一阶段进步、退步
            map.put("progress", 20);
            // 过去 10 次训练得分
            map.put("last_ten_score", new int[] {64,63,52,41,49,59,62,69,81,78});
            // 已掌握考点列表和未掌握考点列表
            ArrayList<HashMap> comments = new ArrayList<>();
            comments.add(new HashMap<String, String>() {{
                    put("word", "abandon");
                    put("status", "0");
                    put("audio", "");
                }
            });
            comments.add(new HashMap<String, String>() {{
                put("word", "banana");
                put("status", "1");
                put("audio", "");
            }
            });
            comments.add(new HashMap<String, String>() {{
                put("word", "chair");
                put("status", "0");
                put("audio", "");
            }
            });
            map.put("comment_list", comments);
            return new JsonResult<>(map);
        } catch (Exception e) {
            return new JsonResult<>("-1", "操作错误");
        }
    }

    @GetMapping("getLibraryReport")
    public JsonResult<Map<String, Object>> getLibraryReport(@RequestParam("user_id") Integer user_id) {
        /**
         * @description: 获取学生图书馆模块的各项数据
         * @return: JSON 数据
         */
        Map<String, Object> map = new HashMap<>();
        try {
            // 累计已读书本数量
            map.put("lib_book_total", 9);
            // 累计阅读时间
            map.put("lib_hour_total", 36);
            // 阅读书本图片 URL
            ArrayList<String> book_urls = new ArrayList<>();
            book_urls.add("https://i0.hdslb.com/bfs/album/1e3e118c2b8b0473bedbf34808928e63b066b634.jpg");
            book_urls.add("https://i0.hdslb.com/bfs/album/1ae25afb2e06e106a72dacd1d0910deb8b1e962d.png");
            book_urls.add("https://i0.hdslb.com/bfs/album/4468f61b04bb98ac13a1b210ce5e922e8c630d2b.png");
            map.put("book_urls", book_urls);
            // 当前所处阅读等级
            map.put("read_lev", 3);
            // 当前阅读量（这里的阅读量和之前的阅读书本数量以及阅读时长没有关系，是一个单位为 L 的数字）
            map.put("read_num", 400);

            return new JsonResult<>(map);
        } catch (Exception e) {
            return new JsonResult<>("-1", "操作错误");
        }
    }

    @GetMapping("getContrastReport")
    public JsonResult<Map<String, Object>> getContrastReport(@RequestParam("user_id") Integer user_id) {
        /**
         * @description: 获取横向对比的各项数据，单词、句子、对话、语法、演讲/写作五个模块
         * @return: JSON 数据
         */
        Map<String, Object> map = new HashMap<>();
        try {
            // 该学生的各项平均成绩
            map.put("my_avg_score", new int[] {50, 60, 40, 70, 80});
            // 所有学生的各项平均成绩
            map.put("all_avg_score", new int[] {60, 40, 50, 60, 40});

            return new JsonResult<>(map);
        } catch (Exception e) {
            return new JsonResult<>("-1", "操作错误");
        }
    }

}

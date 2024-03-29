package com.cisl.smt.web.Temp;

import lombok.Data;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Data
public class ProblemAnsTemp {
    /**
     * @description: 做题页面中某题的作答
     * @author: Hopenx
     * @date: 2020.10.19
     */

    //TODO 把判断正误的逻辑写在后台，而非前端

    private Long idx;
    private Long finish;
    private String choice;
    private String choice_text;
    private String prob_text;
    private String analysis;
    private String ans;
    private String point;
    private String type;   // 新增了一个题型变量
    private int eval_res; // 本题做对与做错

    //以下为新增布局相关
    private int showOrder;
    private String layoutType;
    private String stem_audio;
    private String stem_image;
    private String option_a_audio;
    private String option_b_audio;
    private String option_c_audio;
    private String option_d_audio;
    private String option_a_image;
    private String option_b_image;
    private String option_c_image;
    private String option_d_image;



    public void setChoice(String choice) {  // 设置选项的时候就判断正误
        this.choice = choice;
        if (this.type.equals("opt")) {
            if (this.choice.equalsIgnoreCase(this.ans))
                this.setEval_res(1);
            else this.setEval_res(0);
        }
    }


    public static String purify(String raw) {
        //筛选出所有字母
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < raw.length(); i++) {
            char c = raw.charAt(i);
            if (Character.isLowerCase(c) || Character.isUpperCase(c))
                sb.append(c);
        }
        return sb.toString().toLowerCase();
    }

    public static ArrayList<String> extractMultiAns(String raw) {
        ArrayList<String> ansList = new ArrayList<>();
        raw = raw.replace('(', '（');
        raw = raw.replace(')', '）');
        String regex = "（(.*?)）";   //匹配中文括号内的内容
        Pattern pattern = Pattern.compile(regex);
        Matcher matcher = pattern.matcher(raw);
        while (matcher.find()) {
            System.out.println(matcher.group(1));
            ansList.add(matcher.group(1));
        }
        return ansList;
    }

    public Boolean judgeTxt(String choice_text, String ans) {
        if (ans.contains("（")) {   //如果有多个答案
            ArrayList<String> ansList = new ArrayList<>();
            ansList.add(ans.substring(0, ans.indexOf("（")));
            ansList.addAll(extractMultiAns(ans));

            for (String txt : ansList) {
                if (purify(txt).equals(purify(choice_text))) {
                    return true;
                }
            }
        } else {   //如果只有一个答案
            return purify(ans).equals(purify(choice_text));
        }
        return false;
    }

    public void setChoice_text(String choice_text) {  // 设置选项的时候就判断正误
        this.choice_text = choice_text;
        System.out.println("答案:" + this.ans.trim());
        if (this.type.equals("txt")) {   //文本题的判断需要考虑：1.多个答案满足  2.多行匹配   3.标点符号
            String ans = this.ans.trim();
            ans = ans.replace("(", "（");
            ans = ans.replace(")", "）");

            if (ans.contains("\n")) {   //如果是问答题，分行
                String[] ansSplit = ans.split("\n");
                if (choice_text.contains("$")) {
                    String[] choiceSplit = choice_text.split("\\$");
                    System.out.println("116" + Arrays.toString(ansSplit));
                    System.out.println("117" + Arrays.toString(choiceSplit));
                    int corr = 0;
                    for (int i = 0; i < choiceSplit.length; i++) {
                        if(judgeTxt(choiceSplit[i], ansSplit[i]))
                            corr += 1;
                    }
                    if (corr == ansSplit.length)  //每一个分行都是对的
                        this.setEval_res(1);
                    else this.setEval_res(0);
                } else this.setEval_res(0);  //没有分行直接判错
            } else {
                if (judgeTxt(choice_text, ans))
                    this.setEval_res(1);
                else this.setEval_res(0);
            }


        }
    }

}

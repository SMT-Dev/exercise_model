package com.cisl.smt.web;

import com.cisl.smt.po.Problem;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;

@RestController
@RequestMapping(value = "/sheet")
public class SheetController {

    @GetMapping(path = "/get")
    public SheetTemporal getSheet(){
        SheetTemporal st = SheetTemporal.getInstance();   //获得唯一单例
        return st;
    }

    @PostMapping("/post")
    public String postSheet(@RequestParam("idx") Integer idx,
                            @RequestParam("finish") Integer finish,
                            @RequestParam("choice") String choice,
                            @RequestParam("text") String text){
        ProblemTemporal pt = new ProblemTemporal();
        pt.setIdx(idx);
        pt.setFinish(finish);
        pt.setChoice(choice);
        pt.setText(text);

        SheetTemporal st = SheetTemporal.getInstance();   //获得唯一单例
        boolean found = false;
        for (ProblemTemporal tmp:
             st.getSheet_list()) {
            if(pt.getIdx() == tmp.getIdx()){
                tmp.setChoice(pt.getChoice());
                tmp.setText(pt.getText());
                found = true;
                break;
            }
        }
        if(!found) st.addSheet_list(pt);

        return st.toString();
    }


}

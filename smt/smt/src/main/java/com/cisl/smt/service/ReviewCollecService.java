package com.cisl.smt.service;

import com.cisl.smt.po.ReviewCollection;


public interface ReviewCollecService {
    ReviewCollection getCollec(Long user_id);

    void setCollec(Long user_id, String prob_list);
}

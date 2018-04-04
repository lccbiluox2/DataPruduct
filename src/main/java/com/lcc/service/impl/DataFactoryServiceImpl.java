package com.lcc.service.impl;

import com.lcc.dao.DataFactoryDao;
import com.lcc.service.DataFactoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DataFactoryServiceImpl  implements DataFactoryService {

    @Autowired
    private DataFactoryDao dataFactoryDao;

}

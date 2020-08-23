
package org.school.service;

import java.util.List;
import org.school.model.Application;
import org.school.model.Notice;
import org.springframework.stereotype.Service;

@Service
public interface DispatchService {

    public List<Notice> getNoticeList();

    public void deleteNoticeById(int n_id);

    public List<Notice> finsNoticeByIdAndType(int i, String t);

    public List<Notice> findNoticeByType(String t);

    public boolean updateNotice(Notice notice);

    public boolean addNoticeToDB(Notice notice);

    public Notice getNoticeByID(int n_id);

    public List<Application> getApplicationList();

    public void deleteApplicationById(int a_id);
    
}

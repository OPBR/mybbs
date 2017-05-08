package org.zhangy.mybbs.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.QueryHints;
import org.zhangy.mybbs.entity.Content;
import org.zhangy.mybbs.entity.User;

import javax.persistence.QueryHint;
import java.util.List;

/**
 * Created by DELL on 2017/4/10.
 */
public interface ContentDao extends JpaRepository<Content,String> {
    @QueryHints(value = {
            @QueryHint(name = "org.hibernate.cacheable", value = "true"),
            @QueryHint(name = "org.hibernate.cacheRegion", value = "org.zhangy.mybbs.entity.Content")
        }
    )
    @Query("from Content m order by m.current DESC, m.count DESC")
    public List<Content> findContentAll();

    @Query("from Content m order by m.count DESC, m.current DESC")
    public List<Content> findContentAllByCount();

    public List<Content> findByUser(User user);
}

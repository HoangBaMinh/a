package com.example.vinfast.dao.impl;

import com.example.vinfast.dao.IBlogDAO;
import com.example.vinfast.mapper.impl.BlogMapper;
import com.example.vinfast.mapper.impl.UserMapper;
import com.example.vinfast.model.Blog;

import java.util.List;

public class BlogDAO extends  AbstractDAO<Blog> implements IBlogDAO {

    @Override
    public List<Blog> findAllBlogs() {
        String query = "SELECT BlogId, Title, Content, AuthorId, CategoryId, Thumbnail, Tags, Views, CreatedAt, UpdatedAt FROM Blog";
        return query(query, new BlogMapper());
    }

    @Override
    public void createBlog(Blog blog) {
        String query =
                """
                INSERT INTO Blogs (Title, Content, AuthorId, CategoryId, Thumbnail, Tags, Views)
                VALUES(?, ?, ?, ?, ?, ?, ?)
                """;

        insert(
                query,
                blog.getTitle(),
                blog.getContent(),
                blog.getAuthorID(),
                blog.getCategoryID(),
                blog.getThumbnail(),
                blog.getTags(),
                blog.getViews()
        );
    }

    @Override
    public void updateBlog(Blog blog) {
        String query =
                """
                UPDATE Blogs SET Title = ?, Content = ?, AuthorID = ?, CategoryId = ?, Thumbnail = ?, Tags = ?, Views = ?
                WHERE blogId = ?;
                """;
        update(query, blog.getTitle(), blog.getContent(), blog.getAuthorID(), blog.getCategoryID(), blog.getThumbnail(), blog.getTags(), blog.getViews(), blog.getBlogID());
    }

    @Override
    public void deleteBlog(int id) {
        String query = "DELETE FROM Blogs WHERE blogId = ?;";
        delete(query, id);
    }

    @Override
    public Blog findByID(int id) {
        String query =
                """
                        SELECT BlogId, Title, Content, AuthorId, CategoryId, Thumbnail, Tags, Views
                        FROM Blogs
                        WHERE blogId = ?;
                        """;
        List<Blog> list = query(query, new BlogMapper(), id);
        return list.isEmpty() ? null: list.getFirst();
    }
}

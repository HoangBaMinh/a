package com.example.vinfast.filter;

import com.example.vinfast.model.Users;
import com.example.vinfast.util.SessionUtil;
import jakarta.servlet.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

public class AuthenticationFilter implements Filter {
    private ServletContext scontext;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.scontext = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse resp = (HttpServletResponse) response;
        String url = req.getRequestURI().substring(req.getContextPath().length());
        if (url.startsWith("/admin")) {
            Users user = (Users) SessionUtil.getInstance().getValue(req, "INFUSER");
            if (user != null) {
                String role = user.getRole();
                if (role != null && role.equalsIgnoreCase("Admin")) {
                    chain.doFilter(request, response);
                } else {
                    resp.sendRedirect(req.getContextPath() + "/login?action=login&alert=danger&message=You+are+not+admin");
                }
            } else {
                resp.sendRedirect(req.getContextPath() + "/login?action=login&alert=danger&message=You+don't+login");
            }
        } else {
            chain.doFilter(request, response);
        }
    }

    @Override
    public void destroy() {

    }
}

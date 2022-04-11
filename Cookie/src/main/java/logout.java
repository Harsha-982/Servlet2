import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/logout")
public class logout extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        PrintWriter out=response.getWriter();

        request.getRequestDispatcher("link.jsp").include(request,response);
        Cookie[] cookies=request.getCookies();

        response.setHeader("Cache-Control","no-cache , no-store , must-revalidate");
        Cookie j=new Cookie("JSESSIONID","");
        j.setMaxAge(0);
        response.addCookie(j);
        if(cookies!=null){
            for(Cookie cookie:cookies){
                if(cookie.getName().equals("name")){
                    String name=cookie.getValue();
                    cookie.setValue(null);
                    cookie.setMaxAge(0);
                    response.addCookie(cookie);
                    out.println("<br>");
                    out.println("Hi "+name+" you have logged out successfully");
                }
            }
        }
        else{
            out.println("you have already logged out");
        }

    }
}

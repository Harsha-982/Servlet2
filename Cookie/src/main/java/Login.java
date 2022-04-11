import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class Login extends HttpServlet {
    public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        PrintWriter out=response.getWriter();

        response.setHeader("Cache-Control","no-cache , no-store , must-revalidate");

        request.getRequestDispatcher("link.jsp").include(request,response);
        String name=request.getParameter("name");
        if(!name.equals("Harsha")){
            out.println("Sorry, Wrong user please enter again");
            request.getRequestDispatcher("index.jsp").include(request,response);
        }
        else{
            out.println("<br>");
            out.println("Hi "+name+" you have logged in successfully" );
            Cookie cookie=new Cookie("name",name);
            response.addCookie(cookie);
        }
        out.close();
    }

}

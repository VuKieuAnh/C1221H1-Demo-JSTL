import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //b1: Lay thong tin
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        //b2: so sanh thong tin va tra ve ket qua
        if (name.equals("ka") && password.equals("123")){
            PrintWriter writer = response.getWriter();
            writer.println("Dang nhap thanh cong");
        }
        else {
            PrintWriter writer = response.getWriter();
            writer.println("Loi");
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //b1: Lay thong tin
        String name = request.getParameter("username");
        String password = request.getParameter("password");
        //b2: so sanh thong tin va tra ve ket qua
        if (name.equals("ka") && password.equals("123")){
            PrintWriter writer = response.getWriter();
            writer.println("Dang nhap thanh cong");
        }
        else {
            PrintWriter writer = response.getWriter();
            writer.println("Loi");
        }
    }
}

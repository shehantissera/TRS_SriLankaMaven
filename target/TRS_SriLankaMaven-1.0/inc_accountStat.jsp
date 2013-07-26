<%! String printContent; %>
<%
    if (session.getAttribute("userLogin") == null)
    {
        printContent = "<div class='second-top-box'>"+
            "<div class='container-box'>"+
                "<span class='welcome-msg pull-left'>Welcome visiter, you can <a href='login.jsp'>login</a> or <a href='create_account.jsp'>create an account</a>.</span>"+
                "<ul class='pull-right'>"+
                    "<li><a href='myaccount.jsp'>My Account</a></li>"+
                    "<li><a href='#'>My Places</a></li>"+
                    "<li><a href='logout.jsp'>Logout</a></li></ul></div></div>";
        out.print(printContent);
    }
    else
    {
        printContent = "<div class='second-top-box'>"+
            "<div class='container-box'>"+
                "<span class='welcome-msg pull-left'>Welcome " +session.getAttribute("fname")+" "+session.getAttribute("lname") +", please feel free to use this site as your wish.</span>"+
                "<ul class='pull-right'>"+
                    "<li><a href='myaccount.jsp'>My Account</a></li>"+
                    "<li><a href='#'>My Places</a></li>"+
                    "<li><a href='logout.jsp'>Logout</a></li></ul></div></div>";
        out.print(printContent);
    }
%>
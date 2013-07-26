<%@ page language="java" import="java.sql.*" %>
<%@ page language="java" import="Models.DBCON" %>
<% response.setContentType("text/html");%>
<%
    String str = request.getParameter("queryString");
    try {
        DBCON ob = new DBCON();
        Connection con = null;
        CallableStatement cs = null;
        con = ob.createConnection();
        String sql = "SELECT trs_srilanka.sys_sights.SID as IID , trs_srilanka.sys_sights.S_name as Name, trs_srilanka.sys_sights.S_description as Description, trs_srilanka.sys_sights.GEOID as Location FROM trs_srilanka.sys_sights where S_name like '%" + str + "%' or S_description like '%" + str + "%' union SELECT trs_srilanka.sys_services.SVID as IID, trs_srilanka.sys_services.SV_companyName as Name, trs_srilanka.sys_services.SV_description as Description, trs_srilanka.sys_services.GEOID as Location FROM trs_srilanka.sys_services where SV_companyName like '%" + str + "%' or SV_description like '%" + str + "%' union  SELECT trs_srilanka.sys_tours.TRID as IID, trs_srilanka.sys_tours.T_title as Name, trs_srilanka.sys_tours.T_itinary as Description, trs_srilanka.sys_tours.GEOID as Location FROM trs_srilanka.sys_tours where T_title like '%" + str + "%' or T_itinary like '%" + str + "%' limit 15";
        Statement stm = con.createStatement();
        ResultSet rs = stm.executeQuery(sql);
        while (rs.next()) {
            out.println("<li onclick='search(" + rs.getString("IID") + ");'>" + rs.getString("Name") + "</li>");
        }
    } catch (Exception e) {
        out.println("Exception is ;" + e);
    }

%>

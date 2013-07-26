/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Shehan Tis
 */
public class Login {

    public User existingLogin(String user, String pass) {
        ResultSet rs = null;
        User loginUser = new User();
        String _user = "";
        String _pass = "";
        try {
            String str = "SELECT *, DES_DECRYPT(US_password,'shehanproduction@ymail.com') FROM trs_srilanka.sys_users where US_email=?";
            Connection con = null;
            DBCON ob = new DBCON();
            con = ob.createConnection();
            PreparedStatement ps = con.prepareStatement(str);
            ps.setString(1, user);
            rs = ps.executeQuery();
            if (rs.next()) {
                if (user.equals(rs.getString(6)) & pass.equals(rs.getString(11))) {
                    loginUser.setUSID(rs.getLong(1));
                    loginUser.setFname(rs.getString(2));
                    loginUser.setLname(rs.getString(3));
                    loginUser.setEmail(rs.getString(6));
                    loginUser.setPassword(rs.getString(11));
                    loginUser.setAccountStatus(rs.getString(10));
                } else {
                    loginUser.setAccountStatus("Inactive");
                }
            }else{
                loginUser.setAccountStatus("Inactive");
            }
        } catch (Exception es) {
            loginUser = null;
        }
        return loginUser;
    }
}

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.CallableStatement;
import java.sql.Connection;

/**
 *
 * @author Shehan Tis
 */
public class User {
    
    private long USID;

    public long getUSID() {
        return USID;
    }

    public void setUSID(long USID) {
        this.USID = USID;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getAgeRange() {
        return ageRange;
    }

    public void setAgeRange(String ageRange) {
        this.ageRange = ageRange;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getUsertype() {
        return usertype;
    }

    public void setUsertype(String usertype) {
        this.usertype = usertype;
    }

    public String getAccountStatus() {
        return accountStatus;
    }

    public void setAccountStatus(String accountStatus) {
        this.accountStatus = accountStatus;
    }
    private String fname;
    private String lname;
    private String ageRange;
    private String gender;
    private String email;
    private String password;
    private String country;
    private String usertype;
    private String accountStatus;
    
    public User insertUser(User rec){
        User flag = null;
        try {
            DBCON ob = new DBCON();
            Connection con = null;
            CallableStatement cs = null;
            con = ob.createConnection();
            cs = con.prepareCall("{call trs_srilanka.insertUser(?,?,?,?,?,?,?,?,?,?)}");
            cs.setLong(1, rec.getUSID());
            cs.setString(2, rec.getFname());
            cs.setString(3, rec.getLname());
            cs.setString(4, rec.getAgeRange());
            cs.setString(5, rec.getGender());
            cs.setString(6, rec.getEmail());
            cs.setString(7, rec.getPassword());
            cs.setString(8, rec.getCountry());
            cs.setString(9, rec.getUsertype());
            cs.setString(10, rec.getAccountStatus());
            int res = cs.executeUpdate();
            if(res>0){
                flag = rec;
            }
            else{
                flag = null;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return flag;
    }
}

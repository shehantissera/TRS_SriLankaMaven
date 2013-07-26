/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.CallableStatement;
import java.sql.Connection;

/**
 *
 * @author shehan1
 */
public class Service {

    public long getSVID() {
        return SVID;
    }

    public void setSVID(long SVID) {
        this.SVID = SVID;
    }

    public String getCompanyname() {
        return companyname;
    }

    public void setCompanyname(String companyname) {
        this.companyname = companyname;
    }

    public String getProvidername() {
        return providername;
    }

    public void setProvidername(String providername) {
        this.providername = providername;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getLandline() {
        return landline;
    }

    public void setLandline(String landline) {
        this.landline = landline;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getSkype() {
        return skype;
    }

    public void setSkype(String skype) {
        this.skype = skype;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getServicetype() {
        return servicetype;
    }

    public void setServicetype(String servicetype) {
        this.servicetype = servicetype;
    }

    public long getLOCID() {
        return LOCID;
    }

    public void setLOCID(long LOCID) {
        this.LOCID = LOCID;
    }

    public long getGEOID() {
        return GEOID;
    }

    public void setGEOID(long GEOID) {
        this.GEOID = GEOID;
    }
    
    private long SVID;
    private String companyname;
    private String providername;
    private String description;
    private String email;
    private String landline;
    private String mobile;
    private String skype;
    private String address;
    private String servicetype;
    private long LOCID;
    private long GEOID;
    
    public Service insertService(Service rec){
        Service flag = null;
        try {
            DBCON ob = new DBCON();
            Connection con = null;
            CallableStatement cs = null;
            con = ob.createConnection();
            cs = con.prepareCall("{call trs_srilanka.insertService(?,?,?,?,?,?,?,?,?,?,?,?)}");
            cs.setLong(1, rec.getSVID());
            cs.setString(2, rec.getCompanyname());
            cs.setString(3, rec.getProvidername());
            cs.setString(4, rec.getDescription());
            cs.setString(5, rec.getEmail());
            cs.setString(6, rec.getLandline());
            cs.setString(7, rec.getMobile());
            cs.setString(8, rec.getSkype());
            cs.setString(9, rec.getAddress());
            cs.setString(10, rec.getServicetype());
            cs.setLong(11, rec.getLOCID());
            cs.setLong(12, rec.getGEOID());
            
            int res = cs.executeUpdate();
            if(res>0){
                flag = rec;
            }else{
                flag = null;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return flag;
    }
}

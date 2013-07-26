/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.util.ArrayList;

/**
 *
 * @author Shehan Tis
 */
public class Sight {

    public long getSID() {
        return SID;
    }

    public void setSID(long SID) {
        this.SID = SID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief;
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

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getEntrance() {
        return entrance;
    }

    public void setEntrance(String entrance) {
        this.entrance = entrance;
    }

    public String getAdult() {
        return adult;
    }

    public void setAdult(String adult) {
        this.adult = adult;
    }

    public String getChild() {
        return child;
    }

    public void setChild(String child) {
        this.child = child;
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
    
    private long SID;
    private String name;
    private String brief;
    private String landline;
    private String mobile;
    private String description;
    private String entrance;
    private String adult;
    private String child;
    private long LOCID;
    private long GEOID;
    
    public Sight insertSight(Sight rec){
        Sight flag = null;
        try {
            DBCON ob = new DBCON();
            Connection con = null;
            CallableStatement cs = null;
            con = ob.createConnection();
            cs = con.prepareCall("{call trs_srilanka.insertSight(?,?,?,?,?,?,?,?,?,?,?)}");
            cs.setLong(1, rec.getSID());
            cs.setString(2, rec.getName());
            cs.setString(3, rec.getBrief());
            cs.setString(4, rec.getLandline());
            cs.setString(5, rec.getMobile());
            cs.setString(6, rec.getDescription());
            cs.setString(7, rec.getEntrance());
            cs.setString(8, rec.getAdult());
            cs.setString(9, rec.getChild());
            cs.setLong(10, rec.getLOCID());
            cs.setLong(11, rec.getGEOID());
            
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

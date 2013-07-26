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
public class Record {

    public long getRECID() {
        return RECID;
    }

    public void setRECID(long RECID) {
        this.RECID = RECID;
    }

    public long getUSID() {
        return USID;
    }

    public void setUSID(long USID) {
        this.USID = USID;
    }

    public long getREFID() {
        return REFID;
    }

    public void setREFID(long REFID) {
        this.REFID = REFID;
    }

    public String getTask() {
        return task;
    }

    public void setTask(String task) {
        this.task = task;
    }

    public String getDatetime() {
        return datetime;
    }

    public void setDatetime(String datetime) {
        this.datetime = datetime;
    }
    
    private long RECID;
    private long USID;
    private long REFID;
    private String task;
    private String datetime;
    
    public boolean insertRecordStatus(Record rec){
        boolean flag = false;
        try {
            DBCON ob = new DBCON();
            Connection con = null;
            CallableStatement cs = null;
            con = ob.createConnection();
            cs = con.prepareCall("{call trs_srilanka.addRecordStatus(?,?,?,?,?)}");
            cs.setLong(1, rec.getRECID());
            cs.setLong(2, rec.getUSID());
            cs.setLong(3, rec.getREFID());
            cs.setString(4, rec.getTask());
            cs.setString(5, rec.getDatetime());
            
            int res = cs.executeUpdate();
            if(res>0){
                flag = true;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return flag;
    }
}

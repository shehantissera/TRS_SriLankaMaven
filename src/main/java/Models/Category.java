/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Models;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.Iterator;

/**
 *
 * @author Shehan Tis
 */
public class Category {

    public void insertCategoryDetails(ArrayList<String> rec,long REFID) {
        try {
            DBCON ob = new DBCON();
            Connection con = null;
            CallableStatement cs = null;
            con = ob.createConnection();
            cs = con.prepareCall("{call trs_srilanka.insertCategory(?,?,?)}");
            Iterator iter = rec.iterator();
            UniqueKeyGenerator key = new UniqueKeyGenerator();
            int count = 1;
            while (iter.hasNext()) {
                cs.setLong(1, key.generateNewKey());
                cs.setLong(2, REFID);
                cs.setLong(3, Long.parseLong(rec.get(count)));
                cs.executeUpdate();
                count++;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}

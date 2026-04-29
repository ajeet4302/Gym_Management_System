package dao;

import org.hibernate.Session;
import org.hibernate.query.Query;
import model.Admin;
import util.HibernateUtil;

public class AdminDAO {

    public boolean checkLogin(String username, String password) {
        try (Session session = HibernateUtil.getSessionFactory().openSession()) {

            // HQL query must match the entity class name and its fields
            String hql = "from Admin where username = :u and password = :p";
            Query<Admin> query = session.createQuery(hql, Admin.class);
            query.setParameter("u", username);
            query.setParameter("p", password);

            return !query.list().isEmpty();

        } catch (Exception e) {
            e.printStackTrace(); // log error in server console
            return false;
        }
    }
}
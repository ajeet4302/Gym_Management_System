
package dao;

import org.hibernate.Session;
import org.hibernate.Transaction;
import java.util.List;
import model.Trainer;
import util.HibernateUtil;

public class TrainerDAO {

    // Get all trainers
    public List<Trainer> getAllTrainers() {
        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Trainer> list = session.createQuery("from Trainer", Trainer.class).list();
        session.close();
        return list;
    }

    // Get trainer by ID
    public Trainer getTrainerById(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Trainer t = session.get(Trainer.class, id);
        session.close();
        return t;
    }

    // Update trainer
    public void updateTrainer(Trainer t) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.update(t);
        tx.commit();
        session.close();
    }

    // Add trainer
    public void addTrainer(Trainer t) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        session.save(t);
        tx.commit();
        session.close();
    }

    // Delete trainer
    public void deleteTrainer(int id) {
        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();
        Trainer t = session.get(Trainer.class, id);
        if (t != null) session.delete(t);
        tx.commit();
        session.close();
    }
}
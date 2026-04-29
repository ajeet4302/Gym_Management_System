package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import model.Member;
import util.HibernateUtil;

public class MemberDAO {

    public void addMember(Member member) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        session.save(member);

        tx.commit();
        session.close();
    }

    public List<Member> getAllMembers() {

        Session session = HibernateUtil.getSessionFactory().openSession();
        List<Member> list = session.createQuery("from Member", Member.class).list();
        session.close();

        return list;
    }

    public Member getMemberById(int id) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        Member member = session.get(Member.class, id);
        session.close();

        return member;
    }

    public void updateMember(Member member) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        session.update(member);

        tx.commit();
        session.close();
    }

    public void deleteMember(int id) {

        Session session = HibernateUtil.getSessionFactory().openSession();
        Transaction tx = session.beginTransaction();

        Member member = session.get(Member.class, id);
        if (member != null) {
            session.delete(member);
        }

        tx.commit();
        session.close();
    }
}
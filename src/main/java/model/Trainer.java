package model;

import javax.persistence.*;

@Entity
@Table(name="TRAINER")
public class Trainer {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator="trainer_seq_gen")
    @SequenceGenerator(name="trainer_seq_gen", sequenceName="TRAINER_SEQ", allocationSize=1)
    @Column(name="TRAINER_ID")
    private int id;

    @Column(name="NAME")
    private String name;

    @Column(name="SPECIALITY")
    private String speciality;

    @Column(name="PHONE")
    private String phone;

    @Column(name="EXPERIENCE")
    private int experience;

    public Trainer(){}

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSpeciality() {
        return speciality;
    }

    public void setSpeciality(String speciality) {
        this.speciality = speciality;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getExperience() {
        return experience;
    }

    public void setExperience(int experience) {
        this.experience = experience;
    }
}
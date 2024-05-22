package com.example.mvc2bootstrapcrud.entity;

public class User {
    protected int id;
    protected String name;
    protected String birthday;
    protected String address;
    protected String position;
    protected String department;

    public User() {}

    public User(String name, String birthday, String address, String position, String department) {
        super();
        this.name = name;
        this.birthday = birthday;
        this.address = address;
        this.position = position;
        this.department = department;
    }

    public User(int id, String name, String birthday, String address, String position, String department) {
        super();
        this.id = id;
        this.name = name;
        this.birthday = birthday;
        this.address = address;
        this.position = position;
        this.department = department;
    }

    public String getBirthday() {
        return birthday;
    }

    public String getAddress() {
        return address;
    }

    public String getPosition() {
        return position;
    }

    public String getDepartment() {
        return department;
    }

    public String getName() {
        return name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}

package com.simplilearn.doa;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.simplilearn.entity.*;
import com.simplilearn.entity.Class;
import com.simplilearn.util.HibernateUtil;

public class AppDAO {
public static void addStudent(Student student){
	// step 1 build session factory object
	SessionFactory sf=HibernateUtil.buildSessionFactor();
	// step 2 open session
	Session session=sf.openSession();
	// step 3 begin transaction
	Transaction tx=session.beginTransaction();
	// step 4 save session
	session.save(student);
	tx.commit();
	session.close();
}

public static List<Student> listStudent(){
	
	// step 1 build session factory object
	SessionFactory sf=HibernateUtil.buildSessionFactor();
	// step 2 open session
	Session session=sf.openSession();
	//step 3 DB Query
	List<Student> students=session.createQuery(" from Student ").list();
	session.close();
	return students;
}


public static void addTeacher(Teacher teacher){
	// step 1 build session factory object
	SessionFactory sf=HibernateUtil.buildSessionFactor();
	// step 2 open session
	Session session=sf.openSession();
	// step 3 begin transaction
	Transaction tx=session.beginTransaction();
	// step 4 save session
	session.save(teacher);
	tx.commit();
	session.close();
}

public static List<Teacher> listTeacher(){
	
	// step 1 build session factory object
	SessionFactory sf=HibernateUtil.buildSessionFactor();
	// step 2 open session
	Session session=sf.openSession();
	//step 3 DB Query
	List<Teacher> teachers=session.createQuery(" from Teacher ").list();
	session.close();
	return teachers;
}

public static void addSubject(Subject subject){
	// step 1 build session factory object
	SessionFactory sf=HibernateUtil.buildSessionFactor();
	// step 2 open session
	Session session=sf.openSession();
	// step 3 begin transaction
	Transaction tx=session.beginTransaction();
	// step 4 save session
	session.save(subject);
	tx.commit();
	session.close();
}

public static List<Subject> listSubject(){
	
	// step 1 build session factory object
	SessionFactory sf=HibernateUtil.buildSessionFactor();
	// step 2 open session
	Session session=sf.openSession();
	//step 3 DB Query
	List<Subject> subjects=session.createQuery(" from Subject ").list();
	session.close();
	return subjects;
}

public static void addClass(Class classs){
	// step 1 build session factory object
	SessionFactory sf=HibernateUtil.buildSessionFactor();
	// step 2 open session
	Session session=sf.openSession();
	// step 3 begin transaction
	Transaction tx=session.beginTransaction();
	// step 4 save session
	session.save(classs);
	tx.commit();
	session.close();
}

public static List<Class> listClass(){
	
	// step 1 build session factory object
	SessionFactory sf=HibernateUtil.buildSessionFactor();
	// step 2 open session
	Session session=sf.openSession();
	//step 3 DB Query
	List<Class> Classss=session.createQuery(" from Class ").list();
	session.close();
	return Classss;
}
public static void addSubjectClass(SubjectClass sclasss){
	// step 1 build session factory object
	SessionFactory sf=HibernateUtil.buildSessionFactor();
	// step 2 open session
	Session session=sf.openSession();
	// step 3 begin transaction
	Transaction tx=session.beginTransaction();
	// step 4 save session
	session.save(sclasss);
	tx.commit();
	session.close();
}

public static List<SubjectClass> listSubjectClass(){
	
	// step 1 build session factory object
	SessionFactory sf=HibernateUtil.buildSessionFactor();
	// step 2 open session
	Session session=sf.openSession();
	//step 3 DB Query
	List<SubjectClass> sClassss=session.createQuery(" from SubjectClass ").list();
	session.close();
	return sClassss;
}

public static void addStudentClasss(StudentClass sstclasss){
	// step 1 build session factory object
	SessionFactory sf=HibernateUtil.buildSessionFactor();
	// step 2 open session
	Session session=sf.openSession();
	// step 3 begin transaction
	Transaction tx=session.beginTransaction();
	// step 4 save session
	session.save(sstclasss);
	tx.commit();
	session.close();
}

public static List<StudentClass> listStudentClass(){
	
	// step 1 build session factory object
	SessionFactory sf=HibernateUtil.buildSessionFactor();
	// step 2 open session
	Session session=sf.openSession();
	//step 3 DB Query
	List<StudentClass> stClassss=session.createQuery(" from StudentClass ").list();
	session.close();
	return stClassss;
}


public static void addTeacherClassSubject(TeacherClassSubject tcs){
	// step 1 build session factory object
	SessionFactory sf=HibernateUtil.buildSessionFactor();
	// step 2 open session
	Session session=sf.openSession();
	// step 3 begin transaction
	Transaction tx=session.beginTransaction();
	// step 4 save session
	session.save(tcs);
	tx.commit();
	session.close();
}

public static List<TeacherClassSubject> listTeacherClassSubject(){
	
	// step 1 build session factory object
	SessionFactory sf=HibernateUtil.buildSessionFactor();
	// step 2 open session
	Session session=sf.openSession();
	//step 3 DB Query
	List<TeacherClassSubject> tcs=session.createQuery(" from TeacherClassSubject ").list();
	session.close();
	return tcs;
}
}

package com.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.bean.ContactUs;
import com.bean.Custom;
import com.bean.UserReg;
import com.util.UserUtil;

public class UserDao {
	
	public void InsertUser(UserReg ur)
	{
		UserUtil uu=new UserUtil();
		Session session=uu.getsession();
		Transaction tr=session.beginTransaction();
		session.save(ur);
		tr.commit();
		session.close();
	}
	
	public void UpdateUser(UserReg ur)
	{
		UserUtil uu=new UserUtil();
		Session session=uu.getsession();
		Transaction tr=session.beginTransaction();
		session.update(ur);
		tr.commit();
		session.close();
	}
	
	public void DeleteUser(int id)
	{
		UserUtil uu=new UserUtil();
		Session session=uu.getsession();
		Transaction tr=session.beginTransaction();
		UserReg ur=(UserReg) session.get(UserReg.class, id);
		session.delete(ur);
		tr.commit();
		session.close();
	}
	
	public List<UserReg> getAllUser()
	{
		UserUtil uu=new UserUtil();
		Session session=uu.getsession();
		List<UserReg> records=session.createQuery("from User").list();
		return records;
	}
	
	public UserReg getUserById(int id)
	{
		UserUtil uu=new UserUtil();
		Session session=uu.getsession();
		UserReg ur=(UserReg) session.get(UserReg.class, id);
		return ur;
	}
	
	public UserReg selectuser(UserReg ur)
	{
		UserUtil uu=new UserUtil();
		Session session=uu.getsession();
		Transaction tr=session.beginTransaction();
		String sql="From UserReg u where u.emailid='"+ur.getEmailid()+"' and u.password='"+ur.getPassword()+"' ";
		Query query = session.createQuery(sql);
		UserReg VaildUser = (UserReg) query.uniqueResult();
		return VaildUser;
		
	}
	
	public UserReg forgetpassword(String  inputemail)
	{
		UserReg ur= new UserReg();
		UserUtil uu=new UserUtil();
		Session session=uu.getsession();
		Transaction tr=session.beginTransaction();
		String hql="From UserReg u where u.emailid = '"+inputemail+"'";
		Query query=session.createQuery(hql);
		
		ur = (UserReg) query.uniqueResult();
		
		return ur;
		
	}
	
	public void UpdatePassword(String npass,String rnpass,int id)
	   {
		    UserUtil uu=new UserUtil();
			Session session=uu.getsession();
			Transaction tr=session.beginTransaction();
			UserReg ur=(UserReg) session.get(UserReg.class, id);
			ur.setPassword(npass);
			ur.setRepassword(rnpass);
			session.update(ur);
			tr.commit();
			session.close();
	   }
	
	 public void CustomInsert(Custom c)
		{
			UserUtil uu=new UserUtil();
			Session session=uu.getsession();
			Transaction tr=session.beginTransaction();
			session.save(c);
			tr.commit();
			session.close();
		}
	 public void ContactIntsert(ContactUs cu)
		{
			UserUtil uu=new UserUtil();
			Session session=uu.getsession();
			Transaction tr=session.beginTransaction();
			session.save(cu);
			tr.commit();
			session.close();
		}
}

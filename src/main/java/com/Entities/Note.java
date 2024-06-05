package com.Entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Note {

	@Id
	@GeneratedValue (strategy =GenerationType.IDENTITY)
	@Column(name="Id")
	private int id;
	
	@Column(name="Title",length=300)
	private String title;
	@Column(name="Content",length=2000)
	private String content;
	@Column(name="Add_Date")
	private Date adddate;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getAdddate() {
		return adddate;
	}
	public void setAdddate(Date adddate) {
		this.adddate = adddate;
	}
	public Note() {
		
	}
	public Note(int id, String title, String content, Date adddate) {
		super();
		this.id = new Random().nextInt(100000);
		this.title = title;
		this.content = content;
		this.adddate = adddate;
	}
	
	public Note(String title, String content, Date adddate) {
		super();
		this.title = title;
		this.content = content;
		this.adddate = adddate;
	}
	@Override
	public String toString() {
		return "Book [id=" + id + ", title=" + title + ", content=" + content + ", adddate=" + adddate + "]";
	}
	
	
}

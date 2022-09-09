package com.entities;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "NoteTable")
public class NoteConfig {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int noteId;
	@Column(length = 100)
	private String noteTitle;
	@Column(length = 1500)
	private String noteDesc;
	private Date createDate;

	public NoteConfig(String noteTitle, String noteDesc, Date createDate) {
		super();
		this.noteTitle = noteTitle;
		this.noteDesc = noteDesc;
		this.createDate = createDate;
	}

	public NoteConfig() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getNoteId() {
		return noteId;
	}

	public void setNoteId(int noteId) {
		this.noteId = noteId;
	}

	public String getNoteTitle() {
		return noteTitle;
	}

	public void setNoteTitle(String noteTitle) {
		this.noteTitle = noteTitle;
	}

	public String getNoteDesc() {
		return noteDesc;
	}

	public void setNoteDesc(String noteDesc) {
		this.noteDesc = noteDesc;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

}

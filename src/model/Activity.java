package model;

import java.io.File;
import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class Activity {
	private int Id;
	private String name;
	private int classes;
	private int isLong;
	private Date begin;
	private Date end;
	private int teamNum;
	private int commentNum;
	private String content;
	private String warning;
	private int owner;
	private String img;
	
	private File image;
	 
	
	public File getImage() {
	    return image;
	}
	 
	public void setImage(File image) {
	   this.image = image;
	}
	public int getId() {
		return Id;
	}
	public void setId(int Id) {
		this.Id = Id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getClasses() {
		return classes;
	}

	public void setClasses(int classes) {
		this.classes = classes;
	}
	public int getIsLong() {
		return isLong;
	}

	public void setIsLong(int islong) {
		this.isLong =islong;
	}
	public Date getBegin() {
		return begin;
	}
	public void setBegin(Date begin) {
		this.begin = begin;
	}
	public Date getEnd() {
		return end;
	}
	public void setEnd(Date end) {
		this.end = end;
	}
	public int getTeamNum() {
		return teamNum;
	}
	public void setTeamNum(int teamNum) {
		this.teamNum = teamNum;
	}
	public int getCommentNum() {
		return commentNum;
	}
	public void setCommentNum(int commentNum) {
		this.commentNum = commentNum;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getWarning() {
		return warning;
	}
	public void setWarning(String warning) {
		this.warning = warning;
	}
	public int getOwner() {
		return owner;
	}
	public void setOwner(int owner) {
		this.owner = owner;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
}

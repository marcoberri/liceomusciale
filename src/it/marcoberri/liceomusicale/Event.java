package it.marcoberri.liceomusicale;

public class Event {

	protected String title;
	protected String body;
	protected String date;
	protected String id;
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getBody() {
		return body;
	}
	public void setBody(String body) {
		this.body = body;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "Event [title=" + title + ", body=" + body + ", date=" + date + ", id=" + id + ", getTitle()=" + getTitle() + ", getBody()=" + getBody() + ", getDate()=" + getDate() + ", getId()=" + getId() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()=" + super.toString() + "]";
	}
	
	
}

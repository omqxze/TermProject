package BM.com.dao;

import java.io.Serializable;
public class Player implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4299325636263031606L;
	private String p_id;
	private String p_name;
	private Integer p_age;
	private String p_nat;
	private String p_club;
	private String p_position;
	private Integer p_number;
	private String p_joined;
	private String p_loan;
	private String p_loanUntil;
	private String p_height;
	private String p_weight;
	
	public Player() {
		super();
	}
	
	public Player(String p_id,String p_name,Integer p_age) {
		this.p_id=p_id;
		this.p_name=p_name;
		this.p_age=p_age;
	}
	
	public String getp_id() {
		return p_id;
	}
	
	public void setp_id(String id) {
		this.p_id=id;
	}
	
	public String getp_name() {
		return p_name;
	}
	
	public void setp_name(String n) {
		this.p_name=n;
	}
	
	public Integer getp_age() {
		return p_age;
	}
	
	public void setp_age(Integer u) {
		this.p_age=u;
	}
	
	public String getp_nat() {
		return p_nat;
	}
	
	public void setp_nat(String p) {
		this.p_nat=p;
	}
	
	public String getp_club() {
		return p_club;
	}
	
	public void setp_club(String c) {
		this.p_club=c;
	}
	
	public String getp_position() {
		return p_position;
	}
	
	public void setp_position(String c) {
		this.p_position=c;
	}
	
	public Integer getp_number() {
		return p_number;
	}
	
	public void setp_number(Integer u) {
		this.p_number=u;
	}
	
	public String getp_joined() {
		return p_joined;
	}
	
	public void setp_joined(String p_joined) {
		this.p_joined=p_joined;
	}
	
	public String getp_loan() {
		return p_loan;
	}
	
	public void setp_loan(String q) {
		this.p_loan=q;
	}
	
	public String getp_loanUntil() {
		return p_loanUntil;
	}
	
	public void setp_loanUntil(String q) {
		this.p_loanUntil=q;
	}
	
	public String getp_height() {
		return p_height;
	}
	
	public void setp_height(String q) {
		this.p_height=q;
	}
	
	public String getp_weight() {
		return p_weight;
	}
	
	public void setp_weight(String q) {
		this.p_weight=q;
	}
}

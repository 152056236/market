package mypackage;

import java.io.Serializable;

public class ckxx implements Serializable {

   	private static final long serialVersionUID = -2547245654057778522L;
   	
   	private String id="";
   	
   	private String lx="";
   	
   	private String ypid="";
   	
   	private String sl="";
   	
   	private String dj="";
   	
   	private String je="";

    private String rq="";
	
	public void setId(String id) {
		this.id = id; 
	}

	public void setLx(String lx) {
		this.lx = lx; 
	}

	public void setYpid(String ypid) {
		this.ypid = ypid; 
	}

	public void setSl(String sl) {
		this.sl = sl; 
	}

	public void setDj(String dj) {
		this.dj = dj; 
	}

	public void setJe(String je) {
		this.je = je; 
	}

	public String getId() {
		return (this.id); 
	}

	public String getLx() {
		return (this.lx); 
	}

	public String getYpid() {
		return (this.ypid); 
	}

	public String getSl() {
		return (this.sl); 
	}

	public String getDj() {
		return (this.dj); 
	}

	public String getJe() {
		return (this.je); 
	}

	
	public void setRq(String rq) {
		this.rq = rq; 
	}

	public String getRq() {
		return (this.rq); 
	}
   	
    
    
}
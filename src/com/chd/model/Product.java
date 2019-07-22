package com.chd.model;
import java.util.Date;
import java.util.List;
public class Product {
    private Integer id;

    private Integer cid;

    private String productname;

    private String productdescribe;

    private Date date;

    private List<Productdetail> productdetail;
    
    private List<Productimage> productimage;
    
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public String getProductname() {
        return productname;
    }

    public void setProductname(String productname) {
        this.productname = productname == null ? null : productname.trim();
    }

    public String getProductdescribe() {
        return productdescribe;
    }

    public void setProductdescribe(String productdescribe) {
        this.productdescribe = productdescribe == null ? null : productdescribe.trim();
    }

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public List<Productimage> getProductimage() {
		return productimage;
	}

	public void setProductimage(List<Productimage> productimage) {
		this.productimage = productimage;
	}

    public List<Productdetail> getProductdetail() {
        return productdetail;
    }

    public void setProductdetail(List<Productdetail> productdetail) {
        this.productdetail = productdetail;
    }
}
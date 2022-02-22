package com.jjobplanet.jjobplanet.model;


public class indvVo
{
   private int uno;
   private String umail;
   private String upw;

	public int getUno() 				{		return uno;			}
	public String getUemail() 			{		return umail;		}
	public String getUpw() 				{		return upw;			}
	
	public void setUno(int uno) 		{	this.uno = uno;			}
	public void setUemail(String umail) {	this.umail = umail;		}
	public void setUpw(String upw) 		{	this.upw = upw;			}

    
    public void PrintInfo()
	{
		System.out.println("회원번호 :" + uno);
		System.out.println("이메일 :" + umail);
		System.out.println("비밀번호 :" + upw);
	}
	
}

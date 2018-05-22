package com.exe;
import java.util.Set;




import redis.clients.jedis.Jedis;
import redis.clients.jedis.Tuple;

public class myredis {
	private Jedis jedis;
	public myredis(){
		jedis = new Jedis("localhost");	
		System.out.println("success in redis");
		System.out.println("服务正在运行: "+jedis.ping());
	}
	public void createHash(int textid){
		System.out.println("成功创建 id="+textid);
		//有序集;
		jedis.zadd("score", 0, Integer.toString(textid));
	}
	public void add(int value, int textid){
		jedis.zincrby("score",value, Integer.toString(textid));
		System.out.println("add"+value);
		
	}
	public void show(){
		 Set<Tuple> score1 = jedis.zrevrangeWithScores("score", 0, -1);
	     for (Tuple t : score1) {
	         System.out.println(t.getElement()+":"+t.getScore());
	     }	
	}
	//哈希表判断是否已经打过星
	public int insertexist(int userid, int textid){
		String field=Integer.toString(userid)+'-'+Integer.toString(textid);
		System.out.println("field="+field);
		if(!jedis.hexists("hash", field)){
			System.out.println("no exist");
			jedis.hset("hash",field,"1");  
			return 1;
		}
		return 0;
	}
	public int exist(int userid, int textid){
		String field=Integer.toString(userid)+'-'+Integer.toString(textid);
		if(!jedis.hexists("hash", field)){
			return 0;
		}
		return 1;
	}
}

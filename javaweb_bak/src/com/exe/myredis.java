package com.exe;
import java.util.Set;



import redis.clients.jedis.Jedis;
import redis.clients.jedis.Tuple;

public class myredis {
	private Jedis jedis;
	myredis(){
		jedis = new Jedis("localhost");	
		System.out.println("success in redis");
		System.out.println("服务正在运行: "+jedis.ping());
	}
	public void createHash(String keyname, String fieldname, String value){
		jedis.hset(keyname, fieldname, value);
		System.out.println("成功创建\n");
		//有序集
		jedis.zadd("score", 0, keyname);
	}
	public void add(int value, String key){
		jedis.zincrby("score",value, key);
	}
	public void show(){
		 Set<Tuple> score1 = jedis.zrevrangeWithScores("score", 0, -1);
	     for (Tuple t : score1) {
	         System.out.println(t.getElement()+":"+t.getScore());
	     }	
	}
}

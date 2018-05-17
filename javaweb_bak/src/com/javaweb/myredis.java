package com.javaweb;
import redis.clients.jedis.Jedis;

public class myredis {
	myredis(){
		Jedis jedis = new Jedis("localhost");	
		System.out.println("success in redis");
	}
}

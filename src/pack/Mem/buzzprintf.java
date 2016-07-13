package pack.Mem;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;

import org.junit.Assert;
import org.junit.Test;

import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

public class buzzprintf {
	public static void main(String[] args) {
		for(int i=1; i<=100; i++){
			if(i%(3*5)==0){
				System.out.println("FizzBuzz\n");
			}else if(i%5==0){
				System.out.println("Fizz\n");
				
			}else if(i%3==0){
				System.out.println("Buzz\n");
			}
		}
			
//		assertArrayEquals(expected,numbers);
		buzzprintf bf=new buzzprintf();
		bf.sortInts();
	}
	@Test 
	public void sortInts(){
	final int[] numbers={-1,-3,-5,1,2,8};
	final int[] expected={-5,-3,-1,1,2,8};
	
	Arrays.sort(numbers);
	Assert.assertArrayEquals(expected, numbers);
	}
	@Test
	public void sortString(){
		final String [] strings={"z","x","y","abc","zzz","zazzy"};
		final String [] expectedj={"abc","x","y","z","zazzy","zzz"};
		
		Arrays.sort(strings);
		Assert.assertArrayEquals(expectedj, strings);
	};
};
class ReverseNumericalOrder implements Comparator<Integer>{
	@Override
	public int compare(Integer o1, Integer o2) {		
		return o2-01;
	}
	
	
	
}

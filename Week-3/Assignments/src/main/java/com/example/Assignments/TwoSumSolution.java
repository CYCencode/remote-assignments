package com.example.Assignments;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

public class TwoSumSolution {
    public void twoSum(ArrayList<Integer> numbers, int target) {
        Map<Integer,Integer> map = new HashMap<>();
        for(int idx =0; idx<numbers.size(); idx++){
            int complement = target-numbers.get(idx);
            if(map.containsKey(complement)){
                System.out.println(Arrays.asList(map.get(complement),idx));
                break;
            }map.put(numbers.get(idx),idx);
        }
        System.out.println("Two sum not found");
    }
}
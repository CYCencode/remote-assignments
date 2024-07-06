package com.example.Assignments;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import java.util.ArrayList;
import java.util.Arrays;

@SpringBootApplication
public class AssignmentsApplication {

	public static void main(String[] args) {
		SpringApplication.run(AssignmentsApplication.class, args);
		//add TwoSum test case below
		TwoSumSolution solution = new TwoSumSolution();
		solution.twoSum(new ArrayList<>(Arrays.asList(2, 7, 11, 15)), 9);
	}

}

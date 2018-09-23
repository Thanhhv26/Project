package com.huvata.qldh.controller;

import java.io.File;

import net.sourceforge.tess4j.ITesseract;
import net.sourceforge.tess4j.Tesseract;
import net.sourceforge.tess4j.TesseractException;
import net.sourceforge.tess4j.util.LoadLibs;

public class Example {
	
	public static void main(String[] args) {
		File imageFile = new File("E:\\tttt.jpeg");
		/**
		 * JNA Interface Mapping
		**/
		ITesseract instance = new Tesseract();
		
		/**
		 * You either set your own tessdata folder with your custom language pack or
		 * use LoadLibs to load the default tessdata folder for you.
		 **/
		instance.setDatapath(LoadLibs.extractTessResources("tessdata").getParent());

		try {
			String result = instance.doOCR(imageFile);
			System.out.println(result);
		} catch (TesseractException e) {
			System.err.println(e.getMessage());
		}
	}

}

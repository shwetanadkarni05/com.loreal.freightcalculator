package com.loreal

import org.grails.plugins.excelimport.AbstractExcelImporter
import org.grails.plugins.excelimport.*

class FreightExcelImporter extends AbstractExcelImporter {
	 static Map CONFIG_FREIGHT_COLUMN_MAP = [
			 sheet:'Sheet1',
				startRow: 2,
			 columnMap:  [
				 	 'A':'plant',
					 'B':'division',
					 'C':'customercode',
					 'D':'customername',
					 'E':'customercity',
					 'F':'orderunitstotal',
					 'G':'invoiceno',
					 'H':'billingtype',
					 'I':'invoicedate',
					 'J':'invunitstotal',
					 'K':'invoicevalue',
					 'L':'noofcases',
					 'M':'weightofinvoice'
			 ]
	 ]
   
	 public FreightExcelImporter(fileName) {
		 super(fileName)
	 }
   	 
	 List<Map> getFreights() {
		 List frieghtList = ExcelImportUtils.columns(workbook, CONFIG_FREIGHT_COLUMN_MAP)
	   }
	 
}

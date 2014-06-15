package com.loreal

import org.grails.plugins.excelimport.AbstractExcelImporter
import org.grails.plugins.excelimport.*

class DataExcelImporter extends AbstractExcelImporter {
	 static Map CONFIG_CFA_COLUMN_MAP = [
			 sheet:'Sheet1',
				startRow: 2,
			 columnMap:  [
					 'B':'cfacode',
					 'C':'cfaregion',
					 'D':'cfalocation',
					 'E':'divisioncode',
					 'F':'customercode',
					 'G':'customername',
					 'H':'customercity',
					 'I':'freightstructure',
					 'J':'costperinvoicelr',
					 'K':'costperkg',
					 'L':'costpercase',
					 'M':'grlrcharges',
					 'N':'handlingcharges',
					 'O':'deliverycharges',
					 'P':'loadingunloadingcharges',
					 'Q':'fuelsurcharges'
			 ]
	 ]
   
	 public DataExcelImporter(fileName) {
		 super(fileName)
	 }
   	 
	 List<Map> getCFAs() {
		 List cfaList = ExcelImportUtils.columns(workbook, CONFIG_CFA_COLUMN_MAP)
	   }
	 
}

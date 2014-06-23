function calculateInv() {
	var invTable = document.getElementById("invTable")
	var invRows = document.getElementById("invTableBody").rows
	
	
	var sizeR = invRows.length
	var i,j, row, sizeC, freightModel,totalRate
	
	for(i=1;i<sizeR;i++){
		row = invRows[i].cells
		sizeC = row.length
		totalRate = 0.0
		freightModel = row[14].innerHTML
		if(freightModel=='Per Kg'){
			totalRate+=((row[13].innerHTML)*(row[15].innerHTML))
			totalRate+=Number(row[17].innerHTML)
			totalRate+=Number(row[18].innerHTML)
			totalRate+=Number(row[19].innerHTML)
			totalRate+=Number(row[20].innerHTML)
			totalRate+=Number(row[21].innerHTML)
			row[23].innerHTML = totalRate
		} else if(freightModel=='Per Case') {
			totalRate+=((row[22].getElementsByTagName('input')[0].value)*(row[16].innerHTML))
			totalRate+=Number(row[17].innerHTML)
			totalRate+=Number(row[18].innerHTML)
			totalRate+=Number(row[19].innerHTML)
			totalRate+=Number(row[20].innerHTML)
			totalRate+=Number(row[21].innerHTML)
			//document.getElementById('invTable').rows[2].cells[22].getElementsByTagName('input')[0].value
			row[23].innerHTML = totalRate
		} else if(=='Per Invoice'){
			totalRate+=row[24].innerHTML
			row[23].innerHTML = totalRate
		}
		
	}
}

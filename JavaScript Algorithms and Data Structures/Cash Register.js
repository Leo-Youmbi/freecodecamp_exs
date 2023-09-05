function checkCashRegister(price, cash, cid) {
    const currencyValues = {
      "PENNY": 0.01,
      "NICKEL": 0.05,
      "DIME": 0.1,
      "QUARTER": 0.25,
      "ONE": 1,
      "FIVE": 5,
      "TEN": 10,
      "TWENTY": 20,
      "ONE HUNDRED": 100
    };
  
    let change = cash - price;
    let totalCID = cid.reduce((acc, curr) => acc + curr[1], 0);
    let result = { status: "", change: [] };
  
    if (totalCID < change) {
      result.status = "INSUFFICIENT_FUNDS";
      return result;
    }
  
    if (totalCID === change) {
      result.status = "CLOSED";
      result.change = cid;
      return result;
    }
  
    cid = cid.reverse();
  
    let changeArr = [];
  
    for (let i = 0; i < cid.length; i++) {
      let currency = cid[i][0];
      let currencyValue = currencyValues[currency];
      let currencyAmount = cid[i][1];
      let currencyUsed = 0;
  
      while (change >= currencyValue && currencyAmount > 0) {
        change -= currencyValue;
        change = Math.round(change * 100) / 100;
        currencyAmount -= currencyValue;
        currencyUsed += currencyValue;
      }
  
      if (currencyUsed > 0) {
        changeArr.push([currency, currencyUsed]);
      }
    }
  
    if (change > 0) {
      result.status = "INSUFFICIENT_FUNDS";
      return result;
    }
  
    result.status = "OPEN";
    result.change = changeArr;
    console.log(result)
    
    return result;
  }
  
  checkCashRegister(19.5, 20, [["PENNY", 1.01], ["NICKEL", 2.05], ["DIME", 3.1], ["QUARTER", 4.25], ["ONE", 90], ["FIVE", 55], ["TEN", 20], ["TWENTY", 60], ["ONE HUNDRED", 100]]);
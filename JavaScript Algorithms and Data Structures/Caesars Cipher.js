function rot13(str) {
    let decodedStr = "";
  
    for (let i = 0; i < str.length; i++) {
      let charCode = str.charCodeAt(i);
      let decodedCharCode;
  
      if (charCode >= 65 && charCode <= 90) {
        // Convert uppercase letters
        decodedCharCode = ((charCode - 65 + 13) % 26) + 65;
      } else {
        // Keep non-alphabetic characters as is
        decodedCharCode = charCode;
      }
  
      decodedStr += String.fromCharCode(decodedCharCode);
    }
  
    return decodedStr;
  }
  
  rot13("SERR PBQR PNZC");
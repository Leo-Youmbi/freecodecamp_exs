function palindrome(str) {
    str = str.replace(/[^A-Za-z0-9]/g, '').toLowerCase();
  
    // Check if the reversed string is equal to the original string
    return str === str.split('').reverse().join('');
  }
  
  palindrome("eye");
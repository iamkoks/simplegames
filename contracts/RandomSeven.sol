// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract RandomSeven {
  function Random(uint x) public pure returns (string memory) {
    uint N;
    uint MasRand;
    x = x * 12345312 + 12345; // Генерация псевдослучайных чисел
    N = (x/65464) % 32454; // Генерация псевдослучайных чисел
    for (uint256 i = 1; i <= 5; i++) {
      MasRand = (N % (10 ** i)) / (10 ** (i-1));
      if(MasRand == 7) return ("Winner");
    }
    return("Looser");
  }
}

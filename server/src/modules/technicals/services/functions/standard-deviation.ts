
export function standardDeviation(arr) { // sample STDEV
    const sum = arr.reduce((total, datum) => {
      return total + (+datum.close);
    }, 0);
    const mean = sum / arr.length;
    const sumOfSquares = arr.reduce((total, datum) => {
      return total + Math.pow((datum.close) - mean, 2);
    }, 0);
    return Math.sqrt(sumOfSquares / (arr.length - 1));
  }

export function high14(arr, idx) {
    let high = +arr[idx - 13].close;
    for (let i = idx - 12; i <= idx; i++) {
      if ((arr[i].close) > high) {
        high = +arr[i].close;
      }
    }
    return high;
}

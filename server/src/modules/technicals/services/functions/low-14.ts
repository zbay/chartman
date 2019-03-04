export function low14(arr, idx) {
    let low = +arr[idx - 13].close;
    for (let i = idx - 12; i <= idx; i++) {
      if ((arr[i].close) < low) {
        low = +arr[i].close;
      }
    }
    return low;
}

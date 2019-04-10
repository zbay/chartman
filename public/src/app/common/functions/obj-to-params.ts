export function objToParams(obj: any, supplement: any): {[param: string]: string | string[]} {
    const params: any = {};
    Object.entries(obj).forEach((param) => {
      params[param[0]] = String(param[1]);
    });
    Object.entries(supplement).forEach((param) => {
      params[param[0]] = String(param[1]);
    });
    return params;
}

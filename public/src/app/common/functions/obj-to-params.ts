export function objToParams(obj: any): {[param: string]: string | string[]} {
    const params: any = {};
    Object.entries(obj).forEach((param) => {
      params[param[0]] = String(param[1]);
    });
    return params;
}

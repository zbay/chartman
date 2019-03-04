export interface TechnicalDataPoint {
    open: number;
    close: number;
    high: number;
    low: number;
    volume: number;
    time: number;
    SEMA?: number;
    FEMA?: number;
    resistance?: number;
    support?: number;
    diff?: number;
    H14?: number;
    L14?: number;
    PER_K?: number;
    PER_D?: number;
    RS?: number;
    RSI?: number;
  }

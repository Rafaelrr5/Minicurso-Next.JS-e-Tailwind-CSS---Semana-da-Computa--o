export interface Interval {
    label: string,
    seconds: number,
    intensity: Intensity
}

//Impedir que usuário insira intensidade não existente e especificar os tipos
export enum Intensity {
    REST,
    LOW,
    HIGH
}
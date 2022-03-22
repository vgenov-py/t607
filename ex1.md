### Ejercicios

```r
a <- c(23,3,6,5,22,64,31,20, 22)
```

1. Considerando los valores de **a** crear dos vectores:
* El primer vector con los números pares al cuadrado
* El segundo vector con los números impares al cubo
2. Crear una secuencia de números del 10 al 100000 con una diferencia entre cada valor de 50 unidades.

```r
b <- c(1,2,3,4)
```
3. Del vector b imprimir los valores 1 y 4 utilizando posiciones negativas.
4. Obtener el sumatorio de cualquier secuencia 1:n
```r
c <- c(20, 20, 7, 3, 20)
d <- c(10, 10, 64, 10)
```

5. Multiplicar los vectores c y d por posiciones

### Financial statement Exercise
```r
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
```
* Beneficio de cada mes
* Beneficio después de impuestos (21%)
* Margen de beneficio de cada mes (beneficio neto dividido ganancia) (valor porcentual)
* Meses buenos > media del año
* Meses malos < media del año
* Mejor mes
* Peor mes
* Precisión: <strong>0.01</strong>
```r
round()
mean()
max()
min()
```

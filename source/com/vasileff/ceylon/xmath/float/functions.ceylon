// TODO see http://en.wikipedia.org/wiki/CORDIC for trig impls

//"\{#0001D452} raised to the power of the argument.
//
// * `exp(-infinity)` is `+0`,
// * `exp(+infinity)` is `+infinity`,
// * `exp(undefined)` is `undefined`.
// "
//see (`function expm1`)
//shared Float exp(Float num) {
//    return Math.exp(num);
//}
//
//"The natural logarithm (base \{#0001D452}) of the
// argument.
//
// * `log(x)` for any x < 0 is `undefined`,
// * `log(+0)` and `log(-0)` is `-infinity`,
// * `log(+infinity)` is `+infinity`,
// * `log(undefined)` is `undefined`.
// "
//see(`function log10`, `function log1p`)
//shared Float log(Float num) {
//    return Math.log(num);
//}
//
//"The base 10 logarithm of the argument.
//
// * `log10(x)` for any x < 0 is `undefined`,
// * `log10(-0)` and `log10(+0)` is `-infinity`,
// * `log10(+infinity)` is `+infinity`,
// * `log10(undefined)` is `undefined`.
// "
//see(`function log`)
//shared Float log10(Float num) {
//    return Math.log10(num);
//}

"The given angle (in radians) converted to degrees."
see(`function toRadians`)
shared Float toDegrees(Float num) {
    return num/pi*180;
}

"The given angle (in degrees) converted to radians."
see(`function toDegrees`)
shared Float toRadians(Float num) {
    return num/180*pi;
}

//"The sine of the given angle specified in radians.
//
// * `sin(-0)` is `-0`,
// * `sin(+0)` is `+0`,
// * `sin(-infinity)` is `undefined`,
// * `sin(+infinity)` is `undefined`,
// * `sin(undefined)` is `undefined`.
// "
//shared Float sin(Float num) {
//    return Math.sin(num);
//}
//
//"The cosine of the given angle specified in radians.
//
// * `cos(-infinity)` is `undefined`,
// * `cos(+infinity)` is `undefined`,
// * `cos(undefined)` is `undefined`.
// "
//shared Float cos(Float num) {
//    return Math.cos(num);
//}
//
//"The tangent of the given angle specified in radians.
//
// * `tan(-infinity)` is `undefined`,
// * `tan(-0)` is `-0`,
// * `tan(+0)` is `+0`,
// * `tan(+infinity)` is `undefined`,
// * `tan(undefined)` is `undefined`.
// "
//shared Float tan(Float num) {
//    return Math.tan(num);
//}
//
//"The hyperbolic sine of the given angle specified in
// radians.
//
// * `sinh(-0)` is `-0`,
// * `sinh(+0)` is `+0`,
// * `sin(-infinity)` is `-infinity`,
// * `sin(+infinity)` is `+infinity`,
// * `sin(undefined)` is `undefined`.
// "
//shared Float sinh(Float num) {
//    return Math.sinh(num);
//}
//
//"The hyperbolic cosine of the given angle specified in
// radians.
//
// * `cosh(0)` is `1`.
// * `cosh(-infinity)` is `+infinity`,
// * `cosh(+infinity)` is `+infinity`,
// * `cosh(undefined)` is `undefined`.
// "
//shared Float cosh(Float num) {
//    return Math.cosh(num);
//}
//
//"The hyperbolic tangent of the given angle specified in
// radians.
//
// * `tanh(+infinity)` is `+1`,
// * `tanh(-infinity)` is `-1`,
// * `tanh(-0)` is `-0`,
// * `tanh(+0)` is `+0`,
// * `tanh(undefined)` is `undefined`.
// "
//shared Float tanh(Float num) {
//    return Math.tanh(num);
//}
//
//"The arc sine of the given number.
//
// * `asin(x)` for any x < -1 is `undefined`,
// * `asin(-0)` is `-0`,
// * `asin(+0)` is `+0`,
// * `asin(x)` for any x > 1 is `undefined`,
// * `asin(undefined) is `undefined`.
// "
//shared Float asin(Float num) {
//    return Math.asin(num);
//}
//
//"The arc cosine of the given number.
//
// * `acos(x)` for any x < -1 is `undefined`,
// * `acos(x)` for any x > 1 is `undefined`,
// * `acos(undefined) is `undefined`.
// "
//shared Float acos(Float num) {
//    return Math.acos(num);
//}
//
//"The arc tangent of the given number.
//
// * `atan(-0)` is `-0`,
// * `atan(+0)` is `+0`,
// * `atan(undefined)` is `undefined`.
// "
//shared Float atan(Float num) {
//    return Math.atan(num);
//}
//
//"The angle from converting rectangular coordinates
// `x` and `y` to polar coordinates.
//
// Special cases:
//
// <table>
// <tbody>
// <tr>
// <th><code>y</code></th>
// <th><code>x</code></th>
// <th><code>atan2(y,x)</code></th>
// </tr>
//
// <tr>
// <td><code>undefined</code></td>
// <td>any value</td>
// <td><code>undefined</code></td>
// </tr>
//
// <tr>
// <td>any value</td>
// <td><code>undefined</code></td>
// <td><code>undefined</code></td>
// </tr>
//
// <tr><td><code>+0</code></td>
// <td><code>&gt; 0</code></td>
// <td><code>+0</code></td>
// </tr>
//
// <tr>
// <td><code>&gt; 0</code> and not <code>+infinity</code></td>
// <td><code>+infinity</code></td>
// <td><code>+0</code></td></tr>
//
// <tr>
// <td><code>-0</code></td>
// <td><code>&gt; 0</code></td>
// <td><code>-0</code></td>
// </tr>
//
// <tr>
// <td><code>&lt; 0</code> and not <code>-infinity</code></td>
// <td><code>+infinity</code></td>
// <td><code>-0</code></td>
// </tr>
//
// <tr>
// <td><code>+0</code></td>
// <td><code>&lt; 0</code></td>
// <td><code>\{#03C0}</code></td>
// </tr>
//
// <tr>
// <td><code>&gt; 0</code> and not <code>+infinity</code></td>
// <td><code>-infinity</code></td>
// <td><code>\{#03C0}</code></td>
// </tr>
//
// <tr>
// <td><code>-0</code></td>
// <td><code>&lt; 0</code></td>
// <td><code>-\{#03C0}</code></td>
// </tr>
//
// <tr>
// <td><code>&lt; 0</code> and not <code>-infinity</code></td>
// <td><code>-infinity</code></td>
// <td><code>-\{#03C0}</code></td>
// </tr>
//
// <tr>
// <td><code>&gt; 0</code></td>
// <td><code>+0 or -0</code></td>
// <td><code>\{#03C0}/2</code></td>
// </tr>
//
// <tr>
// <td><code>+infinity</code></td>
// <td>not <code>+infinity</code> or <code>-infinity</code></td>
// <td><code>\{#03C0}/2</code></td>
// </tr>
//
// <tr>
// <td><code>&lt; 0</code></td>
// <td><code>+0 or -0</code></td>
// <td><code>-\{#03C0}/2</code></td>
// </tr>
//
// <tr>
// <td><code>-infinity</code></td>
// <td>not <code>+infinity</code> or <code>-infinity</code></td>
// <td><code>-\{#03C0}/2</code></td>
// </tr>
//
// <tr>
// <td><code>+infinity</code></td>
// <td><code>+infinity</code></td>
// <td><code>\{#03C0}/4</code></td>
// </tr>
//
// <tr>
// <td><code>+infinity</code></td>
// <td><code>-infinity</code></td>
// <td><code>3\{#03C0}/4</code></td>
// </tr>
//
// <tr>
// <td><code>-infinity</code></td>
// <td><code>+infinity</code></td>
// <td><code>-\{#03C0}/4</code></td>
// </tr>
//
// <tr>
// <td><code>-infinity</code></td>
// <td><code>-infinity</code></td>
// <td><code>-3\{#03C0}/4</code></td>
// </tr>
//
// </tbody>
// </table>
// "
//shared Float atan2(Float y, Float x) {
//    return Math.atan2(y, x);
//}
//
//"Returns the length of the hypotenuse of a right angle
// triangle with other sides having lengths `x` and `y`.
// This method may be more accurate than computing
// `sqrt(x^2 + x^2)` directly.
//
// * `hypot(x,y)` where `x` and/or `y` is `+infinity` or
//   `-infinity`, is `+infinity`,
// * `hypot(x,y)`, where `x` and/or `y` is `undefined`,
//   is `undefined`.
// "
//shared Float hypot(Float x, Float y) {
//    return Math.hypot(x, y);
//}
//
//"The positive square root of the given number. This
// method may be faster and/or more accurate than
// `num^0.5`.
//
// * `sqrt(x)` for any x < 0 is `undefined`,
// * `sqrt(-0)` is `-0`,
// * `sqrt(+0) is `+0`,
// * `sqrt(+infinity)` is `+infinity`,
// * `sqrt(undefined)` is `undefined`.
// "
//shared Float sqrt(Float num) {
//    return Math.sqrt(num);
//}
//
//"The cube root of the given number. This method may be
// faster and/or more accurate than `num^(1.0/3.0)`.
//
// * `cbrt(-infinity)` is `-infinity`,
// * `cbrt(-0)` is `-0`,
// * `cbrt(+0)` is `+0`,
// * `cbrt(+infinity)` is `+infinity`,
// * `cbrt(undefined)` is `undefined`.
// "
//shared Float cbrt(Float num) {
//    return Math.cbrt(num);
//}
//
//"A number greater than or equal to positive zero and less
// than `1.0`, chosen pseudorandomly and (approximately)
// uniformly distributed."
//shared Float random() {
//    return Math.random();
//}

"The largest value that is less than or equal to the
 argument and equal to an integer.

 * `floor(-infinity)` is `-infinity`,
 * `floor(-0)` is `-0`,
 * `floor(+0)` is `+0`,
 * `floor(+infinity)` is `+infinity`,
 * `floor(undefined)` is `undefined`.
 "
see(`function ceiling`)
see(`function halfEven`)
shared Float floor(Float num)
    // TODO review for correctness
    =>  if (num.infinite ||
                num.undefined ||
                num.fractionalPart == 0.0) then
            num
        else if (num.negative) then
            num.wholePart - 1.0
        else
            num.wholePart;

"The smallest value that is greater than or equal to the
 argument and equal to an integer.

 * `ceiling(-infinity)` is `-infinity`,
 * `ceiling(x)` for -1.0 < x < -0 is `-0`,
 * `ceiling(-0)` is `-0`,
 * `ceiling(+0)` is `+0`,
 * `ceiling(+infinity)` is `+infinity`,
 * `ceiling(undefined)` is `undefined`.
 "
see(`function floor`)
see(`function halfEven`)
shared Float ceiling(Float num)
    // TODO review for correctness
    =>  if (num.infinite ||
                num.undefined ||
                num.fractionalPart == 0.0) then
            num
        else if (num.negative) then
            num.wholePart
        else
            num.wholePart + 1.0;

"The closest value to the argument that is equal to a
 mathematical integer, with even values preferred in the
 event of a tie (half even rounding).

 * `halfEven(-infinity)` is `-infinity`
 * `halfEven(-0)` is `-0`
 * `halfEven(+0)` is `+0`
 * `halfEven(+infinity)` is `+infinity`
 * `halfEven(undefined)` is `undefined`
 "
see(`function floor`)
see(`function ceiling`)
shared Float halfEven(Float num) {
    // TODO review for correctness
    if (num.infinite ||
            num.undefined ||
            num.fractionalPart == 0.0) {
        return num;
    } else {
        value twoFiftyTwo = 1.leftLogicalShift(52).float;
        variable value result = num.magnitude;
        if (result >= twoFiftyTwo) {
            return num;
        }
        else {
            //perform rounding
            result = (twoFiftyTwo + result) - twoFiftyTwo;
            return result * num.sign.float;
        }
    }
}

"The smaller of the two arguments.

 * `smallest(-1,+0)` is `-0`
 * `smallest(undefined, x)` is `undefined`
 * `smallest(x, x)` is `x`
 * `smallest(+infinity,x) is `x`
 * `smallest(-infinity,x) is `-infinity`
 "
see(`function largest`)
shared Float smallest(Float x, Float y)
    =>  if (x.strictlyNegative && y.strictlyPositive) then
            x
        else if (x.strictlyPositive && y.strictlyNegative) then
            y
        else if (x.undefined || y.undefined) then
            0.0/0.0
        else if (x.smallerThan(y)) then
            x
        else
            y;

"The larger of the two arguments.

 * `largest(-1,+0)` is `+0`
 * `largest(undefined, x)` is `undefined`
 * `largest(x, x)` is `x`
 * `largest(+infinity,x) is `+infinity`
 * `largest(-infinity,x) is `x`
 "
see(`function smallest`)
shared Float largest(Float x, Float y)
    =>  if (x.strictlyNegative && y.strictlyPositive) then
            y
        else if (x.strictlyPositive && y.strictlyNegative) then
            x
        else if (x.undefined || y.undefined) then
            0.0/0.0
        else if (x.largerThan(y)) then
            x
        else
            y;

"The sum of the given values, or `0.0` if there are no
 arguments."
shared Float sum(Float* values) {
    variable Float sum=0.0;
    for (x in values) {
        sum+=x;
    }
    return sum;
}

"The product of the given values, or `1.0` if there are
 no arguments."
shared Float product(Float* values) {
    variable Float sum=1.0;
    for (x in values) {
        sum*=x;
    }
    return sum;
}

//"The value of `x \{#00D7} 2\{#207F}`, calculated exactly
// for reasonable values of `n`."
//shared Float scalb(Float x, Integer n) {
//    return Math.scalb(x, n);
//}
//
//"A more accurate computation of `log(1.0+x)` for `x` near
// zero."
//shared Float log1p(Float num) {
//    return Math.log1p(num);
//}
//
//"A more accurate computation of `exp(x)-1.0` for `x` near
// zero."
//shared Float expm1(Float num) {
//    return Math.expm1(num);
//}

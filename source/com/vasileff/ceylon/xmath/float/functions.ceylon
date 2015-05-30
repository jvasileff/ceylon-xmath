import java.lang {
    JVMMath=Math
}

"\{#0001D452} raised to the power of the argument.

 * `exp(-infinity)` is `+0`,
 * `exp(+infinity)` is `+infinity`,
 * `exp(undefined)` is `undefined`.
 "
//see (`function expm1`) // FIXME
shared native
Float exp(Float num);

shared native("jvm")
Float exp(Float num)
    =>  JVMMath.exp(num);

shared native("js")
Float exp(Float num)
    =>  jsMath.exp(num);

"The natural logarithm (base \{#0001D452}) of the
 argument.

 * `log(x)` for any x < 0 is `undefined`,
 * `log(+0)` and `log(-0)` is `-infinity`,
 * `log(+infinity)` is `+infinity`,
 * `log(undefined)` is `undefined`.
 "
//see(`function log10`, `function log1p`) // FIXME
shared native
Float log(Float num);

shared native("jvm")
Float log(Float num)
    =>  JVMMath.log(num);

shared native("js")
Float log(Float num)
    =>  jsMath.log(num);

"The base 10 logarithm of the argument.

 * `log10(x)` for any x < 0 is `undefined`,
 * `log10(-0)` and `log10(+0)` is `-infinity`,
 * `log10(+infinity)` is `+infinity`,
 * `log10(undefined)` is `undefined`.
 "
see(`function log`)
shared native
Float log10(Float num);

shared native("jvm")
Float log10(Float num)
    =>  JVMMath.log10(num);

shared native("js")
Float log10(Float num)
    =>  jsMath.log(num) / jsMath.\iLN10;

"The given angle (in radians) converted to degrees."
shared see(`function toRadians`)
Float toDegrees(Float num)
    =>  num/pi*180;

"The given angle (in degrees) converted to radians."
shared see(`function toDegrees`)
Float toRadians(Float num)
    => num/180*pi;

"The sine of the given angle specified in radians.

 * `sin(-0)` is `-0`,
 * `sin(+0)` is `+0`,
 * `sin(-infinity)` is `undefined`,
 * `sin(+infinity)` is `undefined`,
 * `sin(undefined)` is `undefined`.
 "
shared native
Float sin(Float num);

shared native("js")
Float sin(Float num)
    =>  jsMath.sin(num);

shared native("jvm")
Float sin(Float num)
    =>  JVMMath.sin(num);

"The cosine of the given angle specified in radians.

 * `cos(-infinity)` is `undefined`,
 * `cos(+infinity)` is `undefined`,
 * `cos(undefined)` is `undefined`.
 "
shared native
Float cos(Float num);

shared native("js")
Float cos(Float num)
    =>  jsMath.cos(num);

shared native("jvm")
Float cos(Float num)
    =>  JVMMath.cos(num);

"The tangent of the given angle specified in radians.

 * `tan(-infinity)` is `undefined`,
 * `tan(-0)` is `-0`,
 * `tan(+0)` is `+0`,
 * `tan(+infinity)` is `undefined`,
 * `tan(undefined)` is `undefined`.
 "
shared native
Float tan(Float num);

shared native("js")
Float tan(Float num)
    =>  jsMath.tan(num);

shared native("jvm")
Float tan(Float num)
    =>  JVMMath.tan(num);

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

"The hyperbolic tangent of the given angle specified in
 radians.

 * `tanh(+infinity)` is `+1`,
 * `tanh(-infinity)` is `-1`,
 * `tanh(-0)` is `-0`,
 * `tanh(+0)` is `+0`,
 * `tanh(undefined)` is `undefined`.
 "
shared native
Float tanh(Float num);

shared native("jvm")
Float tanh(Float num)
    =>  JVMMath.tanh(num);

shared native("js")
Float tanh(Float num) // TODO special cases
    =>  let (Float pos = jsMath.exp(num),
             Float neg = jsMath.exp(-num))
        (pos - neg) / (pos + neg);

"The arc sine of the given number.

 * `asin(x)` for any x < -1 is `undefined`,
 * `asin(-0)` is `-0`,
 * `asin(+0)` is `+0`,
 * `asin(x)` for any x > 1 is `undefined`,
 * `asin(undefined) is `undefined`.
 "
shared native
Float asin(Float num);

shared native("js")
Float asin(Float num)
    =>  jsMath.asin(num);

shared native("jvm")
Float asin(Float num)
    =>  JVMMath.asin(num);

"The arc cosine of the given number.

 * `acos(x)` for any x < -1 is `undefined`,
 * `acos(x)` for any x > 1 is `undefined`,
 * `acos(undefined) is `undefined`.
 "
shared native
Float acos(Float num);

shared native("js")
Float acos(Float num)
    =>  jsMath.acos(num);

shared native("jvm")
Float acos(Float num)
    =>  JVMMath.acos(num);

"The arc tangent of the given number.

 * `atan(-0)` is `-0`,
 * `atan(+0)` is `+0`,
 * `atan(undefined)` is `undefined`.
 "
shared native
Float atan(Float num);

shared native("js")
Float atan(Float num)
    =>  jsMath.atan(num);

shared native("jvm")
Float atan(Float num)
    =>  JVMMath.atan(num);

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
shared see(`function halfEven`, `function ceiling`)
Float floor(Float num)
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
shared see(`function floor`, `function halfEven`)
Float ceiling(Float num)
    // TODO review for correctness
    =>  if (num.infinite ||
                num.undefined ||
                num.fractionalPart == 0.0) then
            num
        else if (num.negative) then
            // TODO https://github.com/ceylon/ceylon.language/issues/700
            -num.wholePart.magnitude
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
shared see(`function floor`, `function ceiling`)
Float halfEven(Float num) {
    // TODO review for correctness
    if (num.infinite ||
            num.undefined ||
            num.fractionalPart == 0.0) {
        return num;
    } else {
        value twoFiftyTwo = (2^52).float;
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
shared see(`function largest`)
Float smallest(Float x, Float y)
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
shared see(`function smallest`)
Float largest(Float x, Float y)
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
shared
Float sum(Float* values) {
    variable Float sum=0.0;
    for (x in values) {
        sum+=x;
    }
    return sum;
}

"The product of the given values, or `1.0` if there are
 no arguments."
shared
Float product(Float* values) {
    variable Float product=1.0;
    for (x in values) {
        product*=x;
    }
    return product;
}

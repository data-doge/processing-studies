#### ADDITIVE BLENDING

```java
void draw () {
  background(0);
  noStroke();
  blendMode(ADD);

  // yellow-orange
  fill(242, 204, 47, 160);
  ellipse(47, 36, 64, 64);
}
```

```
factor: 160 (alpha channel)
  
A:   0   0   0
  
B: 242 204  47  160  // orange-yellow
  
  ~* C = min(A*factor + B, 255) *~

C: 242 204  47       // bright as fuck yellow
```

so, we see that additive blending with a black background makes the color completely opaque.

---

what about a white background?

```java
void draw () {
  background(255);
  ...
```

```
factor: 160 / 255 = 0.63 (alpha channel)
  
A: 255 255 255
  
B: 242 204  47  160  // light yellow
  
  ~* C = min(A*factor + B, 255) *~

C: 255 255 255       //  white
```

we notice, that with a white background, additive blending turns the color white.

---

and what if we put another color on top of that?


void draw () {
  background(0);
  noStroke();
  blendMode(ADD);

  // yellow
  fill(242, 204, 47, 160);
  ellipse(47, 36, 64, 64);

  // green
  fill(174, 221, 60, 160);
  ellipse(90, 47, 64, 64);
}

where the green overlaps with the yellow, we get:

```
factor: 160 / 255 = 0.63 (alpha channel)
  
A: 242 204  47  160  // yellow

B: 174 221  60  160  // green
  
  ~* C = min(A*factor + B, 255) *~

C: 255 255  90  //  
```

???

the uppermost color is at 100% opacity only where it overlaps with both the yellow and white

still confusing ...




#### SUBTRACTIVE BLENDING


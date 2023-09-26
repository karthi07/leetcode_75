function asteroidCollision(asteroids: number[]): number[] {
  let result: number[] = [];
  asteroids.forEach((asteroid: number) => {
    while (result.length && asteroid < 0 && result[result.length - 1] > 0) {
      let diff: number = asteroid + result[result.length - 1];
      if (diff < 0) {
        result.pop();
      } else if (diff > 0) {
        asteroid = 0;
      } else {
        result.pop();
        asteroid = 0;
      }
    }
    if (asteroid != 0) result.push(asteroid);
  });

  return result;
}

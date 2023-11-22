//? 2656. 2651. Calculate Delayed Arrival Time

int findDelayedArrivalTime(int arrivalTime, int delayedTime) {
  if (arrivalTime + delayedTime < 24) {
    return arrivalTime + delayedTime;
  } else {
    return (24 - (arrivalTime + delayedTime)).abs();
  }
}

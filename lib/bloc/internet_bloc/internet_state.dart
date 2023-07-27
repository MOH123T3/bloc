abstract class InternetState {}

// When no event found first time show default state

class InternetInitialState extends InternetState {}

// When internet lost event call we got  lost state

class InternetLostState extends InternetState {}

// When internet get event call we got get state
class InternetGainedState extends InternetState {}

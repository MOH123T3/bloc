// There are two types of event  first i lost my connectivity of internet and second connected to internet so we make 2 event

abstract class InternetEvent {}

class InternetLostEvent extends InternetEvent {}

class InternetGainedEvent extends InternetEvent {}

class Tickets
	VENUES = ["Pearl", "Some Theather"]
end

print "Constant is " 
p Tickets::VENUES
a = Tickets::VENUES
a << "The Castro Theater"
print "a = "
p a
print "Tickets::VENUES = "
p Tickets::VENUES
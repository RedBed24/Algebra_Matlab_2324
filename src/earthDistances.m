function [d_ij] = earthDistances(latitude, longitude)

R = 6378.388;

q1 = cos(longitude - longitude');
q2 = cos(latitude - latitude');
q3 = cos(latitude + latitude');
d_ij = R * acos(0.5 * ((1.0 + q1) .* q2 - (1.0 - q1) .* q3));

end


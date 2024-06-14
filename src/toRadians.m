function [latitude, longitude] = toRadians(lat, lng)

PI = 3.141592;

deg_x = floor(lat);
min_x = lat - deg_x;
latitude = PI * (deg_x + 5.0 / 3.0 * min_x)/180.0;

deg_y = floor(lng);
min_y = lng - deg_y;
longitude = PI * (deg_y + 5.0 / 3.0 * min_y)/180.0;

end


function bytes = canard_udp_packet(def_vec)
%#codegen
% Convert four canard deflections [deg] to FlightGear generic ASCII packet.
%
% FlightGear Protocol/canards.xml expects:
%   +010.000,+000.000,+000.000,+000.000\n
%
% Connect:
%   def_vec -> Saturation [-15,+15] -> canard_udp_packet -> UDP Send

d1 = max(min(def_vec(1), 15), -15);
d2 = max(min(def_vec(2), 15), -15);
d3 = max(min(def_vec(3), 15), -15);
d4 = max(min(def_vec(4), 15), -15);

% Fixed-width format keeps the output size constant for Simulink:
% 4 values * 8 chars + 3 commas + newline = 36 bytes.
s = sprintf('%+08.3f,%+08.3f,%+08.3f,%+08.3f\n', d1, d2, d3, d4);

bytes = zeros(36, 1, 'uint8');
for k = 1:36
    bytes(k) = uint8(s(k));
end
end

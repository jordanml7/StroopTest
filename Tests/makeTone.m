function tone = makeTone(f,Fs,tsec)
% function tone = makeTone(f,Fs,tsec)
% creates a musical tone which can be played back using soundsc
% Inputs:
%   f: desired frequency in Hz.  A concert is 440 Hz; middle C is 261 Hz
%   Fs: sampling rate in Hz.  8000 is a good choice
%   tsec:  length of tone, in seconds

% some notes: a flute sound typically contains the fundamental at frequency f (say, 440 Hz) and then
% overtones at integer multiples (2f, 3f, 4f, etc.).  Typically for a
% flute, the amplitude of each overtone might drop by 50% from the previous
% (lower) tone.

% get time between samples
deltat = 1/Fs;  

% set up time vector
t = 0:deltat:tsec;

% set up a cosine
tone = cos(2*pi*f*t);
tone = tone(:); % this makes it a column

return
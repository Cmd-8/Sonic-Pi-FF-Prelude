

with_fx :reverb, mix: 0.5, room: 1 do
  2.times do
    use_synth :hollow
    play :c5, amp: 4.5, sustain: 3.5
    sleep 4
    play :a5, amp: 4.5, sustain: 2
    sleep 1
    play :g4, amp: 3.5, sustain: 1
    sleep 1.5
  end
  
  in_thread do
    loop do
      use_synth :hollow
      play :c5, amp: 3.5 , sustain: 3.5
      play :c4, amp: 3 , sustain: 3.5
      sleep 4
      play :a5, amp: 3.5 , sustain: 2
      play :a3, amp: 3 , sustain: 4
      sleep 1
      play :g4, amp: 3.5 , sustain: 1
      sleep 1.5
    end
  end
  sleep 6.5
  loop do
    use_synth :hollow
    play :c2, amp: 0.5 , sustain: 6
    sleep 6
    play :d2, amp: 0.5 , sustain: 6
    sleep 6
  end
end











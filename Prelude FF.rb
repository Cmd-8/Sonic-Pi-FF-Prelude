with_fx :reverb, mix: 0.5, room: 0.75 do
  in_thread do
    1.times do
      use_synth :saw
      play_pattern_timed [:c3,:d3,:e3,:g3], [0.25]
      play_pattern_timed [:c4,:d4,:e4,:g4], [0.25]
      play_pattern_timed [:c5,:d5,:e5,:g5], [0.25]
      
      play_pattern_timed [:g5,:e5,:d5,:c5], [0.25]
      play_pattern_timed [:g4,:e4,:d4,:c4], [0.25]
      play_pattern_timed [:g3,:e3,:d3,:c3], [0.25]
      
      play_pattern_timed [:a3,:b3,:c3,:e3], [0.25]
      play_pattern_timed [:a4,:b4,:c4,:e4], [0.25]
      play_pattern_timed [:a5,:b5,:c5,:e5], [0.25]
      
      play_pattern_timed [:e5,:c5,:b5,:a5], [0.25]
      play_pattern_timed [:e4,:c4,:b4,:a4], [0.25]
      play_pattern_timed [:e3,:c3,:b3,:a3], [0.25]
      
      play_pattern_timed [:c2,:d2,:e2,:g2], [0.25]
      play_pattern_timed [:c3,:d3,:e3,:g3], [0.25]
      play_pattern_timed [:c4,:d4,:e4,:g4], [0.25]
      play_pattern_timed [:c5,:d5,:e5,:g5], [0.25]
      
      play_pattern_timed [:g5,:e5,:d5,:c5], [0.25]
      play_pattern_timed [:g4,:e4,:d4,:c4], [0.25]
      play_pattern_timed [:g3,:e3,:d3,:c3], [0.25]
      play_pattern_timed [:g2,:e2,:d2,:c2], [0.25]
      
      play_pattern_timed [:a2,:b2,:c2,:e2], [0.25]
      play_pattern_timed [:a3,:b3,:c3,:e3], [0.25]
      play_pattern_timed [:a4,:b4,:c4,:e4], [0.25]
      play_pattern_timed [:a5,:b5,:c5,:e5], [0.25]
      
      play_pattern_timed [:e5,:c5,:b5,:a5], [0.25]
      play_pattern_timed [:e4,:c4,:b4,:a4], [0.25]
      play_pattern_timed [:e3,:c3,:b3,:a3], [0.25]
      play_pattern_timed [:e2,:c2,:b2,:a2], [0.25]
      
    end
  end
  
  in_thread do
    sleep 28
    loop do
      use_synth :saw
      play_pattern_timed [:c2,:d2,:e2,:g2], [0.25]
      play_pattern_timed [:c3,:d3,:e3,:g3], [0.25]
      play_pattern_timed [:c4,:d4,:e4,:g4], [0.25]
      play_pattern_timed [:c5,:d5,:e5,:g5], [0.25]
      
      play_pattern_timed [:g5,:e5,:d5,:c5], [0.25]
      play_pattern_timed [:g4,:e4,:d4,:c4], [0.25]
      play_pattern_timed [:g3,:e3,:d3,:c3], [0.25]
      play_pattern_timed [:g2,:e2,:d2,:c2], [0.25]
      
      play_pattern_timed [:a2,:b2,:c2,:e2], [0.25]
      play_pattern_timed [:a3,:b3,:c3,:e3], [0.25]
      play_pattern_timed [:a4,:b4,:c4,:e4], [0.25]
      play_pattern_timed [:a5,:b5,:c5,:e5], [0.25]
      
      play_pattern_timed [:e5,:c5,:b5,:a5], [0.25]
      play_pattern_timed [:e4,:c4,:b4,:a4], [0.25]
      play_pattern_timed [:e3,:c3,:b3,:a3], [0.25]
      play_pattern_timed [:e2,:c2,:b2,:a2], [0.25]
      
      play_pattern_timed [:f2,:g2,:a2,:c2], [0.25]
      play_pattern_timed [:f3,:g3,:a3,:c3], [0.25]
      play_pattern_timed [:f4,:g4,:a4,:c4], [0.25]
      play_pattern_timed [:f5,:g5,:a5,:c5], [0.25]
      
      play_pattern_timed [:c5,:a5,:g5,:f5], [0.25]
      play_pattern_timed [:c4,:a4,:g4,:f4], [0.25]
      play_pattern_timed [:c3,:a3,:g3,:f3], [0.25]
      play_pattern_timed [:c2,:a2,:g2,:f2], [0.25]
      
      play_pattern_timed [:g2,:a2,:b2,:d2], [0.25]
      play_pattern_timed [:g3,:a3,:b3,:d3], [0.25]
      play_pattern_timed [:g4,:a4,:b4,:d4], [0.25]
      play_pattern_timed [:g5,:a5,:b5,:d5], [0.25]
      
      play_pattern_timed [:d5,:b5,:a5,:g5], [0.25]
      play_pattern_timed [:d4,:b4,:a4,:g4], [0.25]
      play_pattern_timed [:d3,:b3,:a3,:g3], [0.25]
      play_pattern_timed [:d2,:b2,:a2,:g2], [0.25]
      
    end
  end
  
  a = [ [1,0,2,0,1,0,2,0,1,0,2,0,1,0,2,0,],
        [1,0,2,2,2,0,2,0,1,0,1,0,2,0,2,0,],
        [2,2,2,0,1,0,0,0,2,2,2,0,1,0,2,0,],
        [1,1,0,0,2,2,2,2,1,0,0,0,1,0,2,0,],
        ]
  
  sleep 8
  in_thread do
    live_loop :drum do
      4.times do |j|
        16.times do |i|
          sample :drum_heavy_kick, amp: 3.5 if a[j][i] ==1
          sample :hat_star, amp: 4 if a[j][i] == 2
          sleep 0.25
        end
      end
    end
  end
  
  sleep 16
  b = [ [2,0,0,0,2,0,0,0,2,2,0,0,2,2,0,0,],
        [1,0,2,2,2,0,2,0,0,0,0,0,2,0,2,0,],
        [2,2,0,0,0,0,0,0,2,2,0,0,0,0,2,0,],
        [0,0,0,0,2,2,2,2,0,0,0,0,0,0,2,0,],
        ]
  in_thread do
    live_loop :drum_2 do
      4.times do |j|
        16.times do |i|
          sample :perc_impact1, amp: 2.5 if b[j][i] == 1
          sample :elec_wood, amp: 2.2 if b[j][i] == 2
          sleep 0.125
        end
      end
    end
  end
  
end
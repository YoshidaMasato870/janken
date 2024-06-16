loop do
    case_pattern = ""
    puts "じゃんけん..."
    puts "0(グー)　1(チョキ)　2(パー)　3(戦わない)"
    your_chois = gets.to_i
    puts "ポイ！"
    puts "---------------------------------------------"
    if your_chois == 0
        puts "あなた:グーを出しました"
        opponent_chois = rand(3).to_i
        if opponent_chois == 0
            puts "相手：グーを出しました"
            case_pattern = "draw"
        elsif opponent_chois == 1
            puts "相手：チョキを出しました"
            case_pattern = "you_win"
        elsif opponent_chois == 2
            puts "相手：パーを出しました"
            case_pattern = "you_lose"
        end
    elsif your_chois == 1
        puts "あなた：チョキを出しました"
        opponent_chois = rand(3).to_i
        if opponent_chois == 0
            puts "相手：グーを出しました"
            case_pattern = "you_lose"
        elsif opponent_chois == 1
            puts "相手：チョキを出しました"
            case_pattern = "draw"
        elsif opponent_chois == 2
            puts "相手：パーを出しました"
            case_pattern = "you_win"
        end
    elsif your_chois == 2
        puts "あなた:パーを出しました"
        opponent_chois = rand(3).to_i
        if opponent_chois == 0
            puts "相手：グーを出しました"
            case_pattern = "you_win"
        elsif opponent_chois == 1
            puts "相手：チョキを出しました"
            case_pattern = "you_lose"
        elsif opponent_chois == 2
            puts "相手：パーを出しました"
            case_pattern = "draw"
        end
    elsif your_chois == 3
        case_pattern = "you_lose"
    else
        puts "0,1,2,3のいずれかを入力してください"
        puts "---------------------------------------------"
    end
    case case_pattern
    when "you_win"
        puts "あなたの勝ちです"
        puts "---------------------------------------------"
        your_select = ""
        loop do
          puts "あなたの指す方向を選んでください"
          puts "あっち向いて..."
          puts "↑(0) ←(1) ↓(2)　→(3)"
          your_select = gets.to_i
          if your_select == 0 || your_select == 1 ||
             your_select == 2 || your_select == 3
              break
          else
              puts "不正な値です"
              puts "---------------------------------------------"
          end
        end
        puts "ホイ！"
        puts "---------------------------------------------"
        opponent_select = rand(4)
          if your_select == 0
              puts "あなた:↑を選びました"
              if opponent_select == 0
                  puts "相手:↑を選びました"
                  puts "あなたの勝ちです　おめでとうございます！"
                  break
              elsif opponent_select == 1
                  puts  "相手:←を選びました"
                  puts "---------------------------------------------"
              elsif opponent_select == 2
                  puts "相手:↓を選びました"
                  puts "---------------------------------------------"
              elsif opponent_select == 3
                  puts "相手:→を選びました"
                  puts "---------------------------------------------"
              end
          elsif your_select == 1
              puts "あなた:←を選びました"
              if opponent_select == 0
                  puts "相手:↑を選びました"
                  puts "---------------------------------------------"
              elsif opponent_select == 1
                  puts  "相手:←を選びました"
                  puts "あなたの勝ちです　おめでとうございます！"
                  break
              elsif opponent_select == 2
                  puts "相手:↓を選びました"
                  puts "---------------------------------------------"
              elsif opponent_select == 3
                  puts "相手:→を選びました"
                  puts "---------------------------------------------"
              end
          elsif your_select == 2
              puts "あなた:↓を選びました"
              if opponent_select == 0
                  puts "相手:↑を選びました"
                  puts "---------------------------------------------"
              elsif opponent_select == 1
                  puts  "相手:←を選びました"
                  puts "---------------------------------------------"
              elsif opponent_select == 2
                  puts "相手:↓を選びました"
                  puts "あなたの勝ちです　おめでとうございます！"
                  break
              elsif opponent_select == 3
                  puts "相手:→を選びました"
                  puts "---------------------------------------------"
              end
          elsif your_select == 3
              puts "あなた:→を選びました"
              if opponent_select == 0
                  puts "相手:↑を選びました"
                  puts "---------------------------------------------"
              elsif opponent_select == 1
                  puts  "相手:←を選びました"
                  puts "---------------------------------------------"
              elsif opponent_select == 2
                  puts "相手:↓を選びました"
                  puts "---------------------------------------------"
              elsif opponent_select == 3
                  puts "相手:→を選びました"
                  puts "あなたの勝ちです　おめでとうございます！"
                  break
              end
          end
    when "draw"
        puts "あいこです"
        puts "---------------------------------------------"
    when "you_lose"
        puts "あなたの負けです"
        puts "---------------------------------------------"
        your_select = ""
        loop do
          puts "あなたの向く方向を選んでください"
          puts "あっち向いて..."
          puts "↑(0) ←(1) ↓(2)　→(3)"
          your_select =gets.to_i
          if your_select == 0 || your_select == 1 ||
             your_select == 2 || your_select == 3
              break
          else
            puts "不正な値です"
            puts "---------------------------------------------"
          end
        end
        puts "ホイ！"
        puts "---------------------------------------------"
        opponent_select = rand(4)
        if your_select == 0
            puts "あなた:↑を選びました"
            if opponent_select == 0
                puts "相手:↑を選びました"
                puts "あなたの負けです　残念でした"
                break
            elsif opponent_select == 1
                puts  "相手:←を選びました"
                puts "---------------------------------------------"
            elsif opponent_select == 2
                puts "相手:↓を選びました"
                puts "---------------------------------------------"
            elsif opponent_select == 3
                puts "相手:→を選びました"
                puts "---------------------------------------------"
            end
        elsif your_select == 1
            puts "あなた:←を選びました"
            if opponent_select == 0
                puts "相手:↑を選びました"
                puts "---------------------------------------------"
            elsif opponent_select == 1
                puts  "相手:←を選びました"
                puts "あなたの負けです　残念でした"
                break
            elsif opponent_select == 2
                puts "相手:↓を選びました"
                puts "---------------------------------------------"
            elsif opponent_select == 3
                puts "相手:→を選びました"
                puts "---------------------------------------------"
            end
        elsif your_select == 2
            puts "あなた:↓を選びました"
            if opponent_select == 0
                puts "相手:↑を選びました"
                puts "---------------------------------------------"
            elsif opponent_select == 1
                puts  "相手:←を選びました"
                puts "---------------------------------------------"
            elsif opponent_select == 2
                puts "相手:↓を選びました"
                puts "あなたの負けです　残念でした"
                break
            elsif opponent_select == 3
                puts "相手:→を選びました"
                puts "---------------------------------------------"
            end
        elsif your_select == 3
            puts "あなた:→を選びました"
            if opponent_select == 0
                puts "相手:↑を選びました"
                puts "---------------------------------------------"
            elsif opponent_select == 1
                puts  "相手:←を選びました"
                puts "---------------------------------------------"
            elsif opponent_select == 2
                puts "相手:↓を選びました"
               puts "---------------------------------------------"
            elsif opponent_select == 3
                puts "相手:→を選びました"
                puts "あなたの負けです　残念でした"
                break
            end
        end
    end       
end
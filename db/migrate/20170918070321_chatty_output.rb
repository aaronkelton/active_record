class ChattyOutput < ActiveRecord::Migration[5.1]
  def change
    puts "Hello from puts"
    say "Hello from say"
    say "Indented say", true
    say_with_time "Long process running" do
      sleep 5
    end
    suppress_messages do
      puts "Hello from puts"
      say "Hello from say"
      say "Indented say", true
    end
  end
end

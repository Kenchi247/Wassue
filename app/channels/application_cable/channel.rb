module ApplicationCable
  class Channel < ActionCable::Channel::Base
    # コンシューマーがこのチャネルのサブスクライバ側になると
    # このコードが呼び出される
    def subscribed
      stream_for "chat_#{params[:room]}"
    end
  end
end

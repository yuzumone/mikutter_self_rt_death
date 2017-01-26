# -*- coding: utf-8 -*-

Plugin.create(:mikutter_self_rt_death) do
  
  filter_show_filter do |msgs|
    msgs = msgs.select { |m|
      if m.retweet?
        m.user.id != m.retweet_source.user.id
      else
        true
      end
    }
    [msgs]
  end
end

class E20 < CampfireBot::Plugin
  on_command 'e20', :e20

  def e20(msg)
    cmd = msg[:message].downcase
    if cmd == "inventory"
      Bundler.with_clean_env do
        msg.paste(%x[e20 #{cmd}])
      end
    else
      msg.speak "unrecognized command: 'inventory' is currently the only recognized e20 command"
    end
  end
end
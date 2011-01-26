module Clipboard
  def paste(_ = nil)
    `pbpaste`
  end

  def copy(data)
    IO.popen('pbcopy', 'w'){|input| input << data }
    paste
  end

  def clear
    copy ''
  end
end